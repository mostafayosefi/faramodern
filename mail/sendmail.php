 
<?php

$code= $_GET['code'];
$to= $_GET['email'];

    ini_set( 'display_errors', 1 );
    error_reporting( E_ALL );
    $from = "mail@iranpay.biz"; 
    $subject = "ایران پی _ وریفای ایمیل"; 
    $message = " کد فعالسازی ایمیل : ".$code;
    $headers = "From:" . $from; ?>
    
 
     <?php
    mail($to,$subject,$message, $headers);
    echo "The email message was sent.";
?>

 