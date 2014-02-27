<?php
/**
 * @package Masters Web Solutions - Library
 * @author Christopher Masters <chris@masterswebsolutions.com>
 * @copyright Copyright (c) 2011 Christopher Masters. All Rights Reserved.
 * @license GNU/GPL 2, http://www.gnu.org/licenses/gpl-2.0.html
 */
defined('_JEXEC') or die('Restricted access'); // no direct access
/**
 * The mws article class.
 * Functions related to article content.
 */
abstract class MWSArticle
{
	/**
	 * Gets the complete text of the current article introtext and fulltext together.
	 * 
	 * @param object $article The article object
	 * @param string $option (optional) The component containing the text. (Will use the current option if none provided.)
	 * 
	 * @return string The full article text
	 * @since 1.0
	 */
	public static function getText($article, $option = null)
	{
		$query = MWS::$db->getQuery(true);
		if (!$option) {
			$option = MWS::$option;
		}
		switch ($option) {
			case 'com_content':
			case 'com_fjrelated':
				$query->select('c.introtext AS intro, c.fulltext AS text');
				$query->from('#__content AS c');
				$query->where('id = ' . $article->id);
				break;
			case 'com_k2':
				$query->select('c.introtext AS intro, c.fulltext AS text');
				$query->from('#__k2_items AS c');
				$query->where('id = ' . $article->id);
				break;
			case 'com_easyblog':
				$query->select('c.intro, c.content AS text');
				$query->from('#__easyblog_post AS c');
				$query->where('id = ' . $article->id);
				break;
		}
		if (isset($query)) {
			MWS::$db->setQuery($query);
			$article = MWS::$db->loadObject();
			if ($article) {
				$text = $article->intro . $article->text;
				if (JPluginHelper::isEnabled('content', 'emailcloak')) {
					$text = '{emailcloak=off}' . $text; // turn off cloak for truncation... prepare content later.
				}
				return JHtml::_('content.prepare', $text);
			}
		}
	}
	/**
	 * Gets the article object with introtext, fulltext & title.
	 * 
	 * @param string $ext The MWS extension
	 * 
	 * @return object The article object.
	 * @since 1.5
	 */
	public static function getArticle($ext)
	{
		if (MWS::$id) {
			$query = MWS::$db->getQuery(true);
			switch (MWS::$option) {
				case 'com_content':
					$query->select('*');
					$query->from('#__content');
					$query->where('id = ' . MWS::$id);
					break;
				case 'com_k2':
					$query->select('*');
					$query->from('#__k2_items AS c');
					$query->where('id = ' . MWS::$id);
					break;
				case 'com_easyblog':
					$query->select('c.intro AS introtext, c.content AS fulltext, c.title');
					$query->from('#__easyblog_post AS c');
					$query->where('id = ' . MWS::$id);
					break;
			}
			if (isset($query)) {
				MWS::$db->setQuery($query);
				$article = MWS::$db->loadObject();
				if ($article) {
					$article->text = JHtml::_('content.prepare', $article->introtext . $article->fulltext);
					return $article;
				} else {
					MWSLog::logError(JText::sprintf(MWS_MESSAGE_ARTICLE_NO_CONTENT, MWS::$id), $ext);
				}
			} else {
				MWSLog::logError(JText::sprintf(MWS_MESSAGE_COMPONENT_NOT_SUPPORTED, $option), $ext);
			}
		}
	}
}
?>