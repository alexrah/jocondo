<?php

/**
 * JEvents Component for Joomla 2.5.x
 *
 * @version     3.0.12  -  December 2013
 * @package     JEvents
 * @copyright   Copyright (C) 2008-2012 GWE Systems Ltd, 2006-2008 JEvents Project Group
 * @license     GNU/GPLv2, see http://www.gnu.org/licenses/gpl-2.0.html
 * @link        http://www.jevents.net
 */

// no direct access
defined('_JEXEC') or die('Restricted access');

jimport('joomla.filesystem.folder');
jimport('joomla.filesystem.file');

class pkg_rsvpproInstallerScript
{
	public function preflight ($type, $parent) {
		$db = JFactory::getDbo();
		$db->setQuery("SELECT enabled FROM #__extensions WHERE element = 'com_rsvppro'");
		$is_enabled = $db->loadResult(); 
		if (!$is_enabled){
			$this->hasJEventsInst = 0;
			return;
		} else {
			$this->hasJEventsInst = 1;
			return;
		}
	}

	// TODO enable plugins
	public function update()
	{

		return true;
	}

	public function install($adapter)
	{
		return true;
	}


	public function uninstall($adapter)
	{
		
	}
	
	/*
	 * enable the plugins
	 */
	function postflight($type, $parent) 
	{
		// $parent is the class calling this method
		// $type is the type of change (install, update or discover_install)
		?>
		<style type="text/css">
			.adminform tr th:first-child {display:none;}
			table.adminform tr td {padding:15px;}
			div.jev_install {background-color:#f4f4f4;border:1px solid #ccc; border-radius:5px; padding:10px;}
			.installed {clear:both;display:inline-block;}
			.installed ul { width:350px;padding-left:0px;border: 1px solid #ccc;border-radius: 5px;}
			.installed ul li:first-child {border-top-left-radius: 5px;border-top-right-radius: 5px;}
			.installed ul li:last-child {border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;}
			.installed ul li {padding:8px;list-style-type:none;}
			.installed ul li:nth-child(odd) {background-color: #fff;}
			.installed ul li:nth-child(even) {background-color: #D6D6D6;}
			.proceed {display:inline-block; vertical-align:top;}
			div.proceed ul {text-align:left;list-style-type:none;}
			div.proceed ul li {padding:5px;background-color:#fff;border:1px solid #ccc;margin-bottom:10px;border-radius:5px;}
		</style>
				<?PHP
		if ($type == 'install') {	
			// enable plugin
			$db = JFactory::getDbo();
			$query = "UPDATE #__extensions SET enabled=1 WHERE folder='jevents' and type='plugin' and element='jevrsvppro'";
			$db->setQuery($query);
			$db->query();

			$query = "UPDATE #__extensions SET enabled=1 WHERE folder='rsvppro' and type='plugin' and element='manual'";
			$db->setQuery($query);
			$db->query();

			// clean up any old install with the wrong extension name in the package!
			$query = "DELETE FROM #__extensions WHERE type='package' AND element='com_jevrsvppro' ";
			$db->setQuery($query);
			$db->query();
			
		}
		//Lets load the language strings directly from the installed component admin folder, loading the english first then any other after to override to avoid untranslated strings.
		$language = JFactory::getLanguage();
		$language->load('com_rsvppro', JPATH_ADMINISTRATOR, 'en-GB', true);
		$language->load('com_rsvppro', JPATH_ADMINISTRATOR, null, true);
		
		// Remove component unstyled text
		if ($this->hasJEventsInst == 0) { $inst_text = JText::_('PKG_INST_JEVENTS_RSVPPRO_SUCC2'); } else {  $inst_text = JText::_('PKG_INST_JEVENTS_RSVPPRO_SUCC1') . $parent->get('manifest')->version;}
		echo "<style type='text/css'>table.adminform tbody tr th:first-child {display:none;}</style>";		
		echo "<div class='jev_install'>
				<div class='jev_logo'><img src='http://www.jevents.net/images/JeventsTransparent.png' /></div>
				<div class='version'><h2>". $inst_text ."</h2></div>";
			echo '<div class="installed"> 
						<ul>
							<li>RSVP Pro Component
							<li>RSVP Pro Plugin</li>
							<li>RSVP Pro Virtuemart Tickers Plugin</li>
							<li>Payment Processor Plugin - Manual</li>
							<li>Payment Processor Plugin - PayPal IPN</li>
							<li>Payment Processor Plugin - Authorize.net</li>
							<li>Payment Processor Plugin - Virtuemart 2.0</li>
						</ul><br/><br/>
					</div>
					<div class="proceed"> 
					<ul>';
						echo "<li style='background-color: #F5EF62;'>" . JText::_('PKG_INST_JEVENTS_RSVPPRO_NOTE_PLUGINS') . "</li>";
						echo "<li>" . JText::_('PKG_INST_JEVENTS_RSVPPRO_DESC') . "</li>";
					echo "</ul>
					</div>";
		echo "</div>";	
		
	}	

}
