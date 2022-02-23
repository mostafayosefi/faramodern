 <?php
   ob_start();
session_start();		
include '../bmt/lib/config_accont.php';	 	?>

<?php
$id=(int)$_GET['id'];

 $_SESSION['mar_status']=NULL;
 $_SESSION['finical_marid']=NULL;
 $_SESSION['finicalid']=NULL;



$posts_sql="select *  FROM finicals WHERE id != 0 && `id`='".$id."' ORDER BY  id DESC LIMIT 1";
 $posts_result = mysql_query($posts_sql); $j=0; 
 while($posts_row = mysql_fetch_assoc($posts_result)){ $j++;
 $finical_iduser=$posts_row['finical_iduser'];  $finical_pay=$posts_row['finical_pay'];   $_SESSION['jam']=$finical_pay/10;    $finical_payment=$posts_row['finical_payment'];  $finicalid=$posts_row['id'];  $_SESSION['finicalid']=$finicalid;  $_SESSION['finical_marid']=$posts_row['finical_marid']; }
 
 

$posts_sql="select *  FROM marsole WHERE id != 0 && `id`='".$_SESSION['finical_marid']."' ORDER BY  id DESC  LIMIT 1";
 $posts_result = mysql_query($posts_sql); $k=0; 
 while($posts_row = mysql_fetch_assoc($posts_result)){ $k++;
 
 
 $mar_crdflg=$posts_row['mar_crdflg'];   $mar_status=$posts_row['mar_status'];  

 
 
 }
 
  
 
    if($mar_status<'5'){ 
  if($mar_crdflg=='1'){     $mar_status='7'; }  
  if($mar_crdflg=='0'){     $mar_status='2'; } }
     else if($mar_status>'4'){  
     
  if($mar_crdflg=='1'){     $mar_status=$mar_status+1;      }  
  if($mar_crdflg=='0'){     $mar_status=$mar_status+1;	    }
        }
 
  $_SESSION['mar_status']=$mar_status;
 
 
$posts_sql="select *  FROM user WHERE id != 0 && `id`='".$finical_iduser."' ORDER BY id DESC LIMIT 1";
 $posts_result = mysql_query($posts_sql); 
 while($posts_row = mysql_fetch_assoc($posts_result)){  
 $student_name=$posts_row['usert_name'];  $student_email=$posts_row['useer_email'];   $user_showadres=$posts_row['user_showadres'];    $student_tell=$posts_row['user_tell'];   $student_adres=$posts_row['user_adres'];    
  $_SESSION['name']=$student_name; 
  $_SESSION['email']=$student_email; 
  $_SESSION['tell']=$student_tell;  
  $_SESSION['adres']=$student_adres;
  $_SESSION['user_showadres']=$user_showadres;   }
 
 
if($j=='0'){
 header("location:../user/errorfinical"); 	
} else if($j!='0') {
  //echo    $_SESSION['mar_status'];	
 header("location:request.php");
}


 ?>


 