<?php
 
$MerchantID = '52679960-c19b-11e8-8fa8-000c295eb8fc';

 $id = $_GET['id']; 
 $price = $_GET['price']; 

 


 $Authority = $_GET['Authority']; 
 if ($_GET['Status'] == 'OK') {
 // URL also can be ir.zarinpal.com or de.zarinpal.com
 $client = new SoapClient('https://www.zarinpal.com/pg/services/WebGate/wsdl', ['encoding' => 'UTF-8']);
 $result = $client->PaymentVerification([
            'MerchantID'     => $MerchantID,
            'Authority'      => $Authority,
            'Amount'         => $price,
        ]);
        
 ?>       
        
 <?php
 if ($result->Status == 100) {

 
 
  
  header("location:../payorderok/".$id.'/'.$Authority.'/'.$result->RefID); 
	       
} else if ($result->Status != 100){
	  
  header("location:../payorderok/error/".$Authority.'/NON'); 
}
 
}
 


if ($_GET['Status'] != 'OK'){
	
	 
  header("location:../payorderok/error/".$Authority.'/NON'); 
	 }
	



 
 
  ?>
 
          