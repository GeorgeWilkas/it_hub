<?php
/**
* Community Builder (TM) cbinvites Russian (Russia) language file Frontend
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
// 53 language strings from file plug_cbinvites/cbinvites.xml
'SELECT_IF_THE_INVITE_CODE_FIELD_SHOULD_BE_HIDDEN_F_fefa49'	=>	'Select if the invite code field should be hidden from display. This won\'t allow the user to complete the invite code field themselves and will only accept values from invite links.',
'HIDDEN_7acdf8'	=>	'Скрыто',
'SELECT_IF_VALIDATION_SHOULD_BE_APPLIED_CLIENT_SIDE_476aa9'	=>	'Select if validation should be applied client side to verify if the invite code is valid, not accepted, and not expired. Note this only toggles client side validation. Server side validation will still be applied.',
'AJAX_VALIDATION_0388d2'	=>	'Проверка с помощью Ajax',
'YOUR_REGISTRATION_INVITE_CODE_324b31'	=>	'Ваш код пригласительной регистрации',
'INVITE_CODE_0a2eb0'	=>	'Код приглашения',
'INVITES_213b86'	=>	'Приглашения',
'ENABLE_OR_DISABLE_USAGE_OF_PAGING_ON_TAB_INVITES_b76bc2'	=>	'Включить или выключить использование постраничной разбивки на вкладке приглашений.',
'INPUT_PAGE_LIMIT_ON_TAB_INVITES_PAGE_LIMIT_DETERMI_b17959'	=>	'Ограничение приглашений на странице. Он определяет сколько приглашений будет показано на одной веб-странице.',
'ENABLE_OR_DISABLE_USAGE_OF_SEARCH_ON_TAB_INVITES_dc5e0c'	=>	'Включить или выключить использование поля поиска на вкладке приглашений.',
'SELECT_TEMPLATE_TO_BE_USED_FOR_ALL_OF_CB_INVITES_I_e3fe43'	=>	'Выберите шаблон, который будет использоваться для всех приглашений компонента СВ. Если шаблон не завершен, то отсутствующие файлы будут взяты из шаблона по умолчанию. Файлы шаблона могут быть сохранены по следующему пути: components/com_comprofiler/plugin/user/plug_cbinvites/templates/.',
'OPTIONALLY_ADD_A_CLASS_SUFFIX_TO_SURROUNDING_DIV_E_7cf91e'	=>	'На Ваш выбор, т.е. совсем не обязательно, добавьте для тега DIV всех приглашений СВ суффикс класса CSS, ',
'ENABLE_OR_DISABLE_AUTOMATIC_DELETION_OF_INVITES_WH_ae6d7f'	=>	'Enable or disable automatic deletion of invites when a user is deleted.',
'SELECT_INVITE_CREATE_ACCESS_ACCESS_DETERMINES_WHO__c4a59a'	=>	'Выберите уровень доступа к созданию приглашений. Он будет определять кто сможет отправлять приглашения. Выбранная группа, а также группы над ней (например, в случае выбора группы \'Registered\' находящаяся над ней группа \'Author\'), будут обладать таким правом.',
'SELECT_THE_FIELD_TO_USE_FOR_INVITE_CREATE_LIMIT_NO_28656f'	=>	'Select the field to use for invite create limit. Note the limit applies to active invites only and not accepted invites. Moderators are exempt from this configuration.',
'CUSTOM_8b9035'	=>	'custom',
'INPUT_NUMBER_OF_INVITES_EACH_INDIVIDUAL_USER_IS_LI_0d3553'	=>	'Введите число, определяющее сколько активных приглашений может иметь каждый отдельный пользователь (уже принятые приглашения пользователя в это число не входят). Если это поле оставить пустым, то число приглашений будет не ограниченно. Модераторы не подчиняются данному ограничению.',
'CUSTOM_CREATE_LIMIT_7ff69b'	=>	'Custom Create Limit',
'ENABLE_OR_DISABLE_CREATION_OF_GENERIC_INVITE_LINKS_01a511'	=>	'Enable or disable creation of generic invite links that users can share anywhere they like. These links do not have a recipient and can be used by anyone, but can only be used once. Moderators are exempt from this configuration.',
'INVITE_LINKS_18346c'	=>	'Invite Links',
'ENABLE_OR_DISABLE_SENDING_INVITE_EMAILS_THESE_REQU_c082a2'	=>	'Enable or disable sending invite emails. These require a recipient email address to be supplied and can only be used once. Moderators are exempt from this configuration.',
'INVITE_EMAILS_f6a704'	=>	'Invite Emails',
'INPUT_NUMBER_OF_DAYS_AFTER_INVITE_EMAIL_HAS_BEEN_S_b69230'	=>	'Input number of days after invite email has been sent to allow resending (accepted invites do not permit resending). If blank disable resending invites. Moderators are exempt from this configuration.',
'RESEND_DELAY_4f8afe'	=>	'Задержка перед повторной отправкой',
'SELECT_USAGE_OF_MULTIPLE_EMAILS_IN_A_SINGLE_INVITE_e8af1e'	=>	'Настройте использование нескольких отделенных друг от друга знаком запятой адресов электронной почты в одном приглашении (например, email1@domain.com, email2@domain.com, email3@domain.com). Модераторы во включении для них этой настройки не нуждаются.',
'MULTIPLE_INVITES_b8f6fd'	=>	'Множественные приглашения',
'SELECT_USAGE_OF_DUPLICATE_INVITES_TO_THE_SAME_ADDR_96bfd8'	=>	'Настройте использование нескольких дубликатов приглашений, отправленных на один и тот же адрес электронной почты. Модераторы во включении для них этой настройки не нуждаются.',
'DUPLICATE_INVITES_9b3f9e'	=>	'Дублировать приглашения',
'INPUT_THE_TIMEFRAME_FOR_EXPIRATIONS_BEFORE_THEY_EX_91b8bc'	=>	'Input the timeframe for expirations before they expire. This is done using PHP relative date formats to support any range of timeframes. For example for invites to expire in 1 hour you would use +1 HOUR. Leave blank for no invite expiration.',
'EXPIRATION_TIMEFRAME_0c66d9'	=>	'Expiration Timeframe',
'SELECT_CONNECTION_METHOD_FROM_INVITER_TO_INVITEE_32692b'	=>	'Выберите метод соединения приглашающего с приглашаемым.',
'CONNECTION_c2cc70'	=>	'Соединение',
'AUTO_CONNECTION_5f8c15'	=>	'Автоматическое соединение',
'PENDING_CONNECTION_30ec76'	=>	'В процессе соединения',
'INPUT_A_SUBSTITUTION_TITLE_FOR_THE_SHARE_LINK_ADDI_a8701b'	=>	'Input a substitution title for the share link. Additional subsitutions supported: [site], [sitename], [sitedesc], [register], [profile].',
'SITENAME_a4088d'	=>	'[sitename]',
'INPUT_SUBSTITUTION_SUPPORTED_TEXT_DESCRIPTION_FOR__3f3d85'	=>	'Input substitution supported text description for the share link. Additional subsitutions supported: [site], [sitename], [sitedesc], [register], [profile].',
'TEXT_9dffbf'	=>	'Текст',
'SITEDESC_b64fcc'	=>	'[sitedesc]',
'INPUT_A_SUBSTITUTION_SUPPORTED_FROM_NAME_TO_BE_SEN_f0ef2c'	=>	'Введите текст-замену названия отправителя, которое будет добавлено во всех приглашениях (например, \'Мой потрясающий СВ веб-сайт!\'). Если это поле оставить незаполненным, то по умолчанию для названия отправителя будет использовано имя отправляющего приглашение пользователя. Если указано, то название \'Кому ответить\' будет добавлено как имя пользователя.???',
'INPUT_A_SUBSTITUTION_SUPPORTED_FROM_ADDRESS_TO_SEN_ef3c3b'	=>	'Введите текст-замену адреса электронной почты отправителя, который будет добавлен во всех приглашениях (например, general@domain.com). Если это поле оставить незаполненным, то по умолчанию для адреса электронной почты отправителя будет использован адрес электронной почты пользователя. Если указано, то адрес электронной почты \'Кому ответить\' будет добавлено как адрес электронной почты пользователя.???',
'FROM_ADDRESS_a5ab7d'	=>	'Адрес электронной почты \'От кого\'',
'INPUT_A_SUBSTITUTION_INVITE_EMAIL_SUBJECT_ADDITION_bead74'	=>	'Input a substitution invite email subject. Additional subsitutions supported: [site], [sitename], [sitedesc], [register], [profile], [invite], [code], and [to].',
'YOU_HAVE_BEEN_INVITED_BY_FORMATNAME_TO_JOIN_US_7ea290'	=>	'You have been invited by [formatname] to join us!',
'INPUT_SUBSTITUTION_SUPPORTED_INVITE_EMAIL_BODY_ADD_33f183'	=>	'Input substitution supported invite email body. Additional subsitutions supported: [site], [sitename], [sitedesc], [register], [profile], [invite], [code], and [to].',
'BODY_ac101b'	=>	'Текст письма',
'HELLOFORMATNAME_WOULD_LIKE_TO_INVITE_YOU_TO_JOIN_S_ca19ff'	=>	'Hello!<p><a href="[profile]">[formatname]</a> would like to invite you to join <a href="[site]">[sitename]</a>! Please use the following invite link if you would like to join.</p><p><a href="[invite]">[invite]</a></p>',
'INPUT_A_SUBSTITUTION_SUPPORTED_CC_ADDRESS_EG_EMAIL_e48bb8'	=>	'Введите текст-замену адреса электронной почты получателя копии письма (например, [email]); поддерживается использование нескольких отделенных друг от друга адресов электронной почты (например, email1@domain.com, email2@domain.com, email3@domain.com).',
'CC_ADDRESS_b6327b'	=>	'Адрес для отправки копии',
'INPUT_A_SUBSTITUTION_SUPPORTED_BCC_ADDRESS_EG_EMAI_417251'	=>	'Введите текст-замену адреса электронной почты скрытного получателя копии письма (например, [email]); поддерживается использование нескольких отделенных друг от друга адресов электронной почты (например, email1@domain.com, email2@domain.com, email3@domain.com).',
'BCC_ADDRESS_33b728'	=>	'Адрес скрытного получателя копии',
'INPUT_A_SUBSTITUTION_SUPPORTED_ATTACHMENT_ADDRESS__523216'	=>	'Введите замену для адреса файла приложения (например, [cb_myfile]); поддерживается введение через запятую нескольких адресов (например, /home/username/public_html/images/file1.zip,[path]/file2.zip, http://www.domain.com/file3.zip). Поддерживаются дополнительные заменители: [site], [sitename], [path], [itemid], [register], [profile], [code], and [to].',
'ATTACHMENT_e9cb21'	=>	'Приложение',
// 26 language strings from file plug_cbinvites/component.cbinvites.php
'YOU_ARE_ALREADY_REGISTERED_AND_CANNOT_ACCEPT_INVIT_491efa'	=>	'You are already registered and cannot accept invites.',
'YOUR_INVITE_LINK_IS_MISSING_AN_INVITE_CODE_1a46cf'	=>	'Your invite link is missing an invite code.',
'YOUR_INVITE_LINK_DOES_NOT_APPEAR_TO_BE_VALID_e049f9'	=>	'Your invite link does not appear to be valid.',
'YOUR_INVITE_LINK_HAS_ALREADY_BEEN_USED_7077f7'	=>	'Your invite link has already been used.',
'YOUR_INVITE_LINK_HAS_EXPIRED_09c63e'	=>	'Your invite link has expired.',
'YOU_DO_NOT_HAVE_SUFFICIENT_PERMISSIONS_TO_CREATE_I_47b7c7'	=>	'You do not have sufficient permissions to create invite links.',
'INVITE_FAILED_SAVE_ERROR'	=>	'Invite failed to save! [error]',
'INVITE_LINK_CREATED_SUCCESSFULLY_1fec2e'	=>	'Invite link created successfully!',
'YOU_DO_NOT_HAVE_SUFFICIENT_PERMISSIONS_TO_SEND_INV_633b75'	=>	'You do not have sufficient permissions to send invites.',
'MULTIPLE_EMAIL_ADDRESSES_ARE_NOT_SUPPORTED_PLEASE__b8e3f7'	=>	'Multiple email addresses are not supported! Please provide a single email address to invite.',
'NO_EMAIL_ADDRESS_SPECIFIED_PLEASE_PROVIDE_A_VALID__9b7006'	=>	'No email address specified! Please provide a valid email address to invite.',
'INVITE_LIMIT_REACHED'	=>	'[to] could not be sent as you have reached your invite limit.',
'INVITE_ADDRESS_INVALID'	=>	'[to] is not a valid email address.',
'YOU_CANNOT_INVITE_YOURSELF_081db2'	=>	'You cannot invite yourself.',
'INVITE_ADDRESS_ALREADY_USER'	=>	'[to] address is already a user.',
'INVITE_ADDRESS_ALREADY_INVITED'	=>	'[to] address is already invited.',
'INVITE_YOU_ALREADY_INVITED'	=>	'You have already invited [to].',
'INVITE_FAILED_SEND_ERROR'	=>	'Invite failed to send! [error]',
'INVITES_SENT_SUCCESSFULLY_ed06f3'	=>	'Invites sent successfully!',
'INVITE_SENT_SUCCESSFULLY_380490'	=>	'Приглашение было успешно отправлено!',
'INVITE_ALREADY_ACCEPTED_AND_CANNOT_BE_RESENT_bad85f'	=>	'Invite already accepted and cannot be resent.',
'INVITE_RESEND_NOT_APPLICABLE_AT_THIS_TIME_c65f19'	=>	'Повторная отправка приглашения в данное время не применима!',
'INVITE_FAILED_SEND_ERROR'	=>	'Invite failed to send! [error]',
'INVITE_ALREADY_ACCEPTED_AND_CANNOT_BE_DELETED_08b4e6'	=>	'Invite already accepted and cannot be deleted.',
'INVITE_FAILED_DELETE_ERROR'	=>	'Удалить приглашение не удалось! Ошибка: [error]',
'INVITE_DELETED_SUCCESSFULLY_9ea357'	=>	'Приглашение удалено успешно!',
// 6 language strings from file plug_cbinvites/library/CBInvites.php
'EMAIL_FAILED_TO_SEND_decf35'	=>	'Email failed to send.',
'EMAIL_ADDRESS_MISSING_8e651d'	=>	'Email address missing.',
'EMAIL_SUBJECT_MISSING_5ef1a5'	=>	'Email subject missing.',
'EMAIL_BODY_MISSING_613548'	=>	'Email body missing.',
'INVITE_LINK_0e9533'	=>	'Invite Link',
'COPIED_6d6db5'	=>	'Copied!',
// 4 language strings from file plug_cbinvites/library/Field/InviteField.php
'INVITE_CODE_NOT_VALID_7cd6f7'	=>	'Код приглашения недействителен!',
'INVITE_CODE_ALREADY_USED_cd715c'	=>	'Данный код приглашения уже используется в этой системе!',
'INVITE_CODE_HAS_EXPIRED_c38454'	=>	'Invite code has expired.',
'INVITE_CODE_IS_VALID_96aad3'	=>	'Код приглашения действителен!',
// 5 language strings from file plug_cbinvites/library/Tab/InvitesTab.php
'SEARCH_INVITES_9e5f33'	=>	'Поиск приглашений...',
'NO_INVITE_SEARCH_RESULTS_FOUND_63c4e3'	=>	'Поиск приглашение не нашел никаких приглашений!',
'YOU_HAVE_NO_INVITES_2f8b42'	=>	'У Вас нет никаких приглашений!',
'THIS_USER_HAS_NO_INVITES_f2d878'	=>	'У данного пользователя нет никаких приглашений!',
'VALIDATION_ERROR_FIELD_EMAILS'	=>	'Please enter valid email addresses.',
// 1 language strings from file plug_cbinvites/library/Table/InviteTable.php
'OWNER_NOT_SPECIFIED_4e1454'	=>	'Не указан владелец!',
// 1 language strings from file plug_cbinvites/library/Trigger/AdminTrigger.php
'INVITE_NEW_USER_80a4fb'	=>	'Invite New User',
// 12 language strings from file plug_cbinvites/templates/default/tab.php
'INPUT_THE_EMAIL_ADDRESSES_SEPARATED_BY_A_COMMA_TO__4bda3f'	=>	'Input the email addresses separated by a comma to invite.',
'INPUT_THE_EMAIL_ADDESS_TO_INVITE_078b97'	=>	'Input the email addess to invite.',
'SEND_INVITES_9eb4fe'	=>	'Send Invites',
'SEND_INVITE_962943'	=>	'Отправить приглашение',
'CREATE_INVITE_LINK_e36825'	=>	'Create Invite Link',
'EMAIL_ADDRESS_INVITE_LINK_f1ebd8'	=>	'Email Address / Invite Link',
'ACCEPTED_382ab5'	=>	'Принято',
'SHARE_5a95a4'	=>	'Share',
'PLEASE_RESEND_6ba908'	=>	'Пожалуйста, отправьте повторно',
'EXPIRED_24fe48'	=>	'Истекшая',
'RESEND_1c0b8f'	=>	'Отправлено повторно',
'ARE_YOU_SURE_YOU_WANT_TO_DELETE_THIS_INVITE_405d09'	=>	'Вы действительно желаете удалить это приглашение?',
);
