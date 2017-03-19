<?php
/**
 * File				: MULNNotificationEngineBusinessService.php
 * Author			: Sunil Kumar
 * Copyright  	: 2014,  Manipal Universal Learning (P) Ltd.
 * Created on 		: Jun 20, 2014 02:30:03 PM
 * Last Update on	: 
 * Reviewer			: Sunil Kumar
 * Reviewed On		:
 * Review comments 	:
 */


class MULNNotificationEngineBusinessService 
{
	
	
	private $localLogger;
	private $nEngineDataService;
	public function __construct()
	{
		$this->nEngineDataService = new MULNNotificationEngineDataService();
		//$this->localLogger = new MULNLogger();
	}
	
	
	/**
	 *  need to organize this piece of code, temporarily. 
	 * @param unknown $payLoad
	 * @throws BusinessServiceException
	 * @return Collection
	 */
	public function registerAnEvent($data){
		try{
			$nEngineDataService = new MULNNotificationEngineDataService();
			return	$nEngineDataService->raiseAnEvent($data);
			 
		}
		catch (Exception $exception){
			throw new BusinessServiceException(__CLASS__,__FUNCTION__,'Raise Event Failed due to some technical problem',$exception);
		}
	
	}
	
	/**
	 *
	 * @param unknown $data
	 * @throws BusinessServiceException
	 * @return boolean
	 */
	public function registerRepeatedEvent($data){
		try{
			error_log( ' hope it reaches here BS ');
			$nEngineDataService = new MULNNotificationEngineDataService();
			return $nEngineDataService->registerRepeatedEvent($data);
		}
		catch (Exception $exception){
			throw new BusinessServiceException(__CLASS__,__FUNCTION__,'Raise Event Failed due to some technical problem',$exception);
		}
	
	}
		
	public function getEvents(){
		try{
			$nEngineDataService = new MULNNotificationEngineDataService();
			$allEvents = $nEngineDataService->getEvents();
			return $allEvents;
		}
		catch (Exception $exception){
			throw new BusinessServiceException(__CLASS__,__FUNCTION__,'Fetching payload Failed due to some technical problem',$exception);
		}
	
	}
		
	public function getEvent($eid){
		try{
			$nEngineDataService = new MULNNotificationEngineDataService();
			$allEvents = $nEngineDataService->getEvent($eid);
			return $allEvents;
		}
		catch (Exception $exception){
			throw new BusinessServiceException(__CLASS__,__FUNCTION__,'Fetching payload Failed due to some technical problem',$exception);
		}
	
	}	
	
	public function getMailContent($announcementId){
		try{
			$nEngineDataService =	new MULNNotificationEngineDataService();
			$mailContent		=	$nEngineDataService->getMailContent($announcementId);
			
			return $mailContent;
		}
		catch (Exception $exception){
			throw new BusinessServiceException(__CLASS__,__FUNCTION__,'Fetching mailContent due to some technical problem',$exception);
		}
	
	}
	
	public function getMailIds($communityId){
		try{
			$nEngineDataService =	new MULNNotificationEngineDataService();
			$mailIds		=	$nEngineDataService->getMailIds($communityId);
			return $mailIds;
		}
		catch (Exception $exception){
			throw new BusinessServiceException(__CLASS__,__FUNCTION__,'Fetching mailIds due to some technical problem',$exception);
		}
	
	}
	
	public function updateSentStatus($eid){
		try{
			$nEngineDataService =	new MULNNotificationEngineDataService();
			$mailIds		=	$nEngineDataService->updateSentStatus($eid);
			return $mailIds;
		}
		catch (Exception $exception){
			throw new BusinessServiceException(__CLASS__,__FUNCTION__,'Fetching mailIds due to some technical problem',$exception);
		}
	}
	/**
	 * get all User list for processing like 
	 * name , displayname and emailid for processing 
	 * notifications
	 * @param Array $subscriberList
	 */
	public function getSubscriberInfo($subscriberList){

		$nEngineDataService = new MULNNotificationEngineDataService();
		return  $nEngineDataService->getSubscriberInfo($subscriberList);
		
	}

	public function getCreatorName($createdBy){
		$nEngineDataService = new MULNNotificationEngineDataService();
		return  $nEngineDataService->getCreatorName($createdBy);
	}	
/**
 * 
 * @param Array $toLogFile
 */
	public function updateMessageLog($toLogFile){
		$nEngineDataService = new MULNNotificationEngineDataService();
		return  $nEngineDataService->updateMessageLog($toLogFile);
	}

	public function outMessageToLog($subject, $message, $mailCount, $messageType,$createdBy){
		
		$nEngineDataService = new MULNNotificationEngineDataService();
		return  $nEngineDataService->outMessageToLog($subject, $message, $mailCount, $messageType , $createdBy);
	}
	

	public function getScheduledRepeatedJobs(){
		try{
			$nEngineDataService =	new MULNNotificationEngineDataService();
			$scheduledRepeatedJobs		=	$nEngineDataService->getScheduledRepeatedJobs();
			return $scheduledRepeatedJobs;
		}
		catch (Exception $exception){
			throw new BusinessServiceException(__CLASS__,__FUNCTION__,'Fetching scheduled repeated jobs data due to some technical problem',$exception);
		}
	
	}
	
	public function updateScheduledJob($updateParams){
		try{
			$nEngineDataService =	new MULNNotificationEngineDataService();
			$updateScheduledRepeatedJobs		=	$nEngineDataService->updateScheduledJob($updateParams);
			return $updateScheduledRepeatedJobs;
		}
		catch (Exception $exception){
			throw new BusinessServiceException(__CLASS__,__FUNCTION__,'updating  scheduled repeated jobs data due to some technical problem',$exception);
		}
	
	}
	public function getEventById($eid){
		try{
			
			$nEngineDataService = new MULNNotificationEngineDataService();
			$allEvents = $nEngineDataService->getEventById($eid);
			return $allEvents;
		}
		catch (Exception $exception){
			throw new BusinessServiceException(__CLASS__,__FUNCTION__,'Fetching payload by id Failed due to some technical problem',$exception);
		}
	
	}	
	
	public function getStudentidsforLoginReminder($days, $user){
		try{
			
			$nEngineDataService = new MULNNotificationEngineDataService();
			$personIds = $nEngineDataService->getStudentidsforLoginReminder($days, $user);
			return $personIds;
		}
		catch (Exception $exception){
			throw new BusinessServiceException(__CLASS__,__FUNCTION__,'Fetching Students Failed due to some technical problem',$exception);
		}
	
	}	
	
	public function registerFailedPayload($payloadfailedparams){
		try{
			
			$nEngineDataService = new MULNNotificationEngineDataService();
			$lastInsertId = $nEngineDataService->registerFailedPayload($payloadfailedparams);
			return $lastInsertId;
		}
		catch (Exception $exception){
			throw new BusinessServiceException(__CLASS__,__FUNCTION__,'Inserting error payloads Failed due to some technical problem',$exception);
		}
	
	}
	public function getCommunityMembers($limit,$roleId,$communityId) {

		try{
			$nEngineDataService = new MULNNotificationEngineDataService();
			$members = $nEngineDataService->getCommunityMembers($limit,$roleId,$communityId);
			return $members;
		}catch (DataServiceException $e){
			throw new BusinessServiceException(__CLASS__,__FUNCTION__,"Database problem occured",$e);
		}
	}

	public function getContentBody($contentId) {

		try{
			$nEngineDataService = new MULNNotificationEngineDataService();
			$contentBody = $nEngineDataService->getContentBody($contentId);
			return $contentBody;
		}catch (DataServiceException $e){
			throw new BusinessServiceException(__CLASS__,__FUNCTION__,"Database problem occured",$e);
		}
	}	
	public function getSectionDetails($communityId) {

		try{
			$nEngineDataService = new MULNNotificationEngineDataService();
			$section = $nEngineDataService->getSectionDetails($communityId);
			return $section;
		}catch (DataServiceException $e){
			throw new BusinessServiceException(__CLASS__,__FUNCTION__," Connecting to Database Failed ",$e);
		}
	}	
	
	public function fetchRoleIdsUsingCommunityId($communityID){
		try{
			$nEngineDataService = new MULNNotificationEngineDataService();
			$result = $this->nEngineDataService->fetchRoleIdsUsingCommunityId($communityID);
			return $result;
		}catch (PropelException $exception) {
			throw new DataServiceException(__CLASS__,__METHOD__,'Invalid details',$exception);
		}
	}	
	/**
	*	accepts an array of parameters
	*/
	public function communityNotification($notifyCommunitiesOfEvent){
		try{
			$nEngineDataService = new MULNNotificationEngineDataService();
			$result = $this->nEngineDataService->communityNotification($notifyCommunitiesOfEvent);
			return $result;
		}catch (PropelException $exception) {
			throw new DataServiceException(__CLASS__,__METHOD__,'Invalid details',$exception);
		}
	}
	
	public function getAssessment($examId){
		try{
			$nEngineDataService = new MULNNotificationEngineDataService();
			$result = $this->nEngineDataService->getAssessment($examId);
			return $result;
		}catch (PropelException $exception) {
			throw new DataServiceException(__CLASS__,__METHOD__,'examId Not Found or related Error',$exception);
		}
	}	
	public function getCommunityForThisExam($examId){
		try{
			$nEngineDataService = new MULNNotificationEngineDataService();
			$result = $this->nEngineDataService->getCommunityForThisExam($examId);
			return $result;
		}catch (PropelException $exception) {
			throw new DataServiceException(__CLASS__,__METHOD__,'examId Not Found or related Error',$exception);
		}
	}

	public function getCriteriaObject($rCriteriaId){
		try{
			$nEngineDataService = new MULNNotificationEngineDataService();
			$result = $this->nEngineDataService->getCriteriaObject($rCriteriaId);
			return $result;
		}catch (PropelException $exception) {
			throw new DataServiceException(__CLASS__,__METHOD__,'rCriteriaId Not Found or related Error',$exception);
		}
	}
	public function getReleaseCriteriaTag($rCriteriaTagId){
		try{
			$nEngineDataService = new MULNNotificationEngineDataService();
			$result = $this->nEngineDataService->getReleaseCriteriaTag($rCriteriaTagId);
			return $result;
		}catch (PropelException $exception) {
			throw new DataServiceException(__CLASS__,__METHOD__,'CriteriaTagId Not Found or related Error',$exception);
		}
	}
	public function notifyEdunxtPerson($notifyPersonOfEvent){
		try{
			$nEngineDataService = new MULNNotificationEngineDataService();
			$result = $this->nEngineDataService->notifyEdunxtPerson($notifyPersonOfEvent);
			return $result;
		}catch (PropelException $exception) {
			throw new DataServiceException(__CLASS__,__METHOD__,'notifyPersonOfEvent Object Error or related Error',$exception);
		}
	}

	public function getLastInsertedRecordId($columnName, $tableName){
		try{
			$nEngineDataService = new MULNNotificationEngineDataService();
			$result = $this->nEngineDataService->getLastInsertedRecordId($columnName, $tableName);
			return $result;
		}catch (PropelException $exception) {
			throw new DataServiceException(__CLASS__,__METHOD__,'could not get the Last Record Id',$exception);
		}
	}
	
	public function updateMessageCountWithActualCount($count, $messageId){
		try{
			$nEngineDataService = new MULNNotificationEngineDataService();
			$result = $this->nEngineDataService->updateMessageCountWithActualCount($count, $messageId);
			return $result;
		}catch (PropelException $exception) {
			throw new DataServiceException(__CLASS__,__METHOD__,'could not get the Last Record Id',$exception);
		}
	}
	public function getLoginName($personId){
		$nEngineDataService = new MULNNotificationEngineDataService();
		 $loginName = $this->nEngineDataService->getLoginName($personId);

		return $loginName[0]->fk_loginname;
	}
	

	
	public function getDomainLogoForDisplay($personId){
		
		$loginName  = $this->getLoginName($personId);
		$domain = explode("_", $loginName);
		$logo='';
		
		/**
		 * Support with the logo from muln_domain table.
		 * I tried to improve the logic, but failed because of the file naming convetions.
		 */
		$nEngineDataService = new MULNNotificationEngineDataService();
		$domainPrefix = $this->nEngineDataService->getDomainURLPrefix($domain[0]);
		$fileExt = '.jpg';
		$findMe = '-test';
		 $logo = substr($domainPrefix->urlprefix, 0, -(strlen($domainPrefix->urlprefix) - (stripos($domainPrefix->urlprefix, '.')))) ;
		if(stripos($logo, $findMe)){
			$logo = substr($logo,0,-strlen($findMe));	
		}
			
		$images = '/sites/all/themes/edunxt/images/';
		$imageURL = 'http://'. $domainPrefix->urlprefix.$images.$logo. $fileExt;
		return $imageURL;
	}
	public function recordFailedMessages($to, $subject, $body, $type){
		
		$recordLog = $this->nEngineDataService->recordFailedMessages($to, $subject, $body, $type);
	}
	
	/**
	 * 
	 * @return boolean
	 */
	public function getFailedMessages($sendType){
		$data = $this->nEngineDataService->getFailedMessages($sendType);
		return $data;
	}

	public function getDomainURLForDisplay($personId){
		$domainInfo = $this->getDomainInfo($personId);
		$protocol = 'http://';
		$accessURL = $protocol.$domainInfo->urlprefix;
		return $accessURL;
	}
	
	public function getDomainInfo($personId){

		$loginName  = $this->getLoginName($personId);
		$domain = explode("_", $loginName);
		$subDomain='';
		$nEngineDataService = new MULNNotificationEngineDataService();
		$domainInfo = $this->nEngineDataService->getDomainURLPrefix($domain[0]);
		return $domainInfo;
	}
	
	public function clearSuccessfulMessageFromLog($logerIdArray){
		
		return $this->nEngineDataService->clearSuccessfulMessageFromLog($logerIdArray);
	}

		public function getAssessmentDiscription($examId){
		try{
			$nEngineDataService = new MULNNotificationEngineDataService();
			$result = $this->nEngineDataService->getAssessmentDiscription($examId);
			return $result;
		}catch (PropelException $exception) {
			throw new DataServiceException(__CLASS__,__METHOD__,'examId Not Found or related Error',$exception);
		}
	}

	/**
	 * 
	 * @param unknown $examId
	 * @throws DataServiceException
	 * @return unknown
	 */
	public function getSectionMessage($groupCommunity){
		try{
			$nEngineDataService = new MULNNotificationEngineDataService();
			$result = $this->nEngineDataService->getSectionMessage($groupCommunity);
			return $result;
		}catch (PropelException $exception) {
			throw new DataServiceException(__CLASS__,__METHOD__,'examId Not Found or related Error',$exception);
		}
	}

		/**
	 * write to reports
	 * @param array $reportsData
	 */
	public function writeToReports($reportsData){
		try{
			return $this->nEngineDataService->writeToReports($reportsData);
		}catch(Exception $exception){
			throw new DataServiceException(__CLASS__,__METHOD__,'Error while writing to reports ',$exception);
		}
			
	}
	/**
	 *
	 */
	public function getUsersFromPersonTable(){
	
		return $this->nEngineDataService->getUsersFromPersonTable();
	}
	/**
	 * Authorize user to login to the system
	 * @param unknown $uname
	 * @param unknown $pass
	 */
	public function authorizeUser($uname,$pass){
	
		return $this->nEngineDataService->authorizeUser($uname,$pass);
	}
	/**
	 * Authorize with the Session Data
	 * @param unknown $sessionId
	 */
	public function authorizeUserWithSSO($sessionId){
		return $this->nEngineDataService->authorizeUserWithSSO($sessionId);
	
	}

	public function writeToMailQueue($finalmailQueueArray) {
	
		try{
			$nEngineDataService = new MULNNotificationEngineDataService();
			$nEngineDataService->writeToMailQueue($finalmailQueueArray);
	
		}catch (DataServiceException $e){
			throw new BusinessServiceException(__CLASS__,__FUNCTION__,"Database problem occured",$e);
		}
	}
	
	public function writeTemplateforEvent($templateContent, $eventId) {
	
		try{
			$nEngineDataService = new MULNNotificationEngineDataService();
			$nEngineDataService->writeTemplateforEvent($templateContent, $eventId);
	
		}catch (DataServiceException $e){
			throw new BusinessServiceException(__CLASS__,__FUNCTION__,"Database problem occured",$e);
		}
	}
	public function getSOPSubscribers($communityId) {
		try{
			return $this->nEngineDataService->getSOPSubscribers($communityId);
		}catch (DataServiceException $e){
			throw new BusinessServiceException(__CLASS__,__FUNCTION__,"Database problem occured",$e);
		}
	}	
	public function getCurrentEvent($eventId) {
		try{
			return $this->nEngineDataService->getCurrentEvent($eventId);
		}catch (DataServiceException $e){
			throw new BusinessServiceException(__CLASS__,__FUNCTION__,"Database problem occured",$e);
		}
	}
	
	public function registerRepeatedEventRequest($data){
		try{
			$nEngineDataService = new MULNNotificationEngineDataService();
			return	$nEngineDataService->registerRepeatedEventRequest($data);
			 
		}
		catch (Exception $exception){
			throw new BusinessServiceException(__CLASS__,__FUNCTION__,'Raise Event Failed due to some technical problem',$exception);
		}
	}	
	public function getFreshSOPSubscriber($communityId) {
		try{
			$persons = $this->nEngineDataService->getNewEnrollments();
			$enrolledPersons = (join(",",$persons));
			
			return $this->nEngineDataService->getNewEnrollmentsFromCommunity($communityId, $enrolledPersons);
		}catch (DataServiceException $e){
			throw new BusinessServiceException(__CLASS__,__FUNCTION__,"Database problem occured",$e);
		}
	}	
	public function getAvailableSOPEvents($communityId) {
		try{
			return $this->nEngineDataService->getAvailableSOPEvents($communityId);
		}catch (DataServiceException $e){
			throw new BusinessServiceException(__CLASS__,__FUNCTION__,"Database problem occured",$e);
		}
	}
	
	public function getCreatorProfileImagePath($createdBy) {
		try{
			return $this->nEngineDataService->getCreatorProfileImagePath($createdBy);
		}catch (DataServiceException $e){
			throw new BusinessServiceException(__CLASS__,__FUNCTION__,"Database problem occured",$e);
		}
	}	

	public function listEnrolledCommunities($personId) {
		try{
			return $this->nEngineDataService->listEnrolledCommunities($personId) ;
		}catch (DataServiceException $e){
			throw new BusinessServiceException(__CLASS__,__FUNCTION__,"Database problem occured",$e);
		}
	}
	public function getSOPCommunityMembers($limit,$roleId,$communityId) {
	
		try{
			$nEngineDataService = new MULNNotificationEngineDataService();
			$members = $nEngineDataService->getSOPCommunityMembers($limit,$roleId,$communityId);
			return $members;
		}catch (DataServiceException $e){
			throw new BusinessServiceException(__CLASS__,__FUNCTION__,"Database problem occured",$e);
		}
	}	
}
