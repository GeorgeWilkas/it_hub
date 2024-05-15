<?php
// This file is part of Moodle - https://moodle.org/
//
// Moodle is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Moodle is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Moodle.  If not, see <https://www.gnu.org/licenses/>.

/**
 * Strings for component 'factor_sms', language 'ru', version '4.4'.
 *
 * @package     factor_sms
 * @category    string
 * @copyright   1999 Martin Dougiamas and contributors
 * @license     https://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

$string['action:revoke'] = 'Отозвать номер мобильного телефона';
$string['addnumber'] = 'Мобильный телефон';
$string['editphonenumber'] = 'Редактировать номер телефона';
$string['editphonenumberinfo'] = 'Если вы не получили код или ввели неверный код, введите код и попробуйте еще раз';
$string['error:emptyverification'] = 'Пустой код. Попробуйте снова';
$string['error:wrongphonenumber'] = 'Указанный номер телефона имеет неверный формат';
$string['error:wrongverification'] = 'Неверный код. Попробуйте снова';
$string['errorawsconection'] = 'Ошибка подключения к AWS серверу: {$a}';
$string['errorsmssent'] = 'Ошибка отправки сообщения, содержащего ваш проверочный код';
$string['event:smssent'] = 'Сообщение отправлено';
$string['event:smssentdescription'] = 'Пользователю с ID {$a->userid} было отправлено сообщение с проверочным кодом. Информация: {$a->debuginfo}';
$string['info'] = '<p>Укажите номер мобильного телефона для получения аутентификационного кода.</p>';
$string['logindesc'] = 'Сообщение, содержащее 6-значный код, отправлено на номер {$a}';
$string['loginskip'] = 'Я не получил код';
$string['loginsubmit'] = 'Продолжить';
$string['logintitle'] = 'Введите проверочный код, отправленный на ваш номер';
$string['phonehelp'] = 'Введите номер мобильного телефона (включая код страны) для получения проверочного кода';
$string['pluginname'] = 'Сообщение на мобильный телефон';
$string['settings:aws:key'] = 'Ключ';
$string['settings:aws:region'] = 'Регион';
$string['settings:countrycode'] = 'Код страны';
$string['settings:countrycode_help'] = 'Код вызова (по умолчанию без начального +, если пользователи не вводят международный номер с префиксом +).

См. эту ссылку для списка кодов вызова: {$a}';
$string['settings:gateway'] = 'SMS-шлюз';
$string['settings:gateway_help'] = 'Поставщик SMS, через которого вы хотите отправлять сообщения.';
$string['setupsubmitcode'] = 'Сохранить';
