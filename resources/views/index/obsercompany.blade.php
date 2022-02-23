
 @extends('index.layout')


@section('title')

	<title>{{Session::get('mngindexs')->ind_ftitile}} | اطلاعات ثبت شده من (حقوقی)</title> 
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
						
 <h1 style="text-align: center;"> اطلاعات ثبت شده من (حقوقی) </h1> 
 
 
 
  
 
 
 
 
@if($requests)

									<table class="table table-bordered">
										<thead>
											<tr>
												<th>
													#
												</th>
												<th>
												
<a  href="{{env('APP_URL')}}/user/mngreqcompany/edit/{{$requests->regc_id}}"  target="_blank" >
 ویرایش اطلاعات <i aria-hidden="true" class="fas fa-edit"></i> </a>
												</th> 
											</tr>
										</thead>

<tbody>



<tr><td>نام شرکت  </td><td> {{$requests->regc_namecompany}}</td> </tr> 
<tr><td>نام شرکت (En)  </td><td> {{$requests->regc_namecompanyeng}}</td> </tr> 
<tr><td>شماره ثبت  </td><td> {{$requests->regc_numsabt}}</td> </tr> 
<tr><td>تاریخ ثبت  </td><td> {{$requests->regc_datesabt}}</td> </tr> 
<tr><td>محل ثبت  </td><td> {{$requests->regc_locsabt}}</td> </tr> 
<tr><td>کد اقتصادی  </td><td> {{$requests->regc_codfin}}</td> </tr> 
<tr><td>شناسه ملی  </td><td> {{$requests->regc_shemel}}</td> </tr>
<tr><td>تلفن</td><td>{{$requests->regc_tell}}</td></tr> 
<tr><td>ایمیل</td><td>{{$requests->regc_email}}</td></tr> 
<tr><td>کشور</td><td>{{$requests->regc_country}}</td></tr> 
<tr><td>استان</td><td>{{$requests->regc_ost}}</td></tr>  
<tr><td>شهر</td><td>{{$requests->regc_city}}</td></tr>  
<tr><td>کدپستی محل</td><td>{{$requests->regc_codp}}</td></tr>  
<tr><td>آدرس محل</td><td>{{$requests->regc_adres}}</td></tr> 
<tr><td>نام مدیرعامل  </td><td> {{$requests->regc_namemodir}}</td> </tr> 
<tr><td>زمینه فعالیت  </td><td> {{$requests->regc_desactive}}</td> </tr> 
<tr><td>نام رابط  </td><td> {{$requests->regc_namerabet}}</td> </tr> 
<tr><td>نام خانوادگی رابط  </td><td> {{$requests->regc_familyrabet}}</td> </tr> 
<tr><td>نام و نام خانوادگی رابط (En)  </td><td> {{$requests->regc_namerabeteng}}</td> </tr> 
<tr><td>نام پدر رابط  </td><td> {{$requests->regc_fatherrabet}}</td> </tr> 
<tr><td>سمت رابط  </td><td> {{$requests->regc_semat}}</td> </tr> 
<tr><td>موبایل رابط  </td><td> {{$requests->regc_mobile}}</td> </tr> 
<tr><td>تاریخ تولد رابط  </td><td> {{$requests->regc_birthday}}</td> </tr> 
<tr><td>ملیت رابط  </td><td> {{$requests->regc_countryrabet}}</td> </tr> 
<tr><td>کدملی رابط  </td><td> {{$requests->regc_codmel}}</td> </tr> 
<tr><td>شماره شناسنامه رابط  </td><td> {{$requests->regc_shosherabet}}</td> </tr> 
<tr><td>توضیحات</td><td>{{$requests->regc_des}}</td></tr> 
<tr><td>شماره تلفن درخواست شده</td><td>{{$requests->regc_tellreq}}</td></tr>  
<tr><td>مدارک آپلود شده</td>

<td> 
@if($requests->regc_file != '')
@if ((str_contains($requests->regc_file, 'png'))||(str_contains($requests->regc_file, 'gif'))||(str_contains($requests->regc_file, 'jpg'))||(str_contains($requests->regc_file, 'tif')))  

<a  href="{{env('APP_URL')}}/public/images/{{$requests->regc_file}}"  target="_blank" >
<img style="height: 100px; width: 100px;" src="{{env('APP_URL')}}/public/images/{{$requests->regc_file}}" /></a>

@else 

<a  href="{{env('APP_URL')}}/public/images/{{$requests->regc_file}}"  target="_blank" >
 مشاهده فایل <i aria-hidden="true" class="fas fa-eye"></i> </a>


@endif

@else
مدارکی آپلود نشده است!
@endif
</td>


</tr>  


 


<tr><td>تاریخ ثبت</td><td>{{jDate::forge($requests->regc_createdatdate)->format('Y/m/d ساعت h:i a ')}}</td></tr> 

      
    

	@if($requests->regc_flg=='0') 
<tr><td>وضعیت</td> <td><span style="color: #cba234">	 منتظر اعلام قیمت <i class="fas fa-spinner fa-pulse"></i></span></td> </tr> 
	@elseif($requests->regc_flg=='1') 
<tr>  <td>توضیحات مدیر</td> <td> <span><b>{{$requests->regc_statdes}}</b></span> </td> </tr>  
<tr><td>وضعیت</td> <td><span style="color: #317bce"> منتظر پرداخت <i aria-hidden="true" class="fa x-circle"></i> </span> </td> </tr>   
<tr><td>هزینه</td><td>{{$requests->regc_price}} ريال</td></tr> 
	@elseif($requests->regc_flg=='2') 
<tr>  <td>توضیحات مدیر</td> <td> <span><b>{{$requests->regc_statdes}}</b></span> </td> </tr>  
<tr><td>وضعیت</td> <td><span style="color: #36e817"> فعال شده  </span>  </td> </tr>   
<tr><td>هزینه</td><td>{{$requests->regc_price}} ريال</td></tr> 
	@elseif($requests->regc_flg=='3') 
<tr>  <td>توضیحات مدیر</td> <td> <span><b>{{$requests->regc_statdes}}</b></span> </td> </tr>  
<tr><td>وضعیت</td> <td><span style="color: #ff0000"> رد شده  </span></td> </tr>   
	@endif 




</tbody>
									</table>


 @endif
 
 
 
 
 
 
 
 
 
 
 
 
@if($requests->regc_flg=='1')


@if(Session::get('mngindexs')->ind_settingpay=='1')
 <form  action="{{env('APP_URL')}}/product" method="post"  >
 
<div class="elementor-field-type-text elementor-field-group elementor-column  ">
 <button type="submit" class="elementor-button elementor-size-sm">
پرداخت  
</button>
</div> &nbsp;

 <input type="hidden" name="name" value="{{$requests->regc_namecompany}}">
 <input type="hidden" name="tell" value="{{$requests->regc_tell}}">
 <input type="hidden" name="email" value="{{$requests->regc_email}}">
 <input type="hidden" name="price" value="{{$requests->regc_price}}">
 <input type="hidden" name="id" value="{{$requests->regc_id}}">
 
 <input type="hidden" name="role" value="company">
 
 
 <input type="hidden" name="_token" value="{{ csrf_token() }}">

</form>
@endif




@if(Session::get('mngindexs')->ind_settingpay=='2')
<br>
<?php echo $txtdes->txt_des; ?>

<br>
@if($requests->regc_waitstat=='0')
<form class="elementor-form" action="{{env('APP_URL')}}/user/paymentdinamic/company/{{$requests->regc_id}}" method="post"  >			 
 <input type="hidden" name="_token" value="{{ csrf_token() }}">
 <input type="hidden" name="from" value="contact">
<div class="elementor-form-fields-wrapper elementor-labels-above">

<div class="elementor-field-type-text elementor-field-group elementor-column elementor-field-group-name elementor-col-100 elementor-field-required">
<input size="1" type="text" name="codetraking" id="form-field-name" class="elementor-field elementor-size-sm  elementor-field-textual" placeholder="شماره تراکنش"  >	
</div>

<div class="elementor-field-type-textarea elementor-field-group elementor-column elementor-field-group-message elementor-col-100 elementor-field-required">
<textarea class="elementor-field-textual elementor-field  elementor-size-sm" name="des" id="form-field-message" rows="4" placeholder="توضیحات " required="required" aria-required="true"></textarea>
</div>
 
<div class="elementor-field-group elementor-column elementor-field-type-submit elementor-col-100 e-form__buttons">
<button type="submit" class="elementor-button elementor-size-sm">
<span>
<span class=" elementor-button-icon"></span>
<span class="elementor-button-text">ثبت درخواست </span>
</span>
</button>
</div>
</div>
</form>
		

@elseif($requests->regc_waitstat!='0')
<span style="color: #317bce"> اطلاعات وارد شده پرداخت دستی    <i aria-hidden="true" class="fa x-circle"></i> </span> 


<br>


<table class="table table-bordered"> 

<tbody>
<tr><td>شماره تراکنش </td><td>  {{$requests->regc_dincodetraking}}</td> </tr> 
<tr><td>توضیحات تراکنش </td><td>  {{$requests->regc_dindes}}</td> </tr> 
<tr><td>تاریخ ثبت پرداخت دستی</td><td>{{jDate::forge($requests->regc_dindate)->format('Y/m/d ساعت h:i a ')}}</td></tr> 

</tbody>
</table>

@endif


@endif





@endif
 
 
 
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

