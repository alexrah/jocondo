<?php
/* @package Joomla
 * @copyright Copyright (C) Open Source Matters. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL, see LICENSE.php
 * @extension Phoca Extension
 * @copyright Copyright (C) Jan Pavelka www.phoca.cz
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
 */
defined('_JEXEC') or die;

class PhocaDownloadTag
{
	public function getTags($fileId, $select = 0) {
	
		$db =& JFactory::getDBO();
		
		if ($select == 1) {
			$query = 'SELECT r.tagid';
		} else {
			$query = 'SELECT a.*';
		}
		$query .= ' FROM #__phocadownload_tags AS a'
				//.' LEFT JOIN #__phocadownload AS f ON f.id = r.fileid'
				.' LEFT JOIN #__phocadownload_tags_ref AS r ON a.id = r.tagid'
			    .' WHERE r.fileid = '.(int) $fileId;
		$db->setQuery($query);
		
		if (!$db->query()) {
			$this->setError('Database Error - Getting Selected Tags');
			return false;
		}
		if ($select == 1) {
			$tags = $db->loadColumn();
		} else {
			$tags = $db->loadObjectList();
		}	
	
		return $tags;
	}
	
	public function storeTags($tagsArray, $fileId) {
	
	
		if ((int)$fileId > 0) {
			$db =& JFactory::getDBO();
			$query = ' DELETE '
					.' FROM #__phocadownload_tags_ref'
					. ' WHERE fileid = '. (int)$fileId;
			$db->setQuery($query);
			if (!$db->query()) {
				$this->setError('Database Error - Deleting FileId Tags');
				return false;
			}
			
			if (!empty($tagsArray)) {
				
				$values 		= array();
				$valuesString 	= '';
				
				foreach($tagsArray as $k => $v) {
					$values[] = ' ('.(int)$fileId.', '.(int)$v.')';
				}
				
				if (!empty($values)) {
					$valuesString = implode($values, ',');
				
					$query = ' INSERT INTO #__phocadownload_tags_ref (fileid, tagid)'
								.' VALUES '.(string)$valuesString;

					$db->setQuery($query);
					if (!$db->query()) {
						$this->setError('Database Error - Insert FileId Tags');
						return false;
					}
					
				}
			}
		}
	
	}
	
	public function getAllTagsSelectBox($name, $id, $activeArray, $javascript = NULL, $order = 'id' ) {
	
		$db =& JFactory::getDBO();
		$query = 'SELECT a.id AS value, a.title AS text'
				.' FROM #__phocadownload_tags AS a'
				. ' ORDER BY '. $order;
		$db->setQuery($query);
		
		if (!$db->query()) {
			$this->setError('Database Error - Getting All Tags');
			return false;
		}
		
		$tags = $db->loadObjectList();
		
		$tagsO = JHTML::_('select.genericlist', $tags, $name, 'class="inputbox" size="4" multiple="multiple"'. $javascript, 'value', 'text', $activeArray, $id);
		
		return $tagsO;
	}
}