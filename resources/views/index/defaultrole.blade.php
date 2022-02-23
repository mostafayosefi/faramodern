
 @extends('index.layout')


@section('title')

	<title>{{Session::get('mngindexs')->ind_ftitile}} | ویرایش پیش ثبت نام حقیقی</title> 
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
							<section class="elementor-section elementor-top-section elementor-element elementor-element-585e8a2 elementor-section-height-min-height elementor-section-boxed elementor-section-height-default elementor-section-items-middle default-style" data-id="585e8a2" data-element_type="section" data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;rt_color_sets&quot;:&quot;default-style&quot;}">
						<div class="elementor-container elementor-column-gap-default">
							<div class="elementor-row">
					<div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-39c48d1" data-id="39c48d1" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-b7eaa5a elementor-widget elementor-widget-rt-heading" data-id="b7eaa5a" data-element_type="widget" data-widget_type="rt-heading.default">
				<div class="elementor-widget-container">
			<div class="rt-heading-wrapper text-center">
						<H1 class="   rt-heading custom-color" >پیش ثبت نام حقیقی  {{Session::get('mngindexs')->ind_ftitile}} </H1>
					</div>		</div>
				</div>
						</div>
					</div>
		</div>
								</div>
					</div>
		</section>
		
		
		
		
				<section class="elementor-section elementor-top-section elementor-element elementor-element-a45e332 elementor-section-boxed elementor-section-height-default elementor-section-height-default default-style" data-id="a45e332" data-element_type="section" data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;shape_divider_bottom&quot;:&quot;mountains&quot;,&quot;rt_color_sets&quot;:&quot;default-style&quot;}">
					<div class="elementor-shape elementor-shape-bottom" data-negative="false">
			<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1000 100" preserveAspectRatio="none">
	<path class="elementor-shape-fill" opacity="0.33" d="M473,67.3c-203.9,88.3-263.1-34-320.3,0C66,119.1,0,59.7,0,59.7V0h1000v59.7 c0,0-62.1,26.1-94.9,29.3c-32.8,3.3-62.8-12.3-75.8-22.1C806,49.6,745.3,8.7,694.9,4.7S492.4,59,473,67.3z"/>
	<path class="elementor-shape-fill" opacity="0.66" d="M734,67.3c-45.5,0-77.2-23.2-129.1-39.1c-28.6-8.7-150.3-10.1-254,39.1 s-91.7-34.4-149.2,0C115.7,118.3,0,39.8,0,39.8V0h1000v36.5c0,0-28.2-18.5-92.1-18.5C810.2,18.1,775.7,67.3,734,67.3z"/>
	<path class="elementor-shape-fill" d="M766.1,28.9c-200-57.5-266,65.5-395.1,19.5C242,1.8,242,5.4,184.8,20.6C128,35.8,132.3,44.9,89.9,52.5C28.6,63.7,0,0,0,0 h1000c0,0-9.9,40.9-83.6,48.1S829.6,47,766.1,28.9z"/>
</svg>		</div>
					<div class="elementor-container elementor-column-gap-default">
							<div class="elementor-row">
					<div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-71c294d" data-id="71c294d" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-70ca113 elementor-widget elementor-widget-rt-heading" data-id="70ca113" data-element_type="widget" data-widget_type="rt-heading.default">
				<div class="elementor-widget-container">
			<div class="rt-heading-wrapper text-center">
<style>
 @font-face {
 font-family: iransans;
 src: url('{{env('APP_URL')}}/build/telnum_files/fonts/iransans/IRANSansWeb(FaNum)_Bold.ttf'),
 url('{{env('APP_URL')}}/build/telnum_files/fonts/iransans/IRANSansWeb(FaNum)_Bold.woff'),
 url('{{env('APP_URL')}}/build/telnum_files/fonts/iransans/IRANSansWeb(FaNum)_Bold.woff2'), 
      url('{{env('APP_URL')}}/builds/telnum_files/fonts/iransans/IRANSansWeb(FaNum)_Bold.eot');
 font-weight:bold;
 }
</style>
<?php echo $txtdes->txt_des; ?>
					</div>		</div>
				</div>
				<div class="elementor-element elementor-element-bbab38b elementor-widget elementor-widget-spacer" data-id="bbab38b" data-element_type="widget" data-widget_type="spacer.default">
				<div class="elementor-widget-container">
					<div class="elementor-spacer">
			<div class="elementor-spacer-inner"></div>
		</div>
				</div>
				</div>
				
				 
				
				
				<div class="elementor-element elementor-element-db82b8e elementor-widget elementor-widget-spacer" data-id="db82b8e" data-element_type="widget" data-widget_type="spacer.default">
				<div class="elementor-widget-container">
					<div class="elementor-spacer">
			<div class="elementor-spacer-inner"></div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-c438a9c elementor-widget elementor-widget-rt-heading" data-id="c438a9c" data-element_type="widget" data-widget_type="rt-heading.default">
				<div class="elementor-widget-container">
			<div class="rt-heading-wrapper style-3 text-center">
						<H2 class="   rt-heading style-3" >ویرایش پیش ثبت نام حقیقی</H2>
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
              
       
      
              
              
             



<form class="elementor-form"  enctype="multipart/form-data"  method="post" action="{{env('APP_URL')}}/user/mngreqperson/edit/{{$requests->regp_id}}"  > 

 


 
 <div class="elementor-form-fields-wrapper elementor-labels-above" style="padding-bottom: 30px;"> 
<div class="elementor-field-type-email elementor-field-group elementor-column elementor-field-group-email elementor-col-25">
 <span  style="color: red;" >*&nbsp;</span><label>نام</label>
<input size="1" type="text" name="name" id="form-field-name" class="elementor-field elementor-size-sm  elementor-field-textual" placeholder="نام" required="required" value="{{$requests->regp_name}}" aria-required="true"> 
</div>
<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-10 elementor-field-required"></div>
<div class="elementor-field-type-email elementor-field-group elementor-column elementor-field-group-email elementor-col-25"> 
  <span  style="color: red;" >*&nbsp;</span><label>نام خانوادگی</label>
<input size="1" type="text" name="family" id="form-field-name" class="elementor-field elementor-size-sm  elementor-field-textual" placeholder="نام خانوادگی" required="required" value="{{$requests->regp_family}}" aria-required="true"> 
</div>
<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-10 elementor-field-required"></div>
<div class="elementor-field-type-email elementor-field-group elementor-column elementor-field-group-email elementor-col-25"> 
  <label>نام و نام خانوادگی (انگلیسی)  </label>
<input size="1" type="text" name="nameeng" id="form-field-name" class="elementor-field elementor-size-sm  elementor-field-textual" placeholder="نام و نام خانوادگی (انگلیسی) "   value="{{$requests->regp_nameeng}}" aria-required="true"> 
</div>
</div>  
 
 
 <div class="elementor-form-fields-wrapper elementor-labels-above" style="padding-bottom: 30px;" >

<div class="elementor-field-type-email elementor-field-group elementor-column elementor-field-group-email elementor-col-25">  
  <label>نام پدر</label>
<input size="1" type="text" name="father" id="form-field-name" class="elementor-field elementor-size-sm  elementor-field-textual" placeholder="نام پدر"   value="{{$requests->regp_father}}" aria-required="true"> 
</div>
<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-75 elementor-field-required"></div>
</div>
   
 
 <div class="elementor-form-fields-wrapper elementor-labels-above" style="padding-bottom: 30px;" >

 
<div class="elementor-field-type-email elementor-field-group elementor-column elementor-field-group-email elementor-col-25">  
 <span id="checktell" style="color: red;" >*</span><label>موبایل</label><span style="color: red;" id="messagetell" ></span>
<input size="1" type="text" name="mobile" id="phoneNo" class="elementor-field elementor-size-sm  elementor-field-textual" placeholder="09" required="required"  value="{{$requests->regp_mobile}}"  aria-required="true"        oninput="calculatectell()"     > 
</div>

<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-10 elementor-field-required"></div>
<div class="elementor-field-type-email elementor-field-group elementor-column elementor-field-group-email elementor-col-25"> 
 <label>تلفن</label>
<input size="1" type="text" name="tell" id="form-field-name" class="elementor-field elementor-size-sm  elementor-field-textual" placeholder="تلفن"  value="{{$requests->regp_tell}}" aria-required="true"> 
</div>
<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-10 elementor-field-required"></div>
<div class="elementor-field-type-email elementor-field-group elementor-column elementor-field-group-email elementor-col-25"> 
  <label>ایمیل</label>
<input size="1" type="email" name="email" id="form-field-name" class="elementor-field elementor-size-sm  elementor-field-textual" placeholder="ایمیل   "  value="{{$requests->regp_email}}" aria-required="true"> 
</div>
</div>  


 
 <div class="elementor-form-fields-wrapper elementor-labels-above" style="padding-bottom: 30px;" >

  



    <link href="{{env('APP_URL')}}/build/jalalicalendar/plugins.css" rel="stylesheet"/> 
    <script src="{{env('APP_URL')}}/build/jalalicalendar/jquery.js"></script> 
    <script src="{{env('APP_URL')}}/build/jalalicalendar/plugins.js"></script> 
 
<div class="elementor-field-type-email elementor-field-group elementor-column elementor-field-group-email elementor-col-25"> 
 <label>تاریخ تولد</label>
<input size="1" type="text" name="birthday" id="form-field-name" class="elementor-field elementor-size-sm  elementor-field-textual" data-val-date="The field ثبت از تاریخ must be a date." data-val-regex="لطفا &#39;ثبت از تاریخ&#39; معتبری وارد کنید. مثال: 1397/12/29" data-val-regex-pattern="^1[3-4][0-9]{2}\/(([0][1-6]\/([0][1-9]|[1-2][0-9]|[3][0-1]))|(([0][7-9]|[1][0-2])\/([0][1-9]|[1-2][0-9]|[3][0])))$"   onclick="PersianDatePicker.Show(this,&#39;1370/01/01&#39;);" placeholder="----/--/--"     value="{{$requests->regp_birthday}}"  aria-required="true"> 
</div>










</div>  



 
 <div class="elementor-form-fields-wrapper elementor-labels-above" style="padding-bottom: 30px;" >
 
<div class="elementor-field-type-email elementor-field-group elementor-column elementor-field-group-email elementor-col-25"> 
 <span id="check"  style="color: red;" >*</span><label  >کدملی</label> <span style="color: red;" id="message" ></span>
<input size="1" type="text" name="codmel"  id="box1"  class="elementor-field elementor-size-sm  elementor-field-textual" placeholder="کدملی   "  oninput="calculatec()"     required=""  value="{{$requests->regp_codmel}}" aria-required="true"> 
</div> 

<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-10 elementor-field-required"></div>
<div class="elementor-field-type-email elementor-field-group elementor-column elementor-field-group-email elementor-col-25"> 
  <label>شماره شناسنامه</label>
<input size="1" type="text" name="shnum" id="form-field-name" class="elementor-field elementor-size-sm  elementor-field-textual" placeholder="شماره شناسنامه"  value="{{$requests->regp_shnum}}" aria-required="true"> 
</div> 
<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-10 elementor-field-required"></div>
<div class="elementor-field-type-email elementor-field-group elementor-column elementor-field-group-email elementor-col-25"> 
 <label>محل صدور</label>
<input size="1" type="text" name="sodor" id="form-field-name" class="elementor-field elementor-size-sm  elementor-field-textual" placeholder="محل صدور   "  value="{{$requests->regp_sodor}}" aria-required="true"> 
</div> 
 
 </div>



 
 <div class="elementor-form-fields-wrapper elementor-labels-above" style="padding-bottom: 30px;" >

 
<div class="elementor-field-type-email elementor-field-group elementor-column elementor-field-group-email elementor-col-25">    
 <label>ایران</label>
<select name="country" id="form-field-field_5e19ae6" class="elementor-field-textual elementor-size-sm"  aria-required="true"> 
<option value="ایران">ایران</option>			
</select> 
</div>

<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-10 elementor-field-required"></div>
<div class="elementor-field-type-email elementor-field-group elementor-column elementor-field-group-email elementor-col-25"> 
<?php $myost='0'; ?>
 <label>استان</label>
<select name="ost"   class="elementor-field-textual elementor-size-sm"  aria-required="true"   id="continent" onchange="countryChange(this);">
<option value="">لطفا استان را انتخاب نمایید</option>

    @foreach($provinces as $province) 
    <option  value="{{$province->name}}"  @if($province->name==$requests->regp_ost) selected=""<?php $myost=$province->id; ?>  @endif>{{$province->name}}</option>
    @endforeach

		
</select>
 
</div>

<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-10 elementor-field-required"></div>
<div class="elementor-field-type-email elementor-field-group elementor-column elementor-field-group-email elementor-col-25"> 

 <label>شهر</label>

<select name="city"   class="elementor-field-textual elementor-size-sm"  aria-required="true"    id="country"  onchange="countryChange1(this);" >
@if($myost=='0')
<option value="">لطفا شهر را انتخاب نمایید</option>
@elseif($myost!='0')
<option value="">لطفا شهر را انتخاب نمایید</option>


    @foreach($citys as $city) 
    @if($city->province==$myost)
    <option  value="{{$city->name}}"  @if($city->name==$requests->regp_city) selected=""  @endif>{{$city->name}}</option>
    @endif
    @endforeach

@endif

 
		
</select>


</div>
</div> 
 
  
  
 <div class="elementor-form-fields-wrapper elementor-labels-above" style="padding-bottom: 30px;" >
  
<div class="elementor-field-type-email elementor-field-group elementor-column elementor-field-group-email elementor-col-25"> 
 <span  style="color: red;" >*&nbsp;</span><label>شماره تلفن درخواستی</label> 
<input size="1" type="text" name="tellreq"   required="required"  maxlength="4"  id="form-field-name" class="elementor-field elementor-size-sm  elementor-field-textual"   placeholder="شماره تلفن درخواستی"  value="{{$requests->regp_tellreq}}" aria-required="true"> 
</div> 
<div class="elementor-field-type-email elementor-field-group elementor-column elementor-field-group-email elementor-col-10"> 
 <label> &nbsp;</label> 


<select name="pernumber"   class="elementor-field-textual elementor-size-sm"  aria-required="true"    id="country1"    > 
 
    @if($requests->regp_pernumber!="")
    <option  value="{{$requests->regp_pernumber}}"   selected=""  >{{$requests->regp_pernumber}}</option>
    @endif 
    
</select>
 
		

</div> 

 
</div>  

   
  
 <?php echo $txtdesupload->txt_des; ?>
  

 <div class="elementor-form-fields-wrapper elementor-labels-above" style="padding-bottom: 30px;" >

 
 
 
<div class="elementor-field-type-upload elementor-field-group elementor-column elementor-field-group-field_e7a3959 elementor-col-25">
<label for="form-field-field_e7a3959" class="elementor-field-label">آپلود مدارک</label>
<input type="file" name="file" id="form-field-field_e7a3959" class="elementor-field elementor-size-sm  elementor-upload-field"  placeholder="اپلود مدارک"    data-maxsize="5" data-maxsize-message="This file exceeds the maximum allowed size.">				
</div>


<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-10 elementor-field-required"></div>


<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-25 elementor-field-required">
	
	
	
@if($requests->regp_file != '')
@if ((str_contains($requests->regp_file, 'png'))||(str_contains($requests->regp_file, 'gif'))||(str_contains($requests->regp_file, 'jpg'))||(str_contains($requests->regp_file, 'tif')))  

<a  href="{{env('APP_URL')}}/public/images/{{$requests->regp_file}}"  target="_blank" >
<img style="height: 100px; width: 100px;" src="{{env('APP_URL')}}/public/images/{{$requests->regp_file}}" /></a>

@else 

<a  href="{{env('APP_URL')}}/public/images/{{$requests->regp_file}}"  target="_blank" >
 مشاهده فایل <i aria-hidden="true" class="fas fa-eye"></i> </a>


@endif

@else
مدارکی آپلود نشده است!
@endif
	
</div>




 


</div>  



 <div class="elementor-form-fields-wrapper elementor-labels-above" style="padding-bottom: 30px;" >

 
<div class="elementor-field-type-email elementor-field-group elementor-column elementor-field-group-email elementor-col-25"> 
 <span id="checkcodp"  style="color: red;" >*</span><label  >کدپستی محل</label> <span style="color: red;" id="messagecodp" ></span>
<input size="1" type="text" name="codp" id="codp"  class="elementor-field elementor-size-sm  elementor-field-textual" placeholder="کدپستی محل" oninput="calculatep()"  value="{{$requests->regp_codp}}" aria-required="true"> 
</div>

<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-10 elementor-field-required"></div>
<div class="elementor-field-type-email elementor-field-group elementor-column elementor-field-group-email elementor-col-60"> 
 <label>آدرس محل</label>
<input size="1" type="text" name="adres" id="form-field-name" class="elementor-field elementor-size-sm  elementor-field-textual" placeholder="آدرس محل"  value="{{$requests->regp_adres}}" aria-required="true"> 
</div> 



 </div>





 <div class="elementor-form-fields-wrapper elementor-labels-above" style="padding-bottom: 30px;" >
 
<div class="elementor-field-type-email elementor-field-group elementor-column elementor-field-group-email elementor-col-100"> 
 <label>توضیحات</label>
<input size="1" type="text" name="des" id="form-field-name" class="elementor-field elementor-size-sm  elementor-field-textual" placeholder="توضیحات"  value="{{$requests->regp_des}}" aria-required="true"> 
</div> 
 

 </div>



 <div class="elementor-form-fields-wrapper elementor-labels-above" style="padding-bottom: 30px;" >
 <div class="col-12">
 <h2>قوانین</h2>

<?php echo $law->law_des; ?>

 </div>
 </div>

 

 <div class="elementor-form-fields-wrapper elementor-labels-above" style="padding-bottom: 30px;" >

 <div class="col-12">    
<input size="1" type="checkbox" name="law" id="form-field-name" class="elementor-field elementor-size-sm  elementor-field-textual" required="" checked=""   value="{{old('law')}}" aria-required="true">    
  قوانین را می پذیرم</div> 

 </div>

 

 <br>

 <div class="elementor-form-fields-wrapper elementor-labels-above" style="padding-bottom: 30px;" > 

 <div class="col-12">
 <div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-100 elementor-field-required">  
<div class="elementor-field-group elementor-column elementor-field-type-submit elementor-col-100 e-form__buttons">
<button type="submit" class="elementor-button elementor-size-sm"   onclick="calculate()"   >
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

