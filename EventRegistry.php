<?php
/**
 * File				: Determines the event raised.
 * Author 			: Sunil Kumar
 * Copyright © 2014, Manipal Universal Learning (P) Ltd.
 * Created on 		: May 24, 2014
 * Last Updated on	: May 24, 2014
 * Reviewer			:
 * Reviewed On		:
 * Review comments 	:
 *
 */

/**
 * Registry to store event listeners based on the event name.
 */

// Event types
define('EVENT_INVOKATION_TYPE_SYNC', 'Sync');
define('EVENT_INVOKATION_TYPE_ASYNC', 'ASync');

// Initialize global event registry
global $eventRegistry;

$eventRegistry = array(
	ANNOUNCEMENT_CREATED => array(
		array("Listener" => "AnnouncementNotificationListener","Type"=>EVENT_INVOKATION_TYPE_SYNC)
	),
		
);