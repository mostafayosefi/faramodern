@extends('mng.layout')


 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

@section('title')
<title>داشبورد مدیریت</title>
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

        <div class="d-flex justify-content-between align-items-center flex-wrap grid-margin">
          <div>
            <h4 class="mb-3 mb-md-0">به داشبورد خوش آمدید</h4>
          </div>
          <div class="d-flex align-items-center flex-wrap text-nowrap">
 
          </div>
        </div>




        <div class="row">
          <div class="col-12 col-xl-12 stretch-card">
            <div class="row flex-grow">
              <div class="col-md-4 grid-margin stretch-card">
                <div class="card">
                
 
                  <div class="card-body">
                    <div class="d-flex justify-content-between align-items-baseline">
                      <h6 class="card-title mb-0">تعداد کاربران</h6>
                     
                    </div>
                    <div class="row">
                      <div class="col-6 col-md-12 col-xl-5"> 
                        <div class="d-flex align-items-baseline">
                          <p class="text-success">
                            <span>{{$countusersactive}} کاربر فعال</span>
                            <i data-feather="check-circle" class="icon-sm mb-1"></i>
                          </p>
                        </div>
                        <div class="d-flex align-items-baseline">
                          <p class="text-warning">
                            <span>{{$countusersdeactive}} کاربر غیرفعال </span>
                            <i data-feather="x-circle" class="icon-sm mb-1"></i>
                          </p>
                        </div>
                      </div>
                      <div class="col-6 col-md-12 col-xl-7">
                        <h3 class="mb-2"> 
                        {{$countusers}} نفر</h3>
                      </div>
                    </div>
                  </div>
 
                </div>
              </div>
 

 

   <div class="col-md-4 grid-margin stretch-card">
                <div class="card">
                
 
                  <div class="card-body">
                    <div class="d-flex justify-content-between align-items-baseline">
                      <h6 class="card-title mb-0">درخواست های کاربران</h6>
                     
                    </div>
                    <div class="row">
                      <div class="col-6 col-md-12 col-xl-5"> 
                       
                      </div>
                      <div class="col-6 col-md-12 col-xl-7">
                        <h3 class="mb-2">  {{$allreqcount}} درخواست</h3>
                      </div>
                    </div>
                  </div>
 
                </div>
              </div>

            </div>
          </div>
          
          
          
          <div class="col-12 col-xl-12 stretch-card">
            <div class="row flex-grow">
         
              
 
   <div class="col-md-4 grid-margin stretch-card">
                <div class="card">
                
 
                  <div class="card-body">
                    <div class="d-flex justify-content-between align-items-baseline">
                      <h6 class="card-title mb-0">تعداد تیکتهای کاربران</h6>
                     
                    </div>
                    <div class="row">
                      <div class="col-6 col-md-12 col-xl-5"> 
                      <div class="d-flex align-items-baseline">
                          <p class="text-warning">
                            <span>{{Session::get('tickreadstudentsup')}} تیکت منتظر پاسخ</span>
                            <i data-feather="x-circle" class="icon-sm mb-1"></i>
                          </p>
                        </div>
                       
                      </div>
                      <div class="col-6 col-md-12 col-xl-7">
                        <h3 class="mb-2">  {{$counttickettikets}} تیکت </h3>
                      </div>
                    </div>
                  </div>
 
                </div>
              </div>
              
              
              
              
              
              
              
              
              
              
              
               
              
              
              
              
              
              
              
              
              
                </div>
              </div>
          
          
          
          
        </div> <!-- row -->


  

      </div>
@stop
  
  

</body>

</html>