@extends('mng.layout')



 

 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

@section('title')
<title>مشاهده درخواشت های حقیقی</title>
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
            <li class="breadcrumb-item active" aria-current="page">مشاهده درخواشت های حقیقی</li>
          </ol>
        </nav>


        <div class="row">
          <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <h6 class="card-title">لیست درخو استهای حقیقی</h6>
                <div class="table-responsive">
                
@if($requests)
                  <table id="dataTableExample" class="table">
                    <thead>
                      <tr>
     				    <th>ردیف</th>  
     				    <th>کاربر</th>  
                        <th>نام و نام خانوادگی </th>
                        <th>شماره همراه </th> 
                        <th>تاریخ ثبت</th>  
                        <th>شماره درخواست شده</th>  
                        <th>وضعیت</th>   
                      </tr>
                    </thead>
                    <tbody>
                    
<?php $i=1; ?>       
@foreach($requests as $admin)

						<tr>

<td> {{$i++}} </td>  

 <td> 
 
 @if($admin->regp_flg=='0')
<span class="badge badge-warning">  
@elseif($admin->regp_flg=='1') 
<span class="badge badge-primary ">   
@elseif($admin->regp_flg=='2')
<span class="badge badge-success ">  
@elseif($admin->regp_flg=='3')
<span class="badge badge-danger ">  
@endif 


<i data-feather="user"></i> &nbsp;  <b>{{$admin->regp_name}} &nbsp; {{$admin->regp_family}}</b> </span>
 
  </td>

 <td> 
 
 @if($admin->regp_flg=='0')
<span class="badge badge-warning">  
@elseif($admin->regp_flg=='1') 
<span class="badge badge-primary ">   
@elseif($admin->regp_flg=='2')
<span class="badge badge-success ">  
@elseif($admin->regp_flg=='3')
<span class="badge badge-danger ">  
@endif 


 <b>{{$admin->regp_name}} &nbsp; {{$admin->regp_family}}</b> </span>
 
  </td>
  
  
<td>   {{$admin->regp_mobile}}   </td> 


 
 <td>{{jDate::forge($admin->regp_createdatdate)->format('Y/m/d ساعت h:i a ')}}</td>
                        
  
<td style="direction: ltr">   {{$admin->regp_pernumber}}_{{$admin->regp_tellreq}}   </td> 

 
  

 <td>
<a href="{{env('APP_URL')}}/superadmin/reqperson/{{$admin->regp_id}}"  > 
@if($admin->regp_flg=='0')
<span class="btn btn-warning btn-sm">منتظر اعلام قیمت</span> 
@elseif($admin->regp_flg=='1')  

@if($mngindexs->ind_settingpay=='1')
	<span class="btn btn-primary btn-sm "> منتظر پرداخت <i aria-hidden="true" class="fa x-circle"></i> </span> 
	@endif

@if($mngindexs->ind_settingpay=='2')
@if($admin->regp_waitstat=='0')
<span class="btn btn-primary btn-sm "> منتظر پرداخت <i aria-hidden="true" class="fa x-circle"></i> </span> 
@elseif($admin->regp_waitstat!='0')
<span class="btn btn-primary btn-sm ">پرداخت دستی انجام شده <i aria-hidden="true" class="fa x-circle"></i> </span> 
@endif
@endif




@elseif($admin->regp_flg=='2')
<span class="btn btn-success btn-sm ">فعال شده</span> 
@elseif($admin->regp_flg=='3')
<span class="btn btn-danger btn-sm ">رد شده</span> 
@endif

 </a> 
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