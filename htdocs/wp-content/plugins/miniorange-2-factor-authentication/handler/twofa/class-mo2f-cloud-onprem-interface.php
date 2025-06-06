<?php
/** The miniOrange enables user to log in through mobile authentication as an additional layer of security over password.
 * Copyright (C) 2015  miniOrange
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>
 *
 * @package        miniorange-2-factor-authentication/handler
 * @license        http://www.gnu.org/copyleft/gpl.html MIT/Expat, see LICENSE.php
 */

namespace TwoFA\Handler\Twofa;

use TwoFA\Traits\Instance;
use TwoFA\Helper\MoWpnsConstants;
use TwoFA\Handler\Twofa\Miniorange_Password_2Factor_Login;

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly.
}

require_once dirname( dirname( dirname( __FILE__ ) ) ) . DIRECTORY_SEPARATOR . 'helper' . DIRECTORY_SEPARATOR . 'class-mo2f-api.php';


if ( ! class_exists( 'MO2f_Cloud_Onprem_Interface' ) ) {
	/**
	 * This library is interface between cloud code and onprem code.
	 **/
	class MO2f_Cloud_Onprem_Interface {

		use Instance;

		/**
		 * Default customer key
		 *
		 * @var string
		 */
		private $default_customer_key = '16555';

		/**
		 * Default api key
		 *
		 * @var string
		 */
		private $default_api_key = 'fFd2XcvTGDemZvbw1bcUesNJWEqKbbUq';

		/**
		 * Instanciation of a class.
		 *
		 * @var object
		 */
		private $class_object;

		/**
		 * Plugin type
		 *
		 * @var array
		 */
		private $plugin_type_to_class = array(
			'Mo2f_OnPrem' => 'TwoFA\OnPrem\Mo2f_Onprem_Setup',
			'Mo2f_Cloud'  => 'TwoFA\Cloud\Customer_Cloud_Setup',
		);
		/**
		 * Plan methods
		 *
		 * @var array
		 */
		public $mo2f_plan_methods;

		/**
		 * Constructor of the class.
		 */
		public function __construct() {
			$mo2f_plugin_type   = MO2F_IS_ONPREM ? 'Mo2f_OnPrem' : 'Mo2f_Cloud';
			$plugin_type        = $this->plugin_type_to_class[ $mo2f_plugin_type ];
			$this->class_object = $plugin_type::instance();
		}
		/**
		 * Undocumented function
		 *
		 * @return array
		 */
		public function mo2f_plan_methods() {
			return $this->class_object->mo2f_plan_methods();
		}

		/**
		 * Function to send otp token.
		 *
		 * @param string $phone Phone.
		 * @param string $email Email ID.
		 * @param string $auth_type Authentication method of the user.
		 * @param object $currentuser Contains details of current user.
		 * @return array
		 */
		public function send_otp_token( $phone, $email, $auth_type, $currentuser = null ) {
			$content = $this->class_object->send_otp_token( $phone, $email, $auth_type, $currentuser );
			return $content;
		}

		/**
		 * Function to validate the otp token.
		 *
		 * @param string $auth_type Authentication method of user.
		 * @param string $username Username of user.
		 * @param string $transaction_id Transaction id which is used to validate the sent otp token.
		 * @param string $otp_token OTP token received by user.
		 * @param object $current_user Contains details of current user.
		 * @return string
		 */
		public function validate_otp_token( $auth_type, $username, $transaction_id, $otp_token, $current_user = null ) {

			$content = $this->class_object->validate_otp_token( $auth_type, $username, $transaction_id, $otp_token, $current_user );
			return $content;
		}

		/**
		 * This function validate google auth code
		 *
		 * @param string $useremail user email.
		 * @param string $otptoken otp token.
		 * @param string $secret secret.
		 * @return string
		 */
		public function mo2f_validate_google_auth( $useremail, $otptoken, $secret ) {
			$content = $this->class_object->mo2f_google_auth_validate( $useremail, $otptoken, $secret );
			return $content;
		}

		/**
		 * Function to update user details.
		 *
		 * @param int     $user_id user id.
		 * @param string  $config_status 2FA configuration status.
		 * @param string  $twofa_method 2FA method.
		 * @param string  $user_registration User registration status.
		 * @param string  $twofa_reg_status 2FA registration.
		 * @param boolean $twofa_by_user 2FA enabled by user.
		 * @param string  $email Email.
		 * @param string  $phone Phone.
		 * @param string  $whatsapp WhatsApp number.
		 * @param string  $transaction_name Transaction name.
		 * @param boolean $enable_admin_2fa 2FA enabled of admin.
		 * @return mixed
		 */
		public function mo2f_update_user_info( $user_id, $config_status, $twofa_method, $user_registration, $twofa_reg_status, $twofa_by_user, $email, $phone = null, $whatsapp = null, $transaction_name = null, $enable_admin_2fa = null ) {
			$response = $this->class_object->mo2f_update_user_info( $user_id, $config_status, $twofa_method, $user_registration, $twofa_reg_status, $twofa_by_user, $email, $phone, $whatsapp, $transaction_name, $enable_admin_2fa );
			return $response;
		}

		/**
		 * Function to register the kba information with miniOrange.
		 *
		 * @param string $email Email id of user.
		 * @param array  $kba_ques_ans questions and answers.
		 * @param int    $user_id Id of user.
		 * @return string
		 */
		public function mo2f_register_kba_details( $email, $kba_ques_ans, $user_id = null ) {
			$response = $this->class_object->mo2f_cloud_register_kba( $email, $kba_ques_ans, $user_id );

			return $response;

		}

		/**
		 * It will handle kba validation
		 *
		 * @param object $currentuser current user .
		 * @param string $mo2f_second_factor Twofa method.
		 * @param string $redirect_to It will carry the redirect url.
		 * @param string $session_id It will carry the session id .
		 * @return mixed
		 */
		public function mo2f_pass2login_kba_verification( $currentuser, $mo2f_second_factor, $redirect_to, $session_id ) {
			$pass2fa_login = new Miniorange_Password_2Factor_Login();
			if ( is_null( $session_id ) ) {
				$session_id = $pass2fa_login->create_session();
			}
			$content = $this->class_object->mo2f_login_kba_verification( $currentuser->ID, $session_id, $redirect_to );
			return $content;
		}

		/**
		 * Get Google authentication secret key
		 *
		 * @param int    $user_id User ID.
		 * @param string $email User email.
		 * @param string $ga_secret Google authenticator secret key.
		 * @return mixed
		 */
		public function mo2f_set_gauth_secret( $user_id, $email, $ga_secret ) {
			$content = $this->class_object->mo2f_set_gauth_secret( $user_id, $email, $ga_secret );
			return $content;
		}

		/**
		 * Google Authenticator setup parameters
		 *
		 * @param object $user wp user.
		 * @param string $session_id session id.
		 * @return void
		 */
		public function mo2f_google_auth_setup( $user, $session_id ) {
			$this->class_object->mo2f_gauth_setup( $user, $session_id );
		}

		/**
		 * Login flow for push notifications and email verification
		 *
		 * @param object $current_user Current user.
		 * @param string $mo2f_second_factor 2FA method of a user.
		 * @param string $email User email.
		 * @return mixed
		 */
		public function mo2f_send_link( $current_user, $mo2f_second_factor, $email ) {
			MO2f_Utility::mo2f_debug_file( 'Email verification link has been sent successfully for ' . $mo2f_second_factor . ' User_Id-' . $current_user->ID . ' Email-' . $current_user->user_email );
			$content = $this->class_object->mo2f_send_verification_link( $email, $mo2f_second_factor, $current_user );
			return $content;
		}

		/**
		 * Gets the script for dashboard.
		 *
		 * @param string $request_type 2FA method of a user.
		 * @param string $transaction_id User email.
		 * @return mixed
		 */
		public function mo2f_oobe_get_dashboard_script( $request_type, $transaction_id ) {
			$content = $this->class_object->mo2f_oobe_get_dashboard_script( $request_type, $transaction_id );
			return $content;
		}

		/**
		 * Gets the script.
		 *
		 * @param string $request_type 2FA method of a user.
		 * @param string $transaction_id User email.
		 * @return mixed
		 */
		public function mo2f_oobe_get_login_script( $request_type, $transaction_id ) {
			$content = $this->class_object->mo2f_oobe_get_login_script( $request_type, $transaction_id );
			return $content;
		}

		/**
		 * Email verification call to miniorange idp.
		 *
		 * @param object $current_user Current logged in user object.
		 * @return void
		 */
		public function mo2f_email_verification_call( $current_user ) {
			$this->class_object->mo2f_email_verification_call( $current_user );

		}
		/**
		 * Set email verification for user.
		 *
		 * @param object $current_user currently logged in user object.
		 * @param string $selected_method Selected 2fa method by user.
		 * @return array
		 */
		public function mo2f_set_oob_email( $current_user, $selected_method ) {

			$response = $this->class_object->mo2f_cloud_set_oob_email( $current_user, $selected_method );
			return is_array( $response ) ? array(
				'mo2fa_login_status'  => $response['mo2fa_login_status'],
				'mo2fa_login_message' => $response['mo2fa_login_message'],
			) : null;
		}
		/**
		 * Set OTP over email method for a user.
		 *
		 * @param object $current_user user object.
		 * @param string $selected_method selcted 2fa method.
		 * @param string $session_id_encrypt encrypted session id.
		 * @param string $redirect_to redirect url.
		 * @return mixed
		 */
		public function mo2f_set_otp_over_email( $current_user, $selected_method, $session_id_encrypt, $redirect_to ) {

			$response = $this->class_object->mo2f_set_otp_over_email( $current_user, $selected_method, $session_id_encrypt, $redirect_to );

			return is_array( $response ) ? array(
				'mo2fa_login_status'  => $response['mo2fa_login_status'],
				'mo2fa_login_message' => $response['mo2fa_login_message'],
			) : null;
		}
		/**
		 * Set google authenticator for a user
		 *
		 * @param object $current_user user object.
		 * @param string $selected_method selected 2FA method.
		 * @param string $google_account_name Google authenticator app name.
		 * @param string $session_id_encrypt encrypted session id.
		 * @return mixed
		 */
		public function mo2f_set_google_authenticator( $current_user, $selected_method, $google_account_name, $session_id_encrypt ) {

			$response = $this->class_object->mo2f_set_google_authenticator( $current_user, $selected_method, $google_account_name, $session_id_encrypt );
			return is_array( $response ) ? array(
				'mo2fa_login_status'  => $response['mo2fa_login_status'],
				'mo2fa_login_message' => $response['mo2fa_login_message'],
			) : null;
		}
		/**
		 * Set 2fa method for a user
		 *
		 * @param object $current_user currently logged in user.
		 * @param string $selected_method 2fa method seleced by user.
		 * @return mixed
		 */
		public function mo2f_set_user_two_fa( $current_user, $selected_method ) {
			$response = $this->class_object->mo2f_set_user_two_fa( $current_user, $selected_method );
			return is_array( $response ) ? array(
				'mo2fa_login_status'  => $response['mo2fa_login_status'],
				'mo2fa_login_message' => $response['mo2fa_login_message'],
			) : null;
		}

		/**
		 * Lockedoutlink
		 *
		 * @return string
		 */
		public function locked_out_link() {
			if ( MO2F_IS_ONPREM ) {
				return MoWpnsConstants::ONPREMISELOCKEDOUT;
			} else {
				return MoWpnsConstants::CLOUDLOCKOUT;
			}
		}
		/**
		 * Set google authenticator on WordPress user profile.
		 *
		 * @param object $user user object.
		 * @return mixed
		 */
		public function mo2f_user_profile_ga_setup( $user ) {
			return $this->class_object->mo2f_user_profile_ga_setup( $user );
		}
		/**
		 * Get 2FA method of a user.
		 *
		 * @param object $user user object.
		 * @return mixed
		 */
		public function mo2f_get_user_2ndfactor( $user ) {
			return $this->class_object->mo2f_get_user_2ndfactor( $user );
		}

	}
	new MO2f_Cloud_Onprem_Interface();
}
