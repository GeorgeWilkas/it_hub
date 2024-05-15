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

class simpleForm2Element_Sender_copy extends simpleForm2Element {

    public function parse($code) {
        $result = parent::parse($code);
        if ($result) {
            if ($this->form->getElementByName($this->getParam('recipient-element-name', '')) === false) {
                $this->setError(sprintf(JText::_('MOD_SIMPLEFORM2_NO_RECIP_IN_ELEM'), $this->code));
                return false;
            }
            $this->setParam('label_', $this->getParam('label'));
            $this->setParam('label', '');
            $this->setParam('send-in-email', 'no');
        }
        return $result;
    }

    public function validate() {
        if (!parent::validate()) {
            return false;
        }
        if ($this->isRequired && $this->getValue() != 'yes') {
            $this->triggerInputError();
            return false;
        }

        return true;
    }

    function getInputHtml() {
        $checked = '';
        if ($this->getValue() == 'yes' || $this->getParam('selected') == 'selected') {
            $checked = 'checked="checked"';
        }

        $html = '<div class="sf2-checkboxes">';
        $html .= '<label class="sf2-checkbox-label"><input id="' . $this->getParam('id') . '_elem" type="checkbox" name="' . $this->getParam('name') . '" value="yes" ' . $checked . ' /><i></i>' . $this->getParam('label_') . '</label>';
        $html .= '</div>';

        return $html;
    }

}
