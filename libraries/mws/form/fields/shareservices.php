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
 * Supports a textarea with a modal to check available ShareThis services.
 * @since 1.5
 */
class JFormFieldShareServices extends JFormField
{
	/**
	 * The form field type
	 * @var string
	 * @since 1.5
	 */
	protected $type = 'ShareServices';
	/**
	 * Gets the Services field input markup.
	 * Use the "rows" and "columns" attributes to specify the dimensions of the area.
	 * 
	 * @return string The field input markup
	 * @since 1.5
	 */
	protected function getInput()
	{
		MWS::init('MWS');
		JHtml::_('behavior.modal');
		// Initialize some field attributes.
		$class = $this->element['class'] ? ' class="' . (string) $this->element['class'] . '"' : '';
		$disabled = ((string) $this->element['disabled'] == 'true') ? ' disabled="disabled"' : '';
		$columns = $this->element['cols'] ? ' cols="' . (int) $this->element['cols'] . '"' : '';
		$rows = $this->element['rows'] ? ' rows="' . (int) $this->element['rows'] . '"' : '';
		$required = $this->required ? ' required="required" aria-required="true"' : '';
		// Initialize JavaScript field attributes.
		$onchange = $this->element['onchange'] ? ' onchange="' . (string) $this->element['onchange'] . '"' : '';
		
		self::createServicesHtml();
		$link = '<a class="modal btn hasTooltip" href="' . MWS_SHARETHIS_SERVICES_URI .'" rel="{handler: \'iframe\', size: {x: 800, y: 450}}">' . JText::_(MWS_SHARETHIS_SERVICES_AVAILABLE) . '</a>';
		
		return '<span class="input-append"><textarea name="' . $this->name . '" id="' . $this->id . '"' . $columns . $rows . $class . $disabled . $onchange . $required . '>'
			. htmlspecialchars($this->value, ENT_COMPAT, 'UTF-8') . '</textarea>' .  $link . '</span>';
	}
	/**
	 * Creats an HTML file with a list of ShareThis services.
	 * 
	 * @return void
	 * @since 1.5
	 */
	private function createServicesHtml()
	{
		$buttons = self::addHtmlToServices(unserialize(MWS_SHARETHIS_BUTTONS), 'buttons');
		$plugins = self::addHtmlToServices(unserialize(MWS_SHARETHIS_PLUGINS), 'plugins');
		$instructions = '<div style="float:right;width:350px;margin-right:50px;">'
				. '<h2>' . JText::_(MWS_SHARETHIS_INSTRUCTIONS_HEADING) . '</h2>'
				. '<p>' . JText::_(MWS_SHARETHIS_INSTRUCTIONS) . '</p>'
				. '<h2>' . JText::_(MWS_SHARETHIS_NOTES_HEADING) . '</h2>'
				. '<p>' . JText::_(MWS_SHARETHIS_NOTES) . '</p>'
				. '</div>';
		$contents = '<div style="overflow:hidden;">' . $buttons . $plugins . $instructions . '</div>';
		JFile::write(MWS_SHARETHIS_SERVICES_PATH, $contents);
	}
	/**
	 * Adds HTML to the services for display
	 * 
	 * @param array $services The services
	 * @param string $type The type of service (buttons or plugins)
	 * 
	 * @return string The services HTML
	 * @since 1.5
	 */
	private function addHtmlToServices($services, $type)
	{
		$i=0;
		foreach ($services as $service) {
			$services[$i++] = '<li>' . $service . '</li>';
		}
		$services = implode('', $services); // convert to string
		if ($type == 'buttons') {
			$heading = JText::_(MWS_SHARETHIS_HEADING_BUTTONS);
		} elseif ($type == 'plugins') {
			$heading = JText::_(MWS_SHARETHIS_HEADING_PLUGINS);
		}
		$services = '<div style="float:left;width:125px;margin-right: 25px;"><h2>' . $heading . '</h2><ul>' . $services . '</ul></div>';
		return $services;
	}
}
