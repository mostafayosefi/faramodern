@extends('mng.layout')


 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

@section('title')
<title>اطلاعات ثبت نام حقوقی کاربر
</title>
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


        <nav class="page-breadcrumb">
          <ol class="breadcrumb">
 <li class="breadcrumb-item"><a href="{{env('APP_URL')}}/superadmin/dashboard">داشبورد مدیریت</a></li>
 <li class="breadcrumb-item"><a href="{{env('APP_URL')}}/superadmin/viewsrequsts/reqall/company">مشاهده درخواست های حقوقی</a></li>
            <li class="breadcrumb-item active" aria-current="page">{{$requests->regc_namecompany}}&nbsp; </li>
          </ol>
        </nav>

		 

        <div class="row">
          <div class="col-12 col-xl-12 stretch-card">
            <div class="row flex-grow">
            
            
              <div class="col-md-3 grid-margin stretch-card">
			  </div>
              
              
              
              
              <div class="col-md-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">

 <div class="card-header card-header-border-bottom">
 <h4>اطلاعات ثبت نام حقوقی کاربر</h4>
 </div>

<br>
 
 								<div class="table-responsive pt-3">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th>
													#
												</th>
												<th>
<a href="{{env('APP_URL')}}/superadmin/editcompany/{{$requests->regc_id}}"> ویرایش درخواست </a>
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
<tr><td>پیش شماره تلفن درخواست شده</td><td>{{$requests->regc_pernumber}}</td></tr>   
<tr><td>شماره تلفن درخواست شده</td><td>{{$requests->regc_tellreq}}</td></tr> 
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


  
<tr><td>تاریخ ثبت سفارش</td><td>{{jDate::forge($requests->regc_createdatdate)->format('Y/m/d ساعت h:i a ')}}</td></tr> 
 
 

@if($requests->regc_flg=='0')
<tr>  <td>وضعیت</td> <td> <span style="color: #cba234">	 منتظر اعلام قیمت  </span> </td> </tr> 

<tr>  <td>تغییر وضعیت</td> <td>   
<span  class="btn btn-success btn-sm"  data-toggle="modal" data-target="#st1st{{$requests->regc_id}}">  تایید درخواست و اعلام قیمت  </span> <hr> 
<span  class="btn btn-info btn-sm"  data-toggle="modal" data-target="#st2st{{$requests->regc_id}}">  تایید و پرداخت دستی   </span> <hr> 
<span  class="btn btn-danger btn-sm"  data-toggle="modal" data-target="#st3st{{$requests->regc_id}}">   رد درخواست    </span> </td> </tr> 

@elseif($requests->regc_flg=='1') 

<tr>  <td>توضیحات مدیر</td> <td> <span><b>{{$requests->regc_statdes}}</b></span> </td> </tr> 

<tr>  <td>وضعیت</td> <td> 
   



  @if($mngindexs->ind_settingpay=='1')
	<span style="color: #317bce"> منتظر پرداخت <i aria-hidden="true" class="fa x-circle"></i> </span> 
	@endif

  @if($mngindexs->ind_settingpay=='2')
  @if($requests->regc_waitstat=='0')
<span style="color: #317bce"> منتظر پرداخت <i aria-hidden="true" class="fa x-circle"></i> </span> 
@elseif($requests->regc_waitstat!='0')
<span style="color: #317bce;  " >پرداخت دستی انجام شده(منتظرتایید)<i aria-hidden="true" class="fa x-circle"></i> </span>  
@endif
@endif




</td> </tr> 

<tr> <td>تغییر وضعیت</td> <td>
  
<span  class="btn btn-success btn-sm"  data-toggle="modal" data-target="#st1st{{$requests->regc_id}}">  اعلام مجدد قیمت  </span> <hr> 
<span  class="btn btn-info btn-sm"  data-toggle="modal" data-target="#st2st{{$requests->regc_id}}">  تایید و پرداخت دستی   </span> <hr> 
<span  class="btn btn-danger btn-sm"  data-toggle="modal" data-target="#st3st{{$requests->regc_id}}">   رد درخواست    </span> 
 
</td></tr> 
<tr><td>هزینه</td><td>{{$requests->regc_price}} ريال</td></tr>
<tr><td>تاریخ براورد قیمت</td><td>{{jDate::forge($requests->regc_pricedate)->format('Y/m/d ساعت h:i a ')}}</td></tr>  
@elseif($requests->regc_flg=='2')
<tr>  <td>توضیحات مدیر</td> <td> <span><b>{{$requests->regc_statdes}}</b></span> </td> </tr>  
<tr>  <td>وضعیت</td> <td> <span style="color: #36e817">	 فعال شده  </span> </td> </tr>  
<tr> <td>تغییر وضعیت</td> <td>
  
<span  class="btn btn-success btn-sm"  data-toggle="modal" data-target="#st1st{{$requests->regc_id}}">  اعلام مجدد قیمت  </span> <hr>  
<span  class="btn btn-danger btn-sm"  data-toggle="modal" data-target="#st3st{{$requests->regc_id}}">   رد درخواست    </span> 
 
</td></tr> 
<tr><td>هزینه</td><td>{{$requests->regc_price}} ريال</td></tr>
@elseif($requests->regc_flg=='3')
<tr>  <td>توضیحات مدیر</td> <td> <span><b>{{$requests->regc_statdes}}</b></span> </td> </tr>  
<tr>  <td>وضعیت</td> <td> <span style="color: #ff0000">	 رد شده  </span> </td> </tr>  
<tr> <td>تغییر وضعیت</td> <td>
  

<span  class="btn btn-success btn-sm"  data-toggle="modal" data-target="#st1st{{$requests->regc_id}}">  تایید درخواست و اعلام قیمت  </span> <hr>    
 
</td></tr> 
<tr><td>هزینه</td><td>{{$requests->regc_price}} ريال</td></tr>
<tr><td>تاریخ پرداخت</td><td>{{jDate::forge($requests->regc_pricedate)->format('Y/m/d ساعت h:i a ')}}</td></tr>  
@endif   
 
 
 
 
@if($requests->regc_flg=='1')
@if($requests->regc_waitstat!='0')

<tr><td><span style="color: #317bce"> اطلاعات پرداخت دستی    </span> </td> </tr> 
<tr><td>شماره تراکنش </td><td>  {{$requests->regc_dincodetraking}}</td> </tr> 
<tr><td>توضیحات تراکنش </td><td>  {{$requests->regc_dindes}}</td> </tr> 
<tr><td>تاریخ ثبت پرداخت دستی</td><td>{{jDate::forge($requests->regc_dindate)->format('Y/m/d ساعت h:i a ')}}</td></tr> 


@endif
@endif
 
 
@if($requests->regc_flg=='0')
 
@elseif($requests->regc_flg=='1')  
 
@elseif($requests->regc_flg=='2') 

@elseif($requests->regc_flg=='3') 

@endif
 
 <div class="modal fade" id="st1st{{$requests->regc_id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">   {{$requests->regc_namecompany}} </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
       
<form class="elementor-form"  enctype="multipart/form-data"  method="post"  action="{{env('APP_URL')}}/superadmin/accperson/{{$requests->regc_id}}/status/1/company" >  

 <input type="hidden" name="price" value="">
 <div class="modal-body"> 
برای تایید درخواست کاربر می توانید اقدام نمایید .  
<div class="form-group">
 <label>&nbsp;</label> 
</div>
 
<div class="form-group">
 <label>هزینه به ریال</label>
<input size="1" type="text" name="price" id="form-field-name"  class="form-control"  placeholder="هزینه به ریال" required="required" value="{{$requests->regc_price}}" aria-required="true"> 
</div> 


<div class="form-group">
 <label>توضیحات</label> 

<textarea name="des"   class="form-control" rows="5" >@if($requests->regc_flg=='0') @elseif($requests->regc_flg=='1'){{$requests->regc_statdes}} @endif</textarea>

</div> 


 </div>
 <div class="modal-footer">  
 <button type="submit" class="btn btn-success"> تایید درخواست  </button>  
 <input type="hidden" name="_token" value="{{ csrf_token() }}">
 <button type="button" class="btn btn-secondary" data-dismiss="modal">بستن</button>  
 </div>  
 </form>      
      
 </div>
 </div>
 </div>
 
 
 
 <div class="modal fade" id="st2st{{$requests->regc_id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">   {{$requests->regc_namecompany}} </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div> 
      
<form class="elementor-form"  enctype="multipart/form-data"  method="post"  action="{{env('APP_URL')}}/superadmin/accperson/{{$requests->regc_id}}/status/2/company"  > 
 <div class="modal-body">
برای تایید پرداخت درخواست کاربر می توانید اقدام نمایید . 
 <div class="form-group">
 <label>&nbsp;</label> 
 </div>
 
 
<div class="form-group">
 <label>توضیحات</label>  
<textarea name="des"   class="form-control" rows="5" ></textarea> 
</div> 
 
 <input type="hidden" name="price" value="{{$requests->regc_price}}"> 
 </div>
 <div class="modal-footer"> 
 <button type="submit" class="btn btn-primary"  > تایید پرداخت کاربر </button>     
 <input type="hidden" name="_token" value="{{ csrf_token() }}">
 <button type="button" class="btn btn-secondary" data-dismiss="modal">بستن</button> 
 </div> 
 </form>      
 </div>
 </div>
 </div>
 
 
 
 
 <div class="modal fade" id="st3st{{$requests->regc_id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">   {{$requests->regc_namecompany}} </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div> 
      
<form class="elementor-form"  enctype="multipart/form-data"  method="post"  action="{{env('APP_URL')}}/superadmin/accperson/{{$requests->regc_id}}/status/3/company"  > 
 <div class="modal-body">
برای رد درخواست کاربر می توانید اقدام نمایید . 
 <div class="form-group">
 <label>&nbsp;</label> 
 </div>
 
 
<div class="form-group">
 <label>توضیحات</label>  
<textarea name="des"   class="form-control" rows="5" ></textarea> 
</div> 
 
 <input type="hidden" name="price" value="{{$requests->regc_price}}"> 
 </div>
 <div class="modal-footer"> 
 <button type="submit" class="btn btn-danger"  > رد درخواست </button>     
 <input type="hidden" name="_token" value="{{ csrf_token() }}">
 <button type="button" class="btn btn-secondary" data-dismiss="modal">بستن</button> 
 </div> 
 </form>      
 </div>
 </div>
 </div>
 
 
 
 

 

  

</tbody>
									</table>
								</div>




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