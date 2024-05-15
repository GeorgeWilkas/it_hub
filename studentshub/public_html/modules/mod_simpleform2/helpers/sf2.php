<?php
/**
 * @package  SimpleForm2
 * @license  http://www.gnu.org/licenseses/gpl-3.0.html GNU/GPL
 *
 * Created by Oleg Micriucov for Joomla! 3.x, 4.x, 5.x
 * https://allforjoomla.com
 *
 */
defined('_JEXEC') or die;

class SF2Helper {

    public static function transliterate($var) {
        $letters = array('~а~u' => 'a', '~б~u' => 'b', '~в~u' => 'v', '~г~u' => 'g', '~д~u' => 'd', '~е~u' => 'e', '~з~u' => 'z', '~и~u' => 'i', '~к~u' => 'k', '~л~u' => 'l', '~м~u' => 'm', '~н~u' => 'n', '~о~u' => 'o', '~п~u' => 'p', '~р~u' => 'r', '~с~u' => 's', '~т~u' => 't', '~у~u' => 'u', '~ф~u' => 'f', '~ц~u' => 'c', '~ы~u' => 'y', "~й~u" => "jj", "~ё~u" => "jo", "~ж~u" => "zh", "~х~u" => "kh", "~ч~u" => "ch", "~ш~u" => "sh", "~щ~u" => "shh", "~э~u" => "je", "~ю~u" => "ju", "~я~u" => "ja", "~ъ~u" => "", "~ь~u" => "");
        $var = mb_strtolower(trim(strip_tags($var)), 'UTF-8');
        $var = preg_replace('~\s+~ms', '_', $var);
        $var = preg_replace(array_keys($letters), array_values($letters), $var);
        $var = preg_replace('~[^a-z0-9_\-]+~mi', '', $var);
        return $var;
    }

    public static function parseParams($str) {
        $params = array();
        preg_match_all('~([a-z0-9\-_]+)="([^"]+)~is', $str, $matchesPDQ);
        preg_match_all('~([a-z0-9\-_]+)=\'([^\']+)~is', $str, $matchesPSQ);
        if (is_array($matchesPDQ) && isset($matchesPDQ[0])) {
            foreach ($matchesPDQ[0] as $k => $match) {
                $params[$matchesPDQ[1][$k]] = $matchesPDQ[2][$k];
            }
        }if (is_array($matchesPSQ) && isset($matchesPSQ[0])) {
            foreach ($matchesPSQ[0] as $k => $match) {
                $params[$matchesPSQ[1][$k]] = $matchesPSQ[2][$k];
            }
        }return $params;
    }

    public static function isEmail($str) {
        $validEmail = filter_var($str, FILTER_SANITIZE_EMAIL);
        return ($validEmail !== false && !is_null($validEmail) && $validEmail != '');
    }

    public static function sendFormEmail($form, $moduleParams) {
        $now = JFactory::getDate();
        $url = JUri::root();
        $app = JFactory::getApplication();
        $cfg = JFactory::getConfig();
        $mail = JFactory::getMailer();
        $lang = JFactory::getLanguage();
        $user = JFactory::getUser();

        $mail->setSender(array($cfg->get('mailfrom'), $cfg->get('fromname')));

        $replyTo = trim($moduleParams->get('sfMailReply', ''));
        preg_match('~^\{([a-z0-9_\-]+)\}$~i', $replyTo, $matches);
        preg_match('~^\{user\:([a-z0-9_\-]+)\}$~i', $replyTo, $matchesUser);
        if (is_array($matches) && isset($matches[1]) && $matches[1] != '') {
            $elem = $form->getElementByName($matches[1]);
            if ($elem === false) {
                throw new \Exception(sprintf(JText::_('MOD_SIMPLEFORM2_SENDER_ELEMENT_NOT_FOUND'), '{' . $matches[1] . '}'));
            }
            $replyTo = $elem->getValue();
        } else if (is_array($matchesUser) && isset($matchesUser[1]) && $matchesUser[1] != '') {
            if ($form->getUserData($matchesUser[1])) {
                $replyTo = $form->getUserData($matchesUser[1]);
            }
        }
        if ($replyTo != '') {
            $mail->ClearReplyTos();
            $mail->AddReplyTo($replyTo, $replyTo);
        }

        $mailTo = $moduleParams->get('sfMailTo', '');
        if (!$mailTo) {
            throw new \Exception(JText::_('MOD_SIMPLEFORM2_FORM_NOT_CONFIGURED'));
        }
        $recieps = array();
        $tmpR = explode(',', $mailTo);
        foreach ($tmpR as $tmpRr) {
            $tmpRr = trim($tmpRr);
            preg_match('~^\{([a-z0-9_\-]+)\}$~', $tmpRr, $matches);
            if (is_array($matches) && isset($matches[1]) && $matches[1] != '') {
                $elem = $form->getElementByName($matches[1]);
                if ($elem === false) {
                    throw new \Exception(sprintf(JText::_('MOD_SIMPLEFORM2_RECIPIENT_ELEMENT_NOT_FOUND'), '{' . $matches[1] . '}'));
                }
                $recieps = array_merge($recieps, (array) $elem->getValue());
            } else if ($tmpRr != '')
                $recieps[] = $tmpRr;
        }
        if (count($recieps) < 1) {
            throw new \Exception(JText::_('MOD_SIMPLEFORM2_FORM_NOT_CONFIGURED'));
        }
        foreach ($recieps as $reciep) {
            $mail->addRecipient($reciep);
        }

        $subject = $moduleParams->get('sfMailSubj', JText::_('MOD_SIMPLEFORM2_MAIL_SUBJECT_DEFAULT'));
        if ($subject == '') {
            $subject = JText::_('MOD_SIMPLEFORM2_MAIL_SUBJECT_DEFAULT');
        }
        $subject = html_entity_decode($subject, ENT_QUOTES);
        $mail->setSubject($subject);

        $url = str_replace('modules/mod_simpleform2/', '', $url);
        $url = $app->input->get('url', $url, 'string');
        $date = JHtml::_('date', $now->format('Y-m-d H:i:s'), 'd.m.Y H:i:s');
        $ip = self::getUserIp($moduleParams->get('ip_detect_method', 'REMOTE_ADDR'));

        $body = self::getTemplate($moduleParams->get('layout', 'default'), array('url' => $url, 'date' => $date, 'ip' => $ip, 'form' => $form));
        $body = stripslashes(html_entity_decode($body, ENT_QUOTES));
        $mail->setBody($body);
        if (strip_tags($body) != $body)
            $mail->IsHTML(true);

        foreach ($form->getAttachments() as $file) {
            $mail->AddStringAttachment(file_get_contents($file['tmp_name']), $file['name']);
        }

        if ((int) $moduleParams->get('recordForms', 0) == 1) {
            self::checkDB();
            $db = JFactory::getDbo();
            $q = $db->getQuery(true);
            $q->insert($db->quoteName('#__sf2_records'))
                    ->columns($db->quoteName(array(
                                'module_id',
                                'subject',
                                'recipient',
                                'message',
                                'uri',
                                'lang',
                                'user_id',
                                'ip',
                                'created_at',
                    )))
                    ->values(implode(',', array(
                        $db->quote($form->moduleID),
                        $db->quote($subject),
                        $db->quote($moduleParams->get('sfMailTo', '')),
                        $db->quote($body),
                        $db->quote($url),
                        $db->quote($lang->getTag()),
                        $db->quote((int) $user->get('id')),
                        $db->quote($ip),
                        $db->quote($now->toSql()),
            )));
            $db->setQuery($q);
            $db->execute();
        }

        SF2Helper::triggerEvent('onProcessBeforeSendEmail', array(&$mail, $form, $moduleParams));
        $result = $mail->Send();
        SF2Helper::triggerEvent('onProcessAfterSendEmail', array(&$mail, $form, $moduleParams, $result));

        if ($result instanceof \Exception) {
            throw new \Exception($result->getMessage());
        } else if ($result !== true) {
            throw new \Exception(JText::_('MOD_SIMPLEFORM2_MAIL_SEND_ERROR'));
        }

        $sendCopy = false;
        foreach ($form->getElementsByType('sender_copy') as $copyElement) {
            if ($copyElement->getValue() == 'yes') {
                $sendCopy = true;
                break;
            }
        }
        if ($sendCopy) {
            $copy = JFactory::getMailer();
            $copy->setSender(array($cfg->get('mailfrom'), $cfg->get('fromname')));
            $copy->addRecipient($form->getElementByName($copyElement->getParam('recipient-element-name'))->getValue());
            $copy->setSubject($subject);

            $body = self::getTemplate($copyElement->getParam('layout', $moduleParams->get('layout', 'default')), array('url' => $url, 'date' => $date, 'ip' => $ip, 'form' => $form));
            $body = stripslashes(html_entity_decode($body, ENT_QUOTES));
            $copy->setBody($body);
            $copy->IsHTML((strip_tags($body) != $body));
            foreach ($form->getAttachments() as $file) {
                $copy->AddStringAttachment(file_get_contents($file['tmp_name']), $file['name']);
            }
            $copy->Send();
        }
    }

    public static function getUserIp($ipDetectMethod = 'REMOTE_ADDR') {
        if (isset($_SERVER[$ipDetectMethod]) && !empty($_SERVER[$ipDetectMethod])) {
            return $_SERVER[$ipDetectMethod];
        } else {
            return $_SERVER['REMOTE_ADDR'];
        }
        /* $this->_ip_address = $_SERVER['REMOTE_ADDR'];
          if (getenv('REMOTE_ADDR'))
          $ip = getenv('REMOTE_ADDR');
          elseif (getenv('HTTP_X_FORWARDED_FOR'))
          $ip = getenv('HTTP_X_FORWARDED_FOR');
          else
          $ip = getenv('HTTP_CLIENT_IP');
          return $ip; */
    }

    public static function getTemplate($_tmpl, $_vars) {
        jimport('joomla.application.module.helper');
        extract($_vars);
        JFactory::getLanguage()->load('mod_simpleform2', JPATH_SITE, null, true);
        ob_start();
        include(JModuleHelper::getLayoutPath('mod_simpleform2', $_tmpl));
        $content = ob_get_clean();
        return $content;
    }

    public static function getSizeDisplay($bytes) {
        $units = array(JText::_('MOD_SIMPLEFORM2_BYTE'), JText::_('MOD_SIMPLEFORM2_KILOBYTE'), JText::_('MOD_SIMPLEFORM2_MEGABYTE'), JText::_('MOD_SIMPLEFORM2_GIGABYTE'), JText::_('MOD_SIMPLEFORM2_TERABYTE'));
        $power = $bytes > 0 ? floor(log($bytes, 1024)) : 0;
        return number_format($bytes / pow(1024, $power), 2, '.', ',') . ' ' . $units[$power];
    }

    public static function getBytes($val) {
        $unit = preg_replace('~[^bkmgtpezy]~i', '', $val);
        $size = preg_replace('~[^0-9\.]~', '', $val);
        if ($unit) {
            return round($size * pow(1024, stripos('bkmgtpezy', $unit[0])));
        } else {
            return round($size);
        }
    }

    public static function getMaxFileUploadSize() {
        $max_upload = self::getBytes(ini_get('upload_max_filesize'));
        $max_post = self::getBytes(ini_get('post_max_size'));
        $memory_limit = self::getBytes(ini_get('memory_limit'));
        $result = (int) min($max_upload, $max_post, $memory_limit);
        if ($result <= 0) {
            $result = 1024 * 1024 * 5; //5M
        }
        return $result;
    }

    public static function checkDB() {
        $db = JFactory::getDbo();
        $tables = $db->getTableList();
        if (!in_array($db->replacePrefix('#__sf2_records'), $tables)) {
            $db->setQuery(
                    'CREATE TABLE `#__sf2_records` (
	`id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	`module_id` INT(11) UNSIGNED NOT NULL,
	`subject` VARCHAR(255) NOT NULL,
    `recipient` VARCHAR(255) NOT NULL,
    `message` TEXT NOT NULL,
    `uri` TEXT NOT NULL,
    `lang` VARCHAR(10) NOT NULL,
    `user_id` INT(11) UNSIGNED NOT NULL,
    `ip` VARCHAR(100) NOT NULL,
    `created_at` DATETIME NOT NULL,
	PRIMARY KEY (`id`)
)
ENGINE=InnoDB
AUTO_INCREMENT=0
DEFAULT CHARSET=utf8;'
            );
            $db->execute();
        }
        //$columns = $db->getTableColumns('#__sf2_records');
    }

    public static function getToken() {
        $config = JFactory::getConfig();
        return crypt('sf2', $config->get('secret', 'sf2'));
    }

    public static function triggerEvent($event, $args, $default = '') {
        JPluginHelper::importPlugin('simpleform2');
        $app = JFactory::getApplication();
        $result = (array) $app->triggerEvent($event, $args);
        if (count($result)) {
            return implode('', $result);
        } else {
            return $default;
        }
        return null;
    }

}
