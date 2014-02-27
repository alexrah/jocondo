<?php
/**
 * @package Masters Web Solutions - Library
 * @author Christopher Masters <chris@masterswebsolutions.com>
 * @copyright Copyright (c) 2011 Christopher Masters. All Rights Reserved.
 * @license GNU/GPL 2, http://www.gnu.org/licenses/gpl-2.0.html
 */
defined('_JEXEC') or die('Restricted access'); // no direct access
/**
 * The mws k2 class.
 * Functions related to k2.
 */
abstract class MWSK2
{
	/**
	 * Gets K2 items.
	 * 
	 * @param object $params The module parameters
	 * 
	 * @return array The K2 items
	 */
	public static function getK2Items($params)
	{
		$query = MWSK2::buildQuery($params);
		// set the filters based on the module params
		$limitItems = $params->get('k_item_limit', 1);
		if ($limitItems) {
			$limit = $params->get('k_item_limit_count', 5);
		} else {
			$limit = 0;
		}
		MWS::$db->setQuery($query, 0, $limit);
		$items = MWS::$db->loadObjectList();
		return $items;
	}
	/**
	 * Builds the K2 query.
	 *
	 * @param object $params module parameters
	 *
	 * @return string The K2 query
	 *
	 * @since 1.0
	 */
	private static function buildQuery($params)
	{
		$now = MWSDatabase::getDateSql();
		$nullDate = MWS::$db->getnullDate();
		$query = MWS::$db->getQuery(true);
		$query->select('a.*, c.name AS category_title, c.alias AS categoryalias, u.name AS author');
		$query->from('#__k2_items AS a');
		$query->leftJoin('#__k2_categories AS c ON a.catid = c.id');
		$query->leftJoin('#__users AS u ON a.created_by = u.id');
		$query->where('a.published >= 1 AND a.trash = 0');
		$query->where('(a.publish_up = ' . MWS::$db->Quote($nullDate) . ' OR a.publish_up <= ' . MWS::$db->Quote($now) . ')');
		$query->where('(a.publish_down = ' . MWS::$db->Quote($nullDate) . ' OR a.publish_down >= ' . MWS::$db->Quote($now) . ')');
		$query = MWSK2::queryExcludeArticles($query, $params, MWS::$view, MWS::$id);
		$query = MWSK2::queryOr($query, $params, 'category');
		$query = MWSK2::queryOr($query, $params, 'author');
		$query = MWSK2::queryOr($query, $params, 'author alias');
		$query = MWSK2::queryDate($query, $params);
		$query = MWSK2::queryFeatured($query, $params);
		$query->order($params->get('k_ordering', 'a.ordering') . ' ' . $params->get('k_ordering_direction', 'ASC'));
		return $query;
	}
	/**
	 * Updates the query to show, hide or only show Featured items.
	 * 
	 * @param object $query The Joomla query object
	 * @param object $params The module parameters
	 * 
	 * @return object The updated Joomla query object
	 */
	private static function queryFeatured($query, $params)
	{
		$featured = $params->get('k_show_front', 'show');
		if ($featured == 'only') {
			$query->where('a.featured = 1');
		} elseif ($featured == 'hide') {
			$query->where('a.featured = 0');
		}
		return $query;
	}
	/**
	 * Updates the query to reflect a date range or a relative date range.
	 *
	 * @param object $query The Joomla query object
	 * @param object $params The module parameters
	 *
	 * @return object The updated Joomla query object
	 */
	private static function queryDate($query, $params)
	{
		switch ($params->get('k_date_filtering', 'off')) {
			case 'range':
				$startDate = $params->get('k_start_date_range', '');
				$endDate = $params->get('k_end_date_range', '');
				break;
			case 'relative':
				$today = strtotime(gmdate("M d Y H:i:s", time()));
				$config =& JFactory::getConfig();
				$offset = $config->getValue('offset');
				$offset = 3600 * $offset;
				$startDate = $today - (86400 * $params->get('k_relative_date', 30));
				$startDate = date('Y-m-d H:i:s', $startDate);
				$endDate = $today + $offset;
				$endDate = date('Y-m-d H:i:s', $endDate);
				break;
			default:
				$startDate = $endDate = null;	
		}
		if ($startDate && $endDate) {
			$dateField = $params->get('k_date_field', 'a.created');
			$query->where('(' . $dateField . ' >= "' . $startDate . '"');
			$query->where($dateField . ' <= "' . $endDate . '")');
		}
		return $query;
	}
	/**
	 * Updates the query with category, author and author alias parameters.
	 * Once the query->where method sets the 'glue' it cannot be changed. In this class the where method
	 * has already set the 'glue' to where. This method adds the ability to include 'OR' conditions to the query.
	 *
	 * @param object $query The Joomla query object
	 * @param object $params The module parameters
	 * @param string $type The or type
	 *
	 * @return object The updated Joomla query object
	 */
	private static function queryOr($query, $params, $type)
	{
		switch ($type) {
			case 'category':
				$table = 'a.catid';
				$ids = $params->get('k_catid', '');
				$filterType = $params->get('k_category_filtering_type', 1);
				break;
			case 'author':
				$table = 'a.created_by';
				$ids = $params->get('k_created_by', '');
				$filterType = $params->get('k_author_filtering_type', 1);
				break;
			case 'author alias':
				$table = 'a.created_by_alias';
				$ids = $params->get('k_created_by_alias', '');
				$filterType = $params->get('k_author_alias_filtering_type', 1);
				break;
		}
		if (is_array($ids)) {
			$equals = $filterType ? '=' : '!=';
			$where = null;
			foreach ($ids as $id) {
				if ($id) {
					$where .= $table . ' ' . $equals . ' ' . $id . ' OR ';
				}
			}
			if ($where) {
				$where = '(' . rtrim($where, ' OR ') . ')';
				$query->where($where);
			}
		}
		return $query;
	}
	/**
	 * Updates the query with article exclusions including excluding the active item.
	 *
	 * @param object $query The Joomla query object
	 * @param object $params The module parameters
	 * @param string $view The view
	 * @param int $id The active article id
	 *
	 * @return object The updated Joomla query object
	 */
	private static function queryExcludeArticles($query, $params, $view, $id)
	{
		$excludedArticles = explode(',', $params->get('k_excluded_articles', ''));
		if (is_array($excludedArticles)) {
			foreach ($excludedArticles as $excludeArticle) {
				if ($excludeArticle == '') {
					break;
				}
				$query->where(' a.id != ' . $excludeArticle);
			}
		}
		if ($view === 'item' && $params->get('k_exclude_active_article', 1)) {
			$query->where(' a.id != ' . $id); // exclude active article if in item view
		}
		return $query;
	}
}
?>