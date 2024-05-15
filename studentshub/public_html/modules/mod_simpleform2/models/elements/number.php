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

class simpleForm2Element_Number extends simpleForm2Element_Text {

    public function validate() {
        if (!parent::validate()) {
            return false;
        }
        if (!empty($this->inputValue) && !is_numeric($this->inputValue)) {
            $this->setError(JText::_('MOD_SIMPLEFORM2_VALUE_IS_NOT_A_NUMBER'));
            return false;
        }
        return true;
    }

}
