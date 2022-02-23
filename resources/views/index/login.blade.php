
 @extends('index.layout')


@section('title')

	<title>{{Session::get('mngindexs')->ind_ftitile}} | ورود کاربر</title> 
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



@stop





@section('body') 
 
 

<!-- main contents -->
<div id="main-content">

	 

						
			
								
						<div data-elementor-type="wp-post" data-elementor-id="52" class="elementor elementor-52" data-elementor-settings="[]">
						<div class="elementor-inner">
							<div class="elementor-section-wrap">
							<section class="elementor-section elementor-top-section elementor-element elementor-element-585e8a2 elementor-section-height-min-height elementor-section-boxed elementor-section-height-default elementor-section-items-middle default-style" data-id="585e8a2" data-element_type="section" data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;rt_color_sets&quot;:&quot;default-style&quot;}"  @if($txtdes->txt_img != '')   style="background-image:url('public/images/{{$txtdes->txt_img}}')  ; background-position:center center;background-size:cover;" @endif   >
						<div class="elementor-container elementor-column-gap-default">
							<div class="elementor-row">
					<div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-39c48d1" data-id="39c48d1" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-b7eaa5a elementor-widget elementor-widget-rt-heading" data-id="b7eaa5a" data-element_type="widget" data-widget_type="rt-heading.default">
				<div class="elementor-widget-container">
			<div class="rt-heading-wrapper text-center">
						<H1 class="   rt-heading custom-color" >ورود کاربر  {{Session::get('mngindexs')->ind_ftitile}} </H1>
					</div>		</div>
				</div>
						</div>
					</div>
		</div>
								</div>
					</div>
		</section>
				<section class="elementor-section elementor-top-section elementor-element elementor-element-6d431d8 elementor-section-boxed elementor-section-height-default elementor-section-height-default default-style" data-id="6d431d8" data-element_type="section" data-settings="{&quot;rt_color_sets&quot;:&quot;default-style&quot;}">
						<div class="elementor-container elementor-column-gap-default">
							<div class="elementor-row">
					<div class="elementor-column elementor-col-16 elementor-top-column elementor-element elementor-element-0cc4eaa" data-id="0cc4eaa" data-element_type="column">
			<div class="elementor-column-wrap">
							<div class="elementor-widget-wrap">
								</div>
					</div>
		</div>
				<div class="elementor-column elementor-col-66 elementor-top-column elementor-element elementor-element-9c06592" data-id="9c06592" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-5cbd3b3 elementor-widget elementor-widget-rt-heading" data-id="5cbd3b3" data-element_type="widget" data-widget_type="rt-heading.default">
				<div class="elementor-widget-container">
			<div class="rt-heading-wrapper text-center">
<?php echo $txtdes->txt_des; ?>


					</div>		</div>
				</div>
				<div class="elementor-element elementor-element-1720180 elementor-button-align-center elementor-widget elementor-widget-form" data-id="1720180" data-element_type="widget" data-settings="{&quot;step_next_label&quot;:&quot;Next&quot;,&quot;step_previous_label&quot;:&quot;Previous&quot;,&quot;button_width&quot;:&quot;100&quot;,&quot;step_type&quot;:&quot;number_text&quot;,&quot;step_icon_shape&quot;:&quot;circle&quot;}" data-widget_type="form.default">
				<div class="elementor-widget-container">


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
 
 
 
<form class="elementor-form" method="post" action="{{env('APP_URL')}}/login"  >  
<div class="elementor-form-fields-wrapper elementor-labels-above">

<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-20 elementor-field-required">
 
<label>نام کاربری یا ایمیل</label>
</div>

<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-40 elementor-field-required">
<input size="1" type="text" name="firstname" id="form-field-name" class="elementor-field elementor-size-sm  elementor-field-textual" placeholder="لطفا نام کاربری یا ایمیل خود را وارد نمایید" required="required" value="{{old('firstname')}}" aria-required="true">
</div>

<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-40 elementor-field-required">
 
</div>


<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-20 elementor-field-required">
 
<label>رمزعبور</label>
</div>

<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-40 elementor-field-required">
<input size="1" type="password" name="lastname" id="form-field-name" class="elementor-field elementor-size-sm  elementor-field-textual" placeholder="لطفا رمزعبور خود را وارد نمایید" required="required"  aria-required="true">
</div>

<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-40 elementor-field-required">
 
</div>


<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-20 elementor-field-required">
 
  
 
</div>

<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-20 elementor-field-required">
 
 <span style="">
 <input type="checkbox" name="remember" id="remember"   <?php if(isset($_COOKIE["member_login"])) { ?> checked <?php } ?>  /> مرا بخاطر بسپار</span>

</div>

<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-20 elementor-field-required">
 
</div>
<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-40 elementor-field-required">
 
</div>

 
		 

 

 
              <input type="hidden" name="_token" value="{{ csrf_token() }}">
 

<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-20 elementor-field-required">
 
<label>کد کپچا </label>
</div>


<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-40 elementor-field-required">
<input size="1" type="text"  class="elementor-field elementor-size-sm  elementor-field-textual"  name="capcha" id="token" placeholder="کد کپچا"  required="">
</div>


<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-40 elementor-field-required">
  <img src="{{env('APP_URL')}}/capcha/captcha/image.php?12325" alt="CAPTCHA" id="image-captcha">
									<a href="#" id="refresh-captcha" class="align-middle" title="refresh"><i class="material-icons align-middle">refresh</i></a>
</div>



 			
					
 <script type="text/javascript">
		var refreshButton = document.getElementById("refresh-captcha");
		var captchaImage = document.getElementById("image-captcha");

		refreshButton.onclick = function(event) {
			event.preventDefault();
			captchaImage.src = '{{env("APP_URL")}}/capcha/captcha/image.php?' + Date.now();
			 
			
		}
	</script>


 
<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-20 elementor-field-required">
  
</div>





<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-60 elementor-field-required">
 <button type="submit" class="elementor-button elementor-size-sm">
ورود  
</button>
</div>

<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-20 elementor-field-required">
 
</div>

 
 
			
			
			</div>
		</form>


				</div>
				</div>
						</div>
					</div>
		</div>
				<div class="elementor-column elementor-col-16 elementor-top-column elementor-element elementor-element-a86bf05" data-id="a86bf05" data-element_type="column">
			<div class="elementor-column-wrap">
							<div class="elementor-widget-wrap">
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

