<?php

/**
* @version 1.0
* @copyright	 :
* @author	 : Sunil Kumar <kumar.sunnyil@gmail.com>
* Created By	 : Sunil Kumar
* Created On	 :
* Modified By	 :
* Modified On	 :
* Reviewed On	 :
* Reviewed By	 : Sunil Kumar
* Reviewer Comments	 :
* Description	 : This file act as handler to maintain the session
*
*/

class AppSessionHandler {
		
		private $handler;

		public function __construct(){
			$this->handler = new StoredSessionHandler;
		}
		
		public function getMaintainSession(){

			$sessionIdentifier = 2987691269;
			$provider = NetWorkConstants::PROVIDER_NETWORK_TWITTER;
			$userId = Yii::app ()->user->getId ();

			$sessionExists = $this->handler->get_stored_hybridauth_session($userId,$provider,$sessionIdentifier);
			if($sessionExists){
				return true; 
			}
		}		
}


?>