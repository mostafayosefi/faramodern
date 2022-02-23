@extends('mng.layout')



 

 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

@section('title')
<title>مشاهده فاکتورها</title>
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
            <li class="breadcrumb-item active" aria-current="page">مشاهده فاکتورها</li>
          </ol>
        </nav>

        <div class="row">
          <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
              <form class="forms-sample"  method="POST" action="" enctype="multipart/form-data"  onsubmit="return Validate(this);"   >
              
                <h6 class="card-title"> </h6>
              
               <div class="row flex-grow">
            
             

 
              
<div class="form-group col-md-3" >
<label for="username">نام کاربر</label>
<input type="text" class="form-control" id="username" autocomplete="off" placeholder="نام کاربر" name="username"  value="{{ old('username') }}"    > 
</div>	

 
 
 
 
 

<div class="form-group col-md-3" >	
 <label>نوع کالا</label>
 <select name="cat" class="form-control"  >

<option value="" >لطفا انتخاب نمایید</option>

@foreach($cats as $cat)
 <option value="{{$cat->cat_id}}">{{$cat->cat_name}}</option>
@endforeach
										
 </select>
 </div> 
 
 
                   
<div class="form-group col-md-3" >
<label for="code">شماره پیگیری</label>
<input type="text" class="form-control" id="code" autocomplete="off" placeholder="شماره پیگیری" name="code"  value="{{ old('code') }}"    > 
</div>	  






 <input type="hidden" name="_token" value="{{ csrf_token() }}">
                     
<div class="form-group col-md-3" >
<label for="exampleInputUsername1"> </label>

<button type="submit" class="btn btn-primary btn-block"     onclick="openSearch()">  جستجو </button> 
</div>	


             </form> 
              
              
              </div>
              
              <hr>
                <h6 class="card-title">مشاهده فاکتورها</h6>
              
                <div class="table-responsive">
                
@if($finicals)

                        


                  <table id="dataTableExample" class="table">
                    <thead>
                      <tr>
                        <th>ردیف</th>
                        <th>نام خریدار</th>  
                        <th>هزینه</th> 
                        <th>نام محصول</th> 
                        <th>تاریخ خرید</th> 
                        <th>شماره پیگیری</th> 
                        <th>وضعیت پرداخت</th> 
                      </tr>
                    </thead>
                    <tbody>
                    
<?php $i=1; ?>       
@foreach($finicals as $admin)
                      <tr>
 <td>{{$i++}}</td>
 <td>{{$admin->user_name}}</td>  
 <td>{{$admin->finical_pay}} ريال</td> 
 <td>{{$admin->pro_name}}</td>  
 <td>{{jDate::forge($admin->finical_createdatdate)->format('Y/m/d ساعت H:i a')}}</td> 
 <td>{{$admin->finical_rnd}}</td>  
                         
                        
                        
 <td> 
<a href="{{env('APP_URL')}}/superadmin/mngbuys/{{$admin->finical_rnd}}"  >
 @if($admin->finical_payment=='1')             
<span class="badge badge-success"><i data-feather="check-circle"></i> &nbsp; پرداخت شده </span>
@elseif($admin->finical_payment=='0') 
<span class="badge badge-warning"><i data-feather="alert-circle"></i> &nbsp; منتظر پرداخت </span> 
@endif   
 </a> 
 </td> 
                        
                        
 
                      </tr>
@endforeach


 
                    </tbody>
                  </table>


        <div class="row">
          <div class="col-md-10 ">
          </div>
          <div class="col-md-2 "> 
          
          <hr>
          <td> 
<a href="{{env('APP_URL')}}/superadmin/xls"  >        
<span class="badge badge-primary"><i data-feather="arrow-up"></i> &nbsp; خروجی اکسل </span>
  
 </a> 
 </td> 
          </div>
          </div>


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