@extends('mng.layout')



 

 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

@section('title')
<title>مشاهده درخواستهای تسویه بازاریاب ها</title>
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
            <li class="breadcrumb-item active" aria-current="page">مشاهده درخواستهای تسویه بازاریاب ها</li>
          </ol>
        </nav>


        <div class="row">
          <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <h6 class="card-title">مشاهده درخواستهای تسویه بازاریاب ها</h6>
                <div class="table-responsive">
                
@if($admins)
                  <table id="dataTableExample" class="table">
                    <thead>
                      <tr>
     				    <th>ردیف</th>  
     				    <th>نام بازاریاب</th>  
                        <th>تاریخ درخواست</th>  
                        <th>هزینه درخواستی</th>  
                        <th>وضعیت درخواست</th>  
                      </tr>
                    </thead>
                    <tbody>
                    
<?php $i=1; ?>       
@foreach($admins as $admin)

						<tr>

<td> {{$i++}} </td> 
<td>{{$admin->user_name}}</td>

 <td>{{jDate::forge($admin->settlement_createdatdate)->format('Y/m/d ساعت h:i a ')}}</td>

<td> 
  <span class="btn btn-primary btn-sm">
  	<?php 
 $mycharge=$admin->settlement_pay; 
  if (filter_var($mycharge, FILTER_VALIDATE_INT)){  
  $string= number_format($mycharge,0); ?>   {{$string}}  ريال <?php }?>
  </span> 
   
</td> 

 
          
 
  

 <td> 
 <a href="{{env('APP_URL')}}/superadmin/mngsettlements/{{$admin->settlement_id}}">
  @if($admin->settlement_flg=='0')
 	<span  class="btn btn-warning btn-sm">در انتظار تسویه<i data-feather="alert-circle"></i> </span>
 @elseif($admin->settlement_flg=='1')
 	<span  class="btn btn-success btn-sm">تسویه شد<i data-feather="check-circle"></i> </span>

 @endif
	 </a>	

<!--

								
 <div class="text-center">
 
 @if($admin->settlement_flg=='0')
 <button type="button" class="btn btn-warning btn-sm" data-toggle="modal"  data-target="#exampleModald-{{$admin->settlement_id}}">در انتظار تسویه<i data-feather="alert-circle"></i> </button>
 
 @elseif($admin->settlement_flg=='1')
 
 <button type="button" class="btn btn-success btn-sm" data-toggle="modal"  data-target="#exampleModald-{{$admin->settlement_id}}">تسویه شد<i data-feather="check-circle"></i> </button>
 
 @endif
 
 </div>


<div class="modal fade" id="exampleModald-{{$admin->settlement_id}}" tabindex="-1" role="dialog"  aria-labelledby="exampleModalLabel-{{$admin->settlement_id}}" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title" id="exampleModalLabel-{{$admin->settlement_id}}">مشاهده جزییات درخواست تسویه</h5>
 
                        </div>
                        <div class="modal-body"> 
                          
 <ul class="list-group">
 
 
  <li class="list-group-item"><h6>بازرایاب درخواست کننده : {{$admin->user_name}}</h6></li>
 
  <li class="list-group-item"><h6>هزینه درخواستی :   <span class="btn btn-primary btn-sm">
  	<?php 
 $mycharge=$admin->settlement_pay; 
  if (filter_var($mycharge, FILTER_VALIDATE_INT)){  
  $string= number_format($mycharge,0); ?>   {{$string}}  ريال <?php }?>
  </span> </h6></li>
  
  
  
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
  
  <li class="list-group-item"><h6>تاریخ پرداخت : {{jDate::forge($admin->settlement_paymentdate)->format('Y/m/d ساعت h:i a ')}}</h6></li>
  
  
   
</ul>
                          
                          
                        </div>
                        <div class="modal-footer">
 <a href="{{env('APP_URL')}}/superadmin/mngsettlements/{{$admin->settlement_id}}">
 	<span  class="btn btn-primary btn-sm" >مشاهده </span>
 </a>
 <button type="button" class="btn btn-light" data-dismiss="modal">بستن</button>
                        </div>
                      </div>
                    </div>
                    </div>
							
 
 
 -->
 
 </td>
                   
 

  
             
 

 
						</tr>
						 
@endforeach


 
                    </tbody>
                  </table>

@endif

                </div>
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