
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
<div class="elementor-icon">
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
				
				
					 
					<div class="elementor-container elementor-column-gap-default">
							<div class="elementor-row">
					<div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-71c294d" data-id="71c294d" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
					 
				 
				
				  
				<div class="elementor-element elementor-element-412944a elementor-widget elementor-widget-rt-pricing-table" data-id="412944a" data-element_type="widget" data-widget_type="rt-pricing-table.default">


 
 
 	<div class="features">
		<div class="container">
							<div class="feature" id="feature0">
					<div class="comment">

<header class="page-header mt-6 mt-sm-8">
    <div class="abstract abstract-green abstract-right page-header-abstract-1 t-50"></div>
    <div class="container text-right">
        <h1 class="hero-title">
         پشتیبانی
        </h1>
        
    </div>
</header>
						<div class="text">
						
 
 @if($messages)
 

@foreach ($messages as $message)  




 
                    <div class="col-12 col-lg-9 col-xl-8">
                    
                    
                    

@if($message->mes_flg=='1')
                        <div class="rounded p-3 p-sm-4 p-md-5 bg-white shadow text-center text-md-right">
                             
                             
                            <div class="text-xs text-muted">
 <span class="highlight highlight-orange">Test </span> <img height="48" width="48"  src="https://cdn3.iconfinder.com/data/icons/user-with-laptop/100/user-laptop-512.png" />   &nbsp;  &nbsp; {{$message->mes_des}} 
                            <br>
                            <span class=" text-muted text-sm  "> 
  {{jDate::forge($message->mes_createdatdate)->format('l d F Y ساعت H:i a')}}
                            </span>
                            
                            </div>
                             
                            
                            
                        </div>

@elseif($message->mes_flg=='2')

 

                        <div class="rounded p-3 p-sm-4 p-md-5 bg-white shadow text-center text-md-left">
                             
                             
                            <div class="text-xs text-muted">
 <span class="highlight highlight-green">مدیریت </span> <img height="48" width="48"  src="https://findicons.com/files/icons/2526/bloggers/256/admin.png" />   &nbsp;  &nbsp; {{$message->mes_des}} 
                            <br>
                            <span class=" text-muted text-sm  "> 
  {{jDate::forge($message->mes_createdatdate)->format('l d F Y ساعت H:i a')}}
                            </span>
                            
                            </div>
                             
                            
                            
                        </div>
                        
                        
@endif 
                        
                        
                        
                    </div>
                
                
                
             
@endforeach						
		
@endif


				
 
 </div>
 </div>
 <div class="image" style="background-image: url(&#39;{{env('APP_URL')}}/build/desktop/convertToOnline.png&#39;)"></div>
 </div>
 </div>
 </div>

 
 
                
                
                
 	<div class="container">
		<div class="panel grayscale-background">
			<div class="aboutUs grayscale-color" ng-hide="state.page.preloader">
				<p> &nbsp; </p>			
				
				
 <form  action="{{env('APP_URL')}}/user/viewstickets/ticket/{{$id}}" method="post"  class="ng-pristine ng-scope ng-invalid ng-invalid-required">
					<div class="form">
						<div class="inputBoxes">
 <div class="tools_inputBox  "  >

 
 <br>





 
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
 

 
 
 <input type="hidden" name="_token" value="{{ csrf_token() }}">

							</div>
							
							
						
						
						</div>
					</div>
			 
					
					
					 
					
					
					
				</form>

   
				
				
				
				
				
				</div>
 
		</div>
	</div>
 
 
      


 <script src="{{env('APP_URL')}}/build/js/alert/alertify.min.js"></script>
 <link rel="stylesheet" href="{{env('APP_URL')}}/build/js/alert/alertify.core.css" />
 <link rel="stylesheet" href="{{env('APP_URL')}}/build/js/alert/alertify.default.css" id="toggleCSS" />

 




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

