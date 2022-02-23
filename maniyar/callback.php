<?php 


require_once '../connect/tconn.php';


 $id=$_GET['id'];
 
 $Uid=$_POST['Uid']; 
 $Status=$_POST['Status'];
 $tracenumber=$_POST['tracenumber'];
 
 /*
  echo 'id='.$id.'<br>';
  echo 'Uid='.$Uid.'<br>';
  echo 'Status='.$Status.'<br>';
  echo 'tracenumber='.$tracenumber.'<br>'; 
*/

if($Status=='OK'){
	
	
	 
 header("location:../payorderok/".$id.'/'.$id.'/'.$Uid); 
}else{
	 
  header("location:../payorderok/error/".$id."/NON"); 
}

?>