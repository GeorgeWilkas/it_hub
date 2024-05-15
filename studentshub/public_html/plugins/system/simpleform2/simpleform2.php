<?php

/**
 * @package  SimpleForm2
 * @license  http://www.gnu.org/licenseses/gpl-3.0.html GNU/GPL
 *
 * Created by Oleg Micriucov for Joomla! 3.x, 4.x, 5.x
 * https://allforjoomla.com
 *
 */
defined('_JEXEC') or die(':)');

class plgSystemSimpleform2 extends JPlugin {

    protected $_allowedTasks = array('sf2-send', 'sf2-captcha', 'sf2-getrecord', 'sf2-delrecord');
    private static $scriptsLoaded = false;
    private $_static_content_version = '4.1.0';
    private $_v = null;

    public function onBeforeCompileHead() {
        $app = JFactory::getApplication();
        $doc = JFactory::getDocument();

        if ($doc->getType() != 'html' || $this->_isAdmin()) {
            return;
        }
        $this->_loadLang();

        $jsLang = 'var SF2Lang=window.SF2Lang||{};'
                . 'SF2Lang["send"] = "' . htmlspecialchars(JText::_('MOD_SIMPLEFORM2_SEND')) . '";'
                . 'SF2Lang["close"] = "' . htmlspecialchars(JText::_('MOD_SIMPLEFORM2_CLOSE')) . '";';
        $doc->addCustomTag('<script type="text/javascript">' . $jsLang . '</script>');
        JHtml::_('jquery.framework');

        $scriptsLoadMode = $this->params->get('scriptsLoadMode', 'all_pages');
        if ($scriptsLoadMode == 'all_pages' && !self::$scriptsLoaded) {
            self::$scriptsLoaded = true;
            $doc->addStyleSheet(JUri::root() . 'media/mod_simpleform2/css/styles.css?v=' . $this->_static_content_version);
            $doc->addScript(JUri::root() . 'media/mod_simpleform2/js/jquery.form.min.js?v=' . $this->_static_content_version, [], ['defer' => true]);
            $doc->addScript(JUri::root() . 'media/mod_simpleform2/js/simpleform2.js?v=' . $this->_static_content_version, [], ['defer' => true]);
        }
    }

    public function onAfterRender() {
        $app = JFactory::getApplication();
        $doc = JFactory::getDocument();
        if ($this->_isAdmin() || $doc->getType() != 'html') {
            return;
        }
        if ($app->input->getCmd('option', '') == 'com_content' && $app->input->getCmd('view', '') == 'form' && $app->input->getCmd('layout', '') == 'edit') {
            return;
        }
        $scriptsLoadMode = $this->params->get('scriptsLoadMode', 'all_pages');
        if ($scriptsLoadMode == 'all_pages' || self::$scriptsLoaded) {
            return;
        }
        $html = $this->_getResponseBody();
        $delim = utf8_strpos($html, '<body');
        if ($delim === false) {
            return true;
        }
        $htmlHead = utf8_substr($html, 0, $delim);
        $htmlBody = utf8_substr($html, $delim);
        if (strpos($htmlBody, '<form class="simpleForm2') === false) {
            return true;
        }

        self::$scriptsLoaded = true;
        $jscss = '';
        $jscss .= '<link href="' . JUri::root() . 'media/mod_simpleform2/css/styles.css?v=' . $this->_static_content_version . '" rel="stylesheet" />';
        $jscss .= '<script src="' . JUri::root() . 'media/mod_simpleform2/js/jquery.form.min.js?v=' . $this->_static_content_version . '" defer ></script>';
        $jscss .= '<script src="' . JUri::root() . 'media/mod_simpleform2/js/simpleform2.js?v=' . $this->_static_content_version . '" defer ></script>';
        $htmlBody = preg_replace('~<\/body>~', $jscss . '</body>', $htmlBody, 1);

        $this->_setResponseBody($htmlHead . $htmlBody);
        return true;
    }

    public function onAfterInitialise() {
        $app = JFactory::getApplication();
        $action = $app->input->get('action', '');

        if (!in_array($action, $this->_allowedTasks)) {
            return true;
        }

        $this->_loadLang();
        JLoader::register('SF2Helper', JPATH_ROOT . '/modules/mod_simpleform2/helpers/sf2.php');
        JLoader::register('simpleForm2', JPATH_ROOT . '/modules/mod_simpleform2/models/form.php');
        JLoader::register('simpleForm2Element', JPATH_ROOT . '/modules/mod_simpleform2/models/form.element.php');
        JLoader::register('simpleForm2BaseModel', JPATH_ROOT . '/modules/mod_simpleform2/models/base.php');

        if ($this->_isAdmin()) {
            $this->_processBackendRequests();
        } else {
            $this->_processFrontendRequests();
        }
    }

    private function _processBackendRequests() {
        $app = JFactory::getApplication();
        $action = $app->input->get('action', '');

        if ($action != 'sf2-getrecord' && $action != 'sf2-delrecord') {
            return true;
        }

        $responce = array(
            'status' => 'error',
            'message' => JText::_('MOD_SIMPLEFORM2_ERROR')
        );
        try {
            $db = JFactory::getDbo();
            $recordID = (int) $app->input->getInt('id', 0);

            switch ($action) {
                case 'sf2-getrecord':
                    $q = $db->getQuery(true);
                    $q->select('*');
                    $q->from($db->quoteName('#__sf2_records'));
                    $q->where($db->quoteName('id') . '=' . $recordID);
                    $db->setQuery($q);
                    $record = $db->loadAssoc();
                    if (is_array($record) && isset($record['id']) && (int) $record['id'] == $recordID) {
                        preg_match('~<body>(.*?)(?=</body>)~is', $record['message'], $match);
                        $responce = array(
                            'status' => 'success',
                            'html' => $match[1]
                        );
                    } else {
                        throw new \Exception(JText::_('MOD_SIMPLEFORM2_RECORD_NOT_FOUND'));
                    }
                    break;
                case 'sf2-delrecord':
                    $q = $db->getQuery(true);
                    $q->delete();
                    $q->from($db->quoteName('#__sf2_records'));
                    $q->where($db->quoteName('id') . '=' . $recordID);
                    $db->setQuery($q);
                    $db->execute();
                    $responce = array(
                        'status' => 'success',
                    );
                    break;
            }
        } catch (\Exception $e) {
            $responce = array(
                'status' => 'error',
                'message' => $e->getMessage()
            );
        }
        header('Content-Type: application/json; charset="utf-8"', true);
        echo json_encode($responce);
        $app->close();
    }

    private function _processFrontendRequests() {
        $app = JFactory::getApplication();
        $action = $app->input->get('action', '');

        if ($action != 'sf2-send' && $action != 'sf2-captcha') {
            return true;
        }

        if ($action == 'sf2-send' && empty($_SERVER['HTTP_X_REQUESTED_WITH'])) {
            // process only AJAX calls
            return;
        }

        $responce = array(
            'status' => 'error',
            'message' => JText::_('MOD_SIMPLEFORM2_ERROR')
        );
        try {

            $user = JFactory::getUser();
            $moduleID = (int) $app->input->getInt('moduleID', 0);

            if ($moduleID <= 0) {
                throw new \Exception(JText::_('MOD_SIMPLEFORM2_FORM_NOT_FOUND'));
            }
            $module = JTable::getInstance('module');
            $module->load($moduleID);
            if ((int) $module->id <= 0 || (int) $module->id != $moduleID) {
                throw new \Exception(JText::_('MOD_SIMPLEFORM2_FORM_NOT_FOUND'));
            }
            $params = new JRegistry;
            $params->loadString($module->params);

            $id = 'simpleForm2_' . $module->id;
            $okText = $params->get('okText', '');

            $form = new simpleForm2();
            $form->setID($id);
            $form->moduleID = (int) $module->id;

            if (!$form->parse($params->get('simpleCode', ''))) {
                throw new \Exception('<b>' . JText::_('MOD_SIMPLEFORM2_ERROR_OCURED') . '</b><p>' . $form->getError() . '</p>');
            }
            switch ($action) {
                case 'sf2-send':
                    $form->bindInput($app->input->post);
                    $errors = $form->validate();
                    if (count($errors) > 0) {
                        $responce['elements'] = $errors;
                        throw new \Exception('<b>' . JText::_('MOD_SIMPLEFORM2_ERROR_OCURED') . '</b><ul class="sf2-error-list"><li>' . implode('</li><li>', array_values($errors)) . '</li></ul>');
                    } else {
                        SF2Helper::sendFormEmail($form, $params);
                        $form->onAfterSend();
                        $responce['status'] = 'success';
                        $responce['message'] = ($okText != '' ? $okText : JText::_('MOD_SIMPLEFORM2_FORM_SUCCEED'));
                        $responce['html'] = '<div class="sf2-message sf2-type-success">' . ($okText != '' ? $okText : JText::_('MOD_SIMPLEFORM2_FORM_SUCCEED')) . '</div>';
                    }
                    break;
                case 'sf2-captcha':
                    $captchaElem = $form->getCaptchaElement();
                    if ($captchaElem === false) {
                        throw new \Exception(JText::_('MOD_SIMPLEFORM2_FORM_HAS_NO_CAPTCHA'));
                    }
                    $captchaElem->renderImage();
                    $app->close();
                    break;
            }
        } catch (\Exception $e) {
            $responce = array(
                'status' => 'error',
                'message' => $e->getMessage()
            );
        }
        header('Content-Type: application/json; charset="utf-8"', true);
        echo json_encode($responce);
        $app->close();
    }

    private function _loadLang() {
        $lang = JFactory::getLanguage();
        $lang->load('mod_simpleform2', JPATH_SITE);
    }

    private function _isAdmin() {
        $app = JFactory::getApplication();
        return ((method_exists($app, 'isAdmin') && $app->isAdmin()) || (method_exists($app, 'isClient') && $app->isClient('administrator')));
    }

    private function _setResponseBody($html) {
        if (version_compare($this->_getCoreVersion(), '4.0.0', 'ge')) {
            $app = JFactory::getApplication();
            return $app->setBody($html);
        }
        JResponse::setBody($html);
    }

    private function _getResponseBody() {
        if (version_compare($this->_getCoreVersion(), '4.0.0', 'ge')) {
            $app = JFactory::getApplication();
            return $app->getBody();
        }
        return JResponse::getBody();
    }

    private function _getCoreVersion() {
        if ($this->_v === null) {
            $this->_v = new JVersion;
        }
        $v = $this->_v->getShortVersion();
        if (strpos($v, '-') !== false) {
            $v = explode('-', $v);
            $v = $v[0];
        }
        return $v;
    }

}
