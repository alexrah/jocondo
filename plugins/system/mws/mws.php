<?php
/**
 * @package System - MWS Library
 * @author Christopher Masters <chris@masterswebsolutions.com>
 * @copyright Copyright (c) 2011 Christopher Masters DBA Masters Web Solutions. All Rights Reserved.
 * @license GNU/GPL 2, http://www.gnu.org/licenses/gpl-2.0.html
 */
defined('_JEXEC') or die('Restricted access'); // no direct access
jimport('joomla.plugin.plugin');
class plgSystemMWS extends JPlugin
{
	/**
	 * The constructor.
	 * 
	 * @param $subject object The JEventDispatcher object
	 * @param $config array (optional) The plugin configuration
	 * 
	 * @return void
	 */
	public function __construct(&$subject, $config = array())
	{
		parent::__construct($subject, $config);
		$this->loadLanguage(); // load the language
	}
	/**
	 * Checks if MWS Library is installed and adds admin css.
	 * 
	 * @return void
	 * @since 1.0
	 */
	public function onAfterRoute()
	{
		$app = JFactory::getApplication();
		if ($app->isSite()) {
			return; // admin only
		}
		if (!is_dir(JPATH_SITE . DIRECTORY_SEPARATOR . 'libraries' . DIRECTORY_SEPARATOR . 'mws')) {
			$app->enqueueMessage(JText::_('The Masters Web Solutions library was not found! Please reinstall.'), 'error');
		} else {
			JFactory::getDocument()->addStyleSheet(JURI::root() . 'media' . DIRECTORY_SEPARATOR . 'mws' . DIRECTORY_SEPARATOR
				. 'plg_mws' . DIRECTORY_SEPARATOR . 'css' . DIRECTORY_SEPARATOR . 'admin.css');
		}
	}
}
?>