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

class simpleForm2Element_Text extends simpleForm2Element {

    function getInputHtml() {
        $attribs = $this->getHtmlAttributes();
        if (is_string($this->inputValue)) {
            $attribs['value'] = $this->inputValue;
        }
        if (isset($attribs['value'])) {
            $attribs['value'] = htmlspecialchars($attribs['value']);
        }
        $attribs['id'] .= '_elem';
        $attribsStr = '';
        foreach ($attribs as $k => $v) {
            $attribsStr .= ' ' . $k . '="' . $v . '"';
        }
        $html = '<input ' . $attribsStr . ' />';

        return $html;
    }

}
