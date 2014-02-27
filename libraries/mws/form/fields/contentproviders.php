<?php
/**
 * @package Masters Web Solutions - Library
 * @author Christopher Masters <chris@masterswebsolutions.com>
 * @copyright Copyright (c) 2011 Christopher Masters. All Rights Reserved.
 * @license GNU/GPL 2, http://www.gnu.org/licenses/gpl-2.0.html
 */
defined('_JEXEC') or die('Restricted access'); // no direct access
/**
 * Displays a list of content providers that are available.
 * @since 1.0
 */
class JFormFieldContentProviders extends JFormField
{
	/**
	 * The form field type
	 * @var string
	 * @since 1.0
	 */
	public $type = 'ContentProviders';
	/**
	 * Method to get the field input markup for a generic list.
	 * Use the multiple attribute to enable multiselect.
	 * 
	 * @return string The field input markup
	 * @since 1.0
	 */
	protected function getInput()
	{
		// Initialize variables.
		$html = array();
		// Initialize some field attributes.
		$class = !empty($this->class) ? ' class="radio ' . $this->class . '"' : ' class="radio"';
		$required = $this->required ? ' required aria-required="true"' : '';
		$autofocus = $this->autofocus ? ' autofocus' : '';
		$disabled = $this->disabled ? ' disabled' : '';
		$readonly = $this->readonly;
		// Start the radio field output.
		$html[] = '<fieldset id="' . $this->id . '"' . $class . $required . $autofocus . $disabled . ' >';
		// Get the field options.
		$options = $this->getOptions();
		// Build the radio field output.
		foreach ($options as $i => $option) {
			// Initialize some option attributes.
			$checked = ((string) $option->value == (string) $this->value) ? ' checked="checked"' : '';
			$class = !empty($option->class) ? ' class="' . $option->class . '"' : '';
			$disabled = !empty($option->disable) || ($readonly && !$checked);
			$disabled = $disabled ? ' disabled' : '';
			// Initialize some JavaScript option attributes.
			$onclick = !empty($option->onclick) ? ' onclick="' . $option->onclick . '"' : '';
			$onchange = !empty($option->onchange) ? ' onchange="' . $option->onchange . '"' : '';
			$html[] = '<input type="radio" id="' . $this->id . $i . '" name="' . $this->name . '" value="'
					. htmlspecialchars($option->value, ENT_COMPAT, 'UTF-8') . '"' . $checked . $class . $required . $onclick
					. $onchange . $disabled . ' />';
			$html[] = '<label for="' . $this->id . $i . '"' . $class . ' >'
					. JText::alt($option->text, preg_replace('/[^a-zA-Z0-9_\-]/', '_', $this->fieldname)) . '</label>';
			$required = '';
		}
		// End the radio field output.
		$html[] = '</fieldset>';
		return implode($html);
	}
	/**
	 * Method to get the field options.
	 * 
	 * @return array The field option objects
	 * @since 1.0
	 */
	protected function getOptions()
	{
		$options = array();
		$available = false;
		foreach ($this->element->children() as $option) {
			if (is_dir(JPATH_SITE . DIRECTORY_SEPARATOR . 'components' .DIRECTORY_SEPARATOR . $option['value'])) {
				$available = true;
			}
			if ($available) {
				// Only add <option /> elements.
				if ($option->getName() != 'option') {
					continue;
				}
				$disabled = (string) $option['disabled'];
				$disabled = ($disabled == 'true' || $disabled == 'disabled' || $disabled == '1');
				// Create a new option object based on the <option /> element.
				$tmp = JHtml::_('select.option', (string) $option['value'], trim((string) $option), 'value', 'text', $disabled);
				// Set some option attributes.
				$tmp->class = (string) $option['class'];
				// Set some JavaScript option attributes.
				$tmp->onclick = (string) $option['onclick'];
				$tmp->onchange = (string) $option['onchange'];
				// Add the option object to the result set.
				$options[] = $tmp;
			}
			$available = false;
		}
		reset($options);
		return $options;
	}
} 
?>