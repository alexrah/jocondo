<?php
/**
 * @package Masters Web Solutions - Library
 * @author Christopher Masters <chris@masterswebsolutions.com>
 * @copyright Copyright (c) 2011 Christopher Masters. All Rights Reserved.
 * @license GNU/GPL 2, http://www.gnu.org/licenses/gpl-2.0.html
 */
defined('_JEXEC') or die('Restricted access'); // no direct access
/**
 * The MWS ShareThis class.
 * Adds a ShareThis widget to the page.
 */
abstract class MWSShareThis
{
	/**
	 * Gets the ShareThis widget.
	 * 
	 * @param object $params The extension parameters
	 * @param object $article The article object
	 * @param string $ext The MWS extension
	 * 
	 * @return string The shareThis widget
	 * @since 1.0
	 */
	public static function getWidget($params, $article, $ext)
	{
		$info = self::setInfo($article, $params);
		self::addToHead($params, $info);
		return self::setWidget($article, $params, $info, $ext);
	}
	/**
	 * Adds ShareThis scripts and custom css to the HTML head section.
	 * 
	 * @param object $params The ShareThis parameters
	 * 
	 * @return void
	 * @since 1.0
	 */
	private static function addToHead($params, $info)
	{
		$head = NULL;
		if ($params->og) {
			$head = "\n" . '<meta property="og:title" content="' . $info->title . '" />' . "\n"
					. '<meta property="og:type" content="website" />' . "\n"
					. '<meta property="og:url" content="' . $info->url . '" />' . "\n"
					. '<meta property="og:image" content="' . $info->img . '" />' . "\n"
					. '<meta property="og:description" content="' . $info->summary . '" />' . "\n";
		}
		if ($params->twitterCard) {
			$head .= "\n" . '<meta property="twitter:card" content="summary" />' . "\n"
					. '<meta name="twitter:site" content="@' . $params->userNameTwitter . '">' . "\n"
					. '<meta name="twitter:creator" content="@' . $params->userNameTwitter . '">' . "\n"
  					. '<meta property="twitter:url" content="' . $info->url . '" />' . "\n"
					. '<meta property="twitter:title" content="' . $info->title . '" />' . "\n"
					. '<meta property="twitter:description" content="' . $info->summary . '" />' . "\n"
					. '<meta property="twitter:image" content="' . $info->img . '" />' . "\n";
		}
		if ($params->buttonsStyle == '_egg') {
			$head .= JText::sprintf(JText::_(MWS_SHARETHIS_SCRIPT_EGG_HEAD), $params->pubKey, $params->uaCode, $params->widgetTheme, $params->widgetHeader, $params->buttonsHover);
		} else {
			if ($params->widgetStyle == 'multi_post') {
				$type = 'true';
			} elseif ($params->widgetStyle == 'direct_post') {
				$type = 'false';
			}
			$head .= JText::sprintf(JText::_(MWS_SHARETHIS_SCRIPT), $type, $params->pubKey, $params->uaCode, $params->widgetHeader, $params->buttonsHover, $params->widgetTheme);
		}
		if (MWS_SHARETHIS_CSS && $params->buttonsStyle == '_custom') {
			MWS::$doc->addStyleSheet(MWS_SHARETHIS_CSS . $params->buttonsCustom . '.css');
		}
		MWS::$doc->addCustomTag($head);
		MWS::$doc->addStyleDeclaration('.shareThisWidget iframe {max-width: inherit !important;z-index: 9999 !important;}');
	}
	/**
	 * Sets the widget.
	 *
	 * @param object $article The article object
	 * @param object $params The extension parameters
	 * @param string $ext The MWS extension
	 *
	 * @return string The widget
	 * @since 1.0
	 */
	private static function setWidget($article, $params, $info, $ext)
	{
		$fixed = self::setFixed($params);
		$params->services = self::formatServices($params->services, $ext);
		if ($params->buttonsStyle == '_egg') {
			$eggStyle = self::setEggStyle($params, $fixed);
			$eggServices = self::setEggServices($params->services);
			$widget = '<div class="mst-egg" style="width:100%;">'
					. '<div id="shareThisShareEgg" class="shareEgg" style="' . $eggStyle . '"></div>'
					. '</div><div style="clear:both;"></div>'
					. JText::sprintf(JText::_(MWS_SHARETHIS_SCRIPT_EGG_BODY), $eggServices, $info->title, $info->url, $info->img, $info->summary);
		} else {
			$buttons = self::setButtons($params, $info, $fixed);
			$widget = self::wrapButtons($buttons, $params, $fixed);
		}
		return $widget;
	}
	/**
	 * Sets the information for the button.
	 * 
	 * @param object $article The article object
	 * @param object $params The extension parameters
	 * 
	 * @return object The button information
	 * @since 1.5
	 */
	private static function setInfo($article, $params)
	{
		$info = new stdClass();
		$info->url = MWS::$url;
		$info->title = self::cleanArticleTitle($article->title);
		$info->img = self::setShareImage($article, $params);
		$info->summary = JHtml::_('string.truncate', MWSString::getPlainText($article->text), 360);
		return $info;
	}
	/**
	 * Puts services into an array and removes any services that were entered incorrectly.
	 * 
	 * @param string $services The services string entered by the user
	 * @param string $ext The MWS extension
	 * 
	 * @return array The services
	 * @since 1.5
	 */
	private static function formatServices($services, $ext)
	{
		$services = JString::trim(JString::strtolower($services)); // remove extraneous characters and ensure lowercase
		$services = str_replace(array(' ', "\r"), '', $services); // remove spaces and carriage returns
		$services = str_replace(array("\n"), ',', $services); // replace new lines with commas
		$services = str_replace(array(',,'), ',', $services); // remove empty services - The ordering is imporant here -^
		$services = explode(',', $services); // put services is an array
		$allowedServices = array_merge(unserialize(MWS_SHARETHIS_BUTTONS), unserialize(MWS_SHARETHIS_PLUGINS));
		$services = MWSArray::compareRemoveNeedle($services, $allowedServices, MWS_LOG_MESSAGE_SHARETHIS_SERVICE_NOT_EXISTS, $ext);
		$services = MWSArray::addStringToValues($services, 'st_');
		return $services;
	}
	/**
	 * Sets the fixed position.
	 * 
	 * @param object $params The extension parameters
	 * 
	 * @return boolean True if fixed position is set in the parameters
	 * @since 1.5
	 */
	private static function setFixed($params)
	{
		if ($params->position == 'left_top' || $params->position == 'left' || $params->position == 'left_bottom' || $params->position == 'right_top' || $params->position == 'right' || $params->position == 'right_bottom') {
			$fixed = true;
			return $fixed;
		}
	}
	/**
	 * Cleans HTML and other unwanted characters from the article title.
	 * 
	 * @param string $title The article title
	 * 
	 * @return string The article title
	 * @since 1.5
	 */
	private static function cleanArticleTitle($title)
	{
		$title = JFilterOutput::cleanText($title);
		return $title;
	}
	/**
	 * Sets the image for the widget.
	 * 
	 * @param object $article The article object
	 * @param object $params The extension parameters
	 * 
	 * @return string The image
	 * @since 1.5
	 */
	private static function setShareImage($article, $params)
	{
		$params->imgLocation = $params->widgetImage;
		$params->defaultImage = $params->widgetDefaultImage;
		$params->imgNumber = 0;
		$params->k2IntroImage = '_XL';
		$image = MWSImage::getImgThumb($article, $params, 'url'); // get image source path
		return $image;
	}
	/**
	 * Sets the style for the Egg.
	 * 
	 * @param object $params The extension parameters
	 * @param boolean $fixed (optional) Display the egg in a fixed position
	 * 
	 * @return string The egg style
	 * @since 1.5
	 */
	private static function setEggStyle($params, $fixed = false)
	{
		if ($fixed) {
			$eggStyle = self::setFixedPosition($params);
		} else {
			switch ($params->alignment) {
				case 'left':
					$eggStyle = 'width:100%;margin-bottom:20px;float:left;';
					break;
				case 'right':
					$eggStyle = 'width:100%;margin-bottom:20px;float:right;';
					break;
				case 'center':
					$eggStyle = 'width:110px !important;overflow:visible;margin:0px auto 20px auto;';
					break;
				default:
					$eggStyle = 'width:100%;margin-bottom:20px;float:left;';
			}
		}
		return $eggStyle;
	}
	/**
	 * Sets the services to display in the Egg.
	 * 
	 * @param array $service The services
	 * 
	 * @return string The services for the Egg
	 * @since 1.5
	 */
	private static function setEggServices($services)
	{
		$eggServices = null;
		foreach ($services as $shareItem) {
			$shareItem = JString::trim($shareItem);
			if ($shareItem) {
				$eggServices .= '"' . str_ireplace('st_', '', $shareItem) . '", ';
			}
		}
		$eggServices = JString::rtrim($eggServices, ', ');
		return $eggServices;
	}
	/**
	 * Sets the buttons for the widget.
	 * 
	 * @param object $params The extension parameters
	 * @param object $info The button information
	 * @param boolean $fixed (optional) Display the buttons in a fixed position
	 * 
	 * @return string The buttons
	 * @since 1.5
	 */
	private static function setButtons($params, $info, $fixed = false)
	{
		$tag = 'span';
		$style = $buttons = null;
		if ($fixed) {
			$tag = 'div';
			if ($params->buttonsStyle == '_hcount') {
				$style = ' style="width:150px;margin-bottom:5px;"';
			} else {
				$style = ' style="width:0px;margin-bottom:5px;"';
			}
		}
		for ($i=0; $i<count($params->services); $i++) {
			$service = self::getService($params->services[$i], $params->buttonsStyle, $params->buttonsText);
			$url = ' st_url="' . $info->url . '"';
			$title = ' st_title="' . $info->title . '"';
			$image = $info->img ? ' st_image="' . $info->img . '"' : null;
			$summary = ' st_summary="' . $info->summary . '"';
			$userName = self::getUserName($params->services[$i], $params);
			$buttons .= "\n" . '<' . $tag . $style . $service . $url . $title . $image . $summary . $userName . '>'
					.'</' . $tag . '>'; // put the button together
		}
		return $buttons;
	}
	/**
	 * Wraps the buttons for output.
	 * 
	 * @param string $buttons The buttons
	 * @param object $params The extension parameters
	 * @param boolean $fixed (optional) Display the widget in a fixed position
	 * 
	 * @return string The wrapped buttons
	 * @since 1.5
	 */
	private static function wrapButtons($buttons, $params, $fixed = false)
	{
		if ($fixed) {
			$shareFixed = self::setFixedPosition($params);
		} else {
			$shareFixed = null;
		}
		$class = ' class="shareThisWidget ' . strtolower($params->ext) . '"';
		$style = ' style="' . $shareFixed . 'margin:' . $params->spaceTop . 'px '
				. $params->spaceRight . 'px ' . $params->spaceBottom . 'px ' . $params->spaceLeft . 'px;text-align:'
				. $params->alignment . ';"';
		$buttonsWrapped = "\n" . '<div' . $class . $style . '>' . $buttons . '</div>' . "\n";
		return $buttonsWrapped;
	}
	/**
	 * Gets the HTML attributes for a service.
	 *
	 * @param string $service The service
	 * @param string $buttonStyle The style of the button (_large, _custom...)
	 * @param boolean $displayText Display the text?
	 *
	 * @return string The HTML attributes for the service
	 * @since 1.5
	 */
	private static function getService($service, $buttonStyle, $displayText)
	{
		if (in_array(JString::str_ireplace('st_', '', $service), unserialize(MWS_SHARETHIS_PLUGINS))) {
			if ($buttonStyle == '_custom') {
				$buttonStyle = '';
			}
		}
		if ($displayText) {
			$text = self::getText($service);
			$text = ' displayText="' . $text . '"';
		} else {
			$text = null;
		}
		$attributes = ' class="' . JString::trim($service) . $buttonStyle . '"' . $text;
		return $attributes;
	}
	/**
	 * Gets the displayText attribute for a service.
	 * 
	 * @param string $service The service
	 * 
	 * @return string The displayText
	 * @since 1.5
	 */
	public static function getText($service)
	{
		switch ($service) {
			case 'st_fblike':
				$text = JText::_('Facebook Like');
				break;
			case 'st_fbrec':
				$text = JText::_('Facebook Recommend');
				break;
			case 'st_fbsend':
				$text = JText::_('Facebook Send');
				break;
			case 'st_fbsub':
				$text = JText::_('Facebook Subscribe'); // requires username
				break;
			case 'st_foursquaresave':
				$text = JText::_('Foursquare Save');
				break;
			case 'st_foursquarefollow':
				$text = JText::_('Foursquare Follow'); // requires username
				break;
			case 'st_instagram':
				$text = JText::_('Instagram Badge'); // requires username
				break;
			case 'st_plusone':
				$text = JText::_('Google +1');
				break;
			case 'st_pinterestfollow':
				$text = JText::_('Pinterest Follow'); // requires username
				break;
			case 'st_twitterfollow':
				$text = JText::_('Twitter Follow'); // requires username
				break;
			case 'st_youtube':
				$text = JText::_('Youtube Subscribe'); // requires username
				break;
			default:
				$text = JString::str_ireplace('st_', '', $service);
				$text = JString::str_ireplace('_', ' ', $text);
				$text = JString::ucwords($text);
		}
		return $text;
	}
	/**
	 * Gets the user name for the button if needed.
	 * The services included here require the st_username class.
	 * foursquarefollow requires a user name and user id.
	 * 
	 * @param string $service The service
	 * @param object $params The extension parameters
	 * 
	 * @return string The username if necessary
	 * @since 1.5
	 */
	private static function getUserName($service, $params)
	{
			switch ($service) {
				case 'st_twitter':
					$userName = ' st_via="' . $params->userNameTwitter . '"';
					break;
				case 'st_fbsub':
					$userName = ' st_username="' . $params->userNameFacebook . '"';
					break;
				case 'st_twitterfollow':
					$userName = ' st_username="' . $params->userNameTwitter . '"';
					break;
				case 'st_pinterestfollow':
					$userName = ' st_username="' . $params->userNamePinterest . '"';
					break;
				case 'st_youtube':
					$userName = ' st_username="' . $params->userNameYouTube . '"';
					break;
				case 'st_instagram':
					$userName = ' st_username="' . $params->userNameInstagram . '"';
					break;
				case 'st_foursquarefollow':
					$userName = ' st_username="' . $params->userNameFourSquare . '" st_followId="' . $params->userNameFoursquareId .'"';
					break;
				default:
					$userName = null;
			}
			return $userName;
	}
	/**
	 * Sets the fixed position style for the widget.
	 * 
	 * @param object $params The extension parameters
	 * 
	 * @return string The fixed position style
	 * @since 1.5
	 */
	private static function setFixedPosition($params)
	{
		$shareFixedTB = null;
		if ($params->position == 'left_top' || $params->position == 'left' || $params->position == 'left_bottom') {
			$shareFixedLR = 'left:0;';
			if ($params->position == 'left_top') {
				$shareFixedTB = 'top:5px;';
			}
			if ($params->position == 'left_bottom') {
				$shareFixedTB = 'bottom:5px;';
			}
		} elseif ($params->position == 'right_top' || $params->position == 'right' || $params->position == 'right_bottom') {
			$shareFixedLR = 'right:40px;';
			if ($params->position == 'right_top') {
				$shareFixedTB = 'top:5px;';
			}
			if ($params->position == 'right_bottom') {
				$shareFixedTB = 'bottom:5px;';
			}
		}
		$fixedPosition = 'position:fixed;' . $shareFixedLR . $shareFixedTB;
		return $fixedPosition;
	}
}
?>