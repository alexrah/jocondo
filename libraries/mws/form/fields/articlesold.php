<?php
/**
 * @package Masters Web Solutions - Library
 * @author Christopher Masters <chris@masterswebsolutions.com>
 * @copyright Copyright (c) 2011 Christopher Masters. All Rights Reserved.
 * @license GNU/GPL 2, http://www.gnu.org/licenses/gpl-2.0.html
 */
defined('_JEXEC') or die('Restricted access'); // no direct access
jimport('mws.mws');
/**
 * Supports a select list to select articles.
 * Use extension to get articles from a specific component.
 * @since 1.0
 */
class JFormFieldArticlesOld extends JFormFieldList
{
	/**
	 * The form field type
	 * @var string
	 * @since 1.0
	 */
	public $type = 'ArticlesOld';
	/**
	 * Method to get the field options.
	 * 
	 * @return array The field option objects
	 * @since 1.0
	 */
	protected function getOptions()
	{
		MWS::init('MWS');
		$options = array();
		$extension = $this->element['extension'] ? (string) $this->element['extension'] : (string) $this->element['scope'];
		if (!empty($extension)) {
			if (is_dir(MWS_DIR_COMPONENTS . $extension)) {
				switch ($extension) {
					case 'com_content' :
						// get the articles model
						include_once(MWS_JOOMLA_MODEL_ARTICLES);
						$model = new ContentModelArticles();
						$options = $model->getItems();
						foreach ($options as $i=>$option) {
							$options[$i]->value = JText::_($option->id);
							$options[$i]->text = $option->category_title . ' :: ' . JHtml::_('string.truncate', JText::_($option->title), 70);
						}
						break;
					case 'com_k2' :
						// get the items model
						include_once(MWS_K2_MODEL_ARTICLES);
						$model = new K2ModelItems();
						$options = $model->getData();
						foreach ($options as $i=>$option) {
							$options[$i]->value = JText::_($option->id);
							$options[$i]->text = $option->category . ' :: ' . JHtml::_('string.truncate', JText::_($option->title), 70);
						}
						break;
					case 'com_easyblog' :
						// get the blogs model
						include_once(MWS_EB_MODEL_ARTICLES);
						$model = new EasyBlogModelBlogs();
						$options = $model->getBlogs();
						// get the helper
						include_once(MWS_EB_HELPER);
						// get the blogs
						$ebVersion = EasyBlogHelper::getLocalVersion();
						if(version_compare($ebVersion, '3.8', '<')) {
							$category = EasyBlogHelper::getTable('ECategory', 'Table');
						} else {
							$category = EasyBlogHelper::getTable('Category');
						}
						foreach ($options as $i=>$option) {
							$category->load( $option->category_id );
							$options[$i]->value = JText::_($option->id);
							$options[$i]->text = JText::_($category->title) . ' :: ' . JHtml::_('string.truncate', JText::_($option->title), 70);
						}
						break;
				}
			}
		}
		// merge any additional options in the XML definition.
		$options = array_merge(parent::getOptions(), $options);
		return $options;
	}
} 
?>