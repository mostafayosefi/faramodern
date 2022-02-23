<?php 



$id=(int)$_GET['id'];  


require_once '../connect/tconn.php';

$MerchantID = '52679960-c19b-11e8-8fa8-000c295eb8fc';


 
 
$handle = curl_init();
 
 // https://www.mehrnews.com/rss?pl=1
 //https://www.mehrnews.com/rss
 //http://www.evaz-shahrdari.ir//RSS.php
 
//$url = "https://www.mehrnews.com/rss?pl=1";

// http://localhost/shopinfo/
// https://shop724.info/

$url = $urlindex."fechord/".$id; 
curl_setopt($handle, CURLOPT_URL, $url); 
curl_setopt($handle, CURLOPT_RETURNTRANSFER, true);
$output = curl_exec($handle);
curl_close($handle);
 

 //echo $output;
 
 
 $output=$output."/END";
 
 
 if($output=='false'){
 	
 } else {
 	
 
 
 // echo ':eemail:'.$Email.':mmobile:'.$Mobile.':nname:'.$Description.':aamount:'.$Amount.':ttoken:'.$rnd;	
 
 $a = explode(":eemail:", $output);  
 $a0 = explode(":mmobile:", $a['1']);   
 $Email=$a0['0'];
 
 
 $b = explode(":mmobile:", $output);  
 $b0 = explode(":nname:", $b['1']);   
 $Mobile=$b0['0'];
 
 
 $c = explode(":nname:", $output);  
 $c0 = explode(":aamount:", $c['1']);   
 $Description=$c0['0'];
 
 
 $d = explode(":aamount:", $output);  
 $d0 = explode(":ttoken:", $d['1']);   
 $Amount=$d0['0'];
 $Amount=$Amount/10;
 
 $e = explode(":ttoken:", $output);  
 $e0 = explode("/END", $e['1']);   
 $ttoken=$e0['0'];
  
  
 
 
    $CallbackURL = $urlindex.'zarinpalpdo/verify.php?id='.$ttoken.'&&price='.$Amount;  
    $client = new SoapClient('https://www.zarinpal.com/pg/services/WebGate/wsdl', ['encoding' => 'UTF-8']);

    $result = $client->PaymentRequest([
        'MerchantID'     => $MerchantID,
        'Amount'         => $Amount,
        'Description'    => $Description,
        'Email'          => $Email,
        'Mobile'         => $Mobile,
        'CallbackURL'    => $CallbackURL,
    ]);

  
  
    if ($result->Status == 100) {
        header('Location: https://www.zarinpal.com/pg/StartPay/'.$result->Authority);
    } else {
        echo'ERR: '.$result->Status;
    } 
 
 
 
 //echo $output;
 
 
  }
 

?>