<?php

/**
 * File				: MULNNotificationEngineBusinessService.php
 * Author			: Sunil Kumar
 * Copyright 		: © 2014,  Manipal Universal Learning (P) Ltd.
 * Created on 		: Jun 20, 2014 02:30:03 PM
 * Last Update on	: 
 * ModifiedBy 		: Sunil Kumar
 * Reviewer			: Sunil Kumar
 * Reviewed On		:
 * Review comments 	:
 */

class MULNNotificationEngineDataService {
	
	
	/**
	 * 
	 */
	 private $dbConnection;
	function __construct(){
		$this->dbConnection =	new ConnectionFactory();
	}
	
	public function raiseAnEvent($data){
		try{
 			$fetchType=  PDO::FETCH_ASSOC;
 			if($data->sentstatus != 0){
 				$sentstatus	= 0;
 			}
 			else{
 				$sentstatus = $data->sentstatus;
 			} 
 			$dataMap	=	str_replace("'", "\\'",$data->dataMap);
 			
			$theRawQuery = "insert into muln_notification_event_queue
		 (type, payload, sendtime, notificationlistener, dispatchmode, sentstatus,  createdby, createdon)
			 values('".$data->type."','".$dataMap."','". $data->sendtime."','".$data->notificationlistener."','".$data->dispatchmode."',".$sentstatus.",".$data->createdby.",'".$data->createdon."')";
			$queryResult 	=	$this->dbConnection->executeInsert(PLATFORM_DB, $theRawQuery);
		}
		catch (Exception $exception){
			throw new DataServiceException(__CLASS__,__FUNCTION__,'Event Creation Failed due to some technical problem',$exception);
		}
	}
	
	
	/**
	 * Repeated Events are inserted here
	 * @param unknown $data
	 * @throws DataServiceException
	 * @return boolean
	 */
	public function registerRepeatedEvent($data){
		try{
			error_log( ' hope it reaches here ');
			echo $theRawQuery = "insert into muln_notification_scheduler
								(type, payload, notificationlistener, repeateinterval, starttime, createdby, createdon, endtime)
							Values
								('".$data->type."', '".$data->dataMap."', '".$data->notificationlistener."', '".$data->repeateinterval."', ".strtotime($data->starttime).", ".$data->createdby.", '".$data->createdon."', 0)";
			$queryResult 	=	$this->dbConnection->executeInsert(PLATFORM_DB, $theRawQuery);
		}
		catch (Exception $exception){
			throw new DataServiceException(__CLASS__,__FUNCTION__,'Event Creation Failed due to some technical problem',$exception);
		}
	}
	
	public function getEvents(){
		try{
			$fetchType=  PDO::FETCH_ASSOC;
			// query used for GNU
			//$theRawQuery = "select * from muln_notification_event_queue where sentstatus = 0 AND sendtime < convert_tz(now(),@@session.time_zone,'+08:00')";
			$theRawQuery = "select * from muln_notification_event_queue where sentstatus = 0 AND sendtime < now()";
			$queryResult 	=	$this->dbConnection->executeSelect(PLATFORM_DB, $theRawQuery, $fetchType);
			return $queryResult;
		}
		catch (Exception $exception){
			throw new DataServiceException(__CLASS__,__FUNCTION__,'Retriving payload Failed due to some technical problem',$exception);
		}
	
	}
	
	public function getEvent($eid){
		try{
			$fetchType=  PDO::FETCH_ASSOC;
			// query used for GNU
//			$theRawQuery = "select * from muln_notification_event_queue where sentstatus = 0 AND sendtime < convert_tz(now(),@@session.time_zone,'+08:00')";
			$theRawQuery = "select * from muln_notification_event_queue where sentstatus = 0 AND sendtime < now() and eid = ".$eid;
			$queryResult 	=	$this->dbConnection->executeSelect(PLATFORM_DB, $theRawQuery, $fetchType);
			return $queryResult;
		}
		catch (Exception $exception){
			throw new DataServiceException(__CLASS__,__FUNCTION__,'Retriving payload Failed due to some technical problem',$exception);
		}
	
	}
	
	public function getMailIds($communityId){
		try{
				
			$fetchType=  PDO::FETCH_ASSOC; 
			$theRawQuery = "select mp.primaryemail,mp.secondaryemail from muln_communitymembership mcm inner join muln_person mp on personid = fk_personid where mcm. fk_communityid = ".$communityId;
			$con = Propel::getConnection(null, Propel::CONNECTION_READ);
			$stmt = $con->prepare($theRawQuery);
			$stmt->execute();
			$queryResult = $stmt->fetchAll($fetchType);
			return $queryResult;
		}
		catch (Exception $exception){
			throw new DataServiceException(__CLASS__,__FUNCTION__,'Retriving mailcontent Failed due to some technical problem',$exception);
		}
	
	}
	public function updateSentStatus($eid){
		try{
			
			$theUpdateQuery = "UPDATE muln_notification_event_queue SET sentstatus = 1 WHERE eid = ".$eid;
			$queryResult = $this->dbConnection->executeUpdate(PLATFORM_DB, $theUpdateQuery);
			return true;
		}
		catch (Exception $exception){
			throw new DataServiceException(__CLASS__,__FUNCTION__,'Retriving mailcontent Failed due to some technical problem',$exception);
		}
	
	}

	public function getSubscriberInfo($subscriberList) {
		$fetchType=  PDO::FETCH_ASSOC;
		$subscribers = implode(",",$subscriberList);
		$theRawQuery = "select displayname as name,primaryemail as toemail, primarycontactnumber, secondaryemail, fk_loginname, personid,rollno from muln_person where personid in($subscribers)";
		$queryResult 	=	$this->dbConnection->executeSelect(PLATFORM_DB, $theRawQuery,$fetchType);
		return $queryResult;
	}

	public function getCreatorName($createdBy){
			
		try{
			$fetchType=  PDO::FETCH_ASSOC;
			$theRawQuery = "select displayname from muln_person where personid = " .$createdBy;
			$queryResult 	=	$this->dbConnection->executeSelect(PLATFORM_DB, $theRawQuery,$fetchType);
			return $queryResult[0]['displayname'];
		}
		catch (Exception $exception){
			throw new DataServiceException(__CLASS__,__FUNCTION__,'Technical Problem While retreiving the Creator Name with Id $createdBy',$exception);
		}
	}
	public function updateMessageLog($toLogFile){
		try{
			
			$theLogRawQuery = "insert into muln_messagelog ( fk_messageid,toemail,sent, createdon, createdby ) values (  ".$toLogFile['messageid'].", '".$toLogFile['mailid']."', ".$toLogFile['sent'].", now(), 1);";
			$queryResult = $this->dbConnection->executeInsert(PLATFORM_DB, $theLogRawQuery);
			return true;
		}
		catch (Exception $exception){
			throw new DataServiceException(__CLASS__,__FUNCTION__,'Technical Problem While retreiving the Creator Name with Id $createdBy',$exception);
		}
	}

	public function outMessageToLog($subject, $message, $mailCount, $messageType,$createdBy){
		try{
			$fetchType=  PDO::FETCH_ASSOC;
			$theLogRawQuery = "insert into muln_message (   `subject` , `message`, `type`, `createdon`, `createdby`, count  ) values 
			('".$subject."', '".$message."', '".$messageType."', now(), ".$createdBy.",".$mailCount.");";
			
			$queryResult = $this->dbConnection->executeInsert(PLATFORM_DB, $theLogRawQuery,$fetchType);
			return true;//$queryResult->lastInsertId();
		}
		catch (Exception $exception){
			throw new DataServiceException(__CLASS__,__FUNCTION__,'Technical Problem While inserting into MessageLog Table: ',$exception);
		}
	}
	
	public function getScheduledRepeatedJobs() {
	
		$fetchType=  PDO::FETCH_ASSOC;
		//echo $theRawQuery = "SELECT * FROM `muln_notification_scheduler` WHERE  starttime < UNIX_TIMESTAMP(now()) AND nextprocess < UNIX_TIMESTAMP(now()) -- and endtime > UNIX_TIMESTAMP(now())";
		echo $theRawQuery = "SELECT * FROM `muln_notification_scheduler` WHERE  starttime < UNIX_TIMESTAMP(now()) AND nextprocess < UNIX_TIMESTAMP(now()) ";
		$queryResult = $this->dbConnection->executeSelect(PLATFORM_DB, $theRawQuery,$fetchType);
		return $queryResult;
	}
	
	public function updateScheduledJob($updateParams) {
		
		$theUpdateQuery = "UPDATE  muln_notification_scheduler SET  lastprocessed = ".$updateParams['lastprocess']." , nextprocess = ".$updateParams['nextprocess']."  WHERE eid = ".$updateParams['eid'];
		$queryResult = $this->dbConnection->executeUpdate(PLATFORM_DB, $theUpdateQuery);
		return  true;
	}

	public function getEventById($eid){
		try{
			//$fetchType=  PDO::FETCH_ASSOC;
			$query = 'select * from muln_notification_event_queue where sentstatus = 0  AND eid = '.$eid;
			$con = Propel::getConnection(null, Propel::CONNECTION_READ);
			$stmt = $con->prepare($query);
			$stmt->execute();
			$result =	$stmt->fetchAll();
			return $result;
		}
		catch (Exception $exception){
			throw new DataServiceException(__CLASS__,__FUNCTION__,'Retriving payload Failed due to some technical problem',$exception);
		}
	
	}

	public function getStudentidsforLoginReminder($days, $user){
		try{
			$fetchType=  PDO::FETCH_COLUMN;
			$theRawQuery = "select p.personid from ".PLATFORM_DB_NAME.".muln_person p
						inner join ".DRUPAL_DB_NAME.".users u on u.uid = p.drupaluserid
						 and DATEDIFF(now(), from_unixtime(u.access)) > ".$days."
						where fk_primaryrole_roleid = ".$user;
			
			$queryResult 	=	$this->dbConnection->executeSelect(PLATFORM_DB, $theRawQuery,$fetchType);
			return $queryResult;
		}
		catch (Exception $exception){
			throw new DataServiceException(__CLASS__,__FUNCTION__,'Retriving payload Failed due to some technical problem',$exception);
		}
	
	}
	public function registerFailedPayload($payloadfailedparams){
		try{
 			$insertFailedPayload = "INSERT INTO muln_failedpayloadlog (eventtype, payload, message, createdby, createdon) VALUES
								('".$payloadfailedparams['eventtype']."', '".$payloadfailedparams['payload']."', '".$payloadfailedparams['message']."', ".$payloadfailedparams['createdby'].", '".$payloadfailedparams['createdon']."')";
			$insertQuery = $this->dbConnection->executeInsert(PLATFORM_DB, $insertFailedPayload);								
		}
		catch (Exception $exception){
			throw new DataServiceException(__CLASS__,__FUNCTION__,'Event Creation Failed due to some technical problem',$exception);
		}
	
	}
	/**
	Copied code
	*/
	
	public function getCommunityMembers($limit,$roleId,$communityId){
		try{
			if(!empty($communityId)){
			$fetchType=  PDO::FETCH_ASSOC;
				$in_query = implode(",", $communityId);
					$sql="select personid from muln_person
						join muln_communitymembership on personid = fk_personid where status = 1 and fk_communityid in( $in_query);";

				$queryResult 	=	$this->dbConnection->executeSelect(PLATFORM_DB, $sql,$fetchType);
				
				return $queryResult;
			}else {
				return array();
			}

		} catch (DataServiceException $e){
			throw new BusinessServiceException(__CLASS__,__FUNCTION__,$e,$e);
		}
	}		
	public function getContentBody($contentId){
		try{
			$fetchType=  PDO::FETCH_OBJ;
			$theRawQuery = "select dc.contentbody ,  con.dctitle, con.dcvalidfrom, con.dcvalidto, con.fk_contenttypeid,
									con.createdbyname, con.createdbyrolename
									from muln_content con
									inner join muln_dbcontent dc on fk_contentid =  con.contentid where con.contentid = ".$contentId;
			$queryResult 	=	$this->dbConnection->executeSelect(PLATFORM_DB, $theRawQuery,$fetchType);
			return $queryResult[0];
		} catch (DataServiceException $e){
			throw new BusinessServiceException(__CLASS__,__FUNCTION__,$e,$e);
		}
	}
	public function getSectionDetails($communityId){
		try{
			
			$fetchType=  PDO::FETCH_OBJ;
			
			$theRawQuery = "SELECT c.coursename,ci.courseinstancename, ci.displayname, co.fk_communitytypeid
			FROM muln_courseinstance ci
			inner join muln_community co on communityid = fk_courseinstanceid
			inner join muln_course c on  c.fk_courseid = ci.fk_courseid
					where fk_courseinstanceid in( $communityId);";
			/*
			 $theRawQuery = "SELECT ci.displayname, co.fk_communitytypeid FROM muln_courseinstance ci
							inner join muln_community co on communityid  =  fk_courseinstanceid
							where fk_courseinstanceid in( $communityId);";*/
			$queryResult 	=	$this->dbConnection->executeSelect(PLATFORM_DB, $theRawQuery,$fetchType);
			if($queryResult)
			return $queryResult[0];
else return false;

		} catch (DataServiceException $e){
			throw new BusinessServiceException(__CLASS__,__FUNCTION__,$e,$e);
		}
	}
		public function fetchRoleIdsUsingCommunityId($communityID){
	
		try{
			$fetchType=  PDO::FETCH_OBJ;
			$getRoles= "select distinct(fk_roleid) as roleid from muln_communitymembership where fk_communityid  = $communityID";
			$queryResult 	=	$this->dbConnection->executeSelect(PLATFORM_DB, $getRoles,$fetchType);
			return $queryResult;
			// // $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
			// return $result;
	
		}catch (PropelException $exception) {
			throw new DataServiceException(__CLASS__,__METHOD__,'Invalid details',$exception);
		}
	}	
	public function communityNotification($notifyCommunitiesOfEvent){
		try{
			$insertQuery = 
				"insert into muln_community_notification ( 
				fk_communityid, fk_roleid, notificationmessage, notificationType, targetURL, releasedOn, expiryOn, createdby, createdon, updatedby, updatedon) values 
				(
				".$notifyCommunitiesOfEvent['CommunityId'].",".
				$notifyCommunitiesOfEvent['RoleId'].",'".
				$notifyCommunitiesOfEvent['NotificationMessage']."', '".$notifyCommunitiesOfEvent['NotificationType']."', 
				'".$notifyCommunitiesOfEvent['targetURL']."', '".$notifyCommunitiesOfEvent['ReleasedOn']."', '".$notifyCommunitiesOfEvent['ExpiryOn']."', ".
				$notifyCommunitiesOfEvent['CreatedBy'].", '".$notifyCommunitiesOfEvent['CreatedOn']."', ".$notifyCommunitiesOfEvent['UpdatedBy'].", '".$notifyCommunitiesOfEvent['UpdatedOn']."')" ; 
				$insertSuccess 	=	$this->dbConnection->executeInsert(PLATFORM_DB, $insertQuery);
				return $insertSuccess;
		}catch (PropelException $exception) {
			throw new DataServiceException(__CLASS__,__METHOD__,'Invalid details Forced Malformed Query ',$exception);
		}
	}
	public function getAssessment($examId){
	
		try{
			$fetchType=  PDO::FETCH_OBJ;
			$getRoles= "select 
				examid, examtitle, fk_questionpaperid, fk_eventid, status, fk_releasecriteriaid, isgraded, maxattempt
				attemptsgrademethod, isprogresstrackenabled, targetrule, startdate, cutoffdate, duedate, 
				fk_questionpapertypeid, collaborationtype, releasecount, releasedto, iscalendareventrequired, createdbyname, 
				updatedbyname, createdby, createdon, updatedby, updatedon, deletedby, deletedon
			from muln_exam where examid  = $examId";
			$queryResult 	=	$this->dbConnection->executeSelect(PLATFORM_DB, $getRoles,$fetchType);
			return $queryResult;
		}catch (PropelException $exception) {
			throw new DataServiceException(__CLASS__,__METHOD__,'Invalid details',$exception);
		}
	}

	public function getCommunityForThisExam($examId){
		try{
			$fetchType=  PDO::FETCH_ASSOC;
			$getCommunitiesQuery= "select fk_communityid from muln_exam_community where fk_examid  in($examId)";
			$queryResult = $this->dbConnection->executeSelect(PLATFORM_DB, $getCommunitiesQuery,$fetchType);
			return $queryResult;
		}catch (PropelException $exception) {
			throw new DataServiceException(__CLASS__,__METHOD__,'Invalid details',$exception);
		}
	}
	/**
	This method returns the Criteria Collection  or the Object
	The Query need to be further Optimised -  due to Time Constraints.

	*/
	public function getCriteriaObject($rCriteriaId){
		try{
			$fetchType=  PDO::FETCH_OBJ;
			/*
			$getCriteriaObjectQuery= "select *
									from
									  muln_releasecriteria rc
									inner join
									  muln_releasecriteriatag rct on
									    fk_releasecriteriaid =  releasecriteriaid
									where releasecriteriaid = $rCriteriaId;";
									*/

$getCriteriaObjectQuery= "select *
									from
									  muln_releasecriteria rc
										where releasecriteriaid = $rCriteriaId;";
			
			$queryResult = $this->dbConnection->executeSelect(PLATFORM_DB, $getCriteriaObjectQuery,$fetchType);
			return $queryResult;
		}catch (PropelException $exception) {
			throw new DataServiceException(__CLASS__,__METHOD__,'Invalid details',$exception);
		}
	}


	public function getReleaseCriteriaTag($rCriteriaTagId){
		try{
			$fetchType=  PDO::FETCH_ASSOC;
			$getCommunitiesQuery= "SELECT * FROM `muln_releasecriteriatag` where fk_releasecriteriaid = $rCriteriaTagId";
//			$getCommunitiesQuery= "SELECT * FROM `muln_releasecriteriatag` where fk_releasecriteriaid = 1230";
			$queryResult = $this->dbConnection->executeSelect(PLATFORM_DB, $getCommunitiesQuery,$fetchType);
			return $queryResult;
		}catch (PropelException $exception) {
			throw new DataServiceException(__CLASS__,__METHOD__,'Invalid details',$exception);
		}
	}
	/**
		this is the Individual Notification 
	*/
	
	public function notifyEdunxtPerson($notifyPersonOfEvent){
		try {

			$notifyEdunxtPersonInsertQuery= "insert into muln_person_notification ( 	fk_personid,  notificationmessage, notificationType, targetURL, releasedOn, expiryOn, createdby,createdon, updatedby, updatedon )
				values("
					.$notifyPersonOfEvent['personid'] .", '". $notifyPersonOfEvent['notificationmessage'] ."', '". $notifyPersonOfEvent['notificationType']."',
					'".$notifyPersonOfEvent['targetURL']."', '".$notifyPersonOfEvent['releasedOn']."', '".$notifyPersonOfEvent['expiryOn']."', "
					.$notifyPersonOfEvent['createdby'].", '".$notifyPersonOfEvent['createdon']."', ".$notifyPersonOfEvent['updatedby'].", 	'".$notifyPersonOfEvent['updatedon']
				."')";
			$queryResult = $this->dbConnection->executeInsert(PLATFORM_DB, $notifyEdunxtPersonInsertQuery);
			return $queryResult;
		}catch (PropelException $exception) {
			throw new DataServiceException(__CLASS__,__METHOD__,'Invalid details',$exception);
		}
	}
	/** Temporary Function to get the Last Inserted Record Id */
	public function getLastInsertedRecordId($columnName =1, $tableName){
		try {
			$fetchType=  PDO::FETCH_OBJ;
			$notifyEdunxtPersonInsertQuery= "select count($columnName) as count from $tableName;";
			$queryResult = $this->dbConnection->executeSelect(PLATFORM_DB, $notifyEdunxtPersonInsertQuery,$fetchType);
			return $queryResult[0]->count;
		}catch (PropelException $exception) {
			throw new DataServiceException(__CLASS__,__METHOD__,'Invalid details',$exception);
		}
	}

	public function updateMessageCountWithActualCount($count, $messageId){
		try {
			$notifyEdunxtPersonUpdateQuery= "update muln_message set count=$count where messageid = $messageId;";
			$queryResult = $this->dbConnection->executeUpdate(PLATFORM_DB, $notifyEdunxtPersonUpdateQuery);
			return $queryResult;
		}catch (PropelException $exception) {
			throw new DataServiceException(__CLASS__,__METHOD__,'Invalid details',$exception);
		}
	}

	/**
	 * 
	 * @param unknown $createdBy
	 * @throws DataServiceException
	 * @return boolean
	 */
	public function getLoginName($personId){
		try {
			$fetchType=  PDO::FETCH_OBJ;
			$fetchLoginNameOfUser= "select fk_loginname from muln_person where personid =$personId;";
			$queryResult = $this->dbConnection->executeSelect(PLATFORM_DB, $fetchLoginNameOfUser,$fetchType);			
			return $queryResult;
		}catch (PropelException $exception) {
			throw new DataServiceException(__CLASS__,__METHOD__,'Invalid details',$exception);
		}
	}
	
	public function recordFailedMessages($to, $subject, $body, $type){
		
		$insertQuery = "insert into muln_failed_messagelog ( `to`, `subject`, `message`, `type`) values ('".$to."', '".$subject."', '".$body."', '".$type."')";
		$insertResult = $this->dbConnection->executeInsert(PLATFORM_DB, $insertQuery);
		return true;
	}
	/**
	 * Method Retreives the Failed Messages ordered by type .
	 */
	public function getFailedMessages($sendType){
		try{
			$fetchType=  PDO::FETCH_OBJ;
			$query = "select * from muln_failed_messagelog where `to` != '' and type = '$sendType' limit 1";
			$queryResult = $this->dbConnection->executeSelect(PLATFORM_DB, $query,$fetchType);
			return $queryResult;
		}catch (Exception $exception) {
			throw new DataServiceException(__CLASS__,__METHOD__,'Query Failed ',$exception->getMessage());
		}
		
	}
	
	public function getDomainURLPrefix($domainId){
		try{
			$fetchType=  PDO::FETCH_OBJ;
			$query = "select urlprefix, domainname from muln_domain where fk_domainid = ". $domainId;
			$queryResult = $this->dbConnection->executeSelect(PLATFORM_DB, $query,$fetchType);
			return $queryResult[0];
		}catch (Exception $exception) {
			throw new DataServiceException(__CLASS__,__METHOD__,'Query Failed ',$exception->getMessage());
		}
	}
	public function clearSuccessfulMessageFromLog($logerIdArray){
		try{
			$inParameter = join(',',$logerIdArray);
			$query = "delete from muln_failed_messagelog where failedmessagelogid in($inParameter)";
			$queryResult = $this->dbConnection->executeDelete(PLATFORM_DB, $query);
			return $queryResult[0];
		}catch (Exception $exception) {
			throw new DataServiceException(__CLASS__,__METHOD__,'Query Failed ',$exception->getMessage());
		}
	}
		public function getAssessmentDiscription($examId){
		try{
			$fetchType=  PDO::FETCH_ASSOC;
			$getCommunitiesQuery= "select contentbody from muln_exam  inner join muln_questionpaper on  questionpaperid = fk_questionpaperid
  							inner join muln_questionpaper_content con on  con.fk_questionpaperid = questionpaperid
  							inner join muln_dbcontent db on db.fk_contentid = con.fk_contentid
  							where examid = ".$examId."  ORDER BY con.fk_contentid DESC LIMIT 1";
			$queryResult = $this->dbConnection->executeSelect(PLATFORM_DB, $getCommunitiesQuery,$fetchType);
			return $queryResult;
		}catch (PropelException $exception) {
			throw new DataServiceException(__CLASS__,__METHOD__,'Invalid details',$exception);
		}
	}
	/**
	 * 
	 * @param unknown $groupCommunity
	 * @throws DataServiceException
	 * @return unknown
	 */
	public function getSectionMessage($groupCommunity){
		try{
			$fetchType=  PDO::FETCH_OBJ;
			$examCommunityObject= sprintf("select personname, examgroupname, communityname from muln_personexam where fk_examgroup_communityid ='%s'", $groupCommunity);
			$queryResult = $this->dbConnection->executeSelect(PLATFORM_DB, $examCommunityObject,$fetchType);
			return $queryResult[0];
		}
		catch (Exception $exception){
			throw new DataServiceException(__CLASS__,__FUNCTION__,'SSO Login Failed Some Exception: with credentials, ',$exception);
		}
	}

		/**
	 * insert reports for event
	 */
	
	public function writeToReports($reportsData){
		try {
				
			$reportsInsertQuery= "insert into muln_notification_reports ( fk_eid, mailtotalcount, mailfailcount, smstotalcount, smsfailcount, createdon )
				values(".$reportsData['eventId'] .", '". $reportsData['mailtotalcount'] ."', '". $reportsData['mailfailedcount'] ."', '". $reportsData['smstotalcount'] ."', '". $reportsData['smsfailedcount'] ."', '". $reportsData['createdon'] ."')";
			$queryResult = $this->dbConnection->executeInsert(PLATFORM_DB, $reportsInsertQuery);
			return $queryResult;
		}catch (PropelException $exception) {
			throw new DataServiceException(__CLASS__,__METHOD__,'Invalid details',$exception);
		}
	}
/**
	 * @param unknown $personId
	 * @throws DataServiceException
	 * @return unknown
	 */
	public function getUsersFromPersonTable($personId){
		try{
			$fetchType=  PDO::FETCH_OBJ;
			$query = "select * from muln_person where personid = $personId";
			$queryResult = $this->dbConnection->executeSelect(PLATFORM_DB, $query,$fetchType);
			return $queryResult[0];
		}catch (Exception $exception) {
			throw new DataServiceException(__CLASS__,__METHOD__,'Failed Fetching Details',$exception->getMessage());
		}
	}
	/**
	 * Users Login with Direct login
	 * @param unknown $uname
	 * @param unknown $pass
	 * @throws DataServiceException
	 * @return unknown
	 */
	public function authorizeUser($uname,$pass){
		try{
			$fetchType=  PDO::FETCH_ASSOC;
			$authorizeQuery= sprintf("SELECT uid,name FROM ".MASTER_DB_DRUPAL_DBNAME.".users where name='%s' and pass=md5('%s')", $uname,$pass);
			$queryResult = $this->dbConnection->executeSelect(PLATFORM_DB, $authorizeQuery,$fetchType);
			return $queryResult ;
			/*
			 $con = Propel::getConnection(null, Propel::CONNECTION_READ);
			$stmt = $con->prepare($theRawQuery);
			$stmt->execute();
			*/
		}
		catch (Exception $exception){
			throw new DataServiceException(__CLASS__,__FUNCTION__,'Login Failed Due to some unknown reason',$exception);
		}
	}
	/**
	 * Authorize with Sessions
	 * @param unknown $uname
	 * @param unknown $pass
	 * @throws DataServiceException
	 * @return unknown
	 */
	public function authorizeUserWithSSO($sessionId){
		try{
			$fetchType=  PDO::FETCH_ASSOC;
			$authorizeSSOQuery= sprintf("SELECT uid FROM ".MASTER_DB_DRUPAL_DBNAME.".sessions where sid='%s'", $sessionId);
			$queryResult = $this->dbConnection->executeSelect(PLATFORM_DB, $authorizeSSOQuery,$fetchType);
			return $queryResult;
		}
		catch (Exception $exception){
			throw new DataServiceException(__CLASS__,__FUNCTION__,'SSO Login Failed Some Exception: with credentials, ',$exception);
		}
	}	
	
	public function writeToMailQueue($finalmailQueueArray){
		try{
				
			if(!empty($finalmailQueueArray)){
				$theRawQuery = "insert into muln_notification_mailqueue (fk_eid, frommailid, tomailid, mailsubject, dynamicbodycontents, attachement) Values ";
				foreach ($finalmailQueueArray as $queueElement){
					$queueElement['dynamicbodycontents']=	str_replace("'", "\\'",$queueElement['dynamicbodycontents']);	
					$queueElement['subject']=	str_replace("'", "\\'",$queueElement['subject']);	
					$theRawQuery .= "(".$queueElement['fk_eid'].", '".$queueElement['from']."','".$queueElement['to']."', '".$queueElement['subject']."','".$queueElement['dynamicbodycontents']."', '".$queueElement['attachement']."'),";
				}
				$theRawQuerytrimmed	=	rtrim($theRawQuery, ",");
	
				$queryResult 	=	$this->dbConnection->executeInsert(PLATFORM_DB, $theRawQuerytrimmed);
					
			}
		}
		catch (Exception $exception){
			throw new DataServiceException(__CLASS__,__FUNCTION__,'Event Creation Failed due to some technical problem',$exception);
		}
	}
	
	public function writeTemplateforEvent($templateContent, $eventId){
		try{
			
			$templateContent	=	str_replace("'", "\\'",$templateContent);
			$theRawQuery = "insert into muln_notification_event2template (fk_eid, templatebodycontent, createdon) Values
								(".$eventId.", '".$templateContent."',now())";
			
			$queryResult 	=	$this->dbConnection->executeInsert(PLATFORM_DB, $theRawQuery);
		}
		catch (Exception $exception){
			throw new DataServiceException(__CLASS__,__FUNCTION__,'Event Creation Failed due to some technical problem',$exception);
		}
	}
	public function getSOPSubscribers($communityId){
		try{
			$fetchType=  PDO::FETCH_NUM;
			$theRawQuery = "select distinct fk_personid from muln_eventtracker where fk_communityid =  $communityId ;";
			$queryResult = $this->dbConnection->executeSelect(PLATFORM_DB, $theRawQuery,$fetchType);
			return $queryResult;
		} catch (Exception $exception){
			throw new DataServiceException(__CLASS__,__FUNCTION__,'Event Creation Failed due to some technical problem',$exception);
		}
	}
	
	public function getCurrentEvent($eid){
		try{
			$fetchType=  PDO::FETCH_ASSOC;
			$theRawQuery = "select payload from muln_notification_event_queue where eid = ".$eid;
			$queryResult 	=	$this->dbConnection->executeSelect(PLATFORM_DB, $theRawQuery, $fetchType);
			return $queryResult;
		}
		catch (Exception $exception){
			throw new DataServiceException(__CLASS__,__FUNCTION__,'Retriving payload Failed due to some technical problem',$exception);
		}
	
	}
	public function registerRepeatedEventRequest($data){
		try{
		
			$dataMap = json_decode($data->dataMap);
			$dataMap = ($dataMap->dataMap);

			$raiseRepeatedEventQuery = "insert into muln_notification_scheduler
								(type, payload, notificationlistener, repeateinterval, starttime, createdby, createdon, endtime)
							Values
								('".$data->type."', '".$data->dataMap."', '".$data->notificationlistener."', '".$data->repeateinterval."', ".strtotime($data->starttime).", ".$data->createdby.", '".$data->createdon."', ".strtotime($dataMap->endtime).")";
			
			$queryResult 	=	$this->dbConnection->executeInsert(PLATFORM_DB, $raiseRepeatedEventQuery);
		}
		catch (Exception $exception){
			throw new DataServiceException(__CLASS__,__FUNCTION__,'Event Creation Failed due to some technical problem',$exception);
		}
	}

	public function getNewEnrollments(){
		try{
			$fetchType=  PDO::FETCH_COLUMN;
			$fetchNewEnrollment = "select personid from muln_person where ( createdon > DATE_SUB(now(),INTERVAL ".ENROLLED_STUDENTS_CHECK_TIME." HOUR_MINUTE) ) and fk_primaryrole_roleid=1";
			$queryResult 	=	$this->dbConnection->executeSelect(PLATFORM_DB, $fetchNewEnrollment, $fetchType);
			return $queryResult;
		}
		catch (Exception $exception){
			throw new DataServiceException(__CLASS__,__FUNCTION__,'Retriving payload Failed due to some technical problem',$exception);
		}
	
	}
	/**
	 *  new enrollments for the Community
	 * @param unknown $communityId
	 * @param unknown $persons
	 * @throws DataServiceException
	 * @return multitype:
	 */
	public function getNewEnrollmentsFromCommunity($communityId, $persons){
		try{
			$fetchType=  PDO::FETCH_COLUMN;
			$fetchNewMembers = "select fk_personid from muln_communitymembership where fk_personid in ( $persons )  and fk_communityid = $communityId;";
			$queryResult = $this->dbConnection->executeSelect(PLATFORM_DB, $fetchNewMembers, $fetchType);
			return $queryResult;
		}
		catch (Exception $exception){
			throw new DataServiceException(__CLASS__,__FUNCTION__,'Retriving payload Failed due to some technical problem',$exception);
		}
	}	
	/**
	 * list all available SOP's for this Community
	 * @param unknown $communityId
	 * @throws DataServiceException
	 * @return multitype:
	 */
	public function getAvailableSOPEvents($communityId){
		try{
			$fetchType=  PDO::FETCH_ASSOC;

			$fetchNewEvents = "select eventname, description, date_format(e.startdatetime,'%b %d %Y %h:%i %p') as startdate,
			date_format(e.enddatetime,'%b %d %Y %h:%i %p') as enddate, e.createdby , e.eventchoicelist as url
			from muln_event e where e.fk_eventtypeid = 3 and  e.startdatetime > now()";
			$queryResult = $this->dbConnection->executeSelect(PLATFORM_DB, $fetchNewEvents , $fetchType);
			return $queryResult;
		}
		catch (Exception $exception){
			throw new DataServiceException(__CLASS__,__FUNCTION__,'Retriving payload Failed due to some technical problem',$exception);
		}
	}
	public function getCreatorProfileImagePath($createdBy){
		$fetchType = PDO:: FETCH_COLUMN;
		$profileQuery= "select concat(uri,physicalfilename) as filepath from muln_file inner join muln_person p on fk_profileimage_fileid = fileid where personid = $createdBy";
		$queryResult = $this->dbConnection->executeSelect(PLATFORM_DB, $profileQuery,$fetchType);
		return $queryResult[0];
	}
	
	public function listEnrolledCommunities($personId){
		try{
			$fetchType=  PDO::FETCH_COLUMN;
			$fetchUserCommunities = "select fk_communityid from muln_communitymembership join muln_courseinstance on fk_courseinstanceid = fk_communityid where fk_personid =  $personId and fk_roleid = ".STUDENT;
			$userCommunities = $this->dbConnection->executeSelect(PLATFORM_DB, $fetchUserCommunities, $fetchType);
			return $userCommunities;
		}
		catch (Exception $exception){
			throw new DataServiceException(__CLASS__,__FUNCTION__,'Retriving payload Failed due to some technical problem',$exception);
		}
	}
	public function getSOPCommunityMembers($limit,$roleId,$communityId){
		try{
			if(!empty($communityId)){
				$fetchType=  PDO::FETCH_ASSOC;
				$in_query = implode(",", $communityId);
				$sql="select personid from muln_person
				join muln_communitymembership on personid = fk_personid where status = 1 and fk_communityid in( $in_query) and fk_primaryrole_roleid=$roleId;";
	
				$queryResult 	=	$this->dbConnection->executeSelect(PLATFORM_DB, $sql,$fetchType);
	
				return $queryResult;
			}else {
				return array();
			}
	
		} catch (DataServiceException $e){
			throw new BusinessServiceException(__CLASS__,__FUNCTION__,$e,$e);
		}
	}	
}