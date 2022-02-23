<?php

/**
 * @author Pejman Kheyri
 * @author Pejman Kheyri <pejmankheyri@gmail.com>
 * @copyright © 2018 The Ide Pardazan (ipe.ir) PHP Group. All rights reserved.
 * @link http://sms.ir/ Documentation of sms.ir RESTful API PHP sample.
 * @version 1.2
 */

try {
	
	date_default_timezone_set("Asia/Tehran");
	
	include_once("Classes/SendMessage.php");

	// your sms.ir panel configuration

	

	
	// sending date
	@$SendDateTime = date("Y-m-d")."T".date("H:i:s");

	$SmsIR_SendMessage = new SmsIR_SendMessage($APIKey,$SecretKey,$LineNumber);
	$SendMessage = $SmsIR_SendMessage->SendMessage($MobileNumbers,$Messages,$SendDateTime);
	 //var_dump($SendMessage);
	
} catch (Exeption $e) {
	echo 'Error SendMessage : '.$e->getMessage();
}

?>