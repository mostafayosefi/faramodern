<?php
ob_start();
session_start();

$servername = "localhost"; 
$username = "shop724_infoshop"; 
$password = 'USssLP8SEnt['; 
$dbname = "shop724_shopinfo";  

  
$user = $username;
$pass = $password;
$charset = 'utf8';
$options = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES   => false,
];
$dsn = "mysql:host=$servername;dbname=$dbname;charset=$charset";
try {
     $pdo = new PDO($dsn, $user, $pass, $options);
} catch (\PDOException $e) {
     throw new \PDOException($e->getMessage(), (int)$e->getCode());
}

		 	?>

<?php

echo 'salam';




$id=6; 

$_SESSION['type']='1';
$stmt = $pdo->query("SELECT * FROM order  WHERE order_id != 0 && `order_id`='".$id."' ORDER BY  order_id DESC LIMIT 1");
while ($row = $stmt->fetch()) {
 
    
     $finical_pay=$row['order_price'];   
     $_SESSION['jam']=$finical_pay; 
     $_SESSION['order_rnd']=$row['order_rnd']; 
 
    
echo $row['order_rnd'];
}



 ?>


 