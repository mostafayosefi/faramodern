<?php 

 $id=$_GET['id'];


require_once '../connect/tconn.php';

 

$alink=$urlindex."getwaypay/2"; 
$handle = curl_init();
curl_setopt($handle, CURLOPT_URL, $alink); 
curl_setopt($handle, CURLOPT_RETURNTRANSFER, true);
$output = curl_exec($handle);
curl_close($handle);
//echo ($output);


 

 $a = explode(":getway_merchent:", $output);   
 $a0 = explode(":getway_", $a['1']);     
 $getway_merchent=$a0['0'];
 
 

 $a = explode(":getway_uid:", $output);   
 $a0 = explode(":getway_", $a['1']);     
 $getway_uid=$a0['0'];
  


 $a = explode(":getway_token:", $output);   
 $a0 = explode(":getway_", $a['1']);     
 $getway_token=$a0['0'];
 


 $a = explode(":getway_apikey:", $output);   
 $a0 = explode(":getway_", $a['1']);   
 $getway_apikey=$a0['0'];

 $a = explode(":getway_terminalid:", $output); 
 $a0 = explode(":getway_", $a['1']);   
 $getway_terminalid=$a0['0'];
 

echo $getway_uid;


$alink=$urlindex."rndfinic/".$id; 
$handle = curl_init();
curl_setopt($handle, CURLOPT_URL, $alink); 
curl_setopt($handle, CURLOPT_RETURNTRANSFER, true);
$output = curl_exec($handle);
curl_close($handle);


    


 
 
 $a = explode(":user_tell:", $output); 
 $a0 = explode(":finical_", $a['1']);   
 $user_tell=$a0['0'];

 $a = explode(":finical_pay:", $output); 
 $a0 = explode(":finical_", $a['1']);   
 $finical_pay=$a0['0'];

 $finical_pay=$finical_pay*10;

//$callback='https://api.moneyar.com/SIPG/MerchantLandingTest.aspx'; 
$callback='https://api.moneyar.com/SIPG/MerchantLandingTest.aspx';
 
$post = json_encode(array(
    'amount' => $finical_pay, 
    'callbackurl' => $urlindex.'maniyar/callback.php?id='.$id, 
    'destinationuid' => $getway_uid, 
    'usermobile' => $user_tell, 
    'resnum' => $id,  
));
 

$token='Bearer '.$getway_token;

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, "https://api.moneyar.com/payment/merchant/Payment");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_HEADER, 1);
curl_setopt($ch, CURLOPT_POSTFIELDS, $post);
curl_setopt($ch, CURLOPT_HTTPHEADER, array(
    'Content-Type: application/json',
    'Content-Length: '.strlen($post),
    'Authorization: '.$token
));
$output = curl_exec($ch);
curl_close($ch);



 
 $a = explode('paymentlink":"', $output);   
 $a0 = explode('"}', $a['1']);   
 $paymentlink=$a0['0'];

 
 header("location:$paymentlink");
 
 
 
?>