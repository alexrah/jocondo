<?php
/**
 * @package Masters Web Solutions - Library
 * @author Christopher Masters <chris@masterswebsolutions.com>
 * @copyright Copyright (c) 2011 Christopher Masters. All Rights Reserved.
 * @license GNU/GPL 2, http://www.gnu.org/licenses/gpl-2.0.html
 */
defined('_JEXEC') or die('Restricted access'); // no direct access
/**
 * The mws filter class.
 * Filters options, views, articles, categories and features.
 */
abstract class MWSFilter
{
	/**
	 * Excludes a plugin from running for specific functions, articles, categories, options and views.
	 * 
	 * @param string $filter The filter type
	 * @param object $filterParams The filter parameters
	 * @param object $article The article object
	 * @param string $context The context
	 * @param object $params The article parameters
	 * 
	 * @return boolean True if excluding
	 * @since 1.0
	 */
	public static function run($filter, $filterParams, $article, $context = null, $params = null)
	{
		if (MWS::$app->isAdmin()) {
			return true;
		}
		$die = false;
		if (MWSFILTER::filterOptionsViews($filterParams, $die)) {
			return true;
		}
		if (MWSFILTER::filterFunctions($filter, $die)) {
			return true;
		}
		if (MWS::$option == 'com_content' || MWS::$option == 'com_fjrelated') {
			$die = MWSFILTER::filterJoomla($filter, $filterParams, $article, $die);
		} elseif (MWS::$option == 'com_k2') {
			$die = MWSFILTER::filterK2($filter, $filterParams, $article, $context, $die);
		} elseif (MWS::$option == 'com_easyblog') {
			$die = MWSFILTER::filterEB($filter, $filterParams, $article, $die);
		}
		$die = MWSFILTER::filterAuthorAboutAlias($filter, $filterParams, $article, $die);
		$die = MWSFILTER::filterModules($filter, $params, $article, $die); //echo 'filter: ' . $filter . ' die: ' . $die . '<br />';
		return $die;
	}
	/**
	 * Filters options and views.
	 * 
	 * @param object $filterParams The filter parameters
	 * @param boolean $die The status of the filter
	 * 
	 * @return boolean True if excluding
	 * @since 1.5
	 */
	private static function filterOptionsViews($filterParams, $die)
	{
		if (!in_array(MWS::$option, $filterParams->allowedOptions)) {
			$die = true;
		}
		if (!in_array(MWS::$view, $filterParams->allowedViews)) {
			$die = true;
		}
		return $die;
	}
	/**
	 * Filters unecessary functions from running in the article view.
	 * 
	 * @param string $filter The filter type
	 * @param boolean $die The status of the filter
	 * 
	 * @return boolean True if excluding
	 * @since 1.5
	 */
	private static function filterFunctions($filter, $die)
	{
		$artView = array('article', 'item', 'entry'); // define article views
		// filter thumbnail functions
		if ($filter == 'thumb') {
			if (in_array(MWS::$view, $artView)) {
				$die = true;
			}
		}
		// filter about the author, author articles and shareThis functions
		if ($filter == 'share' || $filter == 'about') {
			if (!in_array(MWS::$view, $artView)) {
				$die = true;
			}
		}
		return $die;
	}
	/**
	 * Filters Joomla.
	 * 
	 * @param string $filter The filter type
	 * @param object $filterParams The filter parameters
	 * @param object $article The article object
	 * @param boolean $die The status of the filter
	 * 
	 * @return boolean True if excluding
	 * @since 1.5
	 */
	private static function filterJoomla($filter, $filterParams, $article, $die)
	{
		switch (MWS::$view) {
			case 'featured':
				if (!$filterParams->$filter->exFeaturedViewJ) {
					$die = true;
				}
				break;
			case 'category':
				if (!$filterParams->$filter->exCategoryViewJ) {
					$die = true;
				}
				break;
			case 'article':
				if (!$filterParams->$filter->exArticleViewJ) {
					$die = true;
				}
				break;
			case 'fjrelated':
				if (!$filterParams->$filter->exFJRelatedView) {
					$die = true;
				}
				break;
		}
		// specific categories & articles
		if (is_array($filterParams->$filter->exCategoriesJ)) {
			if ($filterParams->$filter->inCategoriesJ && !in_array($article->catid, $filterParams->$filter->exCategoriesJ)) {
				$die = true;
			} elseif (!$filterParams->$filter->inCategoriesJ && in_array($article->catid, $filterParams->$filter->exCategoriesJ)) {
				$die = true;
			}
		}
		if (is_array($filterParams->$filter->exArticlesJ)) {
			if ($filterParams->$filter->inArticlesJ && !in_array($article->id, $filterParams->$filter->exArticlesJ)) {
				$die = true;
			} elseif (!$filterParams->$filter->inArticlesJ && in_array($article->id, $filterParams->$filter->exArticlesJ)) {
				$die = true;
			}
		}
		return $die;
	}
	/**
	 * Filters K2.
	 * 
	 * @param string $filter The filter type
	 * @param object $filterParams The filter parameters
	 * @param object $article The article object
	 * @param boolean $die The status of the filter
	 * 
	 * @return boolean True if excluding
	 * @since 1.5
	 */
	private static function filterK2($filter, $filterParams, $article, $context, $die)
	{
		switch (MWS::$view) {
			case 'itemlist':
				if (MWS::$layout == 'category' && !$filterParams->$filter->exCategoryViewK2) {
					$die = true;
				}
				if (MWS::$layout == 'tag' && !$filterParams->$filter->exTagViewK2) {
					$die = true;
				}
				if (MWS::$layout == 'user' && !$filterParams->$filter->exUserViewK2) {
					$die = true;
				}
				break;
			case 'latest':
				if (!$filterParams->$filter->exLatestViewK2) {
					$die = true;
				}
				break;
			case 'item':
				if (!$filterParams->$filter->exItemViewK2) {
					$die = true;
				}
				break;
		}
		// specific categories & articles
		if (is_array($filterParams->$filter->exCategoriesK2)) {
			if ($filterParams->$filter->inCategoriesK2 && !in_array($article->catid, $filterParams->$filter->exCategoriesK2)) {
				$die = true;
			} elseif (!$filterParams->$filter->inCategoriesK2 && in_array($article->catid, $filterParams->$filter->exCategoriesK2)) {
				$die = true;
			}
		}
		if (is_array($filterParams->$filter->exArticlesK2)) {
			if ($filterParams->$filter->inArticlesK2 && !in_array($article->id, $filterParams->$filter->exArticlesK2)) {
				$die = true;
			} elseif (!$filterParams->$filter->inArticlesK2 && in_array($article->id, $filterParams->$filter->exArticlesK2)) {
				$die = true;
			}
		}
		// hide specific contexts
		switch ($context) {
			case 'mod_k2_content':
				$die = true;
				break;
			case 'com_k2.relatedByTag':
				$die = true;
				break;
		}
		return $die;
	}
	/**
	 * Filters EasyBlog.
	 * 
	 * @param string $filter The filter type
	 * @param object $filterParams The filter parameters
	 * @param object $article The article object
	 * @param boolean $die The status of the filter
	 * 
	 * @return boolean True if excluding
	 * @since 1.5
	 */
	private static function filterEB($filter, $filterParams, $article, $die)
	{
		switch (MWS::$view) {
			case 'categories':
				if (MWS::$layout != 'listings') {
					$die = true;
				}
				if (!$filterParams->$filter->exCategoriesViewEB) {
					$die = true;
				}
				break;
			case 'blogger':
				if (MWS::$layout != 'listings') {
					$die = true;
				}
				if (!$filterParams->$filter->exBloggerViewEB) {
					$die = true;
				}
				break;
			case 'myblog':
				if (!$filterParams->$filter->exMyBlogViewEB) {
					$die = true;
				}
				break;
			case 'tags':
				if (MWS::$layout != 'tag') {
					$die = true;
				}
				if (!$filterParams->$filter->exTagsViewEB) {
					$die = true;
				}
				break;
			case 'teamblog':
				if (MWS::$layout != 'listings') {
					$die = true;
				}
				if (!$filterParams->$filter->exTeamBlogViewEB) {
					$die = true;
				}
				break;
			case 'featured':
				if (!$filterParams->$filter->exFeaturedViewEB) {
					$die = true;
				}
				break;
			case 'entry':
				if (!$filterParams->$filter->exEntryViewEB) {
					$die = true;
				}
				break;
		}
		// specific categories & articles
		if (is_array($filterParams->$filter->exCategoriesEB)) {
			if ($filterParams->$filter->inCategoriesEB && !in_array($article->catid, $filterParams->$filter->exCategoriesEB)) {
				$die = true;
			} elseif (!$filterParams->$filter->inCategoriesEB && in_array($article->catid, $filterParams->$filter->exCategoriesEB)) {
				$die = true;
			}
		}
		if (is_array($filterParams->$filter->exArticlesEB)) {
			if ($filterParams->$filter->inArticlesEB && !in_array($article->id, $filterParams->$filter->exArticlesEB)) {
				$die = true;
			} elseif (!$filterParams->$filter->inArticlesEB && in_array($article->id, $filterParams->$filter->exArticlesEB)) {
				$die = true;
			}
		}
		return $die;
	}
	/**
	 * Filters About the Author function when the author is an alias.
	 * 
	 * @param string $filter The filter type
	 * @param object $filterParams The filter parameters
	 * @param boolean $die The status of the filter
	 * 
	 * @return boolean True if excluding
	 * @since 1.5
	 */
	private static function filterAuthorAboutAlias($filter, $filterParams, $article, $die)
	{
		if ($filter == 'about') {
			if ($article->created_by_alias && !$filterParams->$filter->exAlias) {
				$die = true;
			}
		}
		return $die;
	}
	/**
	 * Filters modules from the plugin.
	 * 
	 * @param string $filter The filter type
	 * @param object $params The article parameters
	 * @param object $article The article object
	 * @param boolean $die The status of the filter
	 * 
	 * @return boolean True if excluding
	 * @since 1.5
	 * @todo add option to allow modules
	 * @todo test a way to filter NewsFlashScroller better
	 */
	private static function filterModules($filter, $params, $article, $die)
	{
		if ($filter == 'plugin') {
			if (MWS::$option == 'com_content' && $params->get('layout')) {
				$die = true;
			} elseif (MWS::$option == 'com_k2' && empty($params) || !$article->id) {
				$die = true;
			} elseif (MWS::$option == 'com_fjrelated' && !$params->get('anyOrAll')) {
				$die = true;
			}
			/*
			//NewsFlash Scroller
			if ($params->get('ScrollBehavior')) {
				$die = true;
			}
			*/
		}
		return $die;
	}
}
?>