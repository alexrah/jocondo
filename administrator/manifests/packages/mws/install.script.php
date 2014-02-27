<?php
/**
 * @package Masters Web Solutions
 * @author Christopher Masters <chris@masterswebsolutions.com>
 * @copyright Copyright (c) 2011 Christopher Masters. All Rights Reserved.
 * @license GNU/GPL 2, http://www.gnu.org/licenses/gpl-2.0.html
 */
defined('_JEXEC') or die('Restricted access'); // no direct access
class pkg_mwsInstallerScript
{
	/**
	 * The constructor.
	 *
	 * @param JAdapterInstance $adapter The object responsible for running this script
	 */
	public function __constructor(JAdapterInstance $adapter) {}
	/**
	 * Called before any type of action
	 * 
	 * @param string $route Which action is happening (install|uninstall|discover_install|update)
	 * @param JAdapterInstance $adapter The object responsible for running this script
	 *  
	 * @return boolean True on success
	 */
	public function preflight($route, JAdapterInstance $adapter)
	{
		if ($route == 'install') {
			$lib = self::uninstall(array('lib_mws', 'mws'), 'library');
		}
	}
	/**
	 * Called after any type of action.
	 *
	 * @param string $route Which action is happening (install|uninstall|discover_install)
	 * @param JAdapterInstance $adapter The object responsible for running this script
	 *
	 * @return boolean True on success
	 */
	public function postflight($route, JAdapterInstance $adapter)
	{
		if ($route == 'install') {
			jimport('mws.mws');
			MWS::init();
			MWSInstall::completeInstall('MWS');
		}
	}
/**
	 * Uninstalls extensions.
	 *
	 * @param array|string $elements The extension element names
	 * @param string $type The extension type
	 *
	 * @return boolean True on success
	 * @since 1.5
	 */
	public static function uninstall($elements, $type)
	{
		$installer = JInstaller::getInstance();
		if (!is_array($elements)) {
			$elements = array($elements);
		}
		foreach ($elements as $element) {
			$ext = JTable::getInstance('extension');
			if ($ext->load(array('type'=>$type, 'element'=>$element))) {
				$installer->uninstall($type, $ext->extension_id);
			}
		}
	}
}
?>