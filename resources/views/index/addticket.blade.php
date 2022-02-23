
 @extends('index.layout')


@section('title')

	<title>{{Session::get('mngindexs')->ind_ftitile}} | ثبت تیکت</title> 
<style type="text/css">
img.wp-smiley,
img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}
</style>
	<link data-minify="1" rel="stylesheet" id="naturalife-style-all-css" href="{{env('APP_URL')}}/build/telnum_files/app-min.css" type="text/css" media="all">
<link data-minify="1" rel="stylesheet" id="fontello-css" href="{{env('APP_URL')}}/build/telnum_files/fontello.css" type="text/css" media="all">
<link rel="stylesheet" id="naturalife-style-rtl-css" href="{{env('APP_URL')}}/build/telnum_files/rtl-min.css" type="text/css" media="all">
<link data-minify="1" rel="stylesheet" id="naturalife-theme-style-css" href="{{env('APP_URL')}}/build/telnum_files/style.css" type="text/css" media="all">
<link data-minify="1" rel="stylesheet" id="naturalife-dynamic-css" href="{{env('APP_URL')}}/build/telnum_files/dynamic-style.css" type="text/css" media="all">
<link rel="stylesheet" id="wp-block-library-rtl-css" href="{{env('APP_URL')}}/build/telnum_files/style-rtl.min.css" type="text/css" media="all">
<link data-minify="1" rel="stylesheet" id="tablepress-default-css" href="{{env('APP_URL')}}/build/telnum_files/default-rtl.min.css" type="text/css" media="all">
<link data-minify="1" rel="stylesheet" id="elementor-icons-css" href="{{env('APP_URL')}}/build/telnum_files/elementor-icons.min.css" type="text/css" media="all">
<link rel="stylesheet" id="elementor-frontend-legacy-css" href="{{env('APP_URL')}}/build/telnum_files/frontend-legacy-rtl.min.css" type="text/css" media="all">
<link rel="stylesheet" id="elementor-frontend-css" href="{{env('APP_URL')}}/build/telnum_files/frontend-rtl.min.css" type="text/css" media="all">
<style id="elementor-frontend-inline-css" type="text/css">
@font-face{font-family:eicons;src:url({{env('APP_URL')}}/build/telnum_files/fonts/eicons/eicons.eot?5.10.0);src:url({{env('APP_URL')}}/build/telnum_files/fonts/eicons/eicons.eot?5.10.0#iefix) format("embedded-opentype"),url({{env('APP_URL')}}/build/telnum_files/fonts/eicons/eicons.woff2?5.10.0) format("woff2"),url({{env('APP_URL')}}/build/telnum_files/fonts/eicons/eicons.woff?5.10.0) format("woff"),url({{env('APP_URL')}}/build/telnum_files/fonts/eicons/eicons.ttf?5.10.0) format("truetype"),url({{env('APP_URL')}}/build/telnum_files/fonts/eicons/eicons.svg?5.10.0#eicon) format("svg");font-weight:400;font-style:normal}
</style>
<link data-minify="1" rel="stylesheet" id="elementor-post-2723-css" href="{{env('APP_URL')}}/build/telnum_files/post-2723.css" type="text/css" media="all">
<link rel="stylesheet" id="elementor-pro-css" href="{{env('APP_URL')}}/build/telnum_files/frontend-rtl.min(1).css" type="text/css" media="all">
<link data-minify="1" rel="stylesheet" id="font-awesome-5-all-css" href="{{env('APP_URL')}}/build/telnum_files/all.min.css" type="text/css" media="all">
<link rel="stylesheet" id="font-awesome-4-shim-css" href="{{env('APP_URL')}}/build/telnum_files/v4-shims.min.css" type="text/css" media="all">
<link data-minify="1" rel="stylesheet" id="elementor-post-2-css" href="{{env('APP_URL')}}/build/telnum_files/post-2.css" type="text/css" media="all">
 
<link data-minify="1" rel='stylesheet' id='elementor-post-52-css'  href='{{env('APP_URL')}}/build/telnum_files/post-52.css?ver=1631767702' type='text/css' media='all' />

<link rel="stylesheet" id="elementor-icons-shared-0-css" href="{{env('APP_URL')}}/build/telnum_files/fontawesome.min.css" type="text/css" media="all">
<link data-minify="1" rel="stylesheet" id="elementor-icons-fa-brands-css" href="{{env('APP_URL')}}/build/telnum_files/brands.min.css" type="text/css" media="all">
<link data-minify="1" rel="stylesheet" id="elementor-icons-fa-solid-css" href="{{env('APP_URL')}}/build/telnum_files/solid.min.css" type="text/css" media="all">
<link data-minify="1" rel="stylesheet" id="elementor-icons-fa-regular-css" href="{{env('APP_URL')}}/build/telnum_files/regular.min.css" type="text/css" media="all">
<script type="text/javascript" src="{{env('APP_URL')}}/build/telnum_files/jquery.min.js.download" id="jquery-core-js"></script>
<script type="text/javascript" src="{{env('APP_URL')}}/build/telnum_files/jquery-migrate.min.js.download" id="jquery-migrate-js"></script>
<script type="text/javascript" src="{{env('APP_URL')}}/build/telnum_files/v4-shims.min.js.download" id="font-awesome-4-shim-js"></script>


<link data-minify="1" rel='stylesheet' id='elementor-post-2723-css'  href='{{env('APP_URL')}}/build/telnum_files/post-2723.css?ver=1631722801' type='text/css' media='all' />

<link data-minify="1" rel='stylesheet' id='elementor-post-2792-css'  href='{{env('APP_URL')}}/build/telnum_files/post-2792.css?ver=1631770344' type='text/css' media='all' />




<link data-minify="1" rel='stylesheet' id='elementor-post-245-css'  href='{{env('APP_URL')}}/build/telnum_files/post-245.css?ver=1631732859' type='text/css' media='all' />

@stop





@section('body') 
 
 

<!-- main contents -->
<div id="main-content">

	 

						
			
								
						<div data-elementor-type="wp-post" data-elementor-id="52" class="elementor elementor-52" data-elementor-settings="[]">
						<div class="elementor-inner">
							<div class="elementor-section-wrap">
						 
		
		
				<section class="elementor-section elementor-top-section elementor-element elementor-element-a45e332 elementor-section-boxed elementor-section-height-default elementor-section-height-default default-style" data-id="a45e332" data-element_type="section" data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;shape_divider_bottom&quot;:&quot;mountains&quot;,&quot;rt_color_sets&quot;:&quot;default-style&quot;}">
					 
					<div class="elementor-container elementor-column-gap-default">
							<div class="elementor-row">
					<div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-71c294d" data-id="71c294d" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
					 
				 
				
				
				<div class="elementor-element elementor-element-db82b8e elementor-widget elementor-widget-spacer" data-id="db82b8e" data-element_type="widget" data-widget_type="spacer.default">
				<div class="elementor-widget-container">
					<div class="elementor-spacer">
			<div class="elementor-spacer-inner"></div>
		</div>
				</div>
				</div>
				
				
				
				
				
<section class="elementor-section elementor-top-section elementor-element elementor-element-2279b4e elementor-section-boxed elementor-section-height-default elementor-section-height-default default-style" data-id="2279b4e" data-element_type="section" data-settings="{&quot;rt_color_sets&quot;:&quot;default-style&quot;}">

<div class="elementor-container elementor-column-gap-default">
<div class="elementor-row">

 	

<div class="elementor-column elementor-col-25 elementor-top-column elementor-element elementor-element-c5ec86c" data-id="c5ec86c" data-element_type="column"   >
<div class="elementor-column-wrap elementor-element-populated"    >

<a href="{{env('APP_URL')}}/user/panel">
<div class="elementor-widget-wrap">
<div class="elementor-element elementor-element-f464a19 elementor-view-stacked elementor-shape-circle elementor-widget elementor-widget-icon" data-id="f464a19" data-element_type="widget" data-widget_type="icon.default">
<div class="elementor-widget-container">
<div class="elementor-icon-wrapper">
<div class="elementor-icon">
<i aria-hidden="true" class="fa fa-arrow-right"></i>
</div></div></div></div>
<div class="elementor-element elementor-element-3dad55e elementor-widget elementor-widget-heading" data-id="3dad55e" data-element_type="widget" data-widget_type="heading.default">
<div class="elementor-widget-container">
<h2 class="elementor-heading-title elementor-size-default">بازگشت </h2>
</div></div></div></a>	



</div></div>

<div class="elementor-column elementor-col-25 elementor-top-column elementor-element elementor-element-c5ec86c" data-id="c5ec86c" data-element_type="column"   >
<div class="elementor-column-wrap elementor-element-populated"    >



<a href="{{env('APP_URL')}}/user/addticket">
<div class="elementor-widget-wrap">
<div class="elementor-element elementor-element-f464a19 elementor-view-stacked elementor-shape-circle elementor-widget elementor-widget-icon" data-id="f464a19" data-element_type="widget" data-widget_type="icon.default">
<div class="elementor-widget-container">
<div class="elementor-icon-wrapper">
<div class="elementor-icon"  style="background-color: #591fe0 !important;">
<i aria-hidden="true" class="fas fa-plus"></i>
</div></div></div></div>
<div class="elementor-element elementor-element-3dad55e elementor-widget elementor-widget-heading" data-id="3dad55e" data-element_type="widget" data-widget_type="heading.default">
<div class="elementor-widget-container">
<h2 class="elementor-heading-title elementor-size-default">ثبت تیکت </h2>	
</div></div></div></a>

</div></div>




<div class="elementor-column elementor-col-25 elementor-top-column elementor-element elementor-element-c5ec86c" data-id="c5ec86c" data-element_type="column"   >
<div class="elementor-column-wrap elementor-element-populated"    >

<a href="{{env('APP_URL')}}/user/viewstickets">
<div class="elementor-widget-wrap">
<div class="elementor-element elementor-element-f464a19 elementor-view-stacked elementor-shape-circle elementor-widget elementor-widget-icon" data-id="f464a19" data-element_type="widget" data-widget_type="icon.default">
<div class="elementor-widget-container">
<div class="elementor-icon-wrapper">
<div class="elementor-icon">
<i aria-hidden="true" class="fas fa-list-ul"></i>
</div></div></div></div>
<div class="elementor-element elementor-element-3dad55e elementor-widget elementor-widget-heading" data-id="3dad55e" data-element_type="widget" data-widget_type="heading.default">
<div class="elementor-widget-container">
<h2 class="elementor-heading-title elementor-size-default">مشاهده پیامها </h2>	
</div></div></div></a>

</div></div>		

</div>
</div>

 
								
								
		</section>
				
				
				
				
				
				<div class="elementor-element elementor-element-c438a9c elementor-widget elementor-widget-rt-heading" data-id="c438a9c" data-element_type="widget" data-widget_type="rt-heading.default">
				<div class="elementor-widget-container">
			<div class="rt-heading-wrapper style-3 text-center">
						<H2 class="   rt-heading style-3" >ثبت تیکت</H2>
					</div>		</div>
				</div>
				<div class="elementor-element elementor-element-412944a elementor-widget elementor-widget-rt-pricing-table" data-id="412944a" data-element_type="widget" data-widget_type="rt-pricing-table.default">



 @if(count($errors)) 
<div class="elementor-message elementor-message-danger" role="alert">
خطای ثبت اطلاعات<hr>    
<ul>    
 @foreach($errors->all() as $error)<br>
<li>{{ $error }}</li> 
 @endforeach
</ul>
</div>
 @endif
 
 
 
     


<form class="elementor-form"  enctype="multipart/form-data"  method="post" action=""  > 

 


 
 <div class="elementor-form-fields-wrapper elementor-labels-above" style="padding-bottom: 30px;"> 
 
<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-25 elementor-field-required"></div>
<div class="elementor-field-type-email elementor-field-group elementor-column elementor-field-group-email elementor-col-50"> 
  <span  style="color: red;" >*&nbsp;</span><label>موضوع تیکت</label>
 
<input size="1" type="text" name="tit" id="form-field-name" class="elementor-field elementor-size-sm  elementor-field-textual" placeholder="موضوع تیکت" required="required" value="{{old('tit')}}" aria-required="true"> 
</div>
<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-25 elementor-field-required"></div>
 
</div>  
 
 
 <div class="elementor-form-fields-wrapper elementor-labels-above" style="padding-bottom: 30px;"> 
 
<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-25 elementor-field-required"></div>
<div class="elementor-field-type-email elementor-field-group elementor-column elementor-field-group-email elementor-col-50"> 
  <span  style="color: red;" >*&nbsp;</span><label>متن پیام</label>
 
<textarea name="des" id="form-field-name"  class="elementor-field elementor-size-sm  elementor-field-textual"    rows="6" >{{old('des')}}</textarea>
 
</div>
<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-25 elementor-field-required"></div>
 
</div>  
 
  
 <div class="elementor-form-fields-wrapper elementor-labels-above" style="padding-bottom: 30px;"> 
 
<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-25 elementor-field-required"></div>
<div class="elementor-field-type-email elementor-field-group elementor-column elementor-field-group-email elementor-col-50"> 
  <div class="col-12">
 <div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-100 elementor-field-required">  
<div class="elementor-field-group elementor-column elementor-field-type-submit elementor-col-100 e-form__buttons">
<button type="submit" class="elementor-button elementor-size-sm"  onclick="calculate()"   >
<span >
<span class=" elementor-button-icon"></span>
<span class="elementor-button-text">ثبت</span>
</span>
</button></div> 
</div>
</div> 
 
</div>
<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-25 elementor-field-required"></div>
 
</div>  
 
  

 
 

 <br>

 <div class="elementor-form-fields-wrapper elementor-labels-above" style="padding-bottom: 30px;" > 


 

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
		</div>
								</div>
					</div>
		</section>
		 
						</div>
						</div>
					</div>
									

				

				

	 
 
</div><!-- / end #main-content -->


 
@if(!empty(Session::get('statust')))
<script src="{{env('APP_URL')}}/build/servicepay/firealert/components.js.download"></script> 
 
 
    
    <script>
        $(document).ready(function () {
                        Swal.fire({
                text: '<?php echo Session::get('statust'); ?>',
                type: '{{Session::get('flgstatus')}}',
                confirmButtonText: 'بستن'

            });
            
        });
    </script>
    
@endif


    
@stop

