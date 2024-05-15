<?php
/**
* Community Builder (TM) cbreconfirmemail Russian (Russia) language file Frontend
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
// 31 language strings from file plug_cbreconfirmemail/cbreconfirmemail.xml
'ENABLE_OR_DISABLE_AUTOMATIC_DELETION_OF_EMAIL_CHAN_a4b7f8'	=>	'Enable or disable automatic deletion of email changes when a user is deleted.',
'INPUT_SUBSTITUTION_SUPPORTED_MESSAGE_DISPLAYED_AFT_a4c750'	=>	'Input substitution supported message displayed after changing email address. Leave blank to display no message.',
'YOUR_EMAIL_ADDRESS_HAS_CHANGED_AND_REQUIRES_RECONF_498289'	=>	'Your email address has changed and requires reconfirmation. Please check your new email address for your confirmation email.',
'INPUT_A_SUBSTITUTION_SUPPORTED_FROM_NAME_TO_BE_SEN_da9ff3'	=>	'Input a substitution supported from name to be sent with the notification (e.g. My Awesome CB Site!). If left blank will default to users name. If specified a replyto name will be added as the users name.',
'INPUT_A_SUBSTITUTION_SUPPORTED_FROM_ADDRESS_TO_SEN_944691'	=>	'Input a substitution supported from address to send the notification from (e.g. general@domain.com). If left blank will default to users email. If specified a replyto address will be added as the users email.',
'FROM_ADDRESS_a5ab7d'	=>	'Адрес электронной почты \'От кого\'',
'THIS_NOTIFICATION_INFORMS_THE_USER_THEIR_EMAIL_ADD_347f3a'	=>	'This notification informs the user their email address requires confirmation and provides a link to confirm the change. This is always sent to the users new email address.',
'INPUT_SUBSTITUTION_SUPPORTED_NOTIFICATION_SUBJECT_6cd487'	=>	'Input substitution supported notification subject.',
'YOUR_EMAIL_ADDRESS_REQUIRES_CONFIRMATION_bf8a46'	=>	'Your email address requires confirmation',
'INPUT_HTML_AND_SUBSTITUTION_SUPPORTED_NOTIFICATION_81d838'	=>	'Input html and substitution supported notification body. Supply [reconfirm] to display the confirmation link. Additionally [old_email] can be used to display the old email address or [new_email] to display the new email address.',
'BODY_ac101b'	=>	'Текст письма',
'THE_EMAIL_ADDRESS_ATTACHED_TO_YOUR_ACCOUNT_USERNAM_5c3f69'	=>	'The email address attached to your account [username] has changed to [new_email] and requires confirmation.<br><br>You can confirm your email address by clicking on the following link:<br><a href="[reconfirm]">[reconfirm]</a><br><br>If this was done in error please contact administration or cancel by <a href="[cancel]">clicking here</a>.',
'INPUT_A_SUBSTITUTION_SUPPORTED_CC_ADDRESS_EG_EMAIL_e48bb8'	=>	'Введите текст-замену адреса электронной почты получателя копии письма (например, [email]); поддерживается использование нескольких отделенных друг от друга адресов электронной почты (например, email1@domain.com, email2@domain.com, email3@domain.com).',
'CC_ADDRESS_b6327b'	=>	'Адрес для отправки копии',
'INPUT_A_SUBSTITUTION_SUPPORTED_BCC_ADDRESS_EG_EMAI_417251'	=>	'Введите текст-замену адреса электронной почты скрытного получателя копии письма (например, [email]); поддерживается использование нескольких отделенных друг от друга адресов электронной почты (например, email1@domain.com, email2@domain.com, email3@domain.com).',
'BCC_ADDRESS_33b728'	=>	'Адрес скрытного получателя копии',
'INPUT_A_SUBSTITUTION_SUPPORTED_ATTACHMENT_ADDRESS__14d21b'	=>	'Input a substitution supported Attachment address (e.g. [cb_myfile]); multiple addresses supported with comma seperated list (e.g. /home/username/public_html/images/file1.zip, http://www.domain.com/file3.zip).',
'ATTACHMENT_e9cb21'	=>	'Приложение',
'THIS_NOTIFICATION_INFORMS_THE_USER_THEIR_EMAIL_ADD_7da716'	=>	'This notification informs the user their email address has been changed and provides a link to cancel the change. This is always sent to the users old email address.',
'SELECT_IF_THE_USER_SHOULD_BE_NOTIFIED_THAT_THEIR_E_d48114'	=>	'Select if the user should be notified that their email address has been changed.',
'YOUR_EMAIL_ADDRESS_HAS_CHANGED_e5b542'	=>	'Your email address has changed',
'THE_EMAIL_ADDRESS_ATTACHED_TO_YOUR_ACCOUNT_USERNAM_5819c6'	=>	'The email address attached to your account [username] has changed to [new_email] and requires confirmation.<br><br>Please check the new email address for a link to confirm this change. If this was done in error please contact administration or cancel by <a href="[cancel]">clicking here</a>.',
'INPUT_SUBSTITUTION_SUPPORTED_URL_TO_REDIRECT_TO_AF_76c4af'	=>	'Input substitution supported URL to redirect to after successful reconfirm. If left blank no redirect will be performed.',
'REDIRECT_4202ef'	=>	'Redirect',
'INPUT_SUBSTITUTION_SUPPORTED_MESSAGE_DISPLAYED_AFT_96a926'	=>	'Input substitution supported message displayed after successful reconfirm.',
'NEW_EMAIL_ADDRESS_CONFIRMED_SUCCESSFULLY_1a901d'	=>	'New email address confirmed successfully!',
'INPUT_SUBSTITUTION_SUPPORTED_URL_TO_REDIRECT_TO_AF_e82b77'	=>	'Input substitution supported URL to redirect to after successfully cancelling email change. If left blank no redirect will be performed.',
'INPUT_SUBSTITUTION_SUPPORTED_MESSAGE_DISPLAYED_AFT_73710e'	=>	'Input substitution supported message displayed after successfully cancelling email change.',
'EMAIL_ADDRESS_CHANGE_CANCELLED_SUCCESSFULLY_167e65'	=>	'Email address change cancelled successfully!',
'OPTIONALLY_SUPPLY_A_TIMEFRAME_FOR_EMAIL_CHANGE_REQ_4477a8'	=>	'Optionally supply a timeframe for email change requests to expire (e.g. +1 DAY, +1 MONTH, +1 YEAR, +3 DAYS). If outside of the timeframe the email change request will need to be reattempted. Leave blank for no timeframe.',
'TIMEFRAME_e1a49a'	=>	'Timeframe',
// 7 language strings from file plug_cbreconfirmemail/component.cbreconfirmemail.php
'CONFIRM_CODE_MISSING_761a29'	=>	'Confirm code missing.',
'USER_NOT_ASSOCIATED_WITH_CONFIRM_CODE_220850'	=>	'User not associated with confirm code.',
'EMAIL_ADDRESS_CHANGE_REQUEST_HAS_EXPIRED_6bf424'	=>	'Email address change request has expired.',
'EMAIL_ADDRESS_CHANGE_REQUEST_HAS_ALREADY_BEEN_CANC_55a964'	=>	'Email address change request has already been cancelled.',
'EMAIL_ADDRESS_HAS_ALREADY_BEEN_CONFIRMED_beb1ba'	=>	'Email address has already been confirmed',
'FAILED_CANCEL_RECONFIRM_EMAIL'	=>	'Failed to cancel new email address! Error: [error]',
'FAILED_RECONFIRM_EMAIL'	=>	'Failed to confirm new email address! Error: [error]',
// 2 language strings from file plug_cbreconfirmemail/library/Table/ReconfirmEmailTable.php
'OLD_EMAIL_ADDRESS_NOT_SPECIFIED_6a71b9'	=>	'Old email address not specified!',
'NEW_EMAIL_ADDRESS_NOT_SPECIFIED_39473d'	=>	'New email address not specified!',
// 2 language strings from file plug_cbreconfirmemail/library/Trigger/AdminTrigger.php
'RECONFIRM_EMAIL_af60a1'	=>	'Reconfirm Email',
'EMAILS_9790b7'	=>	'Emails',
// 1 language strings from file plug_cbreconfirmemail/library/Trigger/UserTrigger.php
'RECONFIRM_EMAIL_FAILED_TO_SAVE'	=>	'Email address failed to save! Error: [error]',
);
