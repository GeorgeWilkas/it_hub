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

class simpleForm2Element_Email extends simpleForm2Element_Text {

    public function checkInput($input) {
        $this->inputValue = $input->get($this->getParam('name'), '', 'string');
        if (($this->isRequired && $this->inputValue == '') || ($this->inputValue != '' && !SF2Helper::isEmail($this->inputValue))) {
            $this->triggerInputError();
            return false;
        }
        return true;
    }

}
