<?php
/**
 * @package Masters Web Solutions - Library
 * @author Christopher Masters <chris@masterswebsolutions.com>
 * @copyright Copyright (c) 2011 Christopher Masters. All Rights Reserved.
 * @license GNU/GPL 2, http://www.gnu.org/licenses/gpl-2.0.html
 */
defined('_JEXEC') or die('Restricted access'); // no direct access
/**
 * The MWS class.
 * Imports all of the MWS library files and sets all of the variables for an extension.
 * Send the MWS extension name ($ext) on the initial construction of the class.
 * Also contains a method to add support information to a MWS extension.
 */
class MWS
{
	/**
	 * 
	 * @var MWS
	 */
	public static $mws;
	
	public static $url;
	public static $option;
	public static $view;
	public static $layout;
	public static $id;
	public static $itemId;
	public static $jVersion;
	public static $blogViews;
	public static $articleViews;
	
	/**
	 * 
	 * @var JApplication
	 */
	public static $app;
	
	/**
	 * 
	 * @var JDatabaseDriver
	 */
	public static $db;
	
	/**
	 * 
	 * @var JDocument
	 */
	public static $doc;
	
	/**
	 * Initializes MWS.
	 * 
	 * @param string $ext (optional) The extension
	 * @param boolean $debug (optional) The extension parameters
	 * 
	 * @return void|object The MWS object
	 */
	public static function init($ext = null, $debug = null)
	{
		self::import();
		if ($ext) {
			self::$mws = new MWS($ext, $debug);
			return self::$mws;
		}
	}
	/**
	 * Imports the MWS library files.
	 * 
	 * @return void
	 * @since 1.5
	 */
	private static function import()
	{
		if (!defined('MWS_EXEC')) {
			jimport('mws.defines');
			jimport('mws.article.article');
			jimport('mws.article.author');
			jimport('mws.components.eb');
			jimport('mws.components.k2');
			jimport('mws.image.image');
			jimport('mws.install.install');
			jimport('mws.log.log');
			jimport('mws.plugins.filter');
			jimport('mws.social.sharethis');
			jimport('mws.utilities.array');
			jimport('mws.utilities.database');
			jimport('mws.utilities.string');
			jimport('mws.utilities.truncate');
			jimport('joomla.utilities.string');
			jimport('joomla.filesystem.folder');
			jimport('joomla.filesystem.file');
		}
	}
	/**
	 * The constructor.
	 * 
	 * @param string $ext (optional) The extension
	 * @param boolean $debug (optional) The extension parameters
	 * 
	 * @return void
	 * @since 1.0
	 */
	private function __construct($ext, $debug)
	{
		self::$url = self::get('url');
		self::$option = self::get('option');
		self::$view = self::get('view');
		self::$layout = self::get('layout');
		self::$id = self::get('id');
		self::$itemId = self::get('itemId');
		self::$jVersion = self::get('jVersion');
		self::$blogViews = self::get('blogViews');
		self::$articleViews = self::get('articleViews');
		self::$app = self::get('app');
		self::$db = self::get('db');
		self::$doc = self::get('doc');
		if (self::$app->isSite()) {
			if ($debug) {
				error_reporting(E_ALL); // set error reporting to full blast
			}
		}
	}
	/**
	 * Gets a variable.
	 * Available variables: url, option, view, layout, id, jVersion, app, db & doc
	 *
	 * @return mixed The variable
	 * @since 1.5
	 */
	private static function get($var)
	{
		switch($var) {
			case 'url':
				$result = JFilterOutput::ampReplace(JURI::getInstance()->toString());
				break;
			case 'option':
				$result = JRequest::getCmd('option');
				break;
			case 'view':
				$result = JRequest::getCmd('view');
				break;
			case 'layout':
				$result = JRequest::getCmd('layout');
				break;
			case 'id':
				$result = JRequest::getInt('id');
				break;
			case 'itemId':
				$active = JFactory::getApplication()->getMenu()->getActive();
				if ($active) {
					$itemId = $active->id;
					$result = $itemId;
				} else {
					$result = null;
				}
				break;
			case 'jVersion':
				$result = $version = new JVersion();
				$jVersion = doubleval($version->RELEASE);
				$result = $jVersion;
				break;
			case 'app':
				$result = JFactory::getApplication();
				break;
			case 'db':
				$result = JFactory::getDBO();
				break;
			case 'doc':
				$result = JFactory::getDocument();
				break;
			case 'blogViews':
				$result = array('featured', 'category', 'itemlist', 'latest', 'fjrelated', 'categories', 'blogger'
					, 'myblog', 'tags', 'teamblog');
				break;
			case 'articleViews':
				$result = array('article', 'item', 'entry');
				break;
		}
		return $result;
	}
	/**
	 * Adds information about extension as an HTML comment for quicker support.
	 * 
	 * @param string $ext The MWS extension
	 *
	 * @return void
	 * @since 1.0
	 */
	public static function addSupportInfo($ext)
	{
		$xml = self::getXML($ext);
		echo "\n" . '<!-- ' . $xml->name . ' | ' . $xml->version . ' | ' . self::getMWSVersion() . ' | '
				. self::get('option') . ' | ' . self::get('view') . ' | ' . self::get('jVersion') . ' -->' . "\n";
	}
	/**
	 * Gets a version string for the current MWS library.
	 *
	 * @return string The library version
	 * @since 1.0
	 */
	private static function getMWSVersion()
	{
		$xml = self::getXML('MWSLIB');
		return $xml->version;
	}
	/**
	 * Gets the xml information for an extension.
	 * 
	 * @param string $ext The MWS extension type
	 *
	 * @return object The extension information
	 * @since 1.5
	 */
	private static function getXML($ext)
	{
		if (!self::get('app')->isAdmin()) {
			switch ($ext) {
				case 'MARM':
					$xmlPath = 'plugins' . DIRECTORY_SEPARATOR . 'content' . DIRECTORY_SEPARATOR . 'marm' . DIRECTORY_SEPARATOR . 'marm.xml';
					break;
				case 'MSTPLG':
					$xmlPath = 'plugins' . DIRECTORY_SEPARATOR . 'content' . DIRECTORY_SEPARATOR . 'mst' . DIRECTORY_SEPARATOR . 'mst.xml';
					break;
				case 'MATA':
					$xmlPath = 'plugins' . DIRECTORY_SEPARATOR . 'content' . DIRECTORY_SEPARATOR . 'mata' . DIRECTORY_SEPARATOR . 'mata.xml';
					break;
				case 'MACB':
					$xmlPath = 'modules' . DIRECTORY_SEPARATOR . 'mod_macb' . DIRECTORY_SEPARATOR . 'mod_macb.xml';
					break;
				case 'MCI':
					$xmlPath = 'modules' . DIRECTORY_SEPARATOR . 'mod_mci' . DIRECTORY_SEPARATOR . 'mod_mci.xml';
					break;
				case 'MSTMOD':
					$xmlPath = 'modules' . DIRECTORY_SEPARATOR . 'mod_mst' . DIRECTORY_SEPARATOR . 'mod_mst.xml';
					break;
				case 'MWSLIB':
					$xmlPath = 'administrator' . DIRECTORY_SEPARATOR . 'manifests' . DIRECTORY_SEPARATOR . 'libraries' . DIRECTORY_SEPARATOR . 'lib_mws.xml';
					break;
			}
			$xml = JFactory::getXml($xmlPath);
			return $xml;
		}
	}
}
?>