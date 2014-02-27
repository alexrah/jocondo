<?php
/**
 * @package Masters Web Solutions - Library
 * @author Christopher Masters <chris@masterswebsolutions.com>
 * @copyright Copyright (c) 2011 Christopher Masters. All Rights Reserved.
 * @license GNU/GPL 2, http://www.gnu.org/licenses/gpl-2.0.html
 */
defined('_JEXEC') or die('Restricted access'); // no direct access
if (!defined('DS')) {
	define('DS', DIRECTORY_SEPARATOR);
}
// Constants
define('MWS_EXEC', 1);
define('MWS_LIBRARY_PATH', JPATH_SITE . DS . 'libraries' . DS . 'mws');
// MWS Install
define('MWS_PKG_PATH', JPATH_ROOT . DS . 'administrator' . DS . 'manifests' . DS . 'packages' . DS . 'pkg_%s.xml');
define('MWS_PKG_XML_DELETE', '<file type="package" id="pkg_mws" client="admin">pkg_mws.zip</file>');
define('MWS_PKG_NAME_MWS', 'MWS Library & System Plugin');
define('MWS_PKG_NAME_MARM', 'Masters Auto Read More');
define('MWS_PKG_NAME_MACB', 'Masters Articles Category Blog');
define('MWS_PKG_NAME_MATA', 'Masters About the Author');
define('MWS_PKG_NAME_MCI', 'Masters Contact Info');
define('MWS_PKG_NAME_MST', 'Masters ShareThis');
// MACB
define('MWS_MACB_CSS', JURI::root() . 'media/mws/mod_macb/css/layout.css');
define('MWS_MACB_HELPER_PATH', JPATH_SITE . DS . 'modules' . DS . 'mod_macb' . DS . 'helper.php');
// MCI
define('MWS_MCI_HELPER_PATH', JPATH_SITE . DS . 'modules' . DS . 'mod_mci' . DS . 'helper.php');
define('MWS_MCI_CSS', JURI::root() . 'media/mws/mod_mci/css/layout.css');
// MSTMOD
define('MWS_MSTMOD_HELPER_PATH', JPATH_SITE . DS . 'modules' . DS . 'mod_mst' . DS . 'helper.php');
// Components
define('MWS_COMPONENTS_DIR', JPATH_SITE . DS . 'components' . DS);
// Joomla
define('MWS_JOOMLA_MODEL_ARTICLES', JPATH_SITE . DS . 'administrator' . DS . 'components' . DS . 'com_content' . DS . 'models' . DS . 'articles.php');
define('MWS_JOOMLA_CONTENT_MODEL', JPATH_SITE . DS . 'components' . DS . 'com_content' . DS . 'models');
define('MWS_JOOMLA_CONTENT_ROUTER', JPATH_SITE . DS . 'components' . DS . 'com_content' . DS . 'router.php');
define('MWS_JOOMLA_CONTENT_HELPER_ROUTE', JPATH_SITE . DS . 'components' . DS . 'com_content' . DS . 'helpers' . DS . 'route.php');
// K2
define('MWS_K2_DIR', JPATH_SITE . DS . 'components' .DS . 'com_k2');
define('MWS_K2_MODEL_ARTICLES', JPATH_SITE . DS . 'administrator' . DS . 'components' . DS . 'com_k2' . DS . 'models' . DS . 'items.php');
define('MWS_K2_CONTENT_HELPER_ROUTE', JPATH_SITE . DS . 'components' . DS . 'com_k2' . DS . 'helpers' . DS . 'route.php');
// Easy Blog
define('MWS_EB_DIR', JPATH_SITE . DS . 'components' .DS . 'com_easyblog');
define('MWS_EB_MODEL_ARTICLES', JPATH_SITE . DS . 'administrator' . DS . 'components' . DS . 'com_easyblog' . DS . 'models' . DS . 'blogs.php');
define('MWS_EB_HELPER', JPATH_SITE . DS . 'components' . DS . 'com_easyblog' . DS . 'helpers' . DS . 'helper.php');
// ShareThis
define('MWS_SHARETHIS_CSS', JURI::root() . 'media/mws/mst/css/');
define('MWS_SHARETHIS_BUTTONS', serialize(array('sharethis', 'email', 'facebook', 'twitter', 'linkedin', 'digg', 'stumbleupon', 'reddit', 'delicious', 'orkut', 'pinterest', 'a1_webmarks', 'bus_exchange', 'adfty', 'allvoices', 'amazon_wishlist', 'arto', 'baidu', 'bebo', 'blinklist', 'blip', 'blogged', 'blogger', 'blogmarks', 'brainify', 'buddymarks', 'buffer', 'care2', 'chiq', 'citeulike', 'connotea', 'corank', 'corkboard', 'current', 'dealsplus', 'diigo', 'dotnetshoutout', 'dzone', 'edmodo', 'evernote', 'fark', 'fashiolista', 'folkd', 'formspring', 'fresqui', 'friendfeed', 'funp', 'fwisp', 'google', 'google_bmarks', 'google_reader', 'google_translate', 'googleplus', 'hatena', 'hyves', 'identi', 'instapaper', 'jumptags', 'kaboodle', 'linkagogo', 'livejournal', 'mail_ru', 'meneame', 'messenger', 'mister_wong', 'mixx', 'moshare', 'myspace', 'n4g', 'netlog', 'netvouz', 'newsvine', 'nujij', 'odnoklassniki', 'oknotizie', 'raise_your_voice', 'segnalo', 'sina', 'slashdot', 'sonico', 'speedtile', 'startaid', 'startlap', 'stumpedia', 'technorati', 'tumblr', 'typepad', 'viadeo', 'virb', 'vkontakte', 'voxopolis', 'wordpress', 'xanga', 'xerpi', 'xing', 'yammer', 'yigg')));
define('MWS_SHARETHIS_PLUGINS', serialize(array('fblike', 'fbrec', 'fbsend', 'fbsub', 'twitterfollow', 'plusone', 'pinterestfollow', 'youtube', 'instagram', 'foursquaresave', 'foursquarefollow')));
define('MWS_SHARETHIS_SCRIPT','<script type="text/javascript">var switchTo5x=%s;</script><script type="text/javascript">var __st_loadLate=true;</script><script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script><script type="text/javascript">stLight.options({publisher: "%s", publisherGA: "%s", doNotHash: false, doNotCopy: false, hashAddressBar: false, headerTitle: "%s", onhover: %s, theme: %s});</script>');
define('MWS_SHARETHIS_SCRIPT_EGG_HEAD', '<script type="text/javascript" src="http://w.sharethis.com/gallery/shareegg/shareegg.js"></script><script type="text/javascript">var __st_loadLate=true;</script><script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script><script type="text/javascript">stLight.options({publisher: "%s", publisherGA: "%s", theme: "%s", headerTitle: "%s", onhover: %s}); </script><link media="screen" type="text/css" rel="stylesheet" href="http://w.sharethis.com/gallery/shareegg/shareegg.css" />;');
define('MWS_SHARETHIS_SCRIPT_EGG_BODY', '<script type="text/javascript">stlib.shareEgg.createEgg("shareThisShareEgg", [%s], {title:"%s", url:"%s", img:"%s", summary:"%s", theme:"shareegg"});</script>');
define('MWS_SHARETHIS_SERVICES_URI', JURI::root() . 'media/mws/html/sharethis/services.html');
define('MWS_SHARETHIS_SERVICES_PATH', JPATH_SITE . DS . 'media' . DS . 'mws' . DS . 'html' . DS . 'sharethis' . DS . 'services.html');
define('MWS_SHARETHIS_HEADING_BUTTONS', 'Buttons');
define('MWS_SHARETHIS_HEADING_PLUGINS', 'Plugins');
define('MWS_SHARETHIS_SERVICES_AVAILABLE', 'Available Services');
define('MWS_SHARETHIS_INSTRUCTIONS_HEADING', 'Instructions');
define('MWS_SHARETHIS_INSTRUCTIONS', 'Enter services from this list in the order you want them displayed (separated by commas).<br /><br /><strong>For example</strong>: sharethis,email,facebook');
define('MWS_SHARETHIS_NOTES_HEADING', 'Notes');
define('MWS_SHARETHIS_NOTES', '<p>User names are needed for specific plugins. Enter them under the <strong>User Names</strong> heading. <strong>Plugins</strong> that require a user name:</p><ul><li>fbsub</li><li>twitterfollow</li><li>pinterestfollow</li><li>youtube</li><li>instagram</li><li>foursquarefollow<ul><li>foursquarefollow also requires a profile id</li></ul></li></ul>');
// Log
define('MWS_LOG_FILE', 'error_log');
define('MWS_LOG_BASE_PATH', JPATH_SITE . DS . 'cache' . DS . 'mws_log_%s' . DS);
define('MWS_LOG_FILE_NAME', JPATH_SITE . DS . 'cache' . DS . 'mws_log_%s' . DS . MWS_LOG_FILE);
define('MWS_LOG_URI', JURI::root() . 'cache/mws_log_%s/' . MWS_LOG_FILE . '.html');
define('MWS_LOG_NO_LOG', 'None');
define('MWS_LOG_VIEW_FULL_LOG', 'View Full Log');
define('MWS_LOG_CLEAR_LOG', 'Clear Log');
define('MWS_LOG_SINGLE_RECORD', 'The log records the first occurence of a problem.');
define('MWS_LOG_MESSAGE_FILE_CLEARED' , '"%s" cleared successfully!');
define('MWS_LOG_MESSAGE_FILE_NOT_CLEARED' , '"%s" not cleared! You will have to manually delete the file.');
define('MWS_LOG_MESSAGE_FILE_NOT_FOUND' , 'The log file does not exist (%s).');
define('MWS_LOG_MESSAGE_SHARETHIS_SERVICE_NOT_EXISTS', 'The ShareThis service "%s" does not exist. Enter the correct service to display the button.');
// Log messages
define('MWS_MESSAGE_NO_PARAGRAPH', '<strong>Article id %s (%s)</strong> - No content between &lt;p&gt;&lt;/p&gt; tags');
define('MWS_MESSAGE_IMAGE_NOT_EXISTS', '<strong>Article id %s (%s)</strong> - Image "%s" does not exist');
define('MWS_MESSAGE_IMAGE_NOT_SUPPORTED', '<strong>Article id %s (%s)</strong> - Image type not supported: "%s"');
define('MWS_MESSAGE_ARTICLE_NO_CONTENT', '<strong>Article id %s (%s)</strong> -  No content.');
define('MWS_MESSAGE_COMPONENT_NOT_SUPPORTED', '<strong>Component %s</strong> - is not supported by this extension.');
define('MWS_MESSAGE_K2_INTRO_FULL_HIDE', '<a href="' . JUri::base() . 'administrator/index.php?option=com_k2&view=categories" target="blank">K2 Category id %s</a> - Item view options "Introtext" and "Fulltext" are both set to "hide".');
// Image
define('MWS_IMAGE_WIDEIMAGE_PATH', MWS_LIBRARY_PATH . DS . 'image' . DS . 'wideimage' . DS . 'WideImage.php');
define('MWS_IMAGE_MIME_SUPPORTED', serialize(array('image/jpg', 'image/jpeg', 'image/pjpeg', 'image/png', 'image/gif', 'image/bmp')));
define('MWS_IMAGE_MARM_THUMB_FOLDER', 'cache' . DS . 'plg_marm' . DS);
define('MWS_IMAGE_MACB_THUMB_FOLDER', 'cache' . DS . 'mod_macb' . DS);
define('MWS_IMAGE_MCI_THUMB_FOLDER', 'cache' . DS . 'mod_mci' . DS);
define('MWS_IMAGE_K2_ITEM_IMAGE_PATH', JPATH_SITE . DS . 'media' . DS . 'k2' . DS . 'items' . DS . 'cache' . DS);
define('MWS_IMAGE_K2_ITEM_IMAGE_URI', JURI::root() . 'media/k2/items/cache/');
?>