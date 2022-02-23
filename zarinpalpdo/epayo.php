<?php
ob_start();
session_start();		
include 'connect.php';	 	?>

<?php
$id=(int)$_GET['id']; 

$_SESSION['type']='1';
$stmt =     $pdo->query("SELECT * FROM order  WHERE order_id != 0 && `order_rnd`='".$id."' ORDER BY  order_id DESC LIMIT 1");
while ($row = $stmt->fetch()) {
 
    
     $finical_pay=$row['order_price'];   
     $_SESSION['jam']=$finical_pay; 
     $_SESSION['order_rnd']=$row['order_rnd']; 
 
    
}

 

 
if($j=='0'){
 header("location:../user/errorfinical");   
} else if($j!='0') {
  //echo    $_SESSION['mar_status'];  
 header("location:request.php");
}

 ?>


 