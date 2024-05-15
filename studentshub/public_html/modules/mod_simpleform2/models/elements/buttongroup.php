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

class simpleForm2Element_Buttongroup extends simpleForm2Element_Button {

    public function getInputHtml() {
        $attribs = $this->getHtmlAttributes();
        $value = '';
        if (isset($attribs['value'])) {
            $value = $attribs['value'];
            unset($attribs['value']);
        }
        if (isset($attribs['class'])) {
            $attribs['class'] = str_replace('sf2-element', '', $attribs['class']);
        } else {
            $attribs['class'] = '';
        }
        $attribs['class'] .= ' sf2-button-group';
        unset($attribs['type']);
        unset($attribs['name']);
        unset($attribs['id']);
        $attribsStr = '';
        foreach ($attribs as $k => $v) {
            $attribsStr .= ' ' . $k . '="' . $v . '"';
        }
        $html = '<div ' . $attribsStr . '>';
        foreach ($this->options as $option) {
            $class = (isset($option->params['class']) ? $option->params['class'] : '');
            $class .= ' sf2-element';
            if ($option->params['type'] == 'submit')
                $html .= '<span class="sf2-submit-container">';

            $html .= '<button type="' . $option->params['type'] . '" class="' . $class . '">' . (isset($option->params['value']) ? $option->params['value'] : $option->params['label']) . '</button>';

            if ($option->params['type'] == 'submit')
                $html .= '</span>';
        }
        $html .= '</div>';
        return $html;
    }

}
