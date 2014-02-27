<?php
/**
 * @package Masters Web Solutions - Library
 * @author Christopher Masters <chris@masterswebsolutions.com>
 * @copyright Copyright (c) 2011 Christopher Masters. All Rights Reserved.
 * @license GNU/GPL 2, http://www.gnu.org/licenses/gpl-2.0.html
 */
defined('_JEXEC') or die('Restricted access'); // no direct access
/**
 * The mws author class.
 * Modifies an article name and displays About the Author and Author Articles.
 */
abstract class MWSAuthor
{
	/**
	 * Gets the article author name.
	 * 
	 * @param object $article The article object
	 * @param object $authorNameParams The authorName $extVars
	 * 
	 * @return string The new author name information
	 * @since 1.0
	 */
	public static function getArticleAuthorName($article, $authorNameParams)
	{
		$name = self::setAuthorName($article, $authorNameParams);
		if ($authorNameParams->link) {
			$anchorInfo = self::setAuthorLink($article, $name, $authorNameParams->link);
			$name = $anchorInfo->link;
		}
		return $name;
	}
	/**
	 * Sets the article author name for the getAuthorName method.
	 *
	 * @param object $article The article object
	 * @param object $authorNameParams The author name $extVars
	 *
	 * @return string The author name
	 * @since 1.0
	 */
	private static function setAuthorName($article, $authorNameParams)
	{
		if ($article->created_by_alias) {
			$name = $article->created_by_alias;
		} else {
			$name = $article->author;
		}
		if ($authorNameParams->name) {
			$users = self::getUser($article);
			switch ($authorNameParams->name) {
				case 'name':
					$name = $users->name;
					break;
				case 'username':
					$name = $users->username;
					break;
				case 'alias':
					if ($article->created_by_alias) {
						$name = $article->created_by_alias;
					}
					break;
			}
		}
		return $name;
	}
	/**
	 * Links a name to the corresponding contact or profile page.
	 *
	 * @param object $article The article object
	 * @param string $name The author name
	 * @param string $component (optional) The component. (Will use 'com_contact' if none provided)
	 *
	 * @return object The anchor href and HTML link
	 * @since 1.0
	 */
	public static function setAuthorLink($article, $name, $component = 'com_contact')
	{
		$anchor = new stdClass();
		$anchor->href = null;
		switch ($component) {
			case 'com_contact':
				$authorInfo = self::getContactDetails($article);
				if (!empty($authorInfo)) {
					$needle = 'index.php?option=com_contact&view=contact&id=' . $authorInfo->id;
					$menu = MWS::$app->getMenu();
					$item = $menu->getItems('link', $needle, true);
					$anchor->href = !empty($item) ? $needle . '&Itemid=' . $item->id : $needle;
					break;
				}
			case 'com_comprofiler':
				if (is_dir(JPATH_SITE . DIRECTORY_SEPARATOR . 'components' . DIRECTORY_SEPARATOR . 'com_comprofiler')) {
					$anchor->href = JRoute::_('index.php?option=com_comprofiler&amp;task=userProfile&amp;user=' . $article->created_by);
				}
				break;
			case 'com_kunena':
				if (is_dir(JPATH_SITE . DIRECTORY_SEPARATOR . 'components' . DIRECTORY_SEPARATOR . 'com_kunena')) {
					$anchor->href = JRoute::_('index.php?option=com_kunena&amp;func=profile&amp;userid=' . $article->created_by);
				}
				break;
			case 'com_community':
				if (is_dir(JPATH_SITE . DIRECTORY_SEPARATOR . 'components' . DIRECTORY_SEPARATOR . 'com_community')) {
					$anchor->href = JRoute::_('index.php?option=com_community&amp;view=profile&amp;userid=' . $article->created_by);
				}
				break;
			case 'com_jsocialsuite':
				if (is_dir(JPATH_SITE . DIRECTORY_SEPARATOR . 'components' . DIRECTORY_SEPARATOR . 'com_jsocialsuite')) {
					$anchor->href = JRoute::_('index.php?option=com_jsocialsuite&amp;task=profile.view&amp;id=' . $article->created_by);
				}
				break;
			default:
				$anchor->href = null;
		}
		if ($anchor->href) {
			$anchor->link = JHtml::_('link', JRoute::_($anchor->href), $name, 'class="author-link"');
		} else {
			$anchor->link = $name;
		}
		return $anchor;
	}
	/**
	 * Strips the link from the author name if the author name is an alias.
	 *
	 * @param object $article The article object
	 * @param string $option The current component
	 *
	 * @return void
	 * @since 1.0
	 */
	public static function unLinkAlias($article, $option)
	{
		if ($option == 'com_easyblog') {
			return;
		}
		if ($article->created_by_alias) {
			$article->contactid = null;
			$article->created_by_alias = strip_tags($article->created_by_alias);
		}
	}
	/**
	 * Gets the contact details from the contact component for the current author.
	 *
	 * @param object $article The article object
	 *
	 * @return object The contact details
	 * @since 1.0
	 */
	public static function getContactDetails($article)
	{
		$query = MWS::$db->getQuery(true);
		$query->select('*');
		$query->from('#__contact_details');
		$query->where('user_id = ' . $article->created_by, 'published = 1');
		MWS::$db->setQuery($query); // set the query
		$contact = MWS::$db->loadObject(); // load the object
		return $contact;
	}
	/**
	 * Gets the user information for the current author.
	 *
	 * @param object $article The article object
	 *
	 * @return object The user information
	 * @since 1.0
	 */
	public static function getUser($article)
	{
		$query = MWS::$db->getQuery(true);
		$query->select('*');
		$query->from('#__users');
		$query->where('id = ' . $article->created_by, 'block = 0');
		MWS::$db->setQuery($query); // set the query
		$users = MWS::$db->loadObject(); // get the users object
		return $users;
	}
	/**
	 * Gets the author information from the linked user in the contact component.
	 *
	 * @param object $article The article object
	 * @param object $extVars The extension variables
	 *
	 * @return string The About the Author information
	 * @since 1.0
	 * @deprecated since 1.11
	 */
	public static function getAuthorAbout($article, $extVars)
	{
		$contactDetails = self::getContactDetails($article); // get contact details from contact component
		if (!isset($contactDetails)) {
			return; // return if author not linked to contact
		} else {
			$authorName = self::setFeatureName($article, $extVars, 'about');
			$details = self::setAuthorAboutDetails($article, $extVars, $contactDetails, $authorName);
			$authorAbout = self::buildAuthorAboutOutput($article, $extVars, $details, $authorName);
			return $authorAbout;
		}
	}
	/**
	 * Gets an HTML list of articles from the author.
	 *
	 * @param object $article The article object
	 * @param object $extVars The extension variables
	 *
	 * @return string An HTML list of articles from the author
	 * @since 1.0
	 * @deprecated since 1.11
	 */
	public static function getAuthorArticles($article, $extVars)
	{
		switch ($extVars->articles->type) {
			case 'latest':
				$authorArticles = self::setAuthorArticles($article, $extVars->articles->type, $extVars);
				break;
			case 'popular':
				$authorArticles = self::setAuthorArticles($article, $extVars->articles->type, $extVars);
				break;
			case 'latest-popular':
				$latestArticles = self::setAuthorArticles($article, 'latest', $extVars);
				$popularArticles = self::setAuthorArticles($article, 'popular', $extVars);
				// set the display order
				switch ($extVars->articles->displayOrder) {
					case 'latest-popular':
						$authorArticles = $latestArticles . $popularArticles;
						break;
					case 'popular-latest':
						$authorArticles = $popularArticles . $latestArticles;
						break;
				}
				break;
		}
		return $authorArticles;
	}
	/**
	 * Sets the About the Author name.
	 *
	 * @param object $article The article object
	 * @param object $extVars The extension variables
	 * @param string $feature The feature (About the Author or Author Articles)
	 *
	 * @return string The author name
	 * @since 1.0
	 * @deprecated since 1.11
	 */
	private static function setFeatureName($article, $extVars, $feature)
	{
		$name = self::getArticleAuthorName($article, $extVars->authorName);
		if ($extVars->$feature->link && !$extVars->authorName->link && $article->contactid) { // use global
			$anchorInfo = self::setAuthorLink($article, $name);
			$name = $anchorInfo->link; // link author to contact
		}
		if (!$extVars->$feature->link || ($article->created_by_alias && $extVars->authorName->unlinkAlias)) {
			$name = strip_tags($name); // don't link author
		}
		return $name;
	}
	/**
	 * Sets the About the Author details.
	 *
	 * @param object $article The article object
	 * @param object $extVars The extension variables
	 * @param object $contactDetails The author's contact details
	 * @param string $authorName The author's name
	 *
	 * @return string The About the Author details
	 * @since 1.5
	 * @deprecated since 1.11
	 */
	private static function setAuthorAboutDetails($article, $extVars, $contactDetails, $authorName)
	{
		$name = self::setAuthorAboutNameHtml($authorName, $extVars);
		$image = self::setAuthorAboutImageHtml($contactDetails->image, $extVars, $article);
		$position = self::setAuthorAboutPositionHtml($contactDetails->con_position, $extVars);
		$url = self::setAuthorAboutUrl($contactDetails->webpage, $extVars);
		$email = self::setAuthorAboutEmail($contactDetails->email_to, $extVars);
		$text = self::setAuthorAboutText($contactDetails->misc, $extVars);
		// calculate author-info margin
		$thumbSpace = $extVars->about->imageWidth + $extVars->about->imageSpace;
		$thumbSpace = $extVars->about->imageFloat == 'left' ? 'margin-left:' . $thumbSpace
		. 'px;' : 'margin-right:' . $thumbSpace . 'px;';
		// author details
		$details = $image;
		$details .= '<div class="author-info" style="' . MWSString::cleanStyle($thumbSpace) . '">'
			. "\n" . $name . "\n"
			. $position . "\n"
			. $email . "\n"
			. $url . "\n"
			. $text . "\n"
			. '</div><!-- end author-info -->';
		return $details;
	}
	/**
	 * Builds the About the Author's HTML output.
	 *
	 * @param object $article The article object
	 * @param object $extVars The extension variables
	 * @param string $details The About the Author details
	 * @param string $authorName The author's name
	 *
	 * @return string The Author About HTML
	 * @since 1.5
	 * @deprecated since 1.11
	 */
	private static function buildAuthorAboutOutput($article, $extVars, $details, $authorName)
	{
		$headText = $extVars->about->heading;
		if ($extVars->about->headName) {
			$headText .= ' ' . $authorName;
		}
		// set heading
		$headStyle = $extVars->about->headStyle ? ' style="' . MWSString::cleanStyle($extVars->about->headStyle) . '"' : null;
		$hTag = '<h' . $extVars->about->headLevel . $headStyle . '>' . $headText
		. '</h' . $extVars->about->headLevel . '>' . "\n";
		// set ID and style
		$divId = $extVars->about->id ? ' id="' . $extVars->about->id . '"' : null;
		$divStyle = $extVars->about->style ? ' style="clear:both;' . MWSString::cleanStyle($extVars->about->style)
		. '"' : ' style="clear:both;"';
		// output
		$output = '<!-- start author about -->' . "\n" . '<div' . $divId . $divStyle . '>' . "\n"; // open container
		$output .= $hTag; // add hTag
		$output .= $details . "\n"; // add details
		$output .= '<div style="clear:both;"></div>' . "\n"; // clear floats
		if ($extVars->articles->type && $extVars->articles->insideAbout) {
			$output .= self::getAuthorArticles($article, $extVars); // add author articles
		}
		$output .= '</div>' . "\n" . '<!-- end author about -->'; // close container
		return $output;
	}
	/**
	 * Sets the About the Author's name HTML.
	 *
	 * @param string $authorName The author's name
	 * @param object $extVars The extension variables
	 *
	 * @return string The About the Author name
	 * @since 1.5
	 * @deprecated since 1.11
	 */
	private static function setAuthorAboutNameHtml($authorName, $extVars)
	{
		if ($extVars->about->name) {
			$aboutNameStyle = $extVars->about->nameStyle ? ' style="' . MWSString::cleanStyle($extVars->about->nameStyle) . '"' : null;
			$name = '<div class="author-name"' . $aboutNameStyle . '>' . $authorName . '</div>';
			return $name;
		}
	}
	/**
	 * Sets the About the Author's image HTML.
	 *
	 * @param string $image The author image
	 * @param object $extVars The extension variables
	 * @param object $article The article object
	 *
	 * @return string The About the Author image
	 * @since 1.5
	 * @deprecated since 1.11
	 */
	private static function setAuthorAboutImageHtml($image, $extVars, $article)
	{
		if ($extVars->about->image && $image) {
			$alt = $article->author;
			$alt = strip_tags($alt);
			$aboutThumbFloat = 'float:' . $extVars->about->imageFloat . ';';
			$authorThumbWidth = $extVars->about->imageWidth ? 'width="' . $extVars->about->imageWidth . '"' : null;
			$aboutImageStyle = $extVars->about->imageStyle ? $extVars->about->imageStyle : null;
			$img = '<img src="' . $image . '" ' . $authorThumbWidth . ' alt="' . $alt . '" />';
			if ($extVars->about->imageLink) {
				$author = self::setAuthorLink($article, $img, $extVars->authorName->link);
				$img = $author->link;
			}
			$authorImage = '<div class="author-image" style="' . MWSString::cleanStyle($aboutThumbFloat . $aboutImageStyle) . '">';
			$authorImage .= $img;
			$authorImage .= '</div>' . "\n";
			return $authorImage;
		}
	}
	/**
	 * Sets the About the Author's position HTML.
	 *
	 * @param string $con_position The position
	 * @param object $extVars The extension variables
	 *
	 * @return string The About the Author position
	 * @since 1.5
	 * @deprecated since 1.11
	 */
	private static function setAuthorAboutPositionHtml($con_position, $extVars)
	{
		if ($extVars->about->position && $con_position) {
			$aboutPosStyle = $extVars->about->posStyle ? ' style="' . MWSString::cleanStyle($extVars->about->posStyle) . '"' : null;
			$authorPos = '<div class="author-position"' . $aboutPosStyle . '>' . $con_position . '</div>';
			return $authorPos;
		}
	}
	/**
	 * Sets the About the Author's URL HTML.
	 *
	 * @param string $webpage The webpage
	 * @param object $extVars The extension variables
	 *
	 * @return string The About the Author URL
	 * @since 1.5
	 * @deprecated since 1.11
	 */
	private static function setAuthorAboutUrl($webpage, $extVars)
	{
		if ($extVars->about->url && $webpage) {
			$aboutUrlStyle = $extVars->about->urlStyle ? ' style="' . MWSString::cleanStyle($extVars->about->urlStyle) . '"' : null;
			$authorUrl = '<div class="author-url"' . $aboutUrlStyle . '>'
					. JHtml::_('link', $webpage, $webpage) . '</div>';
			return $authorUrl;
		}
	}
	/**
	 * Sets About the Author's email HTML.
	 *
	 * @param string $email_to The email
	 * @param object $extVars The extension variables
	 *
	 * @return string The About the Author email
	 * @since 1.5
	 * @deprecated since 1.11
	 */
	private static function setAuthorAboutEmail($email_to, $extVars)
	{
		if ($extVars->about->email && $email_to) {
			$aboutEmailStyle = $extVars->about->emailStyle ? ' style="' . MWSString::cleanStyle($extVars->about->emailStyle) . '"' : null;
			$authorEmail = '<div class="author-email"' . $aboutEmailStyle . '>'
					. JHTML::_('email.cloak', $email_to) . '</div>';
			return $authorEmail;
		}
	}
	/**
	 * Sets About the Author's text HTML.
	 *
	 * @param string $misc The miscellaneous/other information
	 * @param object $extVars The extension variables
	 *
	 * @return string The About the Author text
	 * @since 1.5
	 * @deprecated since 1.11
	 */
	private static function setAuthorAboutText($misc, $extVars)
	{
		if ($extVars->about->text && $misc) {
			$authorText = $misc;
			return $authorText;
		}
	}
	/**
	 * Sets the the list of articles for the getAuthorArticles method.
	 *
	 * @param object $article The article object
	 * @param string $type The articles type (latest or popular)
	 * @param object $extVars The extension variables
	 *
	 * @return string The Author Articles
	 * @since 1.0
	 * @deprecated since 1.11
	 */
	private static function setAuthorArticles($article, $type, $extVars)
	{
		$authorArticles = new stdClass();
		switch ($type) { // determine latest or popular
			case 'latest':
				$authorArticles->id = ' id="latest-articles"';
				$headingLevel = $extVars->articles->latestHead;
				break;
			case 'popular':
				$authorArticles->id = ' id="popular-articles"';
				$headingLevel = $extVars->articles->popularHead;
				break;
		}
		$excludeAlias = $extVars->articles->excludeAlias;
		$max = $extVars->articles->max;
		$articles = self::getArticles($article, $type, $max, $excludeAlias); // get articles from author
		if (empty($articles)) {
			return; // no other articles from author
		} else {
			$authorArticles->htmlClass = $extVars->articles->moreClass ? ' class="items-more"' : null; // items-more class
			$authorArticles->style = $extVars->articles->style ? ' style="' . MWSString::cleanStyle($extVars->articles->style) . '"' : null; // inline style
			$authorName = self::setFeatureName($article, $extVars, 'articles');
			$authorArticles->heading = $extVars->articles->name ? $headingLevel . ' ' . $authorName : $headingLevel;
			$authorArticles->heading = '<h' . $extVars->articles->headLevel . '>' . $authorArticles->heading
			. '</h' . $extVars->articles->headLevel . '>' . "\n"; // heading
			$authorArticles->htmlList = self::buildAuthorArticlesList($articles, $extVars); // build list
			$authorArticles = self::authorArticlesOutput($type, $authorArticles); // output
			return $authorArticles;
		}
	}
	/**
	 * Builds the HTML list for Author Articles.
	 *
	 * @param array $articles The latest and/or popular articles for the current author
	 * @param object $extVars The extension variables
	 *
	 * @return string The list of articles from the author
	 * @since 1.0
	 * @deprecated since 1.11
	 */
	private static function buildAuthorArticlesList($articles, $extVars)
	{
		$listType = $extVars->articles->listType == 'ul' ? 'ul' : 'ol'; // set list type
		$htmlList = '<' . $listType . '>' . "\n";
		for ($i=0; $i < $extVars->articles->max; $i++) {
			if (isset($articles[$i])) {
				if ($extVars->articles->titleLimit) {
					$articles[$i]->title = JHtml::_('string.truncate', $articles[$i]->title, $extVars->articles->titleLimit);
				}
				$slug = $articles[$i]->id . ':' . $articles[$i]->alias;
				$articleLink = JRoute::_(ContentHelperRoute::getArticleRoute($slug, $articles[$i]->catid));
				$authorArticlesDate = $extVars->articles->appendDate ? ' - ' . JHtml::_('date', $articles[$i]->publish_up
						, JText::_('DATE_FORMAT_LC3')) : null;
				$htmlList .= '<li>' . JHtml::_('link', $articleLink, $articles[$i]->title) . $authorArticlesDate . '</li>' . "\n";
			}
		}
		$htmlList .= '</' . $listType . '>' . "\n";
		return $htmlList;
	}
	/**
	 * Outputs the Author Articles HTML.
	 *
	 * @param string $type The Author Articles type (latest or popular)
	 * @param object $authorArticles the Author Articles
	 *
	 * @return string The Author Articles HTML
	 * @since 1.5
	 * @deprecated since 1.11
	 */
	private static function authorArticlesOutput($type, $authorArticles)
	{
		$output = '<!-- start ' . $type . ' articles -->' . '<div' . $authorArticles->id . $authorArticles->htmlClass
		. $authorArticles->style . '>'; // open container
		$output .= $authorArticles->heading; // add heading
		$output .= $authorArticles->htmlList; // add list
		$output .= '</div><!-- end ' . $type . ' articles -->' . "\n"; // close container
		return $output;
	}
	/**
	 * Gets the latest and/or popular articles information for the current author.
	 *
	 * @param object $article The article object
	 * @param string $type The articles type
	 * @param int $articlesMax The maximum number of articles
	 * @param boolean $excludeAlias (optional) If true, exclude articles with an author alias
	 *
	 * @return array The latest and/or popular articles for the current author
	 * @since 1.0
	 * @deprecated since 1.11
	 */
	private static function getArticles($article, $type, $articlesMax, $excludeAlias = false)
	{
		$nullDate = MWS::$db->getNullDate();
		$now = MWSDatabase::getDateSql();
		if ($excludeAlias) {
			$createdByAlias = ' AND created_by_alias = ""';
		} elseif ($article->created_by_alias) {
			$createdByAlias = ' AND created_by_alias = "' . $article->created_by_alias . '"';
		}
		switch ($type) {
			case 'latest':
				$orderBy = 'publish_up DESC';
				break;
			case 'popular':
				$orderBy = 'hits DESC';
				break;
		}
		$query = MWS::$db->getQuery(true);
		$query->select('*');
		$query->from('#__content');
		$query->where('created_by = ' . $article->created_by . $createdByAlias . ' AND id != ' . $article->id
				. ' AND state = 1' . ' AND (publish_up = ' . MWS::$db->Quote($nullDate)
				. ' OR publish_up <= ' . MWS::$db->Quote($now) . ')' . ' AND (publish_down = '
				. MWS::$db->Quote($nullDate) . ' OR publish_down >= ' . MWS::$db->Quote($now) . ')');
		$query->order($orderBy);
		MWS::$db->setQuery($query, 0, $articlesMax); // set the query
		$articles = MWS::$db->loadObjectList(); // load the object list
		return $articles;
	}
}
?>