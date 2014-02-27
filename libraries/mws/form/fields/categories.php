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
 * Supports a select list to select categories.
 * Use extension to get categories for a specific component.
 * @since 1.0
 */
class JFormFieldCategories extends JFormFieldList
{
	/**
	 * The form field type.
	 * @var string
	 * @since 1.0
	 */
	public $type = 'Categories';
	/**
	 * Method to get the field options.
	 * 
	 * @return array The field option objects
	 * @since 1.0
	 */
	protected function getOptions()
	{
		MWS::init('MWS');
		$extension = $this->element['extension'] ? (string) $this->element['extension'] : (string) $this->element['scope'];
		if (!empty($extension)) {
			$options = array();			
			if (is_dir(MWS_COMPONENTS_DIR . $extension)) {
				switch ($extension) {
					case 'com_k2':
						if (JPluginHelper::isEnabled('system', 'k2')) {
							include_once(JPATH_SITE . DIRECTORY_SEPARATOR . 'administrator' . DIRECTORY_SEPARATOR . 'components' . DIRECTORY_SEPARATOR . 'com_k2' . DIRECTORY_SEPARATOR . 'models' . DIRECTORY_SEPARATOR . 'categories.php');
							$model = new K2ModelCategories();
							$options = $model->getData();
							foreach ($options as $i=>$option) {
									$option->treename = str_replace('.&#160;&#160;','&mdash;',$option->treename);
									$option->treename = str_replace('<sup>|_</sup>','',$option->treename);
									$option->treename = str_replace('&#160;&#160;&#160;&#160;',' ',$option->treename);
									$options[$i]->value = JText::_($option->id);
									$options[$i]->text = JHtml::_('string.truncate', JText::_($option->treename), 70);
								}
						}
						break;
					case 'com_easyblog':
						include_once(JPATH_SITE . DIRECTORY_SEPARATOR . 'administrator' . DIRECTORY_SEPARATOR . 'components' . DIRECTORY_SEPARATOR . 'com_easyblog' . DIRECTORY_SEPARATOR . 'models' . DIRECTORY_SEPARATOR . 'categories.php');
						$model = new EasyBlogModelCategories();
						$options = $model->getData();
						foreach ($options as $i=>$option) {
							$options[$i]->value = JText::_($option->id);
							$options[$i]->text = str_repeat('&mdash;&nbsp;', $option->depth) . JHtml::_('string.truncate', JText::_($option->title), 70);
						}
						break;
				}
			}
			// merge any additional options in the XML definition.
			$options = array_merge(parent::getOptions(), $options);
			return $options;
		}
		else return;
	}
} 
?>