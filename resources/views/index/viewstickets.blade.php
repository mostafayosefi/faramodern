
 @extends('index.layout')


@section('title')

	<title>{{Session::get('mngindexs')->ind_ftitile}} | مشاهده تیکتهای من</title> 
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
<div class="elementor-widget-wrap"  >
<div class="elementor-element elementor-element-f464a19 elementor-view-stacked elementor-shape-circle elementor-widget elementor-widget-icon" data-id="f464a19" data-element_type="widget" data-widget_type="icon.default">
<div class="elementor-widget-container">
<div class="elementor-icon-wrapper">
<div class="elementor-icon" style="background-color: #591fe0 !important;">
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
						<H2 class="   rt-heading style-3" >مشاهده تیکتهای من</H2>
					</div>		</div>
				</div>
				<div class="elementor-element elementor-element-412944a elementor-widget elementor-widget-rt-pricing-table" data-id="412944a" data-element_type="widget" data-widget_type="rt-pricing-table.default">


 
  
							
 
@if($admins) 
<table id="tablepress-1" class="tablepress tablepress-id-1">
<thead>
<tr class="row-1 odd"> 
	
	
     				    <th class="column-1">ردیف</th>  
                        <th class="column-2">موضوع تیکت</th> 
                        <th class="column-3">تاریخ تیکت</th>
                        <th class="column-4">وضعیت</th> 
                        <th class="column-5">حذف</th> 
                        
                        
</tr>
</thead>
<tbody class="row-hover"> 
<?php $i=1; ?>
 @foreach ($admins as $admin)
 

										<tr class="gradeX">
										 <td>{{$i++}} </td> 
                        <td>{{$admin->tik_tit}}  @if($admin->tik_fromread=='0')
 (<span style="color: #18f20d;  "   title="" >  1 پیام جدید</span>)
                        @endif</td>   
                        <td>{{jDate::forge($admin->tik_date)->format('Y/m/d ساعت H:i a')}}</td>
@if($admin->tik_active == '2')                       
<td><a href="viewstickets/ticket/{{$admin->id}}" > <span class="btn btn-success btn-sm">پاسخ داده شده</span></a></td>
@elseif($admin->tik_active == '1') 
<td><a href="viewstickets/ticket/{{$admin->id}}"   ><span class="btn btn-warning btn-sm">منتظر پاسخ</span></a></td>
@elseif($admin->tik_active == '0') 
<td><a href="viewstickets/ticket/{{$admin->id}}"   ><span  class="btn btn-info btn-sm">بسته شده</span></a></td>

@endif

<td><a href="viewstickets/delet/{{$admin->id}}"   ><span class="btn btn-danger btn-sm">حذف</span></a></td>
 
										</tr>
 
 @endforeach
</tbody>
</table> 
 @endif 
							

				

				

	 
								</div>
				</main>

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

