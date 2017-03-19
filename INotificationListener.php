<?php
/**
 * Author 			: Sunil Kumar
 * Copyright © 2014, Manipal Universal Learning (P) Ltd.
 * Created on 		: Jun 25, 2014
 * Last Updated on	: Jul 15, 2014
 * Reviewer			:
 * Reviewed On		:
 * Review comments 	: 
 */

/**
 * Represents Notification Listener in the system.
 * Handler functions to be implemented
 */
interface INotificationListener {

	/**
	 * retruns the list of recepients
	 * @param unknown $payload
	 */
	public function getRecepientsInfo(EventPayLoad $payload);
	/**
	 * retruns the body for the notification
	 * @param unknown $payload
	 */
	public function getBody(EventPayLoad $payload);
	/**
	 * retruns the title 
	 * @param unknown $payload
	 */
	public function getTitle(EventPayLoad $payload);
	/**
	 * retruns the Short body for the Messaging notification
	 * @param unknown $payload
	 */
	public function getShortBody(EventPayLoad $payload);
	
	
}