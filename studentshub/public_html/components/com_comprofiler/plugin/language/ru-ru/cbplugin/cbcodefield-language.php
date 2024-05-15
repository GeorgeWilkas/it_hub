<?php
/**
* Community Builder (TM) cbcodefield Russian (Russia) language file Frontend
* @version $Id:$
* @copyright (C) 2004-2021 www.joomlapolis.com / Lightning MultiCom SA - and its licensors, all rights reserved
* @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU/GPL version 2
*/

/**
* WARNING:
* Do not make changes to this file as it will be over-written when you upgrade CB.
* To localize you need to create your own CB language plugin and make changes there.
*/

defined('CBLIB') or die();

return	array(
// 28 language strings from file plug_cbcodefield/cbcodefield.xml
'ENABLE_OR_DISABLE_CODE_VALIDATION_THIS_WILL_ALLOW__5bc962'	=>	'Enable or disable code validation. This will allow you to evaluate a fields value using your own custom code.',
'CODE_VALIDATION_63d3b2'	=>	'Code Validation',
'INPUT_SUBSTITUTION_SUPPORTED_PHP_CODE_SUPPLY_VALUE_c7a4a5'	=>	'Input substitution supported PHP code. Supply [value] substitution for user input field value. Additionally supports [reason] for determining code location. Your code should return true if valid or false if invalid. Variables $field, $user, $value, and $reason can be used directly in the code.',
'CODE_PHP_1b0981'	=>	'Code (PHP)',
'INPUT_MESSAGE_TO_DISPLAY_ON_SUCCESSFUL_VALIDATION__ef7f20'	=>	'Input message to display on successful validation. Supports [value] and [title] substitutions only.',
'SUCCESS_MESSAGE_4e9d73'	=>	'Success Message',
'INPUT_MESSAGE_TO_DISPLAY_ON_FAILED_VALIDATION_SUPP_2fa2ea'	=>	'Input message to display on failed validation. Supports [value] and [title] substitutions only.',
'ERROR_MESSAGE_c02034'	=>	'Error Message',
'ENABLE_OR_DISABLE_AJAX_CODE_VALIDATION_THIS_WILL_A_602320'	=>	'Enable or disable ajax code validation. This will allow the validation to be processed dynamically as the user uses the field.',
'AJAX_VALIDATION_0388d2'	=>	'Ajax Validation',
'OPTIONALLY_SELECT_ADDITIONAL_FIELDS_TO_SEND_THEIR__52e293'	=>	'Optionally select additional fields to send their values to ajax validation. This will cause substitutions to dynamically change based off the entered values.',
'ADDITIONAL_FIELDS_d3cfda'	=>	'Additional Fields',
'SELECT_FIELDS_b7951c'	=>	'- Select Fields -',
'ENABLE_OR_DISABLE_CODE_AUTO_COMPLETE_THIS_WILL_ALL_4cad51'	=>	'Enable or disable code auto complete. This will allow suggesting values to select from based off what the user has typed using your own custom code.',
'CODE_AUTO_COMPLETE_2b895d'	=>	'Code Auto Complete',
'INPUT_SUBSTITUTION_SUPPORTED_PHP_CODE_SUPPLY_VALUE_ff50a9'	=>	'Input substitution supported PHP code. Supply [value] substitution for user input field value. Additionally supports [reason] for determining code location. The code should return an array of key value pairs (e.g. array( &apos;Value&apos; => &apos;Label&apos; )). Array key will be used as the option value while the array value will be used as the label. Variables $field, $user, $value, and $reason can be used directly in the code.',
'INPUT_THE_MINIMUM_LENGTH_OF_CHARACTERS_THAT_MUST_E_68e59d'	=>	'Input the minimum length of characters that must exist before autocomplete starts. Note this can not be less than 1.',
'MINIMUM_LENGTH_e2061d'	=>	'Minimum Length',
'OPTIONALLY_SELECT_ADDITIONAL_FIELDS_TO_SEND_THEIR__8ce77d'	=>	'Optionally select additional fields to send their values to auto complete. This will cause substitutions to dynamically change based off the entered values.',
'ENABLE_OR_DISABLE_STRICT_SELECTION_OF_AUTO_COMPLET_cf3300'	=>	'Enable or disable strict selection of auto complete options. This will prevent all other values from being used in the field except those provided by the auto complete.',
'STRICT_SELECTION_8c049e'	=>	'Strict Selection',
'INPUT_MESSAGE_TO_DISPLAY_ON_FAILED_STRICT_SELECTIO_ff9c3d'	=>	'Input message to display on failed strict selection validation. Supports [value] and [title] substitutions only.',
'STRICT_ERROR_MESSAGE_66799a'	=>	'Strict Error Message',
'SELECT_TEMPLATE_TO_BE_USED_FOR_THIS_CODE_DISPLAY_I_0340a1'	=>	'Select template to be used for this code display. If template is incomplete then missing files will be used from the default template. Template files can be located at the following location: components/com_comprofiler/plugin/user/plug_cbcodefield/templates/.',
'SAME_AS_GLOBAL_540a68'	=>	'Same as Global',
'INPUT_SUBSTITUTION_SUPPORTED_PHP_CODE_ADDITIONALLY_8805ff'	=>	'Input substitution supported PHP code. Additionally supports [reason] for determining code location. The code should return the value to display (e.g. return &apos;Hello World!&apos;;). Variables $field, $user, and $reason can be used directly in the code.',
'INPUT_SUBSTITUTION_SUPPORTED_PHP_CODE_ADDITIONALLY_92069f'	=>	'Input substitution supported PHP code. Additionally supports [reason] for determining code location. The code should return an array of key value pairs (e.g. array( &apos;Value&apos; => &apos;Label&apos; )). Array key will be used as the option value while the array value will be used as the label. A value array can be used for optgroup usage where the key in this case will be the optgroup label with the value array being the options (e.g. array( &apos;Group&apos; => array( &apos;Value&apos; => &apos;Label&apos; ) )). Variables $field, $user, and $reason can be used directly in the code.',
'SELECT_TEMPLATE_TO_BE_USED_FOR_ALL_OF_CB_CODE_FIEL_dcd917'	=>	'Select template to be used for all of CB Code Field. If template is incomplete then missing files will be used from the default template. Template files can be located at the following location: components/com_comprofiler/plugin/user/plug_cbcodefield/templates/.',
// 2 language strings from file plug_cbcodefield/library/Trigger/FieldTrigger.php
'CODE_VALIDATION_ERROR'	=>	'Not a valid input.',
'CODE_AUTOCOMPLETE_VALIDATION_ERROR'	=>	'Not a valid input.',
);
