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
 * Strings for component 'tool_coursefields', language 'ru', version '4.4'.
 *
 * @package     tool_coursefields
 * @category    string
 * @copyright   1999 Martin Dougiamas and contributors
 * @license     https://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

$string['coursefields:setfields'] = 'Задавать пользовательские поля курса для всех курсов в категории.';
$string['fieldisrequired'] = '<strong>Это пользовательское поле указано как «обязательное».</strong> С помощью этого инструмента можно переопределить это правило и перезаписать это поле пустыми значениями. Пожалуйста, делайте это только в случае, если Вы точно знаете, для чего это делается.';
$string['fieldisunique'] = '<strong>Это пользовательское поле указано как «уникальное».</strong> С помощью этого инструмента можно переопределить это правило и перезаписать это поле одинаковыми значениями. Пожалуйста, делайте это только в случае, если Вы точно знаете, для чего это делается.';
$string['overwritefield'] = 'Перезаписать существующие значения полей';
$string['pluginname'] = 'Задание полей курса';
$string['privacy:metadata'] = 'Плагин «Задание полей курса» не хранит никаких персональных данных.';
$string['setfields'] = 'Задать пользовательские поля курса';
$string['setfieldsinstruction'] = 'Задайте пользовательские поля курса для всех курсов в категории, включая подкатегории. Выберите свои значения и нажмите «Подтвердить». После подтверждения Moodle создаст разовую задачу для задания в фоновом режиме всех полей курса. Для этого необходимо, чтобы cron был включен.';
$string['updatequeued'] = 'Задача по обновлению всех курсов в категории <strong>«{$a}»</strong> была добавлена в очередь. Она будет запущена при следующем выполнении cron.';
