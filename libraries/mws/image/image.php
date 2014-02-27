<?php
/**
 * @package Masters Web Solutions - Library
 * @author Christopher Masters <chris@masterswebsolutions.com>
 * @copyright Copyright (c) 2011 Christopher Masters. All Rights Reserved.
 * @license GNU/GPL 2, http://www.gnu.org/licenses/gpl-2.0.html
 */
defined('_JEXEC') or die('Restricted access'); // no direct access
require_once(MWS_IMAGE_WIDEIMAGE_PATH); // require the WideImage library once in case another extension has already included it.
/**
 * MWS Image class.
 * Gets an image from an article, component setting or a default image and generates a thumbnail for display.
 */
abstract class MWSImage
{
	/**
	 * Gets an image from various sources and returns the requested information.
	 * Available information: imgSrc, thumbSrc, thumbTag or all.
	 * 'imgSrc' does not create a thumbnail.
	 * 'thumbSrc', 'thumbTag' and all create a thumbnail.
	 * 
	 * @param object $object The article, item or contact object
	 * @param object $info (optional) The desired thumbnail information
	 * 
	 * @return object The information
	 * @since 1.0
	 */
	public static function getImgThumb($object, $params, $info = 'all')
	{
		$img = MWSImage::setImage($params, $object);
		if (!$img) {
			return null;
		} else {
			if ($info == 'url' || $info == 'imgSrc') {
				if (isset($img->url)) {
					return $img->url;
				} else {
					return null;
				}
			} else {
				$thumb = new stdClass();
				$thumb->quality = MWSImage::setQuality($img->mime, $params->jpgQuality);
				list($thumb->height, $thumb->width) = MWSImage::setThumbDimensions($params, $img);
				$thumb = MWSImage::setThumbPath($params, $thumb, $img, $object);
				$thumbnailExists = MWSImage::checkThumbnailExists($params, $thumb);
				if ($thumbnailExists) {
					$thumb->tag = MWSImage::buildHTML($params, $img, $thumb, $object);
				} elseif ($img->src) {
					MWSImage::createThumb($params, $img, $thumb);
					if (JFile::exists($thumb->newPath)) {
						$thumb->tag = MWSImage::buildHTML($params, $img, $thumb, $object);
					}
				} else {
					$thumb->tag = null;
				}
				$result = new stdClass();
				switch ($info) {
					case 'thumbSrc':
						$result = $thumb->newPath;
						break;
					case 'thumbTag':
						$result = $thumb->tag;
						break;
					case 'all':
						$result->imgSrc = $img->src;
						$result->thumbSrc = $thumb->newPath;
						$result->thumbnail = $thumb->tag;
						break;
				}
				return $result;
			}
		}
	}
	/**
	 * Sets the image from various sources.
	 * 
	 * @param object $params The variables for the image class
	 * @param object $object The article, item or contact object
	 * 
	 * @return object The source image information
	 * @since 1.0
	 */
	private static function setImage($params, $object)
	{
		if (!$params->imgLocation) {
			return; // return if no image location
		}
		$img = self::determineImg($params, $object);
		if ($img->src) {
			if (JString::substr($img->src, 0, 3) == '../') { // maybe change to while
				$img->src = JString::substr($img->src, 3);
			}
			$imgSizeInfo = @getimagesize($img->src); // check if the image exists (this method will check a remote server)
			if (!$imgSizeInfo) {
				MWSLog::logError(JText::sprintf(MWS_MESSAGE_IMAGE_NOT_EXISTS, $object->id, MWS::$option, $img->src), $params->ext);
				$img = null; // do nothing else - no image src or file doesn't exist
			} else {
				list($img->width, $img->height) = $imgSizeInfo; // get dimensions
				$img->mime = $imgSizeInfo['mime'];
				$img->name = MWSImage::setImgFileName($img->src);
				$img->ext = MWSImage::setImgFileExtension($params, $object, $img->mime, $img->src);
				if (!$img->ext) {
					$img = null;
				}
			}
			return $img;
		}
	}
	/**
	 * Determines the image to use and sets the src, alt and title attributes.
	 * 
	 * @param object $params The variables for the image class
	 * @param object $object The article, item or contact object
	 * 
	 * @return object The img information
	 */
	private static function determineImg($params, $object)
	{
		$img = new stdClass();
		$img->alt = $img->title = $object->title;
		$img->src = null;
		if ($params->imgLocation == 'contact' && isset($object->image) && $object->image) {
			$img->src = $object->image;
			$img->alt =	$img->title = strip_tags($object->name);
		} else {
			switch ($params->imgLocation) {
				case 'default_image':
					$img->src = $params->defaultImage;
					$img->url = JURI::base() . $params->defaultImage;
					break;
				case 'intro_image':
					$img = MWSImage::getImgFromArticleParams($params, $object);
					break;
				case 'full_image':
					if (MWS::$option == 'com_content') {
						$articleImages = json_decode($object->images);
						$img->src = $articleImages->image_fulltext;
						$img->url = JURI::base() . $articleImages->image_fulltext;
					}
					break;
			}
			if ($params->imgLocation == 'from_article' || !$img->src) {
				$img = MWSImage::getImgFromArticleText($params, $object);
			}
			if (!isset($img->src)) {
				$img->src = $params->defaultImage;
				$img->url = JURI::base() . $params->defaultImage;
			}
		}
		return $img;
	}
	/**
	 * Gets the image from the article parameters.
	 * 
	 * @param object $params The variables for the image class
	 * @param object $object The article, item or contact object
	 * 
	 * @return object The path and url of the image
	 * @since 1.5
	 */
	private static function getImgFromArticleParams($params, $object)
	{
		$img = new stdClass();
		$img->src = $img->url = null;
		$img->alt = $img->title = $object->title;
		switch ($params->component) {
			case 'com_k2':
				$img->src = MWS_IMAGE_K2_ITEM_IMAGE_PATH . md5("Image" . $object->id) . $params->k2IntroImage . '.jpg';
				$img->url = MWS_IMAGE_K2_ITEM_IMAGE_URI  . md5("Image" . $object->id) . $params->k2IntroImage . '.jpg';
				break;
			case 'com_easyblog':
				$articleImage = json_decode($object->image);
				if (isset($articleImage->url)) {
					$img->src = $img->url = $articleImage->url; //TODO: test this
				}
				break;
			case 'com_fjrelated':
			case 'com_content':
				$articleImages = json_decode($object->images);
				if ($articleImages->image_intro) {
					$img->src = $articleImages->image_intro;
					$img->url = JURI::base() . $articleImages->image_intro;
				}
				break;
		}
		return $img;
	}
	/**
	 * Gets a specific images src, alt & title from a string.
	 * 
	 * @param object $params The variables for the image class
	 * 
	 * @return array The src, alt & title of the selected img
	 * @since 1.5
	 */
	private static function getImgFromArticleText($params, $object)
	{
		$imgInfo = array();
		if ($object->text) {
			$dom = new DOMDocument(); // set the html parser
			@$dom->loadHTML(utf8_decode($object->text)); // must utf8_decode for special characters
		} else {
			return; // no text
		}
		$imgTags = $dom->getElementsByTagName('img');
		$i=0;
		foreach ($imgTags as $img) {
			$imgInfo[$i]['src'] = $img->getAttribute('src');
			$imgInfo[$i]['alt'] = $img->getAttribute('alt');
			$imgInfo[$i]['title'] = $img->getAttribute('title');
			$i++;
		} //var_dump($imgInfo);
		if (!empty($imgInfo)) {
			$numImagesInText = count($imgInfo)-1;
			if ($params->imgNumber > $numImagesInText) {
				$params->imgNumber = $numImagesInText; // last available image if the imgNumber is > available
			}
			$imgInfo = $imgInfo[$params->imgNumber];
			if ($imgInfo['src']) {
				if (!JString::strpos($imgInfo['src'], 'tp://')) {
					$imgInfo['url'] = JURI::base() . $imgInfo['src'];
				} else {
					$imgInfo['url'] = $imgInfo['src'];
				}
			}
			$imgInfo['src'] = MWSImage::cleanFileName($imgInfo['src']);
		}
		$imgData = new stdClass(); // convert to object
		foreach ($imgInfo as $key => $value) {
			$imgData->$key = $value;
		}
		return $imgData;
	}
	/**
	 * Cleans an image source.
	 * 
	 * @params string $imgPath The image source
	 * 
	 * @return string The clean image source
	 * @since 1.5
	 */
	private static function cleanFileName($imgPath)
	{
		$imgPath = urldecode($imgPath);
		$imgPath = ltrim($imgPath, '/');
		return $imgPath;
	}
	/**
	 * Sets the image filename.
	 * 
	 * @params string $imgPath The image source
	 * 
	 * @return string The image filename
	 * @since 1.5
	 */
	private static function setImgFileName($imgPath)
	{
		$imgPathInfo = pathinfo($imgPath);
		$imgName = $imgPathInfo['filename'];
		return $imgName;
	}
	/**
	 * Sets image file extension based upon the mime.
	 * 
	 * @param object $params The variables for the image class
	 * @param object $object The article, item or contact object
	 * @param string $imgMime The image mime
	 * @param string $imgPath The image source
	 * 
	 * @return string The image extension
	 */
	private static function setImgFileExtension($params, $object, $imgMime, $imgPath)
	{
		if (!in_array($imgMime, unserialize(MWS_IMAGE_MIME_SUPPORTED))) {
			MWSLog::logError(JText::sprintf(MWS_MESSAGE_IMAGE_NOT_SUPPORTED, $object->id, MWS::$option, $imgPath), $params->ext);
			return false;
		}
		switch ($imgMime) {
			case 'image/jpg':
				$imgExt = 'jpg';
				break;
			case 'image/jpeg':
				$imgExt = 'jpg';
				break;
			case 'image/pjpeg':
				$imgExt = 'jpg';
				break;
			case 'image/png':
				$imgExt = 'png';
				break;
			case 'image/gif':
				$imgExt = 'gif';
				break;
			case 'image/bmp':
				$imgExt = 'bmp';
				break;
		}
		return $imgExt;
	}
	/**
	 * Sets JPEG quality or PNG compression level for WideImage Save function.
	 * 
	 * @param string $imgMime The image mime
	 * @param int $jpgQuality (optional) The jpg quality
	 * @param int $pngCompLevel (optional) PNG compression level
	 * 
	 * @return int The thumbnail quality
	 * @since 1.0
	 */
	private static function setQuality($imgMime, $jpgQuality = 80, $pngCompLevel = 9)
	{
		switch ($imgMime) {
			case 'image/jpeg':
				$thumbQuality = $jpgQuality;
				break;
			case 'image/png':
				$thumbQuality = $pngCompLevel;
				break;
			default :
				$thumbQuality = null;
		}
		return $thumbQuality;
	}
	/**
	 * Sets thumbnail dimensions.
	 * 
	 * @param object $params The variables for the image class
	 * @param object $img The image information
	 * 
	 * @return array The thumbnail width and height
	 * @since 1.0
	 */
	private static function setThumbDimensions($params, $img)
	{
		$thumbWidth = $params->width;
		$thumbHeight = $params->height;
		if (!$params->width && !$params->height) { // no dimensions provided
			$thumbWidth = $img->width;
			$thumbHeight = $img->height;
		}
		if ($img->width != 0 && (!$params->height && $params->width)) { // determine new height if empty height
			$ratio = $thumbWidth / $img->width;
			$thumbHeight = intval(round(floatval($img->height * $ratio)));
		} elseif ($img->height != 0 && (!$params->width && $params->height)) { // determine new width if empty width
			$ratio = $thumbHeight / $img->height;
			$thumbWidth = intval(round(floatval($img->width * $ratio)));
		}
		return array($thumbHeight, $thumbWidth);
	}
	/**
	 * Sets the new thumbnail path based upon extension invoking the method.
	 * 
	 * @param object $params The variables for the image class
	 * @param object $thumb The thumbnail width and height
	 * @param object $img The image information
	 * @param object $object (optional) The article, item or contact object
	 * 
	 * @return object The paths for the new thumbnail
	 * @since 1.0
	 */
	private static function setThumbPath($params, $thumb, $img, $object = null)
	{
		switch ($params->ext) {
			case 'MARM':
				$type = 'art';
				$id = $object->id;
				break;
			case 'MACB':
				$mod = JModuleHelper::getModule('mod_macb');
				$type = 'mod';
				$id = $mod->id . '-art-' . $object->id;
				break;
			case 'MCI':
				$mod = JModuleHelper::getModule('mod_mci');
				$type = 'mod';
				$id = $mod->id;
				break;
		}
		// create thumbnail path string
		$imgName = strtolower(JString::str_ireplace(array(' ', '_'), '-', $img->name));
		$method = $params->cropType ? '-cropped-' : '-resized-';
		$qual = '-qual-' . $thumb->quality;
		$thumb->relPath = $params->thumbFolder . $imgName . '-' . $type . '-' . $id . '-' . $params->component
			. $qual . $method . $thumb->width . 'x' . $thumb->height . '.' . $img->ext;
		$thumb->newPath = JPATH_SITE . DIRECTORY_SEPARATOR . $thumb->relPath;
		$thumb->url = JURI::base() . JString::str_ireplace('\\', '/', $thumb->relPath);
		$thumb->folder = JPATH_SITE . DIRECTORY_SEPARATOR . $params->thumbFolder;
		return $thumb;
	}
	/**
	 * Checks if the thumbnail already exists.
	 * 
	 * @param object $params The variables for the image class
	 * @param object $thumb The thumbnail information
	 * 
	 * @return boolean True if exists
	 * @since 1.5
	 */
	private static function checkThumbnailExists($params, $thumb)
	{
		if (JFolder::exists($thumb->folder)) {
			$thumbs = JFolder::files($thumb->folder); // scan thumb directory
			$thumbPathInfo = pathinfo($thumb->newPath);
			$thumbName = $thumbPathInfo['basename']; // get the thumb basename
			if (in_array($thumbName, $thumbs)) {
				return true;
			}
		}	
	}
	/**
	 * Creates a thumbnail with WideImage.
	 * 
	 * @param object $params The variables for the image class
	 * @param object $img The image information
	 * @param string $thumb The thumbnail information
	 * 
	 * @return void
	 * @since 1.0
	 */
	private static function createThumb($params, $img, $thumb)
	{
		if ($img->src && !JFile::exists($thumb->newPath)) {
			if (!is_dir($thumb->folder)) {
				JFolder::create($thumb->folder, $params->thumbFolderPerms); // create the cache folder
			}
			$wideImage = new WideImage();
			$imgWide = $wideImage->load($img->src, $img->mime); // load the image into the WideImage library
			if ($params->cropType) {
				$cropType = MWSImage::setCropType($params->cropType);
				$newThumb = $imgWide->crop($cropType->left, $cropType->top, $thumb->width, $thumb->height);
			} else {
				$newThumb = $imgWide->resize($thumb->width, $thumb->height, 'inside', 'down');
			}
			$newThumb->saveToFile($thumb->newPath, $thumb->quality);
		}
	}
	/**
	 * Sets the left and top values based upon the crop type.
	 * This is a helper function for WideImage crop function.
	 * 
	 * @param string $cropType The crop type for the thumbnail
	 * 
	 * @return object The left and top values
	 * @since 1.0
	 */
	private static function setCropType($cropType)
	{
		$crop = new stdClass();
		switch ($cropType) {
			case 'center-top':
				$crop->left = 'center';
				$crop->top = 'top';
				break;
			case 'center-center':
				$crop->left = $crop->top = 'center';
				break;
			case 'center-bottom':
				$crop->left = 'center';
				$crop->top = 'bottom';
				break;
			case 'left-top':
				$crop->left = 'left';
				$crop->top = 'top';
				break;
			case 'left-center':
				$crop->left = 'left';
				$crop->top = 'center';
				break;
			case 'left-bottom':
				$crop->left = 'left';
				$crop->top = 'bottom';
				break;
			case 'right-top':
				$crop->left = 'right';
				$crop->top = 'top';
				break;
			case 'right-center':
				$crop->left = 'right';
				$crop->top = 'center';
				break;
			case 'right-bottom':
				$crop->left = 'right';
				$crop->top = 'bottom';
				break;
		}
		return $crop;
	}
	/**
	 * Builds the thumbnail HTML for output.
	 * 
	 * @param object $params The variables for the image class
	 * @param object $img The image information
	 * @param object $thumb The thumbnail information
	 * @param string $object The article, item or contact object
	 * 
	 * @return string The thumbnail with HTML
	 * @since 1.0
	 */
	private static function buildHTML($params, $img, $thumb, $object)
	{
		$thumb = MWSImage::setThumbAttributes($params, $img, $thumb, $object);
		$thumb->imgTag = MWSImage::setImgTag($params, $thumb, $object->articleLink);
		$thumbTag = MWSImage::wrapThumb($params, $thumb);
		return $thumbTag;
	}
	/**
	 * Sets the thumbnail attributes.
	 * 
	 * @param object $params The variables for the image class
	 * @param object $img The image information
	 * @param object $thumb The thumbnail information
	 * @param object $object The article, item or contact object
	 * 
	 * @return object The thumbnail information with attributes added
	 * @since 1.0
	 */
	private static function setThumbAttributes($params, $img, $thumb, $object)
	{
		if (isset($object->title)) {
			$articleTitle = $object->title;
			$articleTitle = JFilterOutput::cleanText($articleTitle);
		} else {
			$articleTitle = null;
		}
		if ($params->altSuffix) {
			$altSuffix = ' ' . JFilterOutput::cleanText($params->altSuffix);
		} else {
			$altSuffix = null;
		}
		if ($params->altArtTitle) {
			 $thumb->alt = $articleTitle . $altSuffix;
		} else {
			$img->alt = JFilterOutput::cleanText($img->alt);
			$thumb->alt = $img->alt . $altSuffix;
		}
		if ($img->title) {
			$img->title = JFilterOutput::cleanText($img->title);
			$thumb->title = $img->title;
		} else {
			$thumb->title = $articleTitle;
		}
		if ($params->align == 'center') {
			$center = 'display:block;margin:0 auto;';
		} else {
			$center = null;
		} 
		$thumb->style = $center . $params->style;
		return $thumb;
	}
	/**
	 * Creates the thumbnail img tag.
	 * 
	 * @param object $params The variables for the image class
	 * @param object $thumb The thumbnail information
	 * 
	 * @return string The thumbnail image tag
	 * @since 1.0
	 */
	private static function setImgTag($params, $thumb, $link = null)
	{		
		if ($thumb->style) {
			$attribs = array('title'=>$thumb->title, 'class'=>JString::strtolower($params->thumbType) . '-img', 'style'=>$thumb->style);
		} else {
			$attribs = array('title'=>$thumb->title, 'class'=>JString::strtolower($params->thumbType) . '-img');
		}
		$thumbImgTag = JHtml::_('image', $thumb->url, $thumb->alt, $attribs);
		if ($params->link) {
			$thumbImgTag = JHtml::_('link', $link, $thumbImgTag); // link thumb to article
		}
		return $thumbImgTag;
	}
	/**
	 * Wraps thumbnail img tag with a div container.
	 * 
	 * @param object $params The variables for the image class
	 * @param object $thumb The thumbnail information
	 * 
	 * @return string The thumbnail wrapped in a div container
	 * @since 1.0
	 */
	private static function wrapThumb($params, $thumb)
	{
		// set alignment
		if ($params->align == 'center') {
			$divWidth = 'width:100%;';
			$thumbFloat = 'none';
			$center = true;
		} else {
			$divWidth = null;
			$thumbFloat = $params->align;
			$center = false;
		}
		// set margins & class
		$top = $params->top . 'px ';
		$right = $center ? '0px ' : $params->right . 'px ';
		$bottom = $params->bottom . 'px ';
		$left = $center ? '0px;' : $params->left . 'px;';
		$class = $params->thumbType ? 'class="' . JString::strtolower($params->thumbType) . '-thumbnail" ' : '';
		// wrap thumb img tag in a div
		$thumbTag = '<div ' . $class . 'style="float:' . $thumbFloat . ';margin:' . $top . $right . $bottom . $left . $divWidth . '">' . $thumb->imgTag . '</div>';
		return $thumbTag;
	}
}
?>