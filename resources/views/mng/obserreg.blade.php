@extends('mng.layout')


 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

@section('title')
<title>اطلاعات ثبت نام حقیقی کاربر
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
 <li class="breadcrumb-item"><a href="{{env('APP_URL')}}/superadmin/viewsrequsts/reqall/person">مشاهده درخواست های کاربران</a></li>
            <li class="breadcrumb-item active" aria-current="page">{{$requests->regp_name}}&nbsp;{{$requests->regp_family}}</li>
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
 <h4>اطلاعات ثبت نام حقیقی کاربر</h4>
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
 <a href="{{env('APP_URL')}}/superadmin/editreqperson/{{$requests->regp_id}}"> ویرایش درخواست </a>
												</th> 
											</tr>
										</thead>

<tbody>
<tr><td>نام  </td><td> {{$requests->regp_name}}</td> </tr> 
<tr><td>نام خانوادگی</td><td>{{$requests->regp_family}}</td></tr> 
<tr><td>نام و نام خانوادگی انگلیسی</td><td>{{$requests->regp_nameeng}}</td></tr> 
<tr><td>نام پدر</td><td>{{$requests->regp_father}}</td></tr> 
<tr><td>موبایل</td><td>{{$requests->regp_mobile}}</td></tr> 
<tr><td>تلفن</td><td>{{$requests->regp_tell}}</td></tr> 
<tr><td>ایمیل</td><td>{{$requests->regp_email}}</td></tr> 
<tr><td>تاریخ تولد</td><td>{{$requests->regp_birthday}}</td></tr> 
<tr><td>کدملی</td><td>{{$requests->regp_codmel}}</td></tr> 
<tr><td>شماره شناسنامه</td><td>{{$requests->regp_shnum}}</td></tr> 
<tr><td>محل صدور</td><td>{{$requests->regp_sodor}}</td></tr> 
<tr><td>کشور</td><td>{{$requests->regp_country}}</td></tr> 
<tr><td>استان</td><td>{{$requests->regp_ost}}</td></tr>  
<tr><td>شهر</td><td>{{$requests->regp_city}}</td></tr> 
<tr><td>توضیحات</td><td>{{$requests->regp_des}}</td></tr>  
<tr><td>پیش شماره تلفن درخواست شده</td><td>{{$requests->regp_pernumber}}</td></tr>  
<tr><td>کدپستی محل</td><td>{{$requests->regp_codp}}</td></tr>  
<tr><td>آدرس محل</td><td>{{$requests->regp_adres}}</td></tr> 
<tr><td>شماره تلفن درخواست شده</td><td>{{$requests->regp_tellreq}}</td></tr>  
<tr><td>مدارک آپلود شده</td>

<td> 
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
</td>


</tr>  


<tr><td>تاریخ ثبت سفارش</td><td>{{jDate::forge($requests->regp_createdatdate)->format('Y/m/d ساعت h:i a ')}}</td></tr> 

@if($requests->regp_flg=='0')
<tr>  <td>وضعیت</td> <td> <span style="color: #cba234">	 منتظر اعلام قیمت  </span> </td> </tr> 

<tr>  <td>تغییر وضعیت</td> <td>   
<span  class="btn btn-success btn-sm"  data-toggle="modal" data-target="#st1st{{$requests->regp_id}}">  تایید درخواست و اعلام قیمت  </span> <hr> 
<span  class="btn btn-info btn-sm"  data-toggle="modal" data-target="#st2st{{$requests->regp_id}}">  تایید و پرداخت دستی   </span> <hr> 
<span  class="btn btn-danger btn-sm"  data-toggle="modal" data-target="#st3st{{$requests->regp_id}}">   رد درخواست    </span> </td> </tr> 

@elseif($requests->regp_flg=='1') 

<tr>  <td>توضیحات مدیر</td> <td> <span><b>{{$requests->regp_statdes}}</b></span> </td> </tr> 

<tr>  <td>وضعیت</td> <td>
   



  @if($mngindexs->ind_settingpay=='1')
	<span style="color: #317bce"> منتظر پرداخت <i aria-hidden="true" class="fa x-circle"></i> </span> 
	@endif

  @if($mngindexs->ind_settingpay=='2')
  @if($requests->regp_waitstat=='0')
<span style="color: #317bce"> منتظر پرداخت <i aria-hidden="true" class="fa x-circle"></i> </span> 
@elseif($requests->regp_waitstat!='0')
<span style="color: #317bce;  " >پرداخت دستی انجام شده(منتظرتایید)<i aria-hidden="true" class="fa x-circle"></i> </span>  
@endif
@endif





</td> </tr> 

<tr> <td>تغییر وضعیت</td> <td>
  
<span  class="btn btn-success btn-sm"  data-toggle="modal" data-target="#st1st{{$requests->regp_id}}">  اعلام مجدد قیمت  </span> <hr> 
<span  class="btn btn-info btn-sm"  data-toggle="modal" data-target="#st2st{{$requests->regp_id}}">  تایید و پرداخت دستی   </span> <hr> 
<span  class="btn btn-danger btn-sm"  data-toggle="modal" data-target="#st3st{{$requests->regp_id}}">   رد درخواست    </span> 
 
</td></tr> 
<tr><td>هزینه</td><td>{{$requests->regp_price}} ريال</td></tr>
<tr><td>تاریخ براورد قیمت</td><td>{{jDate::forge($requests->regp_pricedate)->format('Y/m/d ساعت h:i a ')}}</td></tr>  
@elseif($requests->regp_flg=='2')
<tr>  <td>توضیحات مدیر</td> <td> <span><b>{{$requests->regp_statdes}}</b></span> </td> </tr>  
<tr>  <td>وضعیت</td> <td> <span style="color: #36e817">	 فعال شده  </span> </td> </tr>  
<tr> <td>تغییر وضعیت</td> <td>
  
<span  class="btn btn-success btn-sm"  data-toggle="modal" data-target="#st1st{{$requests->regp_id}}">  اعلام مجدد قیمت  </span> <hr>  
<span  class="btn btn-danger btn-sm"  data-toggle="modal" data-target="#st3st{{$requests->regp_id}}">   رد درخواست    </span> 
 
</td></tr> 
<tr><td>هزینه</td><td>{{$requests->regp_price}} ريال</td></tr>
@elseif($requests->regp_flg=='3')
<tr>  <td>توضیحات مدیر</td> <td> <span><b>{{$requests->regp_statdes}}</b></span> </td> </tr>  
<tr>  <td>وضعیت</td> <td> <span style="color: #ff0000">	 رد شده  </span> </td> </tr>  
<tr> <td>تغییر وضعیت</td> <td>
  

<span  class="btn btn-success btn-sm"  data-toggle="modal" data-target="#st1st{{$requests->regp_id}}">  تایید درخواست و اعلام قیمت  </span> <hr>    
 
</td></tr> 
<tr><td>هزینه</td><td>{{$requests->regp_price}} ريال</td></tr>
<tr><td>تاریخ پرداخت</td><td>{{jDate::forge($requests->regp_pricedate)->format('Y/m/d ساعت h:i a ')}}</td></tr>  
@endif   
 
 
@if($requests->regp_flg=='1')
@if($requests->regp_waitstat!='0')

<tr><td><span style="color: #317bce"> اطلاعات پرداخت دستی    </span> </td> </tr> 
<tr><td>شماره تراکنش </td><td>  {{$requests->regp_dincodetraking}}</td> </tr> 
<tr><td>توضیحات تراکنش </td><td>  {{$requests->regp_dindes}}</td> </tr> 
<tr><td>تاریخ ثبت پرداخت دستی</td><td>{{jDate::forge($requests->regp_dindate)->format('Y/m/d ساعت h:i a ')}}</td></tr> 


@endif
@endif
 
 
@if($requests->regp_flg=='0')
 
@elseif($requests->regp_flg=='1')  
 
@elseif($requests->regp_flg=='2') 

@elseif($requests->regp_flg=='3') 

@endif
 
 <div class="modal fade" id="st1st{{$requests->regp_id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">   {{$requests->regp_name}} </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
       
<form class="elementor-form"  enctype="multipart/form-data"  method="post"  action="{{env('APP_URL')}}/superadmin/accperson/{{$requests->regp_id}}/status/1/person" >  

 <input type="hidden" name="price" value="">
 <div class="modal-body"> 
برای تایید درخواست کاربر می توانید اقدام نمایید .  
<div class="form-group">
 <label>&nbsp;</label> 
</div>
 
<div class="form-group">
 <label>هزینه به ریال</label>
<input size="1" type="text" name="price" id="form-field-name"  class="form-control"  placeholder="هزینه به ریال" required="required" value="{{$requests->regp_price}}" aria-required="true"> 
</div> 


<div class="form-group">
 <label>توضیحات</label> 

<textarea name="des"   class="form-control" rows="5" >@if($requests->regp_flg=='0') @elseif($requests->regp_flg=='1'){{$requests->regp_statdes}} @endif</textarea>

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
 
 
 
 <div class="modal fade" id="st2st{{$requests->regp_id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">   {{$requests->regp_name}} </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div> 
      
<form class="elementor-form"  enctype="multipart/form-data"  method="post"  action="{{env('APP_URL')}}/superadmin/accperson/{{$requests->regp_id}}/status/2/person"  > 
 <div class="modal-body">
برای تایید پرداخت درخواست کاربر می توانید اقدام نمایید . 
 <div class="form-group">
 <label>&nbsp;</label> 
 </div>
 
 
<div class="form-group">
 <label>توضیحات</label>  
<textarea name="des"   class="form-control" rows="5" ></textarea> 
</div> 
 
 <input type="hidden" name="price" value="{{$requests->regp_price}}"> 
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
 
 
 
 
 <div class="modal fade" id="st3st{{$requests->regp_id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">   {{$requests->regp_name}} </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div> 
      
<form class="elementor-form"  enctype="multipart/form-data"  method="post"  action="{{env('APP_URL')}}/superadmin/accperson/{{$requests->regp_id}}/status/3/person"  > 
 <div class="modal-body">
برای رد درخواست کاربر می توانید اقدام نمایید . 
 <div class="form-group">
 <label>&nbsp;</label> 
 </div>
 
 
<div class="form-group">
 <label>توضیحات</label>  
<textarea name="des"   class="form-control" rows="5" ></textarea> 
</div> 
 
 <input type="hidden" name="price" value="{{$requests->regp_price}}"> 
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