<?php
defined( 'JPATH_BASE' ) or die( 'Direct Access to this location is not allowed.' );

if ($this->jomsocial){
	$html = '<div class="cModule jevattendees"><h3><span>'.JText::_( 'JEV_ATTEND_THIS_EVENT' ).'</span></h3>';
	$comuser=  "com_users";
	$html .= JText::sprintf("JEV_LOGIN_TO_CONFIRM_ATTENDANCE", JRoute::_("index.php?option=$comuser&view=login&return=".base64_encode($this->uri->toString())));
	$html .= '</div>';
}
else {
	$comuser=  "com_users";
	$html = JText::sprintf("JEV_LOGIN_TO_CONFIRM_ATTENDANCE", JRoute::_("index.php?option=$comuser&view=login&return=".base64_encode($this->uri->toString())));
}
echo $html;