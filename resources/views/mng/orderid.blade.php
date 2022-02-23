@extends('mng.layout')



 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

@section('title')
 
<title>وضعیت سفارش</title>
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
 <li class="breadcrumb-item"><a href="{{env('APP_URL')}}/superadmin/finicals">مشاهده فاکتورها </a></li>
            <li class="breadcrumb-item active" aria-current="page">وضعیت سفارش</li>
          </ol>
        </nav> 

        <div class="row">
          <div class="col-12 col-xl-12 stretch-card">
            <div class="row flex-grow">
            
            
             
              
              
              <div class="col-md-12 grid-margin stretch-card">


         <div class="card">
                  <div class="card-body">

 <div class="card-header card-header-border-bottom">
 <h4>وضعیت سفارش</h4>
 </div>

<br>

 
 
    <link rel="stylesheet" href="{{env('APP_URL')}}/build/demfr_files/fonts/fonts-fa.css">
    <link rel="stylesheet" href="{{env('APP_URL')}}/build/demfr_files/fonts/fonts-fa.css">
 <link rel="stylesheet" href="{{env('APP_URL')}}/build/demfr_files/custom.css"> 
<div class="row">


 <div class="panel-body">
 <ul class="list-unstyled multi-steps"> 


@if($finicals->finical_status!='2') 

@if($finicals->finical_payment=='0') 
<li  class="is-active"   >در انتظار پرداخت</li>
@elseif($finicals->finical_payment=='1') 
<li  class="is-actived"   > پرداخت شده</li> 
@endif
 

@if($finicals->finical_status=='0') 
<li  class="is-active"   >ارسال محصول</li>
@elseif($finicals->finical_status=='1') 
<li  class="is-actived"   > محصول ارسال شده</li>
@endif


 

@endif


@if($finicals->finical_status=='2') 

<li   class="is-deactived "   >لغو شده</li>


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
 <h4>جزییات خرید</h4>
 </div>

<br>


  
<ul class="list-group">
  <li class="list-group-item" > <h5>نام خریدار  : {{$finicals->user_name}}</h5> </li> 
  <li class="list-group-item" > <h5>آدرس پستی خریدار  : {{$finicals->user_adres}}</h5> </li> 
  <li class="list-group-item" > <h5>تاریخ خرید  : {{jDate::forge($finicals->finical_createdatdate)->format('Y/m/d ساعت H:i a')}}</h5> </li> 
  

@if($finicals->finical_payment=='1') 
  <li class="list-group-item" > <h5>تاریخ پرداخت  : {{jDate::forge($finicals->finical_paymentdate)->format('Y/m/d ساعت H:i a')}}</h5> </li>  @endif
  
  <li class="list-group-item" > <h5>هزینه فاکتور  : 
  <?php  $string= number_format($finicals->finical_pay,0); ?>
<span class="badge badge-success">{{$string}} ريال </span> 
  </h5> </li> 
  

@if($finicals->finical_status=='1') 
  <li class="list-group-item" > <h5>تاریخ ارسال مرسوله   : {{jDate::forge($finicals->finical_datesend)->format('Y/m/d ساعت H:i a')}}</h5> </li>  
  
  <li class="list-group-item" > <h5>توضیحات ارسال مرسوله  : {{$finicals->finical_des}}</h5> </li> 
  @endif
   
  
  
</ul>



<hr>

<h5>لیست محصولات خریداری شده</h5>
<hr>
  <div class="table-responsive">
  <table class="table">
 <thead>
 <tr>
 <th>ردیف</th>
 <th>نام محصول</th>  
 <th>هزینه</th>  
 <th>بازاریاب </th>  
 </tr>
 </thead>
 <tbody>
 <?php $i=1; ?>
 @foreach($baskets as $basket)
  <tr>
  <td>{{$i}}</td>
  <td>{{$basket->pro_name}}</td>
  <td>{{$basket->pro_price}} ريال</td> 
  
  <td>
  @if($basket->basket_idref=='0') ندارد @else 
  @foreach($users as $user)
  @if($basket->basket_idref==$user->id) {{$user->user_name}}  @endif @endforeach
  @endif
 </td>
  </tr> 
 
 @endforeach
  </tbody>
  
  </table>
  </div>
 
  
<hr>

<h5>عملیات ارسال مرسوله</h5>
<hr>
 
 @if($filepros)
 <p>غیرفیزیکی</p>
  <?php $i=1; ?>
 <hr>
<table width="100%" id="multi_file_uploader" class="table table-bordered dt-responsive nowrap" >

 @foreach($filepros as $file)
 <tr class="imageSelectorContainer">
 <td>{{$i++}}</td>
 <td valign="top" align="right"> 
 <a target="_blank" href="{{env('APP_URL')}}/public/images/{{$file->file_name}}">
<span class="badge badge-primary"><i data-feather="download"></i> &nbsp; دانلود فایل </span>
</a>
</td> 
 
 
 </tr>
@endforeach
  
</table>
 @endif
 
 <br>
 
<ul class="list-group">


@if(($finicals->finical_status=='0')&&($finicals->finical_payment=='1')) 
						
 <div class="text-center">
 <button type="button" class="btn btn-primary btn-sm" data-toggle="modal"  data-target="#exampleModald-{{$finicals->id}}"><i data-feather="check-circle"></i> &nbsp; ارسال محصول  </button>
 </div>
 
 
 
 

<div class="modal fade" id="exampleModald-{{$finicals->id}}" tabindex="-1" role="dialog"
                    aria-labelledby="exampleModalLabel-{{$finicals->id}}" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
 <h5 class="modal-title" id="exampleModalLabel-{{$finicals->id}}">ارسال محصول   </h5>
 
                        </div>
                        <div class="modal-body">
                
       
<h5>لیست محصولات </h5>
 
  <div class="table-responsive">
  <table class="table">
 <thead>
 <tr>
 <th>ردیف</th>
 <th>نام محصول</th>  
 <th>هزینه</th>  
 <th>بازاریاب </th>  
 </tr>
 </thead>
 <tbody>
 <?php $i=1; ?>
 @foreach($baskets as $basket)
  <tr>
  <td>{{$i}}</td>
  <td>{{$basket->pro_name}}</td>
  <td>{{$basket->pro_price}} ريال</td> 
  
  <td>
  @if($basket->basket_idref=='0') ندارد @else 
  @foreach($users as $user)
  @if($basket->basket_idref==$user->id) {{$user->user_name}}  @endif @endforeach
  @endif
 </td>
  </tr> 
 
 @endforeach
  </tbody>
  
  </table>
  </div>
 
  
<hr>
        
                                  
  <ul class="list-group">
  <li class="list-group-item"><h6>نام کاربر : {{$finicals->user_name}}  </h6></li>
  <li class="list-group-item"><h6>آدرس پستی کاربر : {{$finicals->user_adres}}   </h6></li>  
  
  
    <li class="list-group-item">
  	
  
<form class="forms-sample"  method="POST" action="" enctype="multipart/form-data"  onsubmit="return Validate(this);"   >

	 


<div class="form-group" >
<label for="des">توضیحات</label>

<textarea class="form-control"  placeholder="توضیحات" id="des" name="des" rows="5" >{{old('des')}}</textarea>
 
</div>	



 <div class="form-group  col-lg-12">

 <button type="submit" class="btn btn-primary btn-lg btn-block waves-effect waves-light mb-1"> 
ثبت و ارسال     </button>
 
 
 </div> 
 <input type="hidden" name="dateshamsi" value="{{jDate::forge()->format('Y/m/d')}}">
 <input type="hidden" name="_token" value="{{ csrf_token() }}">	
             
</form>

  	
  </li>
  
   
  </ul>
                          
                          
                        </div>
                        <div class="modal-footer">
<a href="{{env('APP_URL')}}/superadmin/mngwallets/delet/{{$finicals->id}}"  type="button" class="btn btn-success">تایید</a>
 <button type="button" class="btn btn-light" data-dismiss="modal">لغو</button>
                        </div>
                      </div>
                    </div>
                    </div>
							
 
 
 
 
 
 
 

@endif

@if($finicals->finical_status=='1') 
  <li class="list-group-item" > <h5>توضیحات مدیر  : {{$finicals->finical_des}}</h5> </li>
  <li class="list-group-item" > <h5>تاریخ ارسال محصول  : {{jDate::forge($finicals->finical_datesend)->format('Y/m/d ساعت H:i a')}}</h5> </li>
  
 @endif
@if($finicals->finical_recv=='1')  
  <li class="list-group-item" > <h5>تاریخ تحویل مرسوله  : {{jDate::forge($finicals->finical_daterecv)->format('Y/m/d ساعت H:i a')}}</h5> </li>
 
 @endif
 
  </ul>
 
           
 <br>
 
              
	
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