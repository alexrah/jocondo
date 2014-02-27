<?php
/**
 * @package Masters Web Solutions - Library
 * @author Christopher Masters <chris@masterswebsolutions.com>
 * @copyright Copyright (c) 2011 Christopher Masters. All Rights Reserved.
 * @license GNU/GPL 2, http://www.gnu.org/licenses/gpl-2.0.html
 */
defined('_JEXEC') or die('Restricted access'); // no direct access
/**
 * The MWS array class.
 * This class contains array utilities.
 */
abstract class MWSArray
{	
	/**
	 * Strips all empty values from an array (maintaining indexes).
	 * 
	 * @param array $array The array
	 * 
	 * @return array The modified array
	 * @since 1.5
	 */
	public static function stripEmptyValues($array)
	{
		if (is_array($array)) {
			foreach ($array as $key=>$value) {
				if (!$value) {
					unset($array[$key]);
				}
			}
			$array = array_values($array);
		}
		return $array;
	}
	/**
	 * Removes a value ($needle) from an array ($haystack).
	 * 
	 * @param mixed $needle The value to remove
	 * @param array $haystack The array containing the needle
	 * 
	 * @return array The array without the value
	 * @since 1.5
	 */
	public static function removeKey($needle, $haystack)
	{
		foreach ($haystack as $key=>$value) {
			$haystack[$key] = JString::trim($value);
			if (in_array($needle, $haystack)) {
				unset($haystack[$key]);
			}
		}
		return array_values($haystack);
	}
	/**
	 * Removes values from the array $needle if these values exist in the array $haystack.
	 * Optionally log an error when the $needle value does not exist in the $haystack.
	 * 
	 * @param array $needle The array to check and remove values that do not exist in $haystack
	 * @param array $haystack The array to compare values
	 * @param string $msg (optional) The log message
	 * @param string $ext (optional) The MWS extension for the log message
	 * 
	 * @return array The modified version of $needle
	 * @since 1.5
	 */
	public static function compareRemoveNeedle($needle, $haystack, $msg = null, $ext = null)
	{
		foreach ($needle as $key=>$value) {
			if (!in_array($value, $haystack)) {
				if (isset($msg) && isset($ext)) {
					MWSLOG::logError(JText::sprintf(JText::_($msg), $value), $ext);
				}
				unset($needle[$key]);
			}
		}
		$array = array_values($needle);
		return $array;
	}
	/**
	 * Removes values from the array $haystack if these values exist in the array $needle.
	 *
	 * @param array $needle The array to compare to $haystack
	 * @param array $haystack The array to remove values
	 *
	 * @return array The haystack
	 */
	public static function compareRemoveHaystack($needle, $haystack)
	{
		foreach ($needle as $value) {
			if(($key = array_search($value, $haystack)) !== false) {
				unset($haystack[$key]);
			}
		}
		$haystack = array_values($haystack);
		return $haystack;
	}
	/**
	 * Prepend and/or append a string to each value of an array.
	 * 
	 * @param array $array The array of values
	 * @param string $prefix (optional) The string to attach to the values as a prefix
	 * @param string $suffix (optional) The string to attach to the values as a suffix
	 * 
	 * @return array The modified array
	 */
	public static function addStringToValues($array, $prefix = null, $suffix = null)
	{
		if (is_array($array) && (isset($prefix) || isset($suffix))) {
			foreach ($array as $key=>$value) {
				if (isset($array[$key])) {
					$array[$key] = $prefix . $value . $suffix;
				}
			}
		}
		return $array;
	}
	/**
	 * Sorts an array of objects by an object property.
	 * 
	 * @param array $array The array of objects
	 * @param string $property The object property to sort by
	 * @param constant $sortFlag See http://www.php.net/manual/en/function.sort.php for sort_flag types
	 * 
	 * @return array The sorted array
	 * @since 1.5
	 */
	public static function sortArrayofObjectsByProperty($array, $property, $sortFlag)
	{
		$sort = array();
		foreach($array as $object) {
			$sort[$object->$property] = $object;
		}
		ksort($sort, $sortFlag);
		$array = array_values($sort);
		return $array;
	}
}