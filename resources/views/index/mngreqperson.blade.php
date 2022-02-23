
 @extends('index.layout')


@section('title')

	<title>{{Session::get('mngindexs')->ind_ftitile}} | مشاهده درخواست های من</title> 
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

						
			
								
 <h1 style="text-align: center;">درخواست های من</h1>
<h2 style="text-align: center;"> لیست تمام درخواست های من</h2>
 
@if($stat=='user')
@if($admins) 
<table id="tablepress-1" class="tablepress tablepress-id-1">
<thead>
<tr class="row-1 odd">
	<th class="column-1">ردیف</th>
	<th class="column-2">نام و نام خانوادگی</th> 
	<th class="column-4">شماره همراه</th>
	<th class="column-4">تلفن درخواست شده</th>
	<th class="column-5">تاریخ ثبت سفارش</th>
	<th class="column-6">درخواست کننده</th>
	<th class="column-6">وضعیت</th>
	<th class="column-7">ویرایش</th>
	<th class="column-8">مشاهده</th>
	<th class="column-9">هزینه</th>
	<th class="column-10">پرداخت</th>
</tr>
</thead>
<tbody class="row-hover"> 
<?php $i=1; ?>
@foreach($admins as $admin) 
<tr class="row-2 even">
	<td class="column-1">{{$i}} </td>
	<td class="column-2"> {{$admin->regp_name}}&nbsp;{{$admin->regp_family}}</td> 
	<td class="column-4">{{$admin->regp_mobile}}</td>
	<td class="column-4" dir="ltr">{{$admin->regp_pernumber}} _ {{$admin->regp_tellreq}}</td>
	<td class="column-5">{{jDate::forge($admin->regp_createdatdate)->format('Y/m/d ساعت H:i a')}}</td>
	<td class="column-4">حقیقی</td>
	<td class="column-6">
	@if($admin->regp_flg=='0') <span style="color: #cba234">
	 منتظر اعلام قیمت <i class="fas fa-spinner fa-pulse"></i></span>
	@elseif($admin->regp_flg=='1') 



	@if(Session::get('mngindexs')->ind_settingpay=='1')
	<span style="color: #317bce"> منتظر پرداخت <i aria-hidden="true" class="fa x-circle"></i> </span> 
	@endif

@if(Session::get('mngindexs')->ind_settingpay=='2')
@if($admin->regp_waitstat=='0')
<span style="color: #317bce"> منتظر پرداخت <i aria-hidden="true" class="fa x-circle"></i> </span> 
@elseif($admin->regp_waitstat!='0')
<span style="color: #317bce">منتظر تایید مدیریت<i aria-hidden="true" class="fa x-circle"></i> </span> 
@endif
@endif






	@elseif($admin->regp_flg=='2') 
	<span style="color: #36e817"> فعال شده  </span>  
	@elseif($admin->regp_flg=='3') 
	<span style="color: #ff0000"> رد شده  </span>  
	@endif 
 </td>
	<td class="column-7">
	<a href="{{env('APP_URL')}}/user/mngreqperson/edit/{{$admin->regp_id}}">
	<i aria-hidden="true" class="fas fa-edit"></i> 
	</a>
	</td>
  <td class="column-8">  <a href="{{env('APP_URL')}}/user/mngreqperson/obser/{{$admin->regp_id}}">
  	<i aria-hidden="true" class="fas fa-eye"></i>
  </a>  </td> 
  
  	<td class="column-9">
	@if($admin->regp_flg=='0')
	 -  
	@else 
 {{$admin->regp_price}} ريال   
	@endif 
 </td>
  	<td class="column-10">
	@if($admin->regp_flg=='1')


	@if(Session::get('mngindexs')->ind_settingpay=='1')

 <form  action="{{env('APP_URL')}}/product" method="post"  >
 
<div class="elementor-field-type-text elementor-field-group elementor-column  ">
 <button type="submit" class="elementor-button elementor-size-sm">
پرداخت  
</button>
</div> &nbsp;

 <input type="hidden" name="name" value="{{$admin->regp_name}}&nbsp;{{$admin->regp_family}}">
 <input type="hidden" name="tell" value="{{$admin->regp_tell}}">
 <input type="hidden" name="email" value="{{$admin->regp_email}}">
 <input type="hidden" name="price" value="{{$admin->regp_price}}">
 <input type="hidden" name="id" value="{{$admin->regp_id}}">
 
 <input type="hidden" name="role" value="person">
 
 
 <input type="hidden" name="_token" value="{{ csrf_token() }}">

</form>   


@endif


@if(Session::get('mngindexs')->ind_settingpay=='2')
@if($admin->regp_waitstat=='0')
<a href="{{env('APP_URL')}}/user/mngreqperson/obser/{{$admin->regp_id}}">
<div class="elementor-field-type-text elementor-field-group elementor-column  ">
 <button type="submit" class="elementor-button elementor-size-sm"    >
 پرداخت دستی   
</button>
</div> &nbsp; 
</a>
@elseif($admin->regp_waitstat!='0') 
<span style="color: #317bce; font-size:12px;" >پرداخت دستی انجام شده(منتظرتایید)<i aria-hidden="true" class="fa x-circle"></i> </span> 
@endif
@endif




	@else 

	@endif 
 </td>
  
  
</tr> 
<?php $i++; ?>
@endforeach 
</tbody>
</table> 
 @endif
 @endif
							

@if($stat=='company')
@if($admins) 
<table id="tablepress-1" class="tablepress tablepress-id-1">
<thead>
<tr class="row-1 odd">
	<th class="column-1">ردیف</th>
	<th class="column-2">نام شرکت</th>  
	<th class="column-4">تلفن درخواست شده</th>
	<th class="column-5">تاریخ ثبت سفارش</th>
	<th class="column-6">درخواست کننده</th>
	<th class="column-6">وضعیت</th>
	<th class="column-7">ویرایش</th>
	<th class="column-8">مشاهده</th>
	<th class="column-9">هزینه</th>
	<th class="column-10">پرداخت</th>
</tr>
</thead>
<tbody class="row-hover"> 
<?php $i=1; ?>
@foreach($admins as $admin) 
<tr class="row-2 even">
	<td class="column-1">{{$i}} </td>
	<td class="column-2"> {{$admin->regc_namecompany}} </td>  
	<td class="column-4" dir="ltr">{{$admin->regc_pernumber}} _ {{$admin->regc_tellreq}}</td>
	<td class="column-5">{{jDate::forge($admin->regc_createdatdate)->format('Y/m/d ساعت H:i a')}}</td>
	<td class="column-4">حقوقی</td> 

	<td class="column-6">
	@if($admin->regc_flg=='0') <span style="color: #cba234">
	 منتظر اعلام قیمت <i class="fas fa-spinner fa-pulse"></i></span>
	@elseif($admin->regc_flg=='1') 
 

	
	@if(Session::get('mngindexs')->ind_settingpay=='1')
	<span style="color: #317bce"> منتظر پرداخت <i aria-hidden="true" class="fa x-circle"></i> </span> 
	@endif

@if(Session::get('mngindexs')->ind_settingpay=='2')
@if($admin->regc_waitstat=='0')
<span style="color: #317bce"> منتظر پرداخت <i aria-hidden="true" class="fa x-circle"></i> </span> 
@elseif($admin->regc_waitstat!='0')
<span style="color: #317bce">منتظر تایید مدیریت<i aria-hidden="true" class="fa x-circle"></i> </span> 
@endif
@endif






	@elseif($admin->regc_flg=='2') 
	<span style="color: #36e817"> فعال شده  </span>  
	@elseif($admin->regc_flg=='3') 
	<span style="color: #ff0000"> رد شده  </span>  
	@endif 
 </td>
 
	<td class="column-7">
	<a href="{{env('APP_URL')}}/user/mngreqcompany/edit/{{$admin->regc_id}}">
	<i aria-hidden="true" class="fas fa-edit"></i> 
	</a>
	</td>
  <td class="column-8">  <a href="{{env('APP_URL')}}/user/mngreqcompany/obser/{{$admin->regc_id}}">
  	<i aria-hidden="true" class="fas fa-eye"></i>
  </a>  </td> 
  
  
 <td class="column-9">
	@if($admin->regc_flg=='0')
	 -  
	@else 
 {{$admin->regc_price}} ريال   
	@endif 
 </td>
  
 <td class="column-10">
	@if($admin->regc_flg=='1')

	@if(Session::get('mngindexs')->ind_settingpay=='1')
 <form  action="{{env('APP_URL')}}/product" method="post"  >
 
<div class="elementor-field-type-text elementor-field-group elementor-column  ">
 <button type="submit" class="elementor-button elementor-size-sm">
پرداخت  
</button>
</div> &nbsp;

 <input type="hidden" name="name" value="{{$admin->regc_namecompany}}">
 <input type="hidden" name="tell" value="{{$admin->regc_tell}}">
 <input type="hidden" name="email" value="{{$admin->regc_email}}">
 <input type="hidden" name="price" value="{{$admin->regc_price}}">
 <input type="hidden" name="id" value="{{$admin->regc_id}}">
 
 <input type="hidden" name="role" value="company">
 
 
 <input type="hidden" name="_token" value="{{ csrf_token() }}">

</form>


@endif


@if(Session::get('mngindexs')->ind_settingpay=='2')
@if($admin->regc_waitstat=='0')
<a href="{{env('APP_URL')}}/user/mngreqcompany/obser/{{$admin->regc_id}}">
<div class="elementor-field-type-text elementor-field-group elementor-column  ">
 <button type="submit" class="elementor-button elementor-size-sm"    >
 پرداخت دستی   
</button>
</div> &nbsp; 
</a>
@elseif($admin->regc_waitstat!='0') 
<span style="color: #317bce; font-size:12px;" >پرداخت دستی انجام شده(منتظرتایید)<i aria-hidden="true" class="fa x-circle"></i> </span> 
@endif
@endif




	@else 

 
	@endif 
 </td>
 
 
</tr> 
<?php $i++; ?>
@endforeach 
</tbody>
</table> 
 @endif
 @endif
							

				

				

	 
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

