<?php
/**
 * Author 			: Sunil Kumar
 * Copyright © 2014, Manipal Universal Learning (P) Ltd.
 * Created on 		: Jul 15, 2014
 * Last Updated on	: Jul 15, 2014
 * Reviewer			:
 * Reviewed On		:
 * Review comments 	: 
 */

/**
 * @author Sunil Kumar
 * Service used for Sending Mails
 * Has event notification infrastructure functions like fireEvent,
 * findListener and notify the listener.
 */
class EdunxtNotificationDispatcher implements INotificationDispatcher {
	private $nEBService;
	public function __construct() { 	
		$this->nEBService = new MULNNotificationEngineBusinessService;
	}
	/**
	 * @see INotificationDispatcher::send()
	 */
	public function send($dispatcherData){ 	}

	public function notifyEdunxtCommunity($notifyCommunitiesOfEvent ){
		$this->nEBService->communityNotification($notifyCommunitiesOfEvent);
	}
	/**
	*	Notify the person of an event raised
	*/
	public function notifyEdunxtPerson($notifyPersonOfEvent ){
		$this->nEBService->notifyEdunxtPerson($notifyPersonOfEvent);
	}
}