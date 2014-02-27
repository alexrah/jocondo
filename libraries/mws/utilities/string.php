<?php
/**
 * @package Masters Web Solutions - Library
 * @author Christopher Masters <chris@masterswebsolutions.com>
 * @copyright Copyright (c) 2011 Christopher Masters. All Rights Reserved.
 * @license GNU/GPL 2, http://www.gnu.org/licenses/gpl-2.0.html
 */
defined('_JEXEC') or die('Restricted access'); // no direct access
/**
 * The mws string utility class.
 * This class contains several string utilities.
 */
abstract class MWSString
{
	/**
	 * Truncates a string up to a number of characters while preserving whole words and HTML tags
	 * Modified from http://alanwhipple.com/2011/05/25/php-truncate-string-preserving-html-tags-words/
	 *
	 * @param string $text The string to truncate
	 * @param int $length The length of returned string, including ending (ellipsis)
	 * @param string $ending (optional) The ending to be appended to the trimmed string
	 * @param boolean $html (optional) If true, HTML tags would be handled correctly
	 * @param boolean $exact (optional) If false, $text will not be cut mid-word
	 *
	 * @return string The text truncated
	 * @since 1.0
	 */
	public static function truncate($text, $length, $ending = '', $html = true, $exact = false)
	{
		if ($html) {
			// if the plain text is shorter than the maximum length, return the whole text
			if (JString::strlen(preg_replace('/<.*?>/', '', $text)) <= $length) {
				return $text;
			}
			// splits all html-tags to scanable lines
			preg_match_all('/(<.+?>)?([^<>]*)/s', $text, $lines, PREG_SET_ORDER);
			$total_length = 0;
			$open_tags = array();
			$truncate = null;
			foreach ($lines as $line_matchings) {
				// if there is any html-tag in this line, handle it and add it (uncounted) to the output
				if (!empty($line_matchings[1])) {
					// if it's an "empty element" with or without xhtml-conform closing slash
					if (preg_match('/^<(\s*.+?\/\s*|\s*(img|br|input|hr|area|base|basefont|col|frame|isindex|link|meta|param)(\s.+?)?)>$/is', $line_matchings[1])) {
						// do nothing
						// if tag is a closing tag
					} else if (preg_match('/^<\s*\/([^\s]+?)\s*>$/s', $line_matchings[1], $tag_matchings)) {
						// delete tag from $open_tags list
						$pos = array_search($tag_matchings[1], $open_tags);
						if ($pos !== false) {
							unset($open_tags[$pos]);
						}
						// if tag is an opening tag
					} else if (preg_match('/^<\s*([^\s>!]+).*?>$/s', $line_matchings[1], $tag_matchings)) {
						// add tag to the beginning of $open_tags list
						array_unshift($open_tags, strtolower($tag_matchings[1]));
					}
					// add html-tag to $truncate'd text
					$truncate .= $line_matchings[1];
				}
				// calculate the length of the plain text part of the line; handle entities as one character
				$content_length = JString::strlen(preg_replace('/&[0-9a-z]{2,8};|&#[0-9]{1,7};|[0-9a-f]{1,6};/i', ' ', $line_matchings[2]));
				if ($total_length + $content_length > $length) {
					// the number of characters which are left
					$left = $length - $total_length;
					$entities_length = 0;
					// search for html entities
					if (preg_match_all('/&[0-9a-z]{2,8};|&#[0-9]{1,7};|[0-9a-f]{1,6};/i', $line_matchings[2], $entities, PREG_OFFSET_CAPTURE)) {
						// calculate the real length of all entities in the legal range
						foreach ($entities[0] as $entity) {
							if ($entity[1]+1-$entities_length <= $left) {
								$left--;
								$entities_length += JString::strlen($entity[0]);
							} else {
								// no more characters left
								break;
							}
						}
					}
					$truncate .= JString::substr($line_matchings[2], 0, $left+$entities_length);
					// maximum lenght is reached, so get off the loop
					break;
					
				} else {
					$truncate .= $line_matchings[2];
					$total_length += $content_length;
				}
				// if the maximum length is reached, get off the loop
				if ($total_length>= $length) {
					break;
				}
			}
		} else {
			if (JString::strlen($text) <= $length) {
				return $text;
			} else {
				$truncate = JString::substr($text, 0, $length - strlen($ending));
			}
		}
		// if the words shouldn't be cut in the middle...
		if (!$exact) {
			// ...search the last occurance of a space...
			$spacepos = strrpos($truncate, ' ');
			if (isset($spacepos)) {
				// catch closing tags after space
				if ($html && preg_match_all('/<\/(.*?)>/', strrchr($truncate, ' '), $matches)) {
					foreach ($matches[0] as $tag) {
						$addTags[] = $tag;
					}
				}
				// ...and cut the text in this position
				$truncate = substr($truncate, 0, $spacepos);
				
				// add any tags
				if ($html && isset($addTags)) {
					$truncate .= implode('', $addTags);
				}
			}
		}
		if ($html) {
			foreach ($open_tags as $tag) {
				$truncate .= '</' . $tag . '>'; // close all unclosed html-tags
			}
		}
		$truncate = JString::trim($truncate) . $ending;
		return $truncate;
	}
	/**
	 * Gets the first paragraph from some text ignoring empty paragraphs.
	 * 
	 * @param string $text The text to search for a paragraph
	 * 
	 * @return string The first paragraph
	 * @since 1.0
	 */
	public static function getParagraph($text)
	{
		preg_match_all("/<p.*?>(.*?)<\/p>/is", $text, $matches); // get all paragraphs from text
		if (!empty($matches[0])) {
			$paragraphs = count($matches[0]);
			// get first paragraph with text
			for ($i=0; $i<=$paragraphs; $i++) {
				if (!isset($matches[0][$i])) {
					$firstParagraph = NULL;
					break;
				}
				// Strip p tag, ' ', &nbsp; and images to determine length
				$p = $matches[0][$i];
				$p = JFilterOutput::stripImages($p);
				$p = preg_replace("/<p.*?>/is", '', $p);
				$p = str_ireplace('</p>', '', $p);
				$p = str_ireplace('&nbsp;', '', $p);
				$p = JString::trim($p);
				// get paragraph with text
				if (JString::strlen($p) > 5) {
					$firstParagraph = $matches[0][$i];
					break;
				}
			}
			return $firstParagraph;
		}
	}
	/**
	 * Gets the first occurence of an opening HTML tag including attributes.
	 * 
	 * @param string $text The string to search
	 * @param string $tag The tag to find
	 * 
	 * @return string The HTML tag
	 * @since 1.0
	 */
	public static function getOpenTag($text, $tag)
	{
		preg_match("/<$tag.*?>/is", $text, $openTag);
		$openTag = !empty($openTag) ? $openTag[0] : '';
		return $openTag;
	}
	/**
	 * Formats HTML without '<' and '>' for the strip_tags function.
	 * This method is designed to grab input from an extensions xml parameters.
	 * This will add <p> to $allowedTags when $artIntroType is Paragraph.
	 * 
	 * @param string $allowedTags Tags without without '<' and '>'
	 * 
	 * @return mixed (array) allowed tags, (string) 'p>' or null
	 * @since 1.0
	 */
	public static function getAllowedTags($allowedTags)
	{
		if (!$allowedTags) {
			return; // no allowed tags
		}
		// set variables
		$tagsArray = array();
		$tagsArray = explode(',', $allowedTags);
		$countTags = count($tagsArray)-1;
		$allowedTags = null; // reset allowedTags
		for ($i=0; $i<=$countTags; $i++) {
			// determine allowed tags
			$tagsArray[$i] = JString::trim($tagsArray[$i]);
			$tagsArray[$i]= '<' . $tagsArray[$i] . '>';
			if ($countTags == 0) {
				$allowedTags = $tagsArray[$i];
			} else {
				$allowedTags .= $tagsArray[$i] . ',';
			}
		}
		$allowedTags = JString::rtrim($allowedTags, ','); // trim trailing comma
		return $allowedTags;
	}
	/**
	 * Strips HTML header tags and their contents.
	 * 
	 * @param string $text The text to remove header tags
	 * 
	 * @return string The text without header tag and contents
	 * @since 1.0
	 */
	public static function stripHeaders($text)
	{
		$text = preg_replace("/<h.*?>(.*?)<\/h.*?>/is", '', $text);
		return $text;
	}
	/**
	 * Strips HTML structural or block elements which can cause undesired results when truncating the text with HTML.
	 * This is a helper function for the truncate function. Run before truncating any HTML.
	 *
	 * @param string $text The string to strip of structural HTML elements
	 * @param array $preserveTags (optional) The tags to preserve from the strip list
	 *
	 * @return string The string without structural HTML elements
	 * @since 1.0
	 */
	public static function stripStructure($text, $preserveTags = null)
	{
		$tags = 'ul|ol|li|dl|dt|dd|table|tbody|th|thead|tr|td|tfoot|p|div|br|blockquote|address|pre|hr|img';
		if (is_array($preserveTags)) {
			$tagsArray = explode('|', $tags);
			$tagsArray = MWSArray::compareRemoveHaystack($preserveTags, $tagsArray);
			$tags = implode('|', $tagsArray);
		}
		$text =	preg_replace("#</?(' . $tags . ')[^>]*>#i", '', $text);
		$text = JString::trim($text);
		
		return $text;
	}
	/**
	 * Gets a string without HTML tags.
	 * 
	 * @param string $text The string to make plain
	 * 
	 * @return string The plain string
	 * @since 1.5
	 */
	public static function getPlainText($text)
	{
		$text = self::cleanText($text);
		$text = strip_tags($text);
		$text = htmlentities($text);
		return $text;
	}
	/**
	 * Cleans style inputs from user for display inside of a style="" attribute.
	 * 
	 * @param string $style The css style
	 * 
	 * @return string
	 * @since 1.11
	 */
	public static function cleanStyle($style)
	{
		$style = JString::str_ireplace(array('"', '\'', "\n", "\r", "\t"), '', $style);
		$style = JString::str_ireplace(array(': ', ' :'), ':', $style);
		$style = JString::str_ireplace(array('; ', ' ;'), ';', $style);
		$style = JString::trim($style);
		return JFilterOutput::cleanText($style);
	}
	/**
	 * Cleans a string of various extraneous characters.
	 *
	 * @param string $text The string to clean
	 *
	 * @return string The clean string
	 * @since 1.5
	 */
	public static function cleanText($text)
	{
		$text = str_replace(array("\n", "\r", "\t"), ' ', $text); // remove new lines, carriage returns and tabs
		$text = preg_replace("/\s{2,}/"," ", $text); // replace multiple whitespaces with single
		$text = str_ireplace('&nbsp;', ' ', $text); // replace all &nbsp; with ' '
		$text = JString::trim($text);
		return $text;
	}
	/**
	 * Removes the text wrap around a floated image.
	 * 
	 * @param string $text The intro text
	 * @param string $thumbPath The path to the thumbnail
	 * @param object $thumbAlign The thumbnail alignment variables
	 * @param string $thumbType (optional) The thumbnail type for the class
	 * 
	 * @return string The intro text or style
	 * @since 1.0
	 */
	public static function removeTextWrap($text, $thumbPath, $thumbAlign, $thumbType = '')
	{
		if ($thumbPath) {
			$imgSizeInfo = @getimagesize($thumbPath);
			$thumbWidth = $imgSizeInfo[0];
		} else {
			$thumbWidth = 0;
		}
		// return if no thumbnail
		if (!$thumbPath || !$thumbWidth) {
			if ($thumbType == 'macb') {
				return;
			}
			else {
				return $text;
			}
		}
		$margin = $thumbWidth + $thumbAlign->right + $thumbAlign->left; // set the margin
		$style = ' style="margin-' . $thumbAlign->align . ':' . $margin . 'px;"'; // set style
		$class = $thumbType ? ' class="' . $thumbType . '-introtext"' : ''; // set class
		$text = $thumbType == 'macb' ? $style : '<div' . $class . $style . '>' . $text . '</div>'; // wrap text
		return $text;
	}
	/**
	 * Checks a file for a string and returns true if string exists.
	 *
	 * @param string $string The string to check
	 * @param string $fileName The file to check
	 *
	 * @return boolean True if string exists
	 * @since 1.5
	 */
	public static function inFile($string, $fileName)
	{
		if (JFile::exists($fileName)) {
			$contents = JString::trim(file_get_contents($fileName));
			if ($contents && JString::strlen($contents) > 0) {
				$lines = explode("\n", $contents); // break content into lines
				foreach ($lines as $line) {
					$exists = JString::strpos($line, $string);
					if ($exists) {
						return true;
					}
				}
			}
		}
	}
}
?>