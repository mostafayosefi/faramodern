@extends('mng.layout')



 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

@section('title')
 
<title>مشاهده درخواست تسویه</title>
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

 <div class="page-content">


        <nav class="page-breadcrumb">
          <ol class="breadcrumb">
 <li class="breadcrumb-item"><a href="{{env('APP_URL')}}/superadmin/dashboard">داشبورد مدیریت</a></li>
 <li class="breadcrumb-item"><a href="{{env('APP_URL')}}/superadmin/mngsettlements">مشاهده درخواستهای تسویه بازاریاب ها </a></li>
            <li class="breadcrumb-item active" aria-current="page">درخواست تسویه</li>
          </ol>
        </nav> 

        <div class="row">
          <div class="col-12 col-xl-12 stretch-card">
            <div class="row flex-grow">
            
            
             
              
              
              <div class="col-md-12 grid-margin stretch-card">


         <div class="card">
                  <div class="card-body">

 <div class="card-header card-header-border-bottom">
 <h4>وضعیت درخواست</h4>
 </div>

<br>

 
 
    <link rel="stylesheet" href="{{env('APP_URL')}}/build/demfr_files/fonts/fonts-fa.css">
    <link rel="stylesheet" href="{{env('APP_URL')}}/build/demfr_files/fonts/fonts-fa.css">
 <link rel="stylesheet" href="{{env('APP_URL')}}/build/demfr_files/custom.css"> 
<div class="row">


 <div class="panel-body">
 <ul class="list-unstyled multi-steps"> 



<li  class="is-actived"   > درخواست تسویه ایجاد شد</li> 
 @if($admin->settlement_flg=='0')
<li   class="is-active"   class="is-active"    > در انتظار واریز سمت مدیریت</li> 
@else
<li    class="is-actived"   > با موفقیت تسویه شد</li> 
@endif 
 
 
  
 </ul>

</div>

   



</div>


  
 
              
	
</div>				
 
 

 	 






                  </div>

              </div>
              
              
               
              
              
             </div>
            </div>
          <div class="col-12 col-xl-12 stretch-card">
            <div class="row flex-grow">
            
            
              <div class="col-md-2 grid-margin stretch-card">
			  </div>
              
              
              
              
              <div class="col-md-8 grid-margin stretch-card">


         <div class="card">
                  <div class="card-body">

 <div class="card-header card-header-border-bottom">
 <h4>جزییات درخواست تسویه</h4>
 </div>

<br>


    <ul class="list-group">
 
 
  <li class="list-group-item"><h6>بازرایاب درخواست کننده : {{$admin->user_name}}</h6></li>
 
  <li class="list-group-item"><h6>هزینه درخواستی :   <span class="btn btn-primary btn-sm">
  	<?php 
 $mycharge=$admin->settlement_pay; 
  if (filter_var($mycharge, FILTER_VALIDATE_INT)){  
  $string= number_format($mycharge,0); ?>   {{$string}}  ريال <?php }?>
  </span> </h6></li>
  
  
  <li  class="list-group-item"><h6>توضیحات کاربر : <br>  {{$admin->settlement_desmyuser}}  </h6></li>
  
  <li class="list-group-item"><h6>تاریخ درخواست : {{jDate::forge($admin->settlement_createdatdate)->format('Y/m/d ساعت h:i a ')}}</h6></li>
  
  <li class="list-group-item"><h6>وضعیت درخواست : 
  
 
 @if($admin->settlement_flg=='0')
 <span class="btn btn-warning btn-sm">در انتظار تسویه<i data-feather="alert-circle"></i> </span>
 @elseif($admin->settlement_flg=='1') 
 <span class="btn btn-success btn-sm">تسویه شد<i data-feather="check-circle"></i> </span>
 @endif
  
  </h6></li>


 @if($admin->settlement_flg=='1')
  <li class="list-group-item"><h6>تاریخ پرداخت : {{jDate::forge($admin->settlement_paymentdate)->format('Y/m/d ساعت h:i a ')}}</h6></li>
 
  <li class="list-group-item"><h6>شماره پیگیری : {{$admin->settlement_traing}}</h6></li>
 
  <li class="list-group-item"><h6>توضیحات : {{$admin->settlement_des}}</h6></li>
  @endif
  
  <hr>
  <h5>اطلاعات حساب بانکی بازاریاب</h5>
  
  @foreach($wallets as $wallet)
  @if($wallet->wallet_iduser==$admin->settlement_iduser)

  
  <li class="list-group-item">
  
  <h6>نام صاحب حساب : {{$wallet->wallet_name}}   </h6><br>
  <h6>شماره کارت : {{$wallet->wallet_numbershaba}}   </h6><br>
  <h6>شماره شبا : {{$wallet->wallet_numbercard}}   </h6><br>
  
  @if($wallet->wallet_def=='1')<span class="btn btn-primary btn-sm"> حساب اصلی </span  @endif </li>

  @endif
  @endforeach
  
 @if($admin->settlement_flg=='0')
  <li class="list-group-item">
  	
  
<form class="forms-sample"  method="POST" action="" enctype="multipart/form-data"  onsubmit="return Validate(this);"   >

	
<div class="form-group" >
<label for="pricereq">شماره تراکنش</label>
<input type="text" class="form-control" id="pricereq" autocomplete="off"   pattern="\d+"  placeholder="شماره تراکنش" name="trak"         maxlength="33"      value="{{ old('pricereq') }}"  required > 
</div>	



<div class="form-group" >
<label for="des">توضیحات</label>

<textarea class="form-control"  placeholder="توضیحات" id="des" name="des" rows="5" >{{old('adres')}}</textarea>
 
</div>	



 <div class="form-group  col-lg-12">

 <button type="submit" class="btn btn-primary btn-lg btn-block waves-effect waves-light mb-1"> 
تسویه حساب     </button>
 
 
 </div> 
 <input type="hidden" name="dateshamsi" value="{{jDate::forge()->format('Y/m/d')}}">
 <input type="hidden" name="_token" value="{{ csrf_token() }}">	
             
</form>

  	
  </li>
@endif
  
   
</ul>


<hr> 
  
 
              
	
</div>				
  </div>
   </div>
              
              
              
              <div class="col-md-2 grid-margin stretch-card">
			  </div>
              
              
              
             </div>
            </div>
           </div>
		 
		 
			</div>






		 	  

@stop
<!--
<script src="{{env('APP_URL')}}/build/servicepay/firealert/components.js.download"></script> 
 
    <script>
        $(document).ready(function () {
                        Swal.fire({
                text: 'باموفقیت انجام شد که شد که شد',
                type: 'success',
                confirmButtonText: 'بستن',       toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 1113000

            });
            
        });
    </script>  
-->






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