<?php
/**
 * @package Masters Web Solutions - Library
 * @author Christopher Masters <chris@masterswebsolutions.com>
 * @copyright Copyright (c) 2011 Christopher Masters. All Rights Reserved.
 * @license GNU/GPL 2, http://www.gnu.org/licenses/gpl-2.0.html
 */
defined('_JEXEC') or die('Restricted access'); // no direct access
jimport('mws.mws');
/**
 * Displays a link to the full error log.
 * @since 1.5
*/
class JFormFieldLogActions extends JFormField
{
	/**
	 * The form field type
	 * @var string
	 * @since 1.5
	 */
	public $type = 'LogActions';
	/**
	 * Displays a link to the full error log.
	 * Use the "extension" attribute to get the correct MWS log.
	 *
	 * @return string The field label markup
	 * @since 1.5
	 */
	protected function getInput()
	{
		MWS::init();
		$ext = $this->element['extension'] ? (string) $this->element['extension'] : null;
		$cacheLink = JURI::base() . 'index.php?option=com_cache';
		$logLink = JText::sprintf(JText::_(MWS_LOG_URI), JString::strtolower($ext)); // set the link
		$fileName = MWSLog::getLogFileName($ext);
		$log[] = '<div class="mws-log">';
		if (JFile::exists($fileName)) {
			$log[] =  '<p>' . JText::_(MWS_LOG_SINGLE_RECORD) . '</p>';
			$log[] = '<div class="btn-group"><a href="' . $logLink . '" class="modal btn view-log" rel="{handler: \'iframe\', size: {x: 800, y: 450}}">';
			$log[] = JText::_(MWS_LOG_VIEW_FULL_LOG) . '</a>';
			$log[] = '<a href="' . $cacheLink . '" class="modal btn clear-log" rel="{handler: \'iframe\', size: {x: 800, y: 450}}">';
			$log[] = JText::_(MWS_LOG_CLEAR_LOG) . '</a></div>';
		} else {
			$log[] = JText::_(MWS_LOG_NO_LOG);
		}
		$log[] = '</div>';
		
		return implode('', $log);
	}
}
?>