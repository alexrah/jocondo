<?php
/**
 * @package Masters Web Solutions - Library
 * @author Christopher Masters <chris@masterswebsolutions.com>
 * @copyright Copyright (c) 2011 Christopher Masters. All Rights Reserved.
 * @license GNU/GPL 2, http://www.gnu.org/licenses/gpl-2.0.html
 */
defined('_JEXEC') or die('Restricted access'); // no direct access
/**
 * The mws EasyBlog class.
 * Functions related to EasyBlog.
 */
abstract class MWSEB
{
	/**
	 * Gets EasyBlog information.
	 * 
	 * @param string $info The requested information (helper,config or theme)
	 * @param string $ext The MWS extension
	 * 
	 * @return string The desired info
	 * @since 1.5
	 */
	public static function getEBInfo($info, $ext)
	{
		$ebInfo = MWSEB::setEbInfo();
		if ($ebInfo) {
			switch($info) {
				case 'helper':
					return $ebInfo->ebHelper;
					break;
				case 'config':
					return $ebInfo->ebConfig;
					break;
				case 'theme':
					return $ebInfo->ebTheme;
					break;
			}
		} else {
			return;
		}
	}
	/**
	 * Hides the blog image for the current theme.
	 * 
	 * @return void
	 * @since 1.5
	 */
	public static function hideBlogImage()
	{
		$ebInfo = MWSEB::setEbInfo();
		if ($ebInfo) {
			// get params from config.ini
			$ini = EBLOG_THEMES . DIRECTORY_SEPARATOR . $this->ebTheme . DIRECTORY_SEPARATOR . 'config.ini';
			$contents = JFile::read($ini);
			$paramsINI = $ebInfo->ebHelper->getRegistry($contents);
			// get params from the db
			$themeConfig = $ebInfo->ebHelper->getTable('Configs');
			$themeConfig->load($ebInfo->ebTheme);
			if(!empty($themeConfig->params)) {
				$paramsDB = $ebInfo->ebHelper->getRegistry($themeConfig->params);
			}
			// hide blog image in config.ini
			if ($paramsINI->get('blogimage_frontpage')) {
				$newContents = JString::str_ireplace('blogimage_frontpage=1', 'blogimage_frontpage=0', $contents);
				JFile::write($ini, $newContents);
			}
			// hide blog image in the database
			if ($paramsDB->get('blogimage_frontpage')) {
				// get current params from db
				$query = MWS::$db->getQuery(true); // build query
				$query->select('c.params');
				$query->from('#__easyblog_configs AS c');
				$query->where('c.name = "' . $ebInfo->ebTheme . '"'); // end build query
				MWS::$db->setQuery($query); // set query
				$config = MWS::$db->loadObject(); // run query & load object
				// change the blogimage_frontpage parameter
				$config->params = JString::str_ireplace('blogimage_frontpage="1"', 'blogimage_frontpage="0"', $config->params);
				// update params in the db
				$query = MWS::$db->getQuery(true); // build query
				$query->update('#__easyblog_configs AS c');
				$query->set("c.params = '" . $config->params . "'");
				$query->where('c.name = "' . $ebInfo->ebTheme . '"'); // end build query
				MWS::$db->setQuery($query); // set query
				MWS::$db->loadObject(); // run query
			}
		}
	}
	/**
	 * Sets EasyBlog information.
	 * 
	 * @return object The EasyBlog information
	 */
	private static function setEbInfo()
	{
		if (JFile::exists(MWS_EB_HELPER)) {
			require_once(MWS_EB_HELPER);
			$ebHelper = new EasyBlogHelper();
			$ebInfo = new stdClass();
			$ebInfo->ebHelper = $ebHelper;
			$ebInfo->ebConfig = $ebHelper->getConfig();
			$ebInfo->ebTheme = $ebInfo->ebConfig->get('layout_theme');
			return $ebInfo;
		}
	}
}
?>