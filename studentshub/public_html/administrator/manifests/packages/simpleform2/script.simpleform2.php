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

class Pkg_SimpleForm2InstallerScript {

    protected $packageName = 'pkg_simpleform2';
    protected $minimumPHPVersion = '5.3.0';
    protected $minimumJoomlaVersion = '3.5.0';
    protected $maximumJoomlaVersion = '5.1.99';
    protected $extensionsToEnable = array(
        array('plugin', 'simpleform2', 0, 'system'),
    );

    public function preflight($type, $parent) {
        if (!version_compare(PHP_VERSION, $this->minimumPHPVersion, 'ge')) {
            $msg = "<p>You need PHP $this->minimumPHPVersion or later to install this package</p>";
            JLog::add($msg, JLog::WARNING, 'jerror');

            return false;
        }

        if (!version_compare(JVERSION, $this->minimumJoomlaVersion, 'ge')) {
            $msg = "<p>You need Joomla! $this->minimumJoomlaVersion or later to install this component</p>";
            JLog::add($msg, JLog::WARNING, 'jerror');

            return false;
        }

        if (!version_compare(JVERSION, $this->maximumJoomlaVersion, 'le')) {
            $msg = "<p>You need Joomla! $this->maximumJoomlaVersion or earlier to install this component</p>";
            JLog::add($msg, JLog::WARNING, 'jerror');

            return false;
        }

        // HHVM made sense in 2013, now PHP 7 is a way better solution than an hybrid PHP interpreter
        if (defined('HHVM_VERSION')) {
            $msg = "<p>We have detected that you are running HHVM instead of PHP. This software WILL NOT WORK properly on HHVM. Please switch to PHP 7 instead.</p>";
            JLog::add($msg, JLog::WARNING, 'jerror');

            return false;
        }

        return true;
    }

    public function postflight($type, $parent) {
        $conf = \JFactory::getConfig();
        $clearGroups = array('_system', 'com_modules', 'mod_menu', 'com_plugins', 'mod_simpleform2');
        $cacheClients = array(0, 1);

        foreach ($clearGroups as $group) {
            foreach ($cacheClients as $client_id) {
                try {
                    $options = array(
                        'defaultgroup' => $group,
                        'cachebase' => ($client_id) ? JPATH_ADMINISTRATOR . '/cache' : $conf->get('cache_path', JPATH_SITE . '/cache')
                    );

                    $cache = \JCache::getInstance('callback', $options);
                    $cache->clean();
                } catch (Exception $exception) {
                    $options['result'] = false;
                }

                try {
                    JFactory::getApplication()->triggerEvent('onContentCleanCache', $options);
                } catch (Exception $e) {
                    // silence
                }
            }
        }
    }

    public function install($parent) {
        $this->enableExtensions();
        return true;
    }

    public function uninstall($parent) {
        return true;
    }

    public function update($parent) {
        $this->enableExtensions();
        return true;
    }

    private function enableExtensions() {
        foreach ($this->extensionsToEnable as $ext) {
            $this->enableExtension($ext[0], $ext[1], $ext[2], $ext[3]);
        }
    }

    private function enableExtension($type, $name, $client = 1, $group = null) {
        try {
            $db = JFactory::getDbo();
            $query = $db->getQuery(true)
                    ->update('#__extensions')
                    ->set($db->qn('enabled') . ' = ' . $db->q(1))
                    ->where('type = ' . $db->quote($type))
                    ->where('element = ' . $db->quote($name));
        } catch (\Exception $e) {
            return;
        }


        switch ($type) {
            case 'plugin':
                $query->where('folder = ' . $db->quote($group));
                break;

            case 'language':
            case 'module':
            case 'template':
                $client = JApplicationHelper::getClientInfo($client, true);
                $query->where('client_id = ' . (int) $client->id);
                break;

            default:
            case 'library':
            case 'package':
            case 'component':
                // Components, packages and libraries don't have a folder or client.
                // Included for completeness.
                break;
        }

        try {
            $db->setQuery($query);
            $db->execute();
        } catch (\Exception $e) {
            
        }
    }

}
