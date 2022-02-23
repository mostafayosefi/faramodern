
 @extends('index.layout')


@section('title')

	<title>{{Session::get('mngindexs')->ind_ftitile}} | ویرایش پروفایل</title> 
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
						<H2 class="   rt-heading style-3" >ویرایش پروفایل</H2>
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
 
 
 
   
             



<form class="elementor-form"  enctype="multipart/form-data"  method="post" action="{{env('APP_URL')}}/user/editprofile"  > 

 


 
 <div class="elementor-form-fields-wrapper elementor-labels-above" style="padding-bottom: 30px;"> 
<div class="elementor-field-type-email elementor-field-group elementor-column elementor-field-group-email elementor-col-40">
 <label>نام و نام خانوادگی </label>
<input size="1" type="text" name="name" id="form-field-name" class="elementor-field elementor-size-sm  elementor-field-textual" placeholder="نام و نام خانوادگی" required="required" value="{{$user->user_name}}" aria-required="true"> 
</div>
<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-10 elementor-field-required"></div>
  
<div class="elementor-field-type-email elementor-field-group elementor-column elementor-field-group-email elementor-col-40"> 
  <label>  تلفن  </label>
<input size="1" type="text" name="tell" id="form-field-name" class="elementor-field elementor-size-sm  elementor-field-textual" placeholder="تلفن   "   value="{{$user->user_tell}}" aria-required="true"> 
</div>
</div>  



 
 <div class="elementor-form-fields-wrapper elementor-labels-above" style="padding-bottom: 30px;"> 
<div class="elementor-field-type-email elementor-field-group elementor-column elementor-field-group-email elementor-col-40">
 <label>نام کاربری</label>
<input size="1" type="text" name="username" id="form-field-name" class="elementor-field elementor-size-sm  elementor-field-textual" placeholder="نام کاربری" disabled="" required="required" value="{{$user->user_username}}" aria-required="true"> 
</div>
<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-10 elementor-field-required"></div>
  
<div class="elementor-field-type-email elementor-field-group elementor-column elementor-field-group-email elementor-col-40"> 
  <label>  ایمیل  </label>
<input size="1" type="email" name="email" id="form-field-name" class="elementor-field elementor-size-sm  elementor-field-textual" placeholder="ایمیل   "   value="{{$user->user_email}}" aria-required="true"> 
</div>
</div>  
 
 <div class="elementor-form-fields-wrapper elementor-labels-above" style="padding-bottom: 30px;"> 
 
 
 
<div class="elementor-field-type-upload elementor-field-group elementor-column elementor-field-group-field_e7a3959 elementor-col-40">

@if($user->user_img != '')
 
<img src="{{env('APP_URL')}}/public/images/{{$user->user_img}}" style="
 border-radius: 50%;
 height: 100px;
 width: 100px;" > 
 

@else
 
<div class="elementor-element elementor-element-f464a19 elementor-view-stacked elementor-shape-circle elementor-widget elementor-widget-icon" data-id="f464a19" data-element_type="widget" data-widget_type="icon.default">
<div class="elementor-widget-container">
<div class="elementor-icon-wrapper">
<div class="elementor-icon">
<i aria-hidden="true" class="fas fa-user-alt"></i>
</div></div></div></div>
@endif

<label for="form-field-field_e7a3959" class="elementor-field-label">تصویرپروفایل</label> 

<input type="file" name="file" id="form-field-field_e7a3959" class="elementor-field elementor-size-sm  elementor-upload-field"  placeholder="تصویرپروفایل"    accept="image/png, image/jpeg"   data-maxsize="5" data-maxsize-message="This file exceeds the maximum allowed size.">				
</div>
  

<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-10 elementor-field-required"></div>
<div class="elementor-field-type-email elementor-field-group elementor-column elementor-field-group-email elementor-col-40">
 <label>آدرس پستی</label> 

<textarea name="adres" id="form-field-name" class="elementor-field elementor-size-sm  elementor-field-textual" placeholder="آدرس پستی"  required="required" rows="5" >{{$user->user_adres}}</textarea>

</div>
   
</div>  
 
  
 


  

 

 <br>

 <div class="elementor-form-fields-wrapper elementor-labels-above" style="padding-bottom: 30px;" > 

 <div class="col-12">
 <div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-100 elementor-field-required">  
<div class="elementor-field-group elementor-column elementor-field-type-submit elementor-col-100 e-form__buttons">
<button type="submit" class="elementor-button elementor-size-sm"     >
<span >
<span class=" elementor-button-icon"></span>
<span class="elementor-button-text">ویرایش اطلاعات</span>
</span>
</button></div> 
</div>
</div> 
 

 </div>



              <input type="hidden" name="_token" value="{{ csrf_token() }}">
 





</form>	


 <script> 
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

