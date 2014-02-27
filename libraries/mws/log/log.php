<?php
/**
 * @package Masters Web Solutions - Library
 * @author Christopher Masters <chris@masterswebsolutions.com>
 * @copyright Copyright (c) 2011 Christopher Masters. All Rights Reserved.
 * @license GNU/GPL 2, http://www.gnu.org/licenses/gpl-2.0.html
 */
defined('_JEXEC') or die('Restricted access'); // no direct access
/**
 * The MWS error class.
 * Logs an error or important information about a problem that might need attention with mws extensions.
 */
abstract class MWSLog
{
	/**
	 * Logs an error on first occurence.
	 * 
	 * @param string $msg The error message
	 * @param string $ext The extension where the error occured
	 * 
	 * @return void
	 * @since 1.5
	 */
	public static function logError($msg, $ext)
	{
		$fileName = self::getLogFileName($ext);
		if (!MWSString::inFile($msg, $fileName)) {
			$date = '[' . date('d-M-Y h:i:s') . ']';
			$msg = $date . ' ' . $msg . "\n";
			self::writeLog($fileName, $msg, $ext);
		}
	}
	/**
	 * Writes an error_log file and an HTML version of the log file.
	 *
	 * @param string $fileName The file name
	 * @param string $msg The error message
	 * @param string $ext The extension
	 * 
	 * @return void
	 * @since 1.5
	 */
	private static function writeLog($fileName, $msg, $ext)
	{
		$logPath = self::getLogPath($ext); // write error_log
		JFolder::create($logPath);
		error_log($msg, 3, $fileName);
		if (JFile::exists($fileName)) { // write HTML version
			$contents = file_get_contents($fileName);
			$contents = nl2br($contents);
			$logHtml = self::getLogFileName($ext, true);
			JFile::write($logHtml, $contents);
		}
	}
	/**
	 * Gets the log filename for a MWS extension.
	 *
	 * @param string $ext The MWS extension
	 * @param boolean $html (optional) HTML version? 
	 *
	 * @return string The filename
	 * @since 1.5
	 */
	public static function getLogFileName($ext, $html = false)
	{
		$fileName = JText::sprintf(JText::_(MWS_LOG_FILE_NAME), JString::strtolower($ext));
		if ($html) {
			$fileName .= '.html';
		}
		return $fileName;
	}
	/**
	 * Gets the log path for a MWS extension.
	 *
	 * @param string $ext The MWS extension
	 *
	 * @return string The log path
	 * @since 1.5
	 */
	public static function getLogPath($ext)
	{
		return JText::sprintf(JText::_(MWS_LOG_BASE_PATH), JString::strtolower($ext));
	}
	/**
	 * Clears log file and displays a message or notice based upon the results.
	 *
	 * @param string $ext The MWS extension
	 *
	 * @return void
	 * @since 1.5
	 */
	public static function clearLog($ext)
	{
		$fileName = self::getLogFileName($ext);
		$fileNameHtml = self::getLogFileName($ext, true);
		if (JFile::exists($fileName) || JFile::exists($fileNameHtml)) {
			self::clearFileContents($fileName);
			self::clearFileContents($fileNameHtml);
				
		} else {
			JError::raiseNotice(JText::_(100, JText::sprintf(JText::_(MWS_LOG_MESSAGE_FILE_NOT_FOUND), $fileName)));
		}
	}
	/**
	 * Clears the contents of a file based upon the file name.
	 *
	 * @param string $fileName The file name
	 *
	 * @return void
	 * @since 1.5
	 */
	private static function clearFileContents($fileName)
	{
		$contents = file_get_contents($fileName);
		if (JString::strlen($contents) > 0) {
			$contents = '';
			$logCleared = JFile::write($fileName, $contents);
			if ($logCleared) {
				MWS::$app->enqueueMessage(JText::sprintf(JText::_(MWS_LOG_MESSAGE_FILE_CLEARED), $fileName));
			} else {
				JError::raiseNotice(100, JText::sprintf(JText::_(MWS_LOG_MESSAGE_FILE_NOT_CLEARED), $fileName));
			}
		}
	}
}
?>