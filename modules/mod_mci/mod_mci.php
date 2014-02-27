<?php
/**
 * @package Masters Contact Info
 * @author Christopher Masters <chris@masterswebsolutions.com>
 * @copyright Copyright (c) 2011 Christopher Masters DBA Masters Web Solutions. All Rights Reserved.
 * @license GNU/GPL 2, http://www.gnu.org/licenses/gpl-2.0.html
 */
defined('_JEXEC') or die('Restricted access'); // no direct access
if (!is_dir(JPATH_SITE . DIRECTORY_SEPARATOR . 'libraries' . DIRECTORY_SEPARATOR . 'mws'))
{
	return; // mws library not found
}
jimport('mws.mws');
$ext = 'MCI';
MWS::init($ext, $params->get('debug_mode', 0));
MWS::addSupportInfo($ext);

// set parameters
$params->ext = $params->thumbType = $ext;
$params->component = MWS::$option;
$params->imgLocation = 'contact';
$params->link = $params->get('img_link', 'left');
$params->width = intval($params->get('img_width', ''));
$params->height = intval($params->get('img_height', ''));
$params->cropType = 0;
$params->altArtTitle = 0;
$params->altSuffix = null;
$params->jpgQuality = 80;
$params->align = $params->get('img_float', 'left');
$params->top = $params->get('img_top', 0);
$params->right = $params->get('img_right', 0);
$params->bottom = $params->get('img_bottom', 0);
$params->left = $params->get('img_left', 0);
$params->style = $params->get('img_css', '');
$params->thumbFolder = MWS_IMAGE_MCI_THUMB_FOLDER;
$params->thumbFolderPerms = octdec($params->get('cache_permissions', 0755));

// include helper
require_once MWS_MCI_HELPER_PATH;
$helper = new modMCIHelper($ext);

// get contacts
$contacts = $helper->getContacts($params);
$contactGrouping = $params->get('contact_grouping', 'category');
if ($contactGrouping == 'category')
{
	$contacts = $helper->groupBy($contacts, 'catname'); // group contacts by category
}

// contact details
$contactDetails[0] = $params->get('one', '');
$contactDetails[1] = $params->get('two', '');
$contactDetails[2] = $params->get('three', '');
$contactDetails[3] = $params->get('four', '');
$contactDetails[4] = $params->get('five', '');
$contactDetails[5] = $params->get('six', '');
$contactDetails[6] = $params->get('seven', '');
$contactDetails[7] = $params->get('eight', '');
$contactDetails[8] = $params->get('nine', '');
$contactDetails[9] = $params->get('ten', '');
$contactDetails[10] = $params->get('eleven', '');
$contactDetails[11] = $params->get('twelve', '');
$contactDetails[12] = $params->get('thirteen', '');
$contactDetails[13] = $params->get('fourteen', '');
$contactDetails[14] = $params->get('fifteen', '');
$contactDetails[15] = $params->get('sixteen', '');
$contactDetails[16] = $params->get('seventeen', '');

// display
$beforeText = $params->get('before_text', '');
$afterText = $params->get('after_text', '');

// style
$evenOdd = $params->get('even_odd', '');

// category grouping
if ($contactGrouping == 'category')
{
	$numGroups = count($contacts);
	$categoryStyle = ' style="margin-top:' . $params->get('category_margin', 20) . 'px;"';
}

// layout
$columns = $params->get('columns', 1);
switch ($columns)
{
	case 1:
		$colClass = 'one-col';
		break;
	case 2:
		$colClass = 'two-col';
		break;
	case 3:
		$colClass = 'three-col';
		break;
	case 4:
		$colClass = 'four-col';
		break;
	case 5:
		$colClass = 'five-col';
		break;
	case 6:
		$colClass = 'six-col';
		break;
	case 7:
		$colClass = 'seven-col';
		break;
	case 8:
		$colClass = 'eight-col';
		break;
}

// row count
$numItems = count($contacts);
$rowCount = floor($numItems / $columns);

// row CSS
$rowMargin = $params->get('row_margin', 20);
$rowStyle = ' style="margin-top:' . $rowMargin . 'px;"';
$rowCSS = 'overflow:hidden;margin-bottom:' . $rowMargin . 'px;';

// classes & other CSS
$suffix = $containerCSS = $beforeCSS = $afterCSS  = '';
if ($params->get('moduleclass_sfx', ''))
{
	$suffix = ' ' . $params->get('moduleclass_sfx', '');
}
if ($params->get('before_css', ''))
{
	$beforeCSS = ' style="' . $beforeCSS . '"';
}
if ($params->get('container_css', ''))
{
	$containerCSS = ' style="' . $containerCSS . '"';
}
$itemPadLeft = $params->get('contact_pad_left', 5);
$itemPadRight = $params->get('contact_pad_right', 5);
$itemCSS = ' style="padding-left:' . $itemPadLeft . 'px;padding-right:' . $itemPadRight . 'px;' . $params->get('field_css', '') . '"';
$format = $params->get('single_contact_format', 'div');
if ($params->get('after_css', '') || $format == 'div')
{
	$afterCSS = ' style="clear:both;' . $params->get('after_css', '') . '"';
}
MWS::$doc->addStyleSheet(MWS_MCI_CSS);
require(JModuleHelper::getLayoutPath('mod_mci', $params->get('layout', 'default')));
?>