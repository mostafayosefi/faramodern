<?php date_default_timezone_set('Asia/Tehran'); ?>
<?php include ('scripts_style/scripts/date_time_shamsi.php'); ?>
<?php include ('lib/class.clintip.php'); ?>
<!DOCTYPE HTML>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>آسان پرداخت حساس کامپیوتر</title>
  <link href="scripts_style/css/main.css" rel="stylesheet" type="text/css">
</head>
<!--------پیغام عدم وارد نمودن اطلاعات در فرم-------->
<script type="text/javascript">
function validateForm()
{
	var field = document.forms["form1"]["name"].value;
	if (document.getElementById('name').value == ''){
		document.getElementById('massage-error').innerHTML = 'لطفا نام و نام خانوادگی خود را وارد نمائید';
		return false;
		}
		else{
			document.getElementById('massage-error').innerHTML = '';
	  }
	   if(document.getElementById('address').value == ''){
			document.getElementById('massage-error').innerHTML = 'لطفا آدرس یا شهر محل سکونت خود را وارد نمائید';
			return false;
			}
		else{
			document.getElementById('massage-error').innerHTML = '';
	  }
	   if(document.getElementById('mobile').value == ''){
			document.getElementById('massage-eerror').innerHTML = 'لطفا شماره تلفن همراه خود را وارد نمائید';
			return false;
			}
		else{
			document.getElementById('massage-error').innerHTML = '';
	  }
	  /* 09(1[0-9]|3[1-9]|2[1-9])-?[0-9]{3}-?[0-9]{4} */
	  var mobilereg = /^(9|09)(01|02|10|11|12|13|14|15|16|17|18|19|20|21|30|31|32|33|34|35|36|37|38|39)\d{7}$/;
	  var mobilenumbers = document.forms["form1"]["mobile"].value;
	  if(mobilereg.test(mobilenumbers) == false)
	  {
		  //alert('شماره تلفن همراه وارد شده فاقد اعتبار می باشد');
		  document.getElementById('massage-error').innerHTML = 'شماره تلفن همراه وارد شده فاقد اعتبار می باشد'; 
		  return false;
	  }
	  else
	  {
			document.getElementById('massage-error').innerHTML = '';
	  }
	  var field = document.forms["form1"]["email"].value;
	  if(document.getElementById('email').value == ''){
		  document.getElementById('massage-error').innerHTML = 'لطفا آدرس ایمیل خود را وارد نمائید';
		  return false;
		  }
		else{
			document.getElementById('massage-error').innerHTML = '';
	  }
	  if(document.getElementById('additionalData').value == ''){
		  document.getElementById('massage-error').innerHTML = 'لطفا توضیح دهید میلغ واریزی برای چه منظوری میباشد';
		  return false;
		  }
		else{
			document.getElementById('massage-error').innerHTML = '';
	  }
	  if(document.getElementById('PayAmount').value == '0'){
		  document.getElementById('massage-error').innerHTML = 'مبلغ وارد شده نمی تواند صفر باشد';
		  return false;
		  }
		else{
			document.getElementById('massage-error').innerHTML = '';
	  }
	  if(document.getElementById('PayAmount').value == ''){
		  document.getElementById('massage-error').innerHTML = 'لطفا مبلغ مورد نظر خود را وارد نمائید';
		  return false;
		  }
		else{
			document.getElementById('massage-error').innerHTML = '';
	  }
	  email=document.form1.email.value;
		var atpos=email.indexOf("@");
		var dotpos=email.lastIndexOf(".");
		if(email!="")
		{
			if(atpos<1||dotpos<atpos+2||dotpos  +2>=x.length)
			{
	document.getElementById('massage-error').innerHTML ="آدرس ایمیل وارد شده فاقد اعتبار میباشد";
				return false;
			}
		}
	 else{
			document.getElementById('massage-error').innerHTML = '';
	  } 
}
</script>
<!-------------وارد نمودن عدد------>
<script type="text/javascript">
 function isNumberKey(evt)
 { 
   var charCode = (evt.which) ? evt.which : event.keyCode 
   if (charCode > 31 && (charCode < 48 || charCode > 57)) 
   return false; 
   return true; 
 }
</script>
<!-----------------------وارد نمودن مبلغ پول------------------------>
<script>
 function splitMonyTextBox(ctrl)
 {
   var separator = ",";
   var int = ctrl.value.replace ( new RegExp ( separator, "g" ), "" );
   var regexp = new RegExp ( "\\B(\\d{3})(" + separator + "|$)" );
   do
	 {
	 int = int.replace ( regexp, separator + "$1" );
	 }
 while ( int.search ( regexp ) >= 0 )
 ctrl.value = int;
 }
   function isNumberKey(evt)
 {
 var charCode = (evt.which) ? evt.which : event.keyCode
 if(charCode > 31 && (charCode < 48 || charCode > 57))
 return false;

 return true;
 }
</script>
<!-----------------------اسکریپت تائید اتصال به بانک------------------------>
<script language="javascript" type="text/javascript">    
	function postRefId (refIdValue)
	{
		var form = document.createElement("form");
		form.setAttribute("method", "POST");
		form.setAttribute("action", "https://bpm.shaparak.ir/pgwchannel/startpay.mellat");         
		form.setAttribute("target", "_self");
		var hiddenField = document.createElement("input");              
		hiddenField.setAttribute("name", "RefId");
		hiddenField.setAttribute("value", refIdValue);
		form.appendChild(hiddenField);
		document.body.appendChild(form);         
		form.submit();
		document.body.removeChild(form);
	}		
</script>
<body>
<form name="form1" id="form1" method="post" preservedata="true" onsubmit="return validateForm();">
<div class="main">
  <div class="IP BHoma">IP: <?= $clint_ip ?></div>
  <div class="date BHoma">
  امروز: <?= $join_today ?>
  <br>
  ساعت: 
  <span id="show_time_1">
  <script language="JavaScript">
  function show_time_1()
  {
	 d=new Date();
	 H=d.getHours();H=(H<10)?"0"+H:H;
	 i=d.getMinutes();i=(i<10)?"0"+i:i;
	 s=d.getSeconds();s=(s<10)?"0"+s:s;
	 document.getElementById('show_time_1').innerHTML=H+":"+i+":"+s;
	 setTimeout("show_time_1()",1000);/* 1 sec */
  }
  show_time_1();
  </script>
  </span>
  </div>
  <img class="banner" src="image/BM_Logo.png">
  <div class="title BTitrBold">آسان پرداخت حساس کامپیوتر</div>
  <div class="specification">
    <div class="headline BHoma"><?php if(isset($_POST['name'])=='') { echo '<sup style="color:red">* </sup>'; } ?>نام و نام خانوادگی:</div>
    <div class="headinput"><input type="text" class="BHoma" name="name"id="name" <?php if(isset($_POST['name'])!='') { ?>value="<?= $_POST['name'] ?>" <?php } ?>></div>
    
    <div class="headline BHoma"><?php if($_POST['address']=='') { echo '<sup style="color:red">* </sup>'; } ?>آدرس:</div>
    <div class="headinput"><input type="text" class="BHoma" name="address" id="address" <?php if(isset($_POST['address'])!='') { ?>value="<?= $_POST['address'] ?>" <?php } ?>></div>
    
    <div class="headline BHoma"><?php if($_POST['mobile']=='') { echo '<sup style="color:red">* </sup>'; } ?>همراه :</div>
    <div class="headinput"><input name="mobile" type="text" class="BHoma" id="mobile" style="direction:ltr;" onkeypress="return isNumberKey(event)" maxlength="12" placeholder="09" <?php if(isset($_POST['mobile'])) { ?>value="<?= $_POST['mobile'] ?>" <?php } ?>></div>
    
    <div class="headline BHoma"><?php if($_POST['email']=='') { echo '<sup style="color:red">* </sup>'; } ?>ایمیل آدرس :</div>
    <div class="headinput"><input type="text" class="BHoma" name="email" id="email" style="direction:ltr;" <?php if(isset($_POST['email'])!='') { ?>value="<?= $_POST['email'] ?>" <?php } ?>></div>
    
    <div class="headline BHoma"><?php if($_POST['additionalData']=='') { echo '<sup style="color:red">* </sup>'; } ?>توضیحات :</div>
    <div class="headinput"><textarea class="BNazanin" name="additionalData" id="additionalData"><?php if(isset($_POST['additionalData'])!='') { ?><?= $_POST['additionalData'] ?><?php } ?></textarea></div>
    
    <div class="gap"></div>
    
    <div class="headline BHoma"><?php if($_POST['PayAmount']=='') { echo '<sup style="color:red">* </sup>'; } ?>مبلغ :</div>
    <div class="headinput"><label class="fade"><input type="text" class="BHoma" name="PayAmount" id="PayAmount" style="direction:ltr;" onkeypress="return isNumberKey(event)" onkeyup="splitMonyTextBox(this)" placeholder="             لطفا مبلغ خود را به ریال وارد نمایید"></label></div>
    
    <input type="submit" class="BTitrBold" value="پرداخت" name="PayRequestButton">
    
    <div class="massage-box BYekan" id="massage-error">
	<?php
	if($_SERVER['HTTP_REFERER']!='')
	{
		preg_match('#(http://www.|https://www.|https://|http://|www.)([^.]*).([^.|/]*)?([^/]*)#i', $_SERVER['HTTP_REFERER'], $siteName);
		//echo '<pre>'. print_r($siteName,true).'</pre>';
		if(empty($siteName[4]))
		{
			$url_link="www.".$siteName[2].".".$siteName[3]."";
		}
		elseif(mb_strlen($siteName[4]) >= 1 && mb_strlen($siteName[4]) <= 3)
		{
			$url_link="www.".$siteName[2].".".$siteName[3]."".$siteName[4]."";
		}
		else
		{
			$url_link="www.".$siteName[3].$siteName[4]."";
		}
	}
	else
	{
		$url_link="".$_SERVER[HTTP_HOST]."";
	}
	$host_name="".$_SERVER[HTTP_HOST]."";
	if($url_link!=$host_name)// درصورت ورود از سایت های دیگر خطا گرفته میشود
	{
		echo $url_link;
		echo '<br>';
		echo 'دسترسی غیر مجاز';
		echo '<br>';
		echo '<a href="http://'.$_SERVER[HTTP_HOST].''.$_SERVER[REQUEST_URI].'">کلیک نمایید</a>';
	}
	elseif(str_replace(',','',trim($_POST['PayAmount']))<='9999')// در صورت وارد نمودن مبلغ کمتر از هزار تومان خطا داده میشود
	{
		if(isset($_POST['PayAmount']))// اگر مبلغی 0 یا کمتر از هزار تومان وارد شده باشد پیغام خطا داده میشود
		{
			echo "حداقل مبلغ مجاز 10,000 ریال میباشد";
		}
	}
	else
	{
		require_once("lib/nusoap.php");
		include_once("lib/class.payrequest.php");
	}
	if($massage_error)
	{
		echo "موارد ستاره دار اجباری است";
	}
	?>
    </div>
  </div>
</div>
<div class="footer BYekan">
کلیه حقوق مادی و معنوی این اثر متعلق به شرکت پارس سیتم دراک فارس ( حساس کامپیوتر) می باشد.<br>این اثر طی شماره 35762 ثبت شده و هر گونه کپی برداری و یا عدم درج آدرس سایت صاحب اثر بدون کسب مجوز طبق قانون همایت از مولفین موجب پیگرد قانونی می گردد.<br>
www.hassas-computer.com
</div>
  <!-----------------------افکت------------------------>
  <script src="scripts_style/scripts/placeholdem.min.js"></script>
  <script>
      Placeholdem( document.querySelectorAll( '[placeholder]' ) );
      var fadeElems = document.body.querySelectorAll( '.fade' ),
          fadeElemsLength = fadeElems.length,
          i = 0,
          interval = 500;
  
          function incFade() {
              if( i < fadeElemsLength ) {
                  fadeElems[ i ].className += ' fade-load';
                  i++;
                  setTimeout( incFade, interval );
              }
          }
          setTimeout( incFade, interval );
  </script>
</form>
</body>
</html>