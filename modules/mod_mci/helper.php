<?php
/**
 * @package Masters Contact Info
 * @author Christopher Masters <chris@masterswebsolutions.com>
 * @copyright Copyright (c) 2011 Christopher Masters DBA Masters Web Solutions. All Rights Reserved.
 * @license GNU/GPL 2, http://www.gnu.org/licenses/gpl-2.0.html
 */
defined('_JEXEC') or die('Restricted access'); // no direct access
/**
 * Masters Contact Info helper class.
 */
class modMCIHelper
{
	/**
	 * The MWS extension.
	 * @var string
	 */
	private $ext;
	
	/**
	 * Class constructor.
	 *
	 * @return void
	 * @since 2.3
	 */
	public function __construct($ext)
	{
		$this->ext = $ext;
	}
	
	/**
	 * Gets contacts and their details from the contact component and groups them by category or contact.
	 *
	 * @param object $params The module parameters
	 *
	 * @return array The modified contacts and their details
	 * @since 2.3
	 */
	public function getContacts(&$params)
	{
		$query = $this->buildQuery($params);
		if ($query)
		{
			$contacts = $this->runQuery($query, $params);
			if ($contacts)
			{
				return $this->formatContacts($contacts, $params);
			}
		}	
	}
	
	/**
	 * Builds the query to get contact details.
	 * 
	 * @param object $params The module parameters
	 * 
	 * @return object The query
	 * @since 2.3
	 */
	private function buildQuery($params)
	{
		$contactGrouping = $params->get('contact_grouping', 'all');
		$query = MWS::$db->getQuery(true);
		
		if ($contactGrouping == 'category')
		{
			return $this->queryCategory($query, $params);
		} elseif ($contactGrouping == 'contact')
		{
			return $this->queryContacts($query, $params);
		}
	}
	/**
	 * Finishes building the query for contacts by category.
	 * 
	 * @param object $query The query
	 * @param object $params The module parameters
	 * 
	 * @return object The query
	 * @since 2.3
	 */
	private function queryCategory($query, $params)
	{
		// Get parameter variables
		$catIds = $params->get('categories', '');
		$catOrderBy = $params->get('category_order', 'catordering ASC');
		$catContactOrderBy = $params->get('category_contact_order', 'contact.ordering ASC');
		$includeSubCategories = $params->get('category_include_sub_categories', 1);
		
		// Start query
		$now = MWSDatabase::getDateSql();
		$nullDate = MWS::$db->getnullDate();
		$query->select('DISTINCT contact.*, categories.title AS catname, categories.parent_id AS catparent_id, categories.lft AS catordering');
		$query->from('#__contact_details AS contact');
		$query->join('LEFT', '#__categories AS categories ON contact.catid = categories.id');
		$query->join('LEFT', '#__categories AS parent_categories ON contact.catid = parent_categories.parent_id');
		$query->where('contact.published = 1');
		$query->where('categories.published = 1');
		$query->where('(contact.publish_up = ' . MWS::$db->Quote($nullDate).' OR contact.publish_up <= ' . MWS::$db->Quote($now).')');
		$query->where('(contact.publish_down = ' . MWS::$db->Quote($nullDate).' OR contact.publish_down >= ' . MWS::$db->Quote($now).')');
		
		// Determine order		
		if ($catOrderBy == 'RAND()' || $catContactOrderBy == 'RAND()')
		{
			$catOrderBy = 'RAND()';
			$catContactOrderBy = '';
		} else
		{
			$catContactOrderBy = ', ' . $catContactOrderBy;
		}
		
		// Determine categories
		if (isset($catIds[0]) && $catIds[0] != '')
		{
			$categories = '';
			foreach ($catIds as $catId)
			{
				if ($includeSubCategories)
				{
					$categories .= '(contact.catid = ' . $catId . ' OR categories.parent_id = ' . $catId . ') OR ';
				} else
				{
					$categories .= 'catid = ' . $catId . ' OR ';
				}
			}
			if ($categories)
			{
				$categories = JString::rtrim($categories, ' OR ');
			}
		}
		
		// Add categories and order to query
		if (isset($categories))
		{
			$query->where($categories);
			$query->order($catOrderBy . $catContactOrderBy);
		} else
		{
			$query->order($catOrderBy . $catContactOrderBy);
		}//echo $query;
		
		return $query;
	}
	
	/**
	 * Finishes building the query for contacts by contact.
	 * 
	 * @param object $query The query
	 * @param object $params The module parameters
	 * 
	 * @return object The query
	 * @since 2.3
	 */
	private function queryContacts($query, $params)
	{
		// Get parameter variables
		$contactIds = $params->get('contacts', '');
		$contactOrderBy = $params->get('contact_order', 'contact.ordering ASC');
		
		// Start query
		$now = MWSDatabase::getDateSql();
		$nullDate = MWS::$db->getnullDate();
		$query->select('contact.*');
		$query->from('#__contact_details AS contact');
		$query->where('contact.published = 1');
		$query->where('(contact.publish_up = ' . MWS::$db->Quote($nullDate).' OR contact.publish_up <= ' . MWS::$db->Quote($now).')');
		$query->where('(contact.publish_down = ' . MWS::$db->Quote($nullDate).' OR contact.publish_down >= ' . MWS::$db->Quote($now).')');
		
		// Determine contacts
		if (isset($contactIds[0]) && $contactIds[0] != '')
		{
			$contacts = '';
			foreach ($contactIds as $contact)
			{
				$contacts .= 'contact.id = ' . $contact . ' OR ';
			}
			if ($contacts)
			{
				$contacts = JString::rtrim($contacts, ' OR ');
			}
		}
		
		// Add contacts and order to query
		if (isset($contacts))
		{
			$query->where($contacts);
			$query->order($contactOrderBy);
		} else
		{
			$query->order($contactOrderBy);
		}//echo $query;
		
		return $query;
	}
	
	/**
	 * Runs the query.
	 * 
	 * @param object $query The query
	 * @param object $params The module parameters
	 * 
	 * @return array The contact details
	 * @since 2.3
	 */
	private function runQuery($query, $params)
	{
		MWS::$db->setQuery($query);
		return MWS::$db->loadObjectList();
	}
	
	/**
	 * Formats the contact details for display.
	 * 
	 * @param array $contacts The contact details
	 * @param object $params The module parameters
	 * 
	 * @return array The formatted contacts
	 * @since 2.3
	 */
	private function formatContacts($contacts, $params)
	{
		$linkContact = $params->get('link_contact', 1);
		$emailText = $params->get('email_text', '');
		$nameTag = $params->get('name_tag', '');
		$websiteTarget = $params->get('website_target', '');
		$linkEmail = $params->get('link_email', 'mailto');
		foreach ($contacts as $contact)
		{
			$link = 'index.php?option=com_contact&amp;view=contact&amp;id=' . $contact->id;
			if ($contact->address)
			{
				$contact->address = nl2br($contact->address); // add HTML line break for new lines in Address
			}
			if ($contact->name)
			{
				if ($linkContact)
				{
					$contact->name = JHtml::_('link', $link, $contact->name); // link name to contact page
				}
				if ($nameTag)
				{
					$contact->name = '<'. $nameTag .'>' . $contact->name . '</'. $nameTag .'>';
				}
			}
			if ($contact->image)
			{
				$contact->articleLink = $link;
				$title = $contact->name;
				$contact->title = strip_tags($title);
				$contact->image = MWSImage::getImgThumb($contact, $params, 'thumbTag');
			}
			if ($contact->email_to)
			{
				if ($linkEmail == 'mailto')
				{
					$email = !$emailText ? 1 : 0;
					$contact->email_to = JHtml::_('email.cloak', $contact->email_to, 1, $emailText, $email);
				} elseif ($linkEmail == 'contact')
				{
					$text = $emailText ? $emailText : $contact->email_to;
					$contact->email_to = JHtml::_('link', $link, $text);
				}
			}
			if ($contact->webpage)
			{
				$target = $websiteTarget ? 'target="' . $websiteTarget . '"' : '';
				$contact->webpage = JHtml::_('link', $contact->webpage, $contact->webpage, $target); // link website
			}
		}
		return $contacts;
	}
	
	/**
	 * Breaks an object into an array grouped by a type. Must be pre sorted.
	 *
	 * @param array $list The contact information
	 * @param string $fieldName The group by type
	 *
	 * @return array The articles grouped by a type
	 * @since 2.3
	 */
	public function groupBy($list, $fieldName)
	{
		$grouped = array();
		if (!is_array($list))
		{		
			if ($list == '') return $grouped;
			$list = array($list);
		}
		foreach ($list as $key => $item)
		{		
			$grouped[$item->$fieldName][$key] = $item;
			unset($list[$key]);
		}
		return $grouped;
	}
}
?>