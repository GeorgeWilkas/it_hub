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

class simpleForm2 extends simpleForm2BaseModel {

    public $code = '';
    public $elements = array();
    public $hasSubmit = false;
    public $params2mask = array('regex', 'label', 'error', 'onclick', 'onchange', 'value', 'placeholder', 'help');
    public $elementTypes = array();
    public $moduleID = 0;
    private $style = 'default';
    private $layout = 'blocks';
    private $layoutMode = 'full-width';

    public function __construct() {
        $this->setParam('id', md5(uniqid(rand(), true)));
    }

    public function setID($id) {
        return $this->setParam('id', $id);
    }

    public function getID() {
        return $this->getParam('id');
    }

    public function setStyle($style) {
        $this->style = $style;
    }

    public function getStyle() {
        return $this->style;
    }

    public function parse($code) {
        $this->code = $code;
        $this->code = preg_replace_callback('~(' . implode('|', $this->params2mask) . ')="([^"]+)"~si', function ($matches) {
            return $matches[1] . '="' . base64_encode($matches[2]) . '"';
        }
                , $this->code);
        $this->code = preg_replace_callback('~(' . implode('|', $this->params2mask) . ')=\'([^\']+)\'~si', function ($matches) {
            return $matches[1] . '="' . base64_encode($matches[2]) . '"';
        }
                , $this->code);
        $form = $this;
        $this->code = preg_replace_callback('~\{user\:([a-z0-9_\-]+)\/?\}~si', function ($matches) use ($form) {
            return $form->getUserData($matches[1]);
        }, $this->code);

        try {
            $code = $this->code;
            preg_match('~{form([^}]+)~is', $code, $matches);
            if (is_array($matches) && isset($matches[1])) {
                $this->setParams(SF2Helper::parseParams($matches[1]));
            }
            $index = 0;
            $code = preg_replace_callback('~{element ~', function ($matches) use (&$index) {
                $index++;
                return $matches[0] . 'index="' . $index . '" ';
            }, $code);
            preg_match_all('~{element ([^}]+)}~is', $code, $matches);
            foreach ($matches[1] as $k => $paramsText) {
                if (mb_substr($paramsText, -1, 1, 'UTF-8') != '/') {
                    continue;
                }
                $this->elements[] = $this->parseElement($matches[0][$k]);
                $code = str_replace($matches[0][$k], '', $code);
            }
            preg_match_all('~{element (.*?)(?={/element}){/element}~is', $code, $matches);
            foreach ($matches[1] as $k => $paramsText) {
                $this->elements[] = $this->parseElement($matches[0][$k]);
                $code = str_replace($matches[0][$k], '', $code);
            }
            if (count($this->elements) == 0) {
                throw new \Exception(JText::_('MOD_SIMPLEFORM2_NO_ELEMENTS_FOUND_IN_CODE'));
            }

            usort($this->elements, function ($a, $b) {
                $ai = (int) $a->getParam('index', 0);
                $bi = (int) $b->getParam('index', 0);
                if ($ai == $bi) {
                    return 0;
                }
                return ($ai < $bi) ? -1 : 1;
            });
        } catch (\Exception $e) {
            $this->setError($e->getMessage());
            return false;
        }
        return true;
    }

    public function parseElement($elementCode) {
        $elem = new simpleForm2Element($this);
        if (!$elem->parse($elementCode)) {
            throw new \Exception($elem->getError());
        }
        $types = $this->getElementTypes();
        $elType = $elem->getParam('type');
        if (!in_array($elType, $types)) {
            throw new \Exception(sprintf(JText::_('MOD_SIMPLEFORM2_ELEM_TYPE_NOT_ALLOWED'), $elem->getParam('type')));
        }

        $elemTypeFile = __DIR__ . '/elements/' . $elType . '.php';
        $elemTypeClass = 'simpleForm2Element_' . ucfirst($elType);

        if (!is_file($elemTypeFile)) {
            throw new \Exception(sprintf(JText::_('MOD_SIMPLEFORM2_ELEM_TYPE_FILE_NOT_FOUND'), $elem->getParam('type')));
        }
        if (!class_exists($elemTypeClass)) {
            throw new \Exception(sprintf(JText::_('MOD_SIMPLEFORM2_ELEM_TYPE_CLASS_NOT_FOUND'), $elem->getParam('type')));
        }

        $result = new $elemTypeClass($this);
        if (!$result->parse($elementCode)) {
            throw new \Exception($result->getError());
        }
        return $result;
    }

    public function setLayout($layout) {
        $this->layout = $layout;
    }

    public function getElementTypes() {
        if (count($this->elementTypes)) {
            return $this->elementTypes;
        }
        jimport('joomla.filesystem.folder');
        $files = JFolder::files(__DIR__ . '/elements', '\.php$');
        foreach ($files as $file) {
            $elType = preg_replace('~\.php$~', '', $file);
            $this->elementTypes[] = $elType;
            JLoader::register('simpleForm2Element_' . ucfirst($elType), __DIR__ . '/elements/' . $file);
        }
        return $this->elementTypes;
    }

    public function toHtml() {
        if (count($this->elements) == 0)
            return '';
        $html = $this->code;
        $uri = JURI::getInstance();
        $lang = JFactory::getLanguage();
        $CSSclass = 'simpleForm2';
        $CSSclass .= ' ' . $this->getParam('class', '');
        $CSSclass .= ' sf2Style-' . $this->style;
        $CSSclass .= ' sf2Layout-' . $this->layout;
        $CSSclass .= ' sf2LayoutMode-' . $this->layoutMode;
        $formBegin = '';
        if ($this->getParam('type', '') == 'popup') {
            $formBegin .= '<div style="display:none;">';
        }
        $formBegin .= '<form class="' . $CSSclass . '" method="post" id="' . $this->getID() . '" name="' . $this->getID() . '" enctype="multipart/form-data" ' . $this->getParam('attribs', '') . '>';
        $formBegin .= '<input type="hidden" name="moduleID" value="' . $this->moduleID . '" />';
        $formBegin .= '<input type="hidden" name="action" value="sf2-send" />';
        $formBegin .= '<input type="hidden" name="url" value="' . $uri->toString() . '" />';
        if ($this->getParam('title', '') != '' || $this->getParam('description', '') != '') {
            $formBegin .= '<div class="sf2-header">';
            if ($this->getParam('title', '') != '') {
                $formBegin .= '<div class="sf2-title">' . $this->getParam('title', '') . '</div>';
            }
            if ($this->getParam('description', '') != '') {
                $formBegin .= '<div class="sf2-description">' . $this->getParam('description', '') . '</div>';
            }
            $formBegin .= '</div>';
        }
        $formBegin .= '<div class="sf2-body">';
        $formEnd = '</div>';
        $formEnd .= '</form>';
        if ($this->getParam('type', '') == 'popup') {
            $formEnd .= '</div>';
        }
        foreach ($this->elements as $elem) {
            $html = str_replace($elem->code, $elem->toHtml(), $html);
        }
        if (!preg_match('/\{form[ }]/i', $html))
            $html = '{form}' . $html;
        if (!preg_match('/\{\/form\}/i', $html))
            $html .= '{/form}';

        // Events
        $formBegin = SF2Helper::triggerEvent('onGetBeforeFormHTML', array($this, $html)) . $formBegin;
        $formEnd = SF2Helper::triggerEvent('onGetAfterFormHTML', array($this, $html)) . $formEnd;

        $html = preg_replace('~{form(.*?)(?=})}~', $formBegin, $html);
        $html = str_replace('{/form}', $formEnd, $html);
        $html = str_replace(array('{caller}', '{/caller}'), array('<button class="sf2-callBtn" data-formid="' . $this->getID() . '">', '</button>'), $html);

        return $html;
    }

    public function bindInput($input) {
        SF2Helper::triggerEvent('onProcessBeforeFormBindInput', array($this, &$input));
        if (count($this->elements) == 0) {
            $this->setError(JText::_('MOD_SIMPLEFORM2_NO_ELEMENTS_FOUND_IN_CODE'));
            return false;
        }
        for ($i = 0; $i < count($this->elements); $i++) {
            $elem = &$this->elements[$i];
            $elem->bindInput($input);
        }
    }

    public function setLayoutMode($mode) {
        $this->layoutMode = $mode;
    }

    public function validate() {
        if (count($this->elements) == 0) {
            $this->setError(JText::_('MOD_SIMPLEFORM2_NO_ELEMENTS_FOUND_IN_CODE'));
            return false;
        }
        $result = array();
        SF2Helper::triggerEvent('onProcessBeforeFormValidate', array($this, &$result));
        foreach ($this->elements as $elem) {
            if (!$elem->validate()) {
                $result[$elem->getParam('id')] = $elem->getError();
            }
        }
        SF2Helper::triggerEvent('onProcessAfterFormValidate', array($this, &$result));
        return $result;
    }

    public function getElements() {
        return $this->elements;
    }

    public function getCaptchaElement() {
        $result = false;
        foreach ($this->elements as $elem) {
            if ($elem->getParam('type') == 'captcha') {
                $result = $elem;
                break;
            }
        }
        SF2Helper::triggerEvent('onProcessFormCaptchaElement', array($this, &$result));
        return $result;
    }

    public function getAttachments() {
        $attachments = array();
        foreach ($this->elements as $elem) {
            $attachments = array_merge($attachments, $elem->getAttachments());
        }
        return $attachments;
    }

    public function getElementByName($name) {
        $name = trim($name);
        if ($name == '')
            return false;
        foreach ($this->elements as $elem) {
            if ($elem->getParam('name', '') == $name) {
                return $elem;
            }
        }
        return false;
    }

    public function getElementsByType($type) {
        $elems = array();
        foreach ($this->elements as $elem) {
            if ($elem->getParam('type', '') == $type) {
                $elems[] = $elem;
            }
        }
        return $elems;
    }

    public function onAfterSend() {
        foreach ($this->elements as $elem) {
            $elem->onAfterSendForm();
        }
    }

    public function getUserData($name) {
        $user = JFactory::getUser();
        return $user->get($name);
    }

}
