<?php
/**
* Community Builder (TM) cbqueryfield Russian (Russia) language file Frontend
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
// 75 language strings from file plug_cbqueryfield/cbqueryfield.xml
'ENABLE_OR_DISABLE_QUERY_VALIDATION_THIS_WILL_ALLOW_eac9a1'	=>	'Enable or disable query validation. This will allow you to evaluate a fields value using your own custom database query.',
'QUERY_VALIDATION_7c2420'	=>	'Query Validation',
'INPUT_SUBSTITUTION_SUPPORTED_QUERY_SUPPLY_VALUE_SU_82eab5'	=>	'Input substitution supported Query. Supply [value] substitution for user input field value. Your query should return a compareable value (e.g. NULL, 1, 0, true, or false) for best results.',
'QUERY_66c1b4'	=>	'Query',
'SELECT_MODE_OF_QUERY_THE_MODE_WILL_DETERMINE_WHAT__bfedc3'	=>	'Select mode of query. The mode will determine what database the query is performed on.',
'EXTERNAL_b206a1'	=>	'Внешняя',
'HOST_c2ca16'	=>	'Хост',
'DATABASE_e307db'	=>	'База данных',
'CHARSET_f594c0'	=>	'Charset',
'TABLE_PREFIX_3b39f2'	=>	'Table Prefix',
'SELECT_IF_FIELD_SHOULD_VALIDATE_ON_EMPTY_QUERY_RES_01474a'	=>	'Select if field should validate on empty query results (a result of 0 rows) or on successful query results (a result of at least 1 row). If the query returns only 1 result then the value of the result will be used.',
'VALIDATE_ON_281360'	=>	'Validate On',
'EMPTY_RESULTS_4d107e'	=>	'Empty Results',
'SUCCESSFUL_RESULTS_85cea2'	=>	'Successful Results',
'INPUT_MESSAGE_TO_DISPLAY_ON_SUCCESSFUL_VALIDATION__ef7f20'	=>	'Input message to display on successful validation. Supports [value] and [title] substitutions only.',
'SUCCESS_MESSAGE_4e9d73'	=>	'Success Message',
'INPUT_MESSAGE_TO_DISPLAY_ON_FAILED_VALIDATION_SUPP_2fa2ea'	=>	'Input message to display on failed validation. Supports [value] and [title] substitutions only.',
'ERROR_MESSAGE_c02034'	=>	'Error Message',
'QUERY_VALIDATION_ERROR'	=>	'Not a valid input.',
'ENABLE_OR_DISABLE_AJAX_QUERY_VALIDATION_THIS_WILL__53329e'	=>	'Enable or disable ajax query validation. This will allow the validation to be processed dynamically as the user uses the field.',
'AJAX_VALIDATION_0388d2'	=>	'Проверка с помощью Ajax',
'OPTIONALLY_SELECT_ADDITIONAL_FIELDS_TO_SEND_THEIR__52e293'	=>	'Optionally select additional fields to send their values to ajax validation. This will cause substitutions to dynamically change based off the entered values.',
'ADDITIONAL_FIELDS_d3cfda'	=>	'Additional Fields',
'SELECT_FIELDS_b7951c'	=>	'- Select Fields -',
'INPUT_SUBSTITUTION_SUPPORTED_QUERY_ADDITIONALLY_SU_62c8f2'	=>	'Input substitution supported Query. Additionally supports [reason] for determining query location.',
'OPTIONALLY_INPUT_THE_COLUMN_NAME_TO_USE_AS_OPTION__48aa56'	=>	'Optionally input the column name to use as option value (e.g. id). If none then label column will be used.',
'VALUE_COLUMN_03c1ed'	=>	'Value Column',
'OPTIONALLY_INPUT_THE_COLUMN_NAME_TO_USE_AS_OPTION__3e3dd8'	=>	'Optionally input the column name to use as option label (e.g. username). If none then query result will be used.',
'LABEL_COLUMN_bb496c'	=>	'Label Column',
'OPTIONALLY_CUSTOMIZE_THE_OPTION_LABEL_DISPLAY_WITH_c5b165'	=>	'Optionally customize the option label display with a substitution supported string. Use [value] for stored value and [label] for untranslated label column value.',
'CUSTOM_LABEL_91e23f'	=>	'Custom Label',
'OPTIONALLY_INPUT_THE_COLUMN_NAME_TO_USE_AS_OPTION__9e1c50'	=>	'Optionally input the column name to use as option group label (e.g. type). This can allow grouping common options under a single label. Only the first occurence of a group will create an opt group option.',
'GROUP_COLUMN_c96153'	=>	'Group Column',
'OPTIONALLY_CUSTOMIZE_THE_OPTION_GROUP_LABEL_DISPLA_b1d9e4'	=>	'Optionally customize the option group label display with a substitution supported string. Use [value] for stored value, [label] for untranslated label column value, and [group] for untranslated group column value.',
'CUSTOM_GROUP_be2111'	=>	'Custom Group',
'ENABLE_OR_DISABLE_QUERY_AUTO_COMPLETE_THIS_WILL_AL_131825'	=>	'Enable or disable query auto complete. This will allow suggesting values to select from based off what the user has typed using your own custom database query.',
'QUERY_AUTO_COMPLETE_ab8360'	=>	'Query Auto Complete',
'INPUT_SUBSTITUTION_SUPPORTED_QUERY_SUPPLY_VALUE_SU_80e274'	=>	'Input substitution supported Query. Supply [value] substitution for user input field value.',
'INPUT_THE_MINIMUM_LENGTH_OF_CHARACTERS_THAT_MUST_E_68e59d'	=>	'Input the minimum length of characters that must exist before autocomplete starts. Note this can not be less than 1.',
'MINIMUM_LENGTH_e2061d'	=>	'Minimum Length',
'OPTIONALLY_SELECT_ADDITIONAL_FIELDS_TO_SEND_THEIR__8ce77d'	=>	'Optionally select additional fields to send their values to auto complete. This will cause substitutions to dynamically change based off the entered values.',
'ENABLE_OR_DISABLE_STRICT_SELECTION_OF_AUTO_COMPLET_cf3300'	=>	'Enable or disable strict selection of auto complete options. This will prevent all other values from being used in the field except those provided by the auto complete.',
'STRICT_SELECTION_8c049e'	=>	'Strict Selection',
'INPUT_MESSAGE_TO_DISPLAY_ON_FAILED_STRICT_SELECTIO_ff9c3d'	=>	'Input message to display on failed strict selection validation. Supports [value] and [title] substitutions only.',
'STRICT_ERROR_MESSAGE_66799a'	=>	'Strict Error Message',
'QUERY_AUTOCOMPLETE_VALIDATION_ERROR'	=>	'Not a valid input.',
'SELECT_HOW_THE_QUERY_RESULTS_ARE_OUTPUT_THIS_IS_US_4ef407'	=>	'Select how the query results are output. This is useful if you want to display multiple results. Template output will send the raw query results to a PHP template that can be used to custom parse and output the query results.',
'OUTPUT_29c2c0'	=>	'Вывод',
'SINGLE_ROW_b306d9'	=>	'Single Row',
'MULTIPLE_ROWS_c5550e'	=>	'Multiple Rows',
'SELECT_IF_ONLY_A_SINGLE_SELECT_COLUMN_SHOULD_BE_DI_bffb09'	=>	'Select if only a single SELECT column should be displayed (often first) or if multiple should be displayed.',
'COLUMNS_168b82'	=>	'Колонки',
'SINGLE_COLUMN_5d53c1'	=>	'Single Column',
'MULTIPLE_COLUMNS_90e95e'	=>	'Multiple Columns',
'SELECT_HOW_COLUMN_VALUES_SHOULD_BE_DISPLAYED_357b62'	=>	'Select how column values should be displayed.',
'DELIMITER_abb968'	=>	'Delimiter',
'SELECT_DELIMITER_TO_SEPERATE_COLUMN_VALUES_4f406a'	=>	'Select delimiter to seperate column values',
'COMMA_58be47'	=>	'Comma',
'DASH_366359'	=>	'Dash',
'SPACE_d511f8'	=>	'Space',
'LINEBREAK_a6e832'	=>	'Linebreak',
'BULLETIN_LIST_d04278'	=>	'Bulletin List',
'NUMBERED_LIST_bf087c'	=>	'Numbered List',
'DIV_43d118'	=>	'Div',
'SPAN_9ce621'	=>	'Span',
'PARAGRAPH_feaf0a'	=>	'Paragraph',
'INPUT_SUBSTITUTION_SUPPORTED_ROW_DISPLAY_QUERY_SEL_134a83'	=>	'Input substitution supported row display. Query SELECT columns can be used as substitutions (e.g. [column_username]). Additionally you can substitute in the number of columns found with [column_count].',
'INPUT_SUBSTITUTION_SUPPORTED_HEADER_FOR_RESULTS_DI_ffe0e1'	=>	'Input substitution supported header for results display. This can be used to add surrounding tags such as table or a div to the rows. Additionally you can substitute in the number of rows found with [row_count].',
'HEADER_bf50d5'	=>	'Header',
'INPUT_SUBSTITUTION_SUPPORTED_ROW_DISPLAY_QUERY_SEL_7dcbbe'	=>	'Input substitution supported row display. Query SELECT columns can be used as substitutions (e.g. [column_username]). Additionally you can substitute in the number of rows found with [row_count].',
'ROW_a70367'	=>	'Row',
'INPUT_SUBSTITUTION_SUPPORTED_FOOTER_FOR_RESULTS_DI_dd6601'	=>	'Input substitution supported footer for results display. This can be used to close surrounding tags such as table or a div to the rows. Additionally you can substitute in the number of rows found with [row_count].',
'FOOTER_ded40f'	=>	'Нижний колонтитул',
'SELECT_TEMPLATE_TO_BE_USED_FOR_THIS_QUERY_DISPLAY__46bba0'	=>	'Select template to be used for this query display. If template is incomplete then missing files will be used from the default template. Template files can be located at the following location: components/com_comprofiler/plugin/user/plug_cbqueryfield/templates/.',
'SELECT_TEMPLATE_TO_BE_USED_FOR_ALL_OF_CB_QUERY_FIE_d0d5ad'	=>	'Select template to be used for all of CB Query Field. If template is incomplete then missing files will be used from the default template. Template files can be located at the following location: components/com_comprofiler/plugin/user/plug_cbqueryfield/templates/.',
);
