<?php
/**
 * Author 			: Sunil Kumar
 * Copyright © 2014, Manipal Universal Learning (P) Ltd.
 * Created on 		: Jun 25, 2014
 * Last Updated on	: Jun 25, 2014
 * Reviewer			:
 * Reviewed On		:
 * Review comments 	:
 */

require_once 'NotifyRegistry.php';

/**
 * Manages the Events and Listeners in the system.
 */
class NotificationRegistryMgr
{
	/**
	 * Returns list of registred listeners for the event.
	 * 
	 * @param $eventNotifierName. Name of the event.
	 */
	public function getRegisteredNotifiers($eventNotifierName)
	{
		global $notifyRegistry;
        return $notifyRegistry[$eventNotifierName];
	}						
}