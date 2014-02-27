<?php
/**
 * @package Masters Web Solutions - Library
 * @author Christopher Masters <chris@masterswebsolutions.com>
 * @copyright Copyright (c) 2011 Christopher Masters. All Rights Reserved.
 * @license GNU/GPL 2, http://www.gnu.org/licenses/gpl-2.0.html
 */
defined('_JEXEC') or die('Restricted access'); // no direct access
/**
 * The MWS installation class.
 * Performs operations during installation.
 */
abstract class MWSInstall
{
	/**
	 * Completes the installation process.
	 * 
	 * @param string $pkg The package short name
	 * 
	 * @return void
	 * @since 1.5
	 */
	public static function completeInstall($pkg)
	{
		switch ($pkg) {
			case 'MWS':
				self::deleteFolders('plugins\system\mws\sql');
				self::enablePlugin('mws', 'system');
				break;
			case 'MARM':
				self::uninstall(array('cmautoreadmore', 'masters_auto_read_more'), 'plugin');
				break;
			case 'MACB':
				self::deleteFolders('media\macb');
				self::uninstall(array('mod_masters_articles_category_blog', 'mod_masters_articles_category_blog_k2'), 'module');
				break;
			case 'MCI':
				self::deleteFolders('media\mci');
				self::uninstall('mod_masters_contact_info', 'module');
				break;
			case 'MST':
				self::uninstall('masters_sharethis', 'plugin');
				self::uninstall('mod_masters_sharethis', 'module');
				break;
		}
		self::removePkgMws($pkg);
		self::displayHTML($pkg);
	}
	/**
	 * Gets the full package name.
	 * 
	 * @param string $pkg The package short name
	 * 
	 * @return string The package long name
	 * @since 1.5
	 */
	private static function getPackageName($pkg)
	{
		switch ($pkg) {
			case 'MWS':
				return MWS_PKG_NAME_MWS;
				break;
			case 'MARM':
				return MWS_PKG_NAME_MARM;
				break;
			case 'MACB':
				return MWS_PKG_NAME_MACB;
				break;
			case 'MATA':
				return MWS_PKG_NAME_MATA;
				break;
			case 'MCI':
				return MWS_PKG_NAME_MCI;
				break;
			case 'MST':
				return MWS_PKG_NAME_MST;
				break;
		}
	}
	/**
	 * Gets installation information for installed extensions.
	 * 
	 * @param string $pkg The package short name being installed
	 *
	 * @return array The installation information
	 * @since 1.5
	 */
	private static function getInstallInfo($pkg)
	{
		$extensions = self::getExtensions($pkg);
		foreach ($extensions as $key=>$ext) {
			$installInfo[$key] = self::setInstallInfo($pkg, $ext);
		}
		return MWSArray::sortArrayofObjectsByProperty($installInfo, 'name', SORT_NUMERIC);
	}
	/**
	 * Gets all installed extensions.
	 *
	 * @param string $pkg The package short name
	 *
	 * @return array The installed extensions
	 * @since 1.5
	 */
	private static function getExtensions($pkg)
	{
		MWS::init('MWSLIB');
		$query = MWS::$db->getQuery(true);
		$query->select('*');
		$query->from('#__extensions');
		$elements = self::getElementNames($pkg);
		foreach ($elements as $element) {
			$query->where('element = \'' . $element . '\'', 'OR');
		}
		MWS::$db->setQuery($query);
		return MWS::$db->loadObjectList();
	}
	/**
	 * Sets the individual extension installation information for a package.
	 * 
	 * @param string $pkg The package short name
	 * @param string $ext The Joomla extension information
	 * 
	 * @return object The installation information
	 * @since 1.5
	 */
	private static function setInstallInfo($pkg, $ext)
	{
		$installInfo = new stdClass();
		$installInfo->notes = array('Always check settings and template override files after an update. Specific details may be provided here.');
		if ($ext->element == 'marm') {
			$link = 'index.php?option=com_plugins&amp;task=plugin.edit&amp;extension_id=' . $ext->extension_id;
			array_push($installInfo->notes,
				'About the Author & Author Articles are part of a separate plugin (Masters About the Author).'
				, 'ShareThis is a separate plugin. (Masters ShareThis).'
				, 'EasyBlog is in beta testing. Please report any bugs... thanks!'
			);
		} elseif ($ext->element == 'mod_macb') {
			$link = 'index.php?option=com_modules&filter_module=' . $ext->element;
			array_push($installInfo->notes,
				'After upgrading from version 2.4 - Template Overrides will need to be replaced.'
				, 'Version 2.0 and higher - Joomla and K2 are part of the same module.'
			);
		}elseif ($ext->element == 'mod_mci') {
			$link = 'index.php?option=com_modules&filter_module=' . $ext->element;
		} elseif ($ext->element == 'mst') {
			$link = 'index.php?option=com_plugins&amp;task=plugin.edit&amp;extension_id=' . $ext->extension_id;
		} elseif ($ext->element == 'mod_mst') {
			$link = 'index.php?option=com_modules&filter_module=' . $ext->element;
		} elseif ($ext->element == 'mata') {
			$link = 'index.php?option=com_plugins&amp;task=plugin.edit&amp;extension_id=' . $ext->extension_id;
		} elseif ($ext->element == 'lib_mws' || $ext->element == 'mws') {
			array_push($installInfo->notes,	'Required for all Masters Web Solutions extensions.');
		}
		// name
		if (isset($link)) {
			$installInfo->name = '<a href="' . $link . '">' . $ext->name . '</a>';
		} else {
			$installInfo->name = $ext->name;
		}
		$xml = json_decode($ext->manifest_cache);
		$installInfo->version = $xml->version;
		return $installInfo;
	}
	/**
	 * Gets the element names for a package.
	 *
	 * @param string $pkg The package short name
	 *
	 * @return array
	 * @since 1.5
	 */
	private static function getElementNames($pkg)
	{
		$elements = array();
		switch ($pkg) {
			case 'MWS':
				$elements[0] = 'lib_mws';
				$elements[1] = 'mws';
				break;
			case 'MARM':
				$elements[0] = 'marm';
				break;
			case 'MACB':
				$elements[0] = 'mod_macb';
				break;
			case 'MATA':
				$elements[0] = 'mata';
				break;
			case 'MCI':
				$elements[0] = 'mod_mci';
				break;
			case 'MST':
				$elements[0] = 'mst';
				$elements[1] = 'mod_mst';
				break;
		}
		return $elements;
	}
	/**
	 * Enables a plugin.
	 *
	 * @param string $element The extension element
	 * @param string $folder The extension folder
	 *
	 * @return boolean True on success
	 * @since 1.5
	 */
	private static function enablePlugin($element, $folder = '') {
		$plugin = JTable::getInstance('extension');
		if (!$plugin->load(array('type'=>'plugin', 'folder'=>$folder, 'element'=>$element))) {
			return false;
		}
		$plugin->enabled = 1;
		return $plugin->store();
	}
	/**
	 * Deletes folder(s) from site.
	 *
	 * @param array|string $folders The folder(s) to delete
	 *
	 * @return boolean True on success
	 * @since 1.5
	 */
	private static function deleteFolders($folders)
	{
		if (!is_array($folders)) {
			$folders = array($folders);
		}
		foreach ($folders as $folder) {
			$folder = JPATH_ROOT . '\\' . $folder;
			if (JFolder::exists($folder)) {
				return JFolder::delete($folder);
			} else {
				return false;
			}
		}
	}
	/**
	 * Uninstalls one or multiple extensions.
	 *
	 * @param array|string $elements The extension element(s) names
	 * @param string $type The extension type
	 *
	 * @return boolean True on success
	 * @since 1.5
	 */
	private static function uninstall($elements, $type)
	{
		$installer = JInstaller::getInstance();
		if (!is_array($elements)) {
			$elements = array($elements);
		}
		foreach ($elements as $element) {
			$ext = JTable::getInstance('extension');
			if ($ext->load(array('type'=>$type, 'element'=>$element))) {
				return $installer->uninstall($type, $ext->extension_id);
			}
		}
	}
	/**
	 * Removes pkg_mws from the manifest file. Forces pkg_mws to be uninstalled separately.
	 * 
	 * @param string $pkg The package short name
	 * 
	 * @return True on success
	 * @since 1.5
	 */
	private static function removePkgMws($pkg)
	{
		if ($pkg != 'MWS') {
			$fileName = JText::sprintf(JText::_(MWS_PKG_PATH), JString::strtolower($pkg));
			if (JFile::exists($fileName)) {
				$contents = file_get_contents($fileName); // read the file
				$contents = JString::trim($contents);
				if (JString::strlen($contents) > 0) {
					$lines = explode("\n", $contents); // break into lines
					$lines = MWSArray::removeKey(MWS_PKG_XML_DELETE, $lines);
					$contents = implode("\n", $lines);
					return JFile::write($fileName, $contents);
				}
			}
		}
	}
	/**
	 * Displays HTML after a MWS extension is installed.
	 *
	 * @param string $pkg The package short name
	 *
	 * @return void
	 * @since 1.5
	 */
	private static function displayHtml($pkg)
	{
		$name = self::getPackageName($pkg);
		$installInfo = self::getInstallInfo($pkg);
		?>
			<div id="mws-install">
				<div class="mws-row">
					<div class="mws-col mws-col-left">
						<a href="http://www.masterswebsolutions.com" title="Click to go to masterswebsolutions.com!" target="_blank" class="mws-logo"></a>
					</div>
					<div class="mws-col mws-col-right">
						<h2><?php echo $name; ?></h2>
						<h3>Developed by <a href="http://www.linkedin.com/in/masterswebsolutions" title="Click to connect on Linkedin!" target="_blank">Christopher Masters</a></h3>
					</div>
				</div>
				<div class="mws-install-details">
					<div class="mws-row mws-headings">
						<h3><?php echo $name; ?> Installation Success!</h3>			
					</div>
					<div class="mws-row mws-headings">
						<div class="mws-col mws-col-4">
							<div class="mws-content">
								<h4>Manage Extension(s)</h4>
							</div>
						</div>
						<div class="mws-col mws-col-4">
							<div class="mws-content">
								<h4>Version</h4>
							</div>
						</div>
						<div class="mws-col mws-col-2">
							<div class="mws-content">
								<h4>Notes</h4>
							</div>
						</div>
					</div>
					<?php foreach ($installInfo as $info) : ?>
					<div class="mws-row mws-extensions">
						<div class="mws-col mws-col-4 mws-ext-name">
							<div class="mws-content">
								<p><?php echo $info->name; ?></p>
							</div>
						</div>
						<div class="mws-col mws-col-4 mws-ext-version">
							<div class="mws-content">
								<p><?php echo $info->version; ?></p>
							</div>
						</div>
						<div class="mws-col mws-col-2">
							<div class="mws-content">
								<ul>
									<?php foreach ($info->notes as $note) echo '<li>' . $note . '</li>'; ?>
								</ul>
							</div>
						</div>
					</div>
					<?php endforeach; ?>
				</div>
			</div>
			<?php
		}
}
?>