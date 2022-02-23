 <?php
   ob_start();
session_start();		
include 'connect.php'; 	?>
<?php 
 
$MerchantID = 'b747c2c0-bb64-11e8-9798-000c295eb8fc';

 
$stmt = $pdo->query("SELECT * FROM order  WHERE order_id != 0 && `order_rnd`='".$_SESSION['order_rnd']."' ORDER BY  order_id DESC LIMIT 1");
while ($row = $stmt->fetch()) { 

$Email=$row['order_email'];  $Mobile=$row['order_tell'];   $Description=$row['order_name']; 
    
}

   // $MerchantID = 'b747c2c0-bb64-11e8-9798-000c295eb8fc';


    $Amount = $_SESSION['jam']; //Amount will be based on Toman  - Required
    
    if($Amount < 100){
  header("location:../client/user/payment/error"); 
	}
     
 
    $CallbackURL = 'https://shop724.info/zarinpalpdo/verify.php';  // Required

    // URL also can be ir.zarinpal.com or de.zarinpal.com
    $client = new SoapClient('https://www.zarinpal.com/pg/services/WebGate/wsdl', ['encoding' => 'UTF-8']);

    $result = $client->PaymentRequest([
        'MerchantID'     => $MerchantID,
        'Amount'         => $Amount,
        'Description'    => $Description,
        'Email'          => $Email,
        'Mobile'         => $Mobile,
        'CallbackURL'    => $CallbackURL,
    ]);

    //Redirect to URL You can do it also by creating a form
    
   
    if ($result->Status == 100) {
        header('Location: https://www.zarinpal.com/pg/StartPay/'.$result->Authority);
    } else {
        echo'ERR: '.$result->Status;
    } 
 
    
    //echo $MerchantID;