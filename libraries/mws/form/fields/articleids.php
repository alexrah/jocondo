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
 * Supports a textarea with a modal to check article ids.
 * Use extension to get a modal window to display article ids for a specific extension.
 * @since 1.0
 */
class JFormFieldArticleIds extends JFormField
{
	/**
	 * The form field type
	 * @var string
	 * @since 1.0
	 */
	protected $type = 'ArticleIds';
	/**
	 * Method to get the articles field input markup.
	 * Use the rows and columns attributes to specify the dimensions of the area.
	 * Use extension to display a link to lookup the article ids.
	 * 
	 * @return string The field input markup
	 * @since 1.0
	 */
	protected function getInput()
	{
		MWS::init('MWS');
		JHtml::_('behavior.modal');
		// initialize some field attributes.
		$class = $this->element['class'] ? ' class="' . (string) $this->element['class'] . '"' : '';
		$disabled = ((string) $this->element['disabled'] == 'true') ? ' disabled="disabled"' : '';
		$columns = $this->element['cols'] ? ' cols="' . (int) $this->element['cols'] . '"' : '';
		$rows = $this->element['rows'] ? ' rows="' . (int) $this->element['rows'] . '"' : '';
		$required = $this->required ? ' required="required" aria-required="true"' : '';
		// initialize JavaScript field attributes.
		$onchange = $this->element['onchange'] ? ' onchange="' . (string) $this->element['onchange'] . '"' : '';
		// set link
		$extension = $this->element['extension'] ? (string) $this->element['extension'] : (string) $this->element['scope'];
		if (!empty($extension)) {
			switch ($extension) {
				case 'com_content' :
					$link = 'index.php?option=com_content&amp;view=articles&amp;layout=modal&amp;tmpl=component';
					break;
				case 'com_fjrelated' :
					$link = 'index.php?option=com_content&amp;view=articles&amp;layout=modal&amp;tmpl=component';
					break;
				case 'com_k2' :
					if (is_dir(MWS_K2_DIR)) {
						$link = 'index.php?option=com_k2&amp;view=items&amp;task=element&amp;tmpl=component';
					} else {
						$link = NULL;
					}
					break;
				case 'com_easyblog' :
					if (is_dir(MWS_EB_DIR)) {
						$link = 'index.php?option=com_easyblog&amp;view=blogs&amp;tmpl=component';
					} else {
						$link = NULL;
					}
					break;
			}
			if ($link) {
				$link = '<a class="modal btn hasTooltip" href="' . $link .'" rel="{handler: \'iframe\', size: {x: 800, y: 450}}">Lookup Ids</a>';
			}
		} else {
			$link = NULL;
		}
		if (is_array($this->value)) {
			$this->value = $this->value[0];
		}
		return '<span class="input-append"><textarea name="' . $this->name . '" id="' . $this->id . '"' . $columns . $rows . $class . $disabled . $onchange
				. $required . '>' . htmlspecialchars($this->value, ENT_COMPAT, 'UTF-8') . '</textarea>' .  $link . '</span>';
	}
}
