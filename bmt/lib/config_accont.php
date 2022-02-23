<?php
//=======================================================================
//                     تنظیمات اتصال سایت                               |
//                                                                      |
//----------------------------------------------------------------------|
/**/error_reporting(0);									  		    /*|
//           نام کاربری سایت خود را وارد کنید                  		  /*|
/**/$username='root';												  /*|
//            کلمه عبور سایت خود را وارد کنید                 		  /*|
/**/$password='root';													  /*|
//=======================================================================
//                     تنظیمات اتصال سرور بانک ملت                      |
//                                                                      |
//----------------------------------------------------------------------|
//         نام بانک اطلاعاتی سایت خود را وارد کنید 					  /*|
/**/$database='buyturkey';										   


  $_link=mysql_connect("localhost:81",$username,$password);
     mysql_select_db($database,$_link);
	  mysql_query("SET NAMES utf8");
    mysql_query("SET CHARACTER SET utf8");
	 mysql_set_charset('utf8');	




//						 ترمینال ID									  /*|
/**/$terminalId = '699700';												 /*|
//				 نام کاربری درگاه اینترنتی							  /*|
/**/$userName = 'atinegar';												   /*|
// 					رمز عبور درگاه اینترنتی							  /*|
/**/$userPassword = '80661';													/*|
//			آدرس فایل پس از پرداخت پول از بانک ملت به هاست شما 		  /*|
/**/$CallBack = 'http://kargo.biz/buyturkey/bmt/callback.php';/*|
//                                                		                |
//=======================================================================
/**/function connect($username,$password,$database){				  /*|
/**/$connection=mysql_connect('localhost:81',$username,$password);	    /*|
/**/$database_select=mysql_select_db($database,$connection);		   /*|
/**/}																 /*|
//=======================================================================
*/



?>