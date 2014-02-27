<?php
/**
 * @package Masters Contact Info
 * @author Christopher Masters <chris@masterswebsolutions.com>
 * @copyright Copyright (c) 2011 Christopher Masters. All Rights Reserved.
 * @license GNU/GPL 2, http://www.gnu.org/licenses/gpl-2.0.html
 */
defined('_JEXEC') or die('Restricted access'); // no direct access
class pkg_mciInstallerScript
{
	/**
	 * The constructor.
	 *
	 * @param JAdapterInstance $adapter The object responsible for running this script
	 *
	 * @return void
	 * @since 1.0
	 */
	public function __constructor(JAdapterInstance $adapter) {}
	/**
	 * Called after any type of action.
	 *
	 * @param string $route Which action is happening (install|uninstall|discover_install)
	 * @param JAdapterInstance $adapter The object responsible for running this script
	 *
	 * @return void
	 * @since 1.0
	 */
	public function postflight($route, JAdapterInstance $adapter)
	{
		if ($route == 'install' && is_dir(JPATH_SITE . DIRECTORY_SEPARATOR . 'libraries' . DIRECTORY_SEPARATOR . 'mws')) {
			jimport('mws.mws');
			MWS::init();
			MWSInstall::completeInstall('MCI');
		}
	}
}
?>