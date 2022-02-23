@extends('mng.layout')


 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

@section('title')
<title>ثبت درخواست حقیقی</title>
@stop
 
 <link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/vendors/core/core.css">
<link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/css/persian-datepicker-0.4.5.min.css">
<link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.css">
<link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/fonts/feather-font/css/iconfont.css">
<link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/vendors/flag-icon-css/css/flag-icon.min.css">
<link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/css/demo_1/style.css">
<link rel="shortcut icon" href="{{env('APP_URL')}}/build/template/assets/images/favicon.png" />






</head>

<body class="sidebar-dark rtl">


@section('body')

			<!-- partial -->

			<div class="page-content">

		 

        <div class="row">
          <div class="col-12 col-xl-12 stretch-card">
            <div class="row flex-grow">
            
             
              
              
              
              <div class="col-md-3 grid-margin stretch-card">
              </div>
              <div class="col-md-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">

 
         
 <script type="text/javascript">
 //<![CDATA[ 
 // array of possible countries in the same order as they appear in the country selection list 
 var countryLists = new Array(4) 
 countryLists["empty"] = ["Select a Country"]; 
 countryLists["North America"] = ["Canada", "United States", "Mexico",]; 
 countryLists["South America"] = ["Brazil", "Argentina", "Chile", "Ecuador",]; 
 countryLists["Asia"] = ["Russia", "China", "Japan",]; 
 countryLists["Europe"]= ["Britain", "France", "Spain", "Germany",]; 
 countryLists["Iran"]= [ @foreach($provinces as $province) <?php echo ' "'.$province->name.'", ';  ?>  @endforeach]; 
 
  @foreach($provinces as $province)  countryLists["{{$province->name}}"]= [ <?php echo '"لطفا شهر را انتخاب نمایید", ';  ?>  @foreach($citys as $city) @if($city->province==$province->id) <?php echo ' "'.$city->name.'", ';  ?>  @endif  @endforeach];   @endforeach
 
 
 /* CountryChange() is called from the onchange event of a select element. 
 * param selectObj - the select object which fired the on change event. 
 */ 
 function countryChange(selectObj) { 
 document.getElementById('country1').value = '';
 // get the index of the selected option 
 var idx = selectObj.selectedIndex; 
 // get the value of the selected option 
 var which = selectObj.options[idx].value; 
 // use the selected option value to retrieve the list of items from the countryLists array 
 cList = countryLists[which]; 
 // get the country select element via its known id 
 var cSelect = document.getElementById("country"); 
 // remove the current options from the country select 
 var len=cSelect.options.length; 
 while (cSelect.options.length > 0) { 
 cSelect.remove(0); 
 } 
 var newOption; 
 // create new options 
 for (var i=0; i<cList.length; i++) { 
 newOption = document.createElement("option"); 
 newOption.value = cList[i];  // assumes option string and value are the same 
 newOption.text=cList[i]; 
 // add the new option 
 try { 
 cSelect.add(newOption);  // this will fail in DOM browsers but is needed for IE 
 } 
 catch (e) { 
 cSelect.appendChild(newOption); 
 } 
 } 
 } 
//]]>
</script>

      
       
 <script type="text/javascript"> 
 var countryLists1 = new Array(4) 
 countryLists1["0"] = ["Select a shahr"];  
 countryLists1[""] = ["Select a shahr"];  
 
 
  @foreach($citys as $city)  countryLists1["{{$city->name}}"]= [  @if($city->pernumber!='')  <?php echo ' "'.$city->pernumber.'", ';  ?>  @else <?php echo '"Null", ';  ?>  @endif  ];   @endforeach
 
 
 function countryChange1(selectObj1) {  
 var idx1 = selectObj1.selectedIndex;  
 var which1 = selectObj1.options[idx1].value;  
 cList1 = countryLists1[which1];  
 var cSelect1 = document.getElementById("country1");   
 var len1=cSelect1.options.length; 
 while (cSelect1.options.length > 0) { 
 cSelect1.remove(0); 
 } 
 var newOption1;  
 for (var j=0; j<cList1.length; j++) { 
 newOption1 = document.createElement("option"); 
 newOption1.value = cList1[j];   
 newOption1.text=cList1[j];  
 try { 
 cSelect1.add(newOption1);  
 } 
 catch (e) { 
 cSelect1.appendChild(newOption1); 
 } 
 } 
 }  
 
  
 
</script>       
              
              


<form class="elementor-form"  enctype="multipart/form-data"  method="post" action="{{env('APP_URL')}}/superadmin/addperson"  > 

 
 <div class="card-header card-header-border-bottom">
 <h4>ثبت درخواست حقیقی</h4>
 </div>

 
 <div class="form-group">
 <label>انتخاب کاربر</label>
 <select class="js-example-basic-single w-100" name="userid"  >
 
 @foreach($myusers as $myuser)
 <option value="{{$myuser->id}}">{{$myuser->user_username}}</option>
 @endforeach
 
 </select>
 </div>
			
			
 
<div class="form-group">
 <span  style="color: red;" >*&nbsp;</span><label>نام</label>
<input size="1" type="text" name="name" id="form-field-name" class="form-control" placeholder="نام" required="required" value="{{old('name')}}" aria-required="true"> 
</div>

<div class="form-group"> 
 <span  style="color: red;" >*&nbsp;</span><label>نام خانوادگی</label>
 
<input size="1" type="text" name="family" id="form-field-name" class="form-control" placeholder="نام خانوادگی" required="required" value="{{old('family')}}" aria-required="true"> 
</div>

<div class="form-group"> 
 <label>نام و نام خانوادگی (انگلیسی) </label>
 
<input size="1" type="text" name="nameeng" id="form-field-name" class="form-control" placeholder="نام و نام خانوادگی (انگلیسی) "   value="{{old('nameeng')}}" aria-required="true"> 
</div>
 
 
 
  

<div class="form-group">  
 
 <label>نام پدر</label>
<input size="1" type="text" name="father" id="form-field-name" class="form-control" placeholder="نام پدر"   value="{{old('father')}}" aria-required="true"> 
</div> 
 
   
  
<div class="form-group"> 
 
 <span id="checktell" style="color: red;" >*</span><label>موبایل</label><span style="color: red;" id="messagetell" ></span>
<input size="1" type="text" name="mobile"  id="phoneNo" class="form-control" placeholder="موبایل   " required="required"  placeholder="09"   value="{{old('mobile')}}" aria-required="true"   oninput="calculatectell()"     > 
</div>

 
<div class="form-group"> 
 
 <label>تلفن</label>
<input size="1" type="text" name="tell" id="form-field-name" class="form-control" placeholder="تلفن"  value="{{old('tell')}}" aria-required="true"> 
</div>

<div class="form-group"> 
 
 <label>ایمیل</label>
<input size="1" type="email" name="email" id="form-field-name" class="form-control" placeholder="ایمیل   "  value="{{old('email')}}" aria-required="true"> 
</div>
 


  
  



    <link href="{{env('APP_URL')}}/build/jalalicalendar/plugins.css" rel="stylesheet"/> 
    <script src="{{env('APP_URL')}}/build/jalalicalendar/jquery.js"></script> 
    <script src="{{env('APP_URL')}}/build/jalalicalendar/plugins.js"></script> 
 
<div class="form-group"> 
 <label>تاریخ تولد</label>
<input size="1" type="text" name="birthday" id="form-field-name"  class="form-control"  data-val-date="The field ثبت از تاریخ must be a date." data-val-regex="لطفا &#39;ثبت از تاریخ&#39; معتبری وارد کنید. مثال: 1397/12/29" data-val-regex-pattern="^1[3-4][0-9]{2}\/(([0][1-6]\/([0][1-9]|[1-2][0-9]|[3][0-1]))|(([0][7-9]|[1][0-2])\/([0][1-9]|[1-2][0-9]|[3][0])))$"   onclick="PersianDatePicker.Show(this,&#39;1370/01/01&#39;);" placeholder="----/--/--"    value="{{old('birthday')}}" aria-required="true"> 
</div>



  
 
<div class="form-group"> 
 <span id="check" style="color: red;">*</span><label  >کدملی</label> <span style="color: red;" id="message" ></span>
<input size="1" type="text" name="codmel"  id="box1"   class="form-control" placeholder="کدملی   " required=""  oninput="calculatec()"   value="{{old('codmel')}}" aria-required="true"> 
</div> 


<div class="form-group"> 
 <label>شماره شناسنامه</label>
 
<input size="1" type="text" name="shnum" id="form-field-name" class="form-control" placeholder="شماره شناسنامه"  value="{{old('shnum')}}" aria-required="true"> 
</div> 

<div class="form-group"> 
 <label>محل صدور</label>
<input size="1" type="text" name="sodor" id="form-field-name" class="form-control" placeholder="محل صدور   "  value="{{old('sodor')}}" aria-required="true"> 
</div> 
  
 

 
<div class="form-group">   
 <label>کشور</label> 
<select name="country" id="form-field-field_5e19ae6" class="elementor-field-textual elementor-size-sm"  aria-required="true"> 
<option value="ایران">ایران</option>			
</select> 
</div>


<div class="form-group"> 


 <label>استان</label>
<select name="ost"   class="elementor-field-textual elementor-size-sm"  aria-required="true"   id="continent" onchange="countryChange(this);">
<option value="">لطفا استان را انتخاب نمایید</option>

    @foreach($provinces as $province) 
    <option value="{{$province->name}}">{{$province->name}}</option>
    @endforeach

		
</select>
 
</div>


<div class="form-group"> 


 <label>شهر</label>

<select name="city"   class="elementor-field-textual elementor-size-sm"  aria-required="true"    id="country"  onchange="countryChange1(this);" >
<option value="0">لطفا شهر را انتخاب نمایید</option> 
 
		
</select>


</div> 

  
 
<div class="form-group"> 
 <label> پیش شماره</label> 


<select name="pernumber"   class="elementor-field-textual elementor-size-sm"  aria-required="true"    id="country1"    >
<option value="">پیش شماره</option>
</select>
 
</div> 
		
 
  
<div class="form-group"> 
 <span  style="color: red;" >*&nbsp;</span><label>شماره تلفن درخواستی</label> 
<input size="1" type="text" name="tellreq"   required="required"  maxlength="4"  id="form-field-name" class="form-control"   placeholder="شماره تلفن درخواستی"  value="{{old('tellreq')}}" aria-required="true"> 
</div> 
 

   
 

<div class="form-group"> 
<label for="form-field-field_e7a3959" >آپلود مدارک</label>
<input type="file" name="file" id="form-field-field_e7a3959" placeholder="اپلود مدارک"    data-maxsize="5" data-maxsize-message="This file exceeds the maximum allowed size.">				
</div>

  

 
 
 
 
<div class="form-group">   
 <span id="checkcodp" style="color: red;">*</span><label  >کدپستی محل</label> <span style="color: red;" id="messagecodp" ></span>
<input size="1" type="text" name="codp" id="codp" class="form-control" placeholder="کدپستی محل" min="10"  oninput="calculatep()"    value="{{old('codp')}}" aria-required="true"> 
</div>


<div class="form-group"> 
 <label>آدرس محل</label>
<input size="1" type="text" name="adres" id="form-field-name" class="form-control" placeholder="آدرس محل"  value="{{old('adres')}}" aria-required="true"> 
</div> 


 



 
 
<div class="form-group"> 
 <label>توضیحات</label>
<input size="1" type="text" name="des" id="form-field-name" class="form-control" placeholder="توضیحات"  value="{{old('des')}}" aria-required="true"> 
</div> 
 
 


 

 
 
 

 <br>

 <div class="elementor-form-fields-wrapper elementor-labels-above" style="padding-bottom: 30px;" > 

 <div class="col-12">
 <div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-100 elementor-field-required">  
<div class="elementor-field-group elementor-column elementor-field-type-submit elementor-col-100 e-form__buttons">
<button type="submit" class="btn btn-success btn-block"  onclick="calculate()"   >
<span >
<span class=" elementor-button-icon"></span>
<span class="elementor-button-text">ثبت</span>
</span>
</button></div> 
</div>
</div> 
 

 </div>



              <input type="hidden" name="_token" value="{{ csrf_token() }}">
 





</form>	



 <script src="{{env('APP_URL')}}/build/js/alert/alertify.min.js"></script>
 <link rel="stylesheet" href="{{env('APP_URL')}}/build/js/alert/alertify.core.css" />
 <link rel="stylesheet" href="{{env('APP_URL')}}/build/js/alert/alertify.default.css" id="toggleCSS" />
   <?php   $f=0;?>
	<script>
	

	String.prototype.toEnglishDigit = function() { 
	var find = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹']; 
	var replace = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']; 
	var replaceString = this; var regex; 
	for (var i = 0; i < find.length; i++) { 
	regex = new RegExp(find[i], "g"); 
	replaceString = replaceString.replace(regex, replace[i]); } 
	return replaceString; };
  
function calculatec() {  


    
 var code = document.getElementById('box1').value;
 var code=code.toEnglishDigit();

	   var L=code.length; 
	    var stst = <?php echo $f;?> ;  
 


 if(L<8 || parseInt(code,10)==0){   
   document.getElementById("check").innerHTML="";  
   document.getElementById("message").innerHTML="(به صورت صحیح وارد نمایید)"; 
} else{
	
	
	
	
 code=('0000'+code).substr(L+4-10);
 if(parseInt(code.substr(3,6),10)==0) { 
   document.getElementById("check").innerHTML="";    
   document.getElementById("message").innerHTML="(به صورت صحیح وارد نمایید)"; 
 } else{
 	
 	
   var c=parseInt(code.substr(9,1),10);
   var s=0;
   for(var i=0;i<9;i++)
      s+=parseInt(code.substr(i,1),10)*(10-i);
   s=s%11;
   if((s<2 && c==s) ||(s>=2 && c==(11-s))){ 
   document.getElementById("check").innerHTML="<i aria-hidden='true' class='fa fa fa-check' style='color:green;'></i>"; 
   document.getElementById("message").innerHTML=""; 
   }else{    
   document.getElementById("check").innerHTML="";  
   document.getElementById("message").innerHTML="(به صورت صحیح وارد نمایید)"; 
    event.preventDefault(); 
   } 
 	
 	
 	
 	
 }
 }
 
 


}
 
 
 
 
function calculatep() { 
  
 
 
 var codp = document.getElementById('codp').value;
 var codp=codp.toEnglishDigit();
 var leanghthcodp=codp.length; 
 
 
 
 
 if(leanghthcodp != 10){ 
   document.getElementById("checkcodp").innerHTML="";  
   document.getElementById("messagecodp").innerHTML="(به صورت صحیح وارد نمایید)"; 
    event.preventDefault(); 
 }else{
 document.getElementById("checkcodp").innerHTML="<i aria-hidden='true' class='fa fa fa-check' style='color:green;'></i>"; 
 document.getElementById("messagecodp").innerHTML=""; 
 }
}
 
 


 
 
function calculate() { 

 
    
 var code = document.getElementById('box1').value;
 var code=code.toEnglishDigit();

	   var L=code.length; 
	    var stst = <?php echo $f;?> ;  
 if(L<8 || parseInt(code,10)==0){  
 alertify.confirm("تعداد رشته وارد شده برای کدملی کمتر از ده رقم می باشد"); 
   document.getElementById("message").innerHTML="(به صورت صحیح وارد نمایید)"; 
} else{
	
	
	
	
 code=('0000'+code).substr(L+4-10);
 if(parseInt(code.substr(3,6),10)==0) {  
 alertify.confirm("کدملی معتبر نمی باشد!"); 
   document.getElementById("message").innerHTML="(به صورت صحیح وارد نمایید)"; 
 } else{
 	
 	
   var c=parseInt(code.substr(9,1),10);
   var s=0;
   for(var i=0;i<9;i++)
      s+=parseInt(code.substr(i,1),10)*(10-i);
   s=s%11;
   if((s<2 && c==s) ||(s>=2 && c==(11-s))){ 
   document.getElementById("check").innerHTML="<i aria-hidden='true' class='fa fa fa-check' style='color:green;'></i>"; 
   document.getElementById("message").innerHTML=""; 
   }else{  
 alertify.confirm("کدملی وارد شده معتبر نمی باشد!"); 
   document.getElementById("check").innerHTML="";  
   document.getElementById("message").innerHTML="(به صورت صحیح وارد نمایید)"; 
    event.preventDefault(); 
   } 
 	
 	
 	
 	
 }
 }
 
 
 
 
 
 
 var codp = document.getElementById('codp').value;
 var leanghthcodp=codp.length; 
 
 if(leanghthcodp != 10){
 alertify.confirm("کدپستی وارد شده معتبر نمی باشد!");
   document.getElementById("checkcodp").innerHTML="";  
   document.getElementById("messagecodp").innerHTML="(به صورت صحیح وارد نمایید)"; 
    event.preventDefault(); 
 }else{
 document.getElementById("checkcodp").innerHTML="<i aria-hidden='true' class='fa fa fa-check' style='color:green;'></i>"; 
 document.getElementById("messagecodp").innerHTML=""; 
 }



 var codetell = document.getElementById('phoneNo').value;  
 var codetell=codetell.toEnglishDigit();
 
 
 var leanghttell=codetell.length;   
   
 var arregexe = /^09[0-9]{9}$/;

 if((leanghttell != 11)||(!arregexe.test(codetell))){
 alertify.confirm("شماره موبایل وارد شده معتبر نمی باشد!");
   document.getElementById("checktell").innerHTML="";  
   document.getElementById("messagetell").innerHTML="(به صورت صحیح وارد نمایید)"; 
} 
   
 
 if((leanghttell == 11)&&(!arregexe.test(codetell)==false)){ 
 document.getElementById("checktell").innerHTML="<i aria-hidden='true' class='fa fa fa-check' style='color:green;'></i>"; 
 document.getElementById("messagetell").innerHTML=""; 
 }
 





 
 }
</script> 

 


    <script>
     
function calculatectell() {    
 
	

 var codetell = document.getElementById('phoneNo').value;  
 var codetell=codetell.toEnglishDigit();
 var leanghttell=codetell.length;   
   
 var arregexe = /^09[0-9]{9}$/;

 if((leanghttell != 11)||(!arregexe.test(codetell))){
   document.getElementById("checktell").innerHTML="";  
   document.getElementById("messagetell").innerHTML="(به صورت صحیح وارد نمایید)"; 
} 
   
 
 if((leanghttell == 11)&&(!arregexe.test(codetell)==false)){ 
 document.getElementById("checktell").innerHTML="<i aria-hidden='true' class='fa fa fa-check' style='color:green;'></i>"; 
 document.getElementById("messagetell").innerHTML=""; 
 }
  
}
 </script>
    
    






                  </div>
                </div>
              </div>
              <div class="col-md-3 grid-margin stretch-card">
              </div>
              
              
               
              
              
             </div>
            </div>
           </div>
		 
		 
			</div>

@stop
<!--
<script src="{{env('APP_URL')}}/build/servicepay/firealert/components.js.download"></script> 
 
    <script>
        $(document).ready(function () {
                        Swal.fire({
                text: 'باموفقیت انجام شد که شد که شد',
                type: 'success',
                confirmButtonText: 'بستن',       toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 1113000

            });
            
        });
    </script>  
-->






@if(!empty(Session::get('statust')))
<script src="{{env('APP_URL')}}/build/servicepay/firealert/components.js.download"></script> 
 
    <script>
        $(document).ready(function () {
                        Swal.fire({
                text: '<?php echo Session::get('statust'); ?>',
                type: 'success',
                confirmButtonText: 'بستن'

            });
            
        });
    </script>
@endif



</body>

</html>