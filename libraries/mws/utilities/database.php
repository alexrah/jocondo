<?php
/**
 * @package Masters Web Solutions - Library
 * @author Christopher Masters <chris@masterswebsolutions.com>
 * @copyright Copyright (c) 2011 Christopher Masters. All Rights Reserved.
 * @license GNU/GPL 2, http://www.gnu.org/licenses/gpl-2.0.html
 */
defined('_JEXEC') or die('Restricted access'); // no direct access
/**
 * The mws database utility class.
 * This class contains methods for database functions.
 */
abstract class MWSDatabase
{
	/**
	 * Gets the current date in SQL format.
	 *
	 * @return int The current date
	 * @since 1.5
	 */
	public static function getDateSql()
	{
		$now = JFactory::getDate()->toSQL();
		return $now;
	}
}