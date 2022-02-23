@extends('mng.layout')


 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

@section('title')
<title>مدیریت تماس با ما </title>
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
 <li class="breadcrumb-item"><a href="{{env('APP_URL')}}/superadmin/mngcontact"> مدیریت تماس با ما</a></li>
            <li class="breadcrumb-item active" aria-current="page">{{$admin->contact_name}}</li>
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
 <h4> مدیریت تماس با ما</h4>
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
													##
												</th> 
											</tr>
										</thead>

<tbody>
<tr><td>نام و نام خانوادگی  </td><td> {{$admin->contact_name}}</td> </tr> 
<tr><td>ایمیل </td><td>{{$admin->contact_email}}</td></tr> 
<tr><td>تلفن</td><td>{{$admin->contact_tell}}</td></tr> 
<tr><td>تاریخ ثبت</td><td>{{jDate::forge($admin->contact_date)->format('Y/m/d ساعت h:i a ')}}</td></tr>
<tr><td>پیام مشتری</td><td>{{$admin->contact_des}}</td></tr>    
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