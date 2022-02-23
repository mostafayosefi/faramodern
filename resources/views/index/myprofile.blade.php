
 @extends('index.layout')


@section('title')

	<title>{{Session::get('mngindexs')->ind_ftitile}} | پروفایل من </title> 
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
		<div id="main-content-row" class="content-row default-style main-content-row fullwidth no-sidebar">
			<div class="content-row-wrapper row default">




 



 							<main class="col col-lg-12 col-12 content fullwidth"> 
								<div class="column-inner">
					
		
	 

<div class="elementor-field-type-email elementor-field-group elementor-column elementor-field-group-email elementor-col-60"> 
						
 <h1 style="text-align: center;">  پروفایل من   </h1> 
 
 
 
  
 
 
  

									<table class="table table-bordered">
										<thead>
											<tr>
												<th>
													#
												</th>
												<th>
												
<a  href="{{env('APP_URL')}}/user/editprofile"   >
 ویرایش پروفایل <i aria-hidden="true" class="fas fa-edit"></i> </a>
												</th> 
											</tr>
										</thead>

<tbody>
<tr><td>نام و نام خانوادگی</td><td> {{$user->user_name}}</td></tr> 
<tr><td>تلفن</td><td> {{$user->user_tell}}</td></tr> 
<tr><td>ایمیل</td><td> {{$user->user_email}}</td></tr> 
<tr><td>نام کاربری</td><td> {{$user->user_username}}</td></tr> 
<tr><td>آدرس پستی</td><td> {{$user->user_adres}}</td></tr>  
<tr><td>تصویر پروفایل</td>

<td> 
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
</td>


</tr>  
<tr><td>تاریخ ثبت نام</td><td>{{jDate::forge($user->user_createdatdate)->format('Y/m/d ساعت h:i a ')}}</td></tr> 
  
</tbody>
									</table>

 
	</div>						

				

				

	 
								</div>
				</main>

			
			</div>	
		</div><!-- / end #main-content-row -->
		 
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

