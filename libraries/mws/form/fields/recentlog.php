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
 * Recent log entries.
 * @since 1.5
*/
class JFormFieldRecentLog extends JFormField
{
	/**
	 * The form field type
	 * @var string
	 * @since 1.5
	 */
	public $type = 'RecentLog';
	/**
	 * Recent log entries.
	 * Use the "extension" attribute to get the correct MWS log.
	 * Use the "entries" attribute to determine the number of entries displayed.
	 *
	 * @return string The field label markup
	 * @since 1.5
	 */
	protected function getInput()
	{
		MWS::init('MWS');
		$ext = $this->element['extension'] ? (string) $this->element['extension'] : null;
		$entries = $this->element['entries'] ? (int) $this->element['entries'] : 20;
		$entries++;
		$contents = JText::_(MWS_LOG_NO_LOG);
		if (isset($ext) && $entries > 0) {
			$fileName = MWSLog::getLogFileName($ext);
			if (JFile::exists($fileName)) {
				$contents = file_get_contents($fileName); // read the log file
				$contents = JString::trim($contents);
				if (JString::strlen($contents) > 0) {
					$lines = explode("\n", $contents); // break log into lines
					$lines = array_reverse($lines); // flip the array to get the newest on top
					$lines = array_slice($lines, 0, $entries); // reduce the lines to 20
					// add li tags
					for ($i=0; $i <= 21; $i++) {
						if (!isset($lines[$i])) {
							break;
						}
						if ($lines[$i] == '') {
							unset($lines[$i]);
						} else {
							$lines[$i] = '<li>' .$lines[$i]. '</li>';
						}
					}
					$contents = implode("\n", $lines); // convert lines back to string
					$contents = nl2br($contents); // make line breaks <br /> tags
					$contents = '<ol>' . $contents . '</ol>'; // finish ordered list
				}
			}
		}
		return '<div class="mws-log">' . JText::_($contents) . '</div>'; // HTML output
	}
}
?>