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
 * Strings for component 'enrol_autoenrol', language 'ru', version '4.4'.
 *
 * @package     enrol_autoenrol
 * @category    string
 * @copyright   1999 Martin Dougiamas and contributors
 * @license     https://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

$string['alwaysenrol'] = 'Всегда подписывать';
$string['alwaysenrol_help'] = 'При выборе значения «Да» плагины будут всегда зачислять пользователей, даже если они уже имеют доступ к курсу через другой метод зачисления.';
$string['auto'] = 'Авто';
$string['auto_desc'] = 'Эта группа была автоматически создана плагином «Автозачисление». Группа будет удалена, если вы уберете этот плагин из курса.';
$string['autoenrol:config'] = 'Настройка автоматического зачисления';
$string['autoenrol:hideshowinstance'] = 'Включать или отключать случаи автоматического зачисления';
$string['autoenrol:manage'] = 'Управлять автоматически зачисленными пользователями';
$string['autoenrol:method'] = 'Пользователь может записаться на курс при входе на сайт';
$string['autoenrol:unenrol'] = 'Пользователь может отчислять автозачисленных пользователей';
$string['autoenrol:unenrolself'] = 'Отчислять себя, если ранее был записан';
$string['autounenrolaction'] = 'Действие при автоматическом отчислении';
$string['autounenrolaction_help'] = 'Выберите действие, которое необходимо выполнить, когда пользователь больше не соответствует правилам фильтрации. Пожалуйста, обратите внимание, что некоторые данные и настройки пользователя удаляются из курса при его исключении.';
$string['availabilityplugins'] = 'Доступные плагины ограничения доступа';
$string['availabilityplugins_help'] = 'Выберите плагины ограничения доступа, которые можно использовать в фильтре автоматического зачисления пользователей. Для выбора нескольких значений удерживайте Ctrl или Cmd.';
$string['cannotenrol'] = 'Вы не можете записаться на этот курс, используя автоматическое зачисление.';
$string['config'] = 'Конфигурация';
$string['confirmbulkdeleteenrolment'] = 'Вы уверены, что хотите удалить эти зачисления?';
$string['countlimit'] = 'Лимит';
$string['countlimit_help'] = 'Количество учащихся будет сравниваться со значением этого параметра и зачисление пользователей может быть остановлено при достижении заданного значения. Установка по умолчанию 0 означает неограниченное зачисление.';
$string['customwelcomemessage'] = 'Настраиваемое приветственное сообщение';
$string['customwelcomemessage_help'] = 'Настраиваемое приветственное сообщение может быть добавлено как текст или авто-формат Moodle и содержать в себе теги HTML и многоязычные теги.

В сообщение можно включать следующие подстановки:

* Название курса {$a->coursename}
* Ссылка на страницу профиля пользователя {$a->profileurl}
* Электронная почта пользователя {$a->email}
* Полное имя пользователя {$a->fullname}';
$string['defaultrole'] = 'Назначение роли по умолчанию';
$string['defaultrole_desc'] = 'Выберите роль, которая будет назначена пользователю при автоматическом зачислении';
$string['deleteselectedusers'] = 'Удалить зачисления выбранных пользователей';
$string['editselectedusers'] = 'Изменить зачисления выбранных пользователей';
$string['emptyfield'] = 'Нет {$a}';
$string['enrolenddate'] = 'Дата окончания';
$string['enrolenddate_help'] = 'При включенном параметре пользователи смогут записываться только до этой даты.';
$string['enrolme'] = 'Зачислить меня';
$string['enrolperiod'] = 'Продолжительность зачисления';
$string['enrolperiod_help'] = 'Срок, в течение которого действует зачисление, начиная с того момента, как пользователь зачислен на курс. Если параметр отключен - ограничение отсутствует.';
$string['enrolstartdate'] = 'Дата начала';
$string['enrolstartdate_help'] = 'Если включено, пользователи будут записываться только начиная с этой даты.';
$string['expirynotifyall'] = 'Преподавателя и зачисленного пользователя';
$string['expirynotifyenroller'] = 'Только преподавателя';
$string['filter'] = 'Разрешить только';
$string['filter_help'] = 'Вы можете использовать поле группы, чтобы фильтровать тип пользователя, который вы хотите записывать на курс. Например, если вы сгруппировали по способу аутентификации и применили фильтр "вручную", тогда на курс будут записаны только те пользователи, которые зарегистрированы непосредственно на вашем сайте.';
$string['filtering'] = 'Настройки фильтрации';
$string['g_auth'] = 'Метод авторизации';
$string['g_dept'] = 'Факультет';
$string['g_email'] = 'Адрес электронной почты';
$string['g_inst'] = 'Институт';
$string['g_lang'] = 'Язык';
$string['g_none'] = 'Выбрать...';
$string['general'] = 'Общее';
$string['groupname'] = 'Имя группы';
$string['groupname_help'] = 'Будет создана группа с указанным именем, если выбрано объединение в группы по условию «Фильтр пользователя».';
$string['groupon'] = 'Объединять в группы по';
$string['groupon_help'] = 'При автоматическом зачислении можно при записи пользователей автоматически добавлять их в группу, основываясь на одном из этих полей пользователя.';
$string['instancename'] = 'Пользовательское название';
$string['instancename_help'] = 'Вы можете добавить название, чтобы было ясно, что делает данный метод зачисления. Эта опция полезна, если в курсе используется несколько методов автозачисления';
$string['loginenrol'] = 'Разрешить зачисление при входе в систему';
$string['loginenrol_desc'] = 'Разрешение зачисления при входе в систему может снизить производительность вашей системы. В качестве альтернативы вы можете использовать запланированную задачу для обновления зачислений на все курсы или команду с командной строки для определенных курсов.';
$string['longtimenosee'] = 'Отписывать неактивных после';
$string['longtimenosee_help'] = 'Если пользователи не обращались к курсу в течение длительного времени, они автоматически отчисляются. Данный параметр определяет это ограничение по времени.';
$string['m_confirmation'] = 'При подтверждении зачисления';
$string['m_course'] = 'При загрузке курса';
$string['m_site'] = 'Во время входа на сайт';
$string['maxenrolled'] = 'Максимальное количество зачисленных пользователей.';
$string['maxenrolled_help'] = 'Укажите максимальное количество пользователей, которые могут быть зачислены автоматически. 0 означает отсутствие ограничений.';
$string['messageprovider:expiry_notification'] = 'Уведомления об истечении срока автоматического зачисления';
$string['method'] = 'Когда зачислять';
$string['method_help'] = 'Опытные пользователи могут использовать эту настройку для изменения поведения плагина таким образом, чтобы пользователи записывались на курс при входе в систему, вместо ожидания доступа к курсу. Это полезно для курсов, которые по умолчанию должны быть видимы пользователям в списке «Мои курсы».';
$string['newenrols'] = 'Разрешить новые зачисления';
$string['newenrols_desc'] = 'По умолчанию разрешать пользователям автоматическое зачисление в новые курсы.';
$string['newenrols_help'] = 'Этот параметр определяет, может ли пользователь записаться на этот курс.';
$string['nogroupon'] = 'Не создавать группы';
$string['pluginname'] = 'Автозачисление';
$string['pluginname_desc'] = 'Модуль автоматического зачисления позволяет пользователям, вошедшим в систему, быть автоматически записанными на курс. Это похоже на разрешение гостевого доступа, но студенты будут полноправными участниками курса и, следовательно, смогут участвовать в форумах и других активных элементах этого курса.';
$string['pluginnotenabled'] = 'Плагин автоматического зачисления не включен';
$string['privacy:metadata:core_group'] = 'Плагин автоматического зачисления может создавать новые группы или использовать существующие группы для добавления участников, соответствующих фильтру автозачисления.';
$string['removegroups'] = 'Удалять группы';
$string['removegroups_desc'] = 'Когда метод зачисления удаляется из курса удалять ли группы, которые были созданы этим методом? Обращаем внимание, что данный модуль позволяет в настройках курса группировать пользователей по почтовому адресу, языку, методу авторизации и т.д.';
$string['role'] = 'Роль по умолчанию';
$string['role_help'] = 'Опытные пользователи могут использовать эту настройку для изменения уровня прав зачисляемых пользователей.';
$string['selfunenrol'] = 'Разрешать самостоятельную отписку';
$string['selfunenrol_desc'] = 'Разрешать по умолчанию самостоятельную отписку при записи на новые курсы.';
$string['selfunenrol_help'] = 'При установке «Да» пользователи могут самостоятельно отписаться от курса.';
$string['sendcoursewelcomemessage'] = 'Отправить приветственное сообщение курса';
$string['sendcoursewelcomemessage_help'] = 'Когда пользователь автоматически зачисляется на курс, ему по электронной почте может быть отправлено приветственное сообщение от имени контактного лица курса (по умолчанию - учителя). Если такую роль имеют несколько пользователей, то письмо отправляется от имени того пользователя, которому первым была назначена эта роль.';
$string['sendexpirynotificationstask'] = 'Задача отправки уведомлений об истечении срока действия автоматического зачисления';
$string['softmatch'] = 'Нестрогое соответствие';
$string['softmatch_help'] = 'При включенном параметре автоматическое зачисление будет записывать пользователя и тогда, когда он частично подходит под  значение «Разрешить только», вместо того, чтобы требовать полного соответствия . Нестрогое соответствие также не чувствительно к регистру. Значение «Фильтровать по» будет использоваться для названия группы.';
$string['status'] = 'Позволить имеющиеся зачисления';
$string['status_desc'] = 'Разрешить метод автозачисления в новых курсах.';
$string['status_help'] = 'Если включено совместно с отключенной настройкой «Позволить новые зачисления», то доступ в курс смогут получить только пользователи, которые ранее были зачислены этим методом. Если выключено, то метод автоматического зачисления фактически отключен, поскольку существующие зачисления приостановлены, а новые пользователи записаться не могут.';
$string['syncenrolmentstask'] = 'Задача синхронизации автоматического зачисления';
$string['syncexpirationstask'] = 'Задача проверки истечения срока автоматического зачисления';
$string['unenrolselfconfirm'] = 'Вы действительно хотите отписаться от курса «{$a}»?
Потом вы можете повторно записаться на этот курс, но при этом может быть утрачена информация об оценках и отправленных ответах на задания.';
$string['unenrolusers'] = 'Отписать пользователей';
$string['userfilter'] = 'Фильтр пользователя';
$string['userfilter_help'] = 'Будут автоматически зачислены только пользователи, соответствующие правилам.';
$string['warning'] = 'Осторожно!';
$string['warning_message'] = 'Добавление этого плагина в курс позволит любым зарегистрированным пользователям Moodle получить доступ к вашему курсу. Добавляйте этот способ записи только если вы хотите открыть доступ к вашему курсу для всех пользователей Moodle.';
$string['welcomemessage'] = 'Приветственное сообщение';
$string['welcometocourse'] = 'Добро пожаловать в {$a}';
