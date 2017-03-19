<?php
/**
*
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
* Description	 : This file acts as a handler to access authorization data from network media
*
*/

class StoredSessionHandler {

/**
* Method to hold data into the database
* @param unknown_type $user_id
* @param unknown_type $data
*/
		function store_hybridauth_session( $user_id, $data ){

			$networkConnection = new TblUsersConnections;
			$networkConnection->user_id=$user_id;
			$networkConnection->hybridauth_session=$data;
			$networkConnection->updated_at= new CDbExpression('NOW()');
			$networkConnection->save();
			return true;
		}
		/**
		 * Retreives the session from the database
		 * @param unknown_type $user_id
		 * @return boolean
		 */

		function get_stored_hybridauth_session( $user_id, $provider, $sessionIdentifier ){
			$config =  './protected/config/hoauth.php';
			require_once( "./protected/extensions/hoauth/hybridauth/Hybrid/Auth.php" );
			$hybridauth = new Hybrid_Auth( $config );

			$sessonData = UserOauthSessions::model()->findByAttributes(
							array('user_id'=>$user_id,
									'provider'=>$provider,
									'identifier'=>$sessionIdentifier)
			);
			if(isset($sessonData )){
				$data = $hybridauth -> restoreSessionData($sessonData->session_data );
				$profileData = unserialize($sessonData->profile_cache);
				return $profileData;
			}
			return false;
		}
	}
?>