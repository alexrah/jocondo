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
 * Supports a select list to select author alias'.
 * Use extension to get author alias' for a specific component.
 * @since 1.0
 */
class JFormFieldAlias extends JFormFieldList
{
	/**
	 * The form field type
	 * @var string
	 * @since 1.0
	 */
	public $type = 'Alias';
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
				$query = MWS::$db->getQuery(true);
				switch ($extension) {
					case 'com_content':
						// Build the query.
						$query->select('distinct(created_by_alias)');
						$query->from('#__content');
						$query->where('created_by_alias != ""');
						$query->order('created_by_alias ASC');
						MWS::$db->setQuery($query);
						$options = MWS::$db->loadObjectList();
						foreach ($options as $i=>$option) {
							$options[$i]->value = JText::_($option->created_by_alias);
							$options[$i]->text = JHtml::_('string.truncate', JText::_($option->created_by_alias), 70);
						}
						// Check for a database error.
						if (MWS::$db->getErrorNum()) JError::raiseWarning(500, MWS::$db->getErrorMsg());
						break;
					case 'com_k2':
						// Build the query.
						$query->select('distinct(content.created_by_alias), content.created_by AS id');
						$query->from('#__k2_items AS content');
						$query->where('content.created_by_alias != ""');
						MWS::$db->setQuery($query);
						$options = MWS::$db->loadObjectList();
						foreach ($options as $i=>$option) {
							$options[$i]->value = '"' . JText::_($option->created_by_alias) . '"';
							$options[$i]->text = JHtml::_('string.truncate', JText::_($option->created_by_alias), 70);
						}
						break;
					/*case 'com_easyblog':
						// Build the query.
						$query->select('distinct(content.created_by_alias), content.created_by AS id');
						$query->from('#__k2_items AS content');
						$query->where('content.created_by_alias != ""');
						MWS::$db->setQuery($query);
						$options = MWS::$db->loadObjectList();
						foreach ($options as $i=>$option) {
							$options[$i]->value = JText::_($option->id);
							$options[$i]->text = JHtml::_('string.truncate', JText::_($option->created_by_alias), 70);
						}
						break;*/
				}
			}
		}
		// merge any additional options in the XML definition.
		$options = array_merge(parent::getOptions(), $options);
		return $options;
	}
} 
?>