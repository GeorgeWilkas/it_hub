<?php

/**
 * @package  SimpleForm2
 * @license  http://www.gnu.org/licenseses/gpl-3.0.html GNU/GPL
 *
 * Created by Oleg Micriucov for Joomla! 3.x, 4.x, 5.x
 * https://allforjoomla.com
 *
 * 
 * Events for "simpleform2" group plugins:
 * - onGetBeforeFormHTML(simpleForm2 $form, string $html):string
 * - onGetAfterFormHTML(simpleForm2 $form, string $html):string
 * - onProcessBeforeSendEmail(Joomla\CMS\Mail\Mail &$mail, simpleForm2 $form, Joomla\Registry\Registry $moduleParams)
 * - onProcessAfterSendEmail(Joomla\CMS\Mail\Mail &$mail, simpleForm2 $form, Joomla\Registry\Registry $moduleParams, bool|Exception $result)
 * - onProcessBeforeFormBindInput(simpleForm2 $form, Joomla\CMS\Input\Input &$input)
 * - onProcessBeforeFormValidate(simpleForm2 $form, array &$errors)  $errors = array("FORM_ELEMENT_ID"=>"ERROR_MESSAGE")
 * - onProcessAfterFormValidate(simpleForm2 $form, array &$errors)  $errors = array("FORM_ELEMENT_ID"=>"ERROR_MESSAGE")
 * - onProcessFormCaptchaElement(simpleForm2 $form, simpleForm2Element|false &$captchaElement)
 * 
 * */
defined('_JEXEC') or die(':)');

JLoader::register('SF2Helper', JPATH_ROOT . '/modules/mod_simpleform2/helpers/sf2.php');
JLoader::register('simpleForm2', JPATH_ROOT . '/modules/mod_simpleform2/models/form.php');
JLoader::register('simpleForm2Element', JPATH_ROOT . '/modules/mod_simpleform2/models/form.element.php');
JLoader::register('simpleForm2BaseModel', JPATH_ROOT . '/modules/mod_simpleform2/models/base.php');

$lang = JFactory::getLanguage();
$lang->load('mod_simpleform2', JPATH_SITE);

$id = 'simpleForm2_' . $module->id;
$userCheckFunc = $params->get('userCheckFunc', '');
$userResultFunc = $params->get('userResultFunc', '');
$okText = $params->get('okText', '');
$config = JFactory::getConfig();
$loadScriptsMode = $params->get('loadScriptsMode', 'body');
$formLayout = $params->get('sfLayout', 'blocks');
$formStyle = $params->get('sfStyle', 'default');
$formLayoutMode = $params->get('sfLayoutMode', 'full-width');

$jsParams = 'var SF2Config=window.SF2Config||{};SF2Config["' . $id . '"]={'
        . '"ajaxURI": "' . JUri::current() . '",'
        . '"onBeforeSend": ' . ($userCheckFunc != '' ? $userCheckFunc : 'function(form){return true;}') . ','
        . '"onAfterReceive": ' . ($userResultFunc != '' ? $userResultFunc : 'function(form,responce){return true;}') . ','
        . '};';
echo '<script type="text/javascript">' . $jsParams . '</script>';

$app = JFactory::getApplication();

$action = $app->input->getCmd('action');
$post = (array) $app->input->get('post');
$moduleID = (int) $app->input->getInt('moduleID');

$form = new simpleForm2();
$form->setID($id);
$form->moduleID = (int) $module->id;

$form->setLayout($formLayout);
$form->setStyle($formStyle);
$form->setLayoutMode($formLayoutMode);

if (!$form->parse($params->get('simpleCode', ''))) {
    echo '<div class="sf2-message sf2-type-error"><b>' . JText::_('MOD_SIMPLEFORM2_ERROR_OCURED') . '</b><p>' . $form->getError() . '</p></div>';
    return;
}

if ($action == 'sf2-send' && $moduleID == (int) $module->id) {
    $form->bindInput($app->input->post);
    $errors = $form->validate();
    if (count($errors) > 0) {
        echo '<div class="sf2-message sf2-type-error"><b>' . JText::_('MOD_SIMPLEFORM2_ERROR_OCURED') . '</b><ul class="sf2-error-list"><li>' . implode('</li><li>', array_values($errors)) . '</li></ul></div>';
    } else {
        try {
            SF2Helper::sendFormEmail($form, $params);
            $form->onAfterSend();
            echo '<div class="sf2-message sf2-type-success">' . ($okText != '' ? $okText : JText::_('MOD_SIMPLEFORM2_FORM_SUCCEED')) . '</div>';
            return;
        } catch (\Exception $e) {
            echo '<div class="sf2-message sf2-type-error"><b>' . JText::_('MOD_SIMPLEFORM2_ERROR_OCURED') . '</b><p>' . $e->getMessage() . '</p></div>';
        }
    }
}

echo $form->toHtml();
