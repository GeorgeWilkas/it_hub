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

class simpleForm2Element_Button extends simpleForm2Element {

    public function parse($code) {
        if (!parent::parse($code)) {
            return false;
        }
        $this->defParam('send-in-email', 'no');
        return true;
    }

    public function checkInput($input) {
        return true;
    }

    public function getInputHtml() {
        $attribs = $this->getHtmlAttributes();
        $value = '';
        if (isset($attribs['value'])) {
            $value = $attribs['value'];
            unset($attribs['value']);
        }
        $attribs['id'] .= '_elem';
        $attribsStr = '';
        foreach ($attribs as $k => $v) {
            $attribsStr .= ' ' . $k . '="' . $v . '"';
        }
        $html = '<button ' . $attribsStr . '>' . $value . '</button>';
        return $html;
    }

}
