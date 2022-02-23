@extends('mng.layout')


 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

@section('title')
<title>مشاهده درگاههای پرداخت </title>
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
            <li class="breadcrumb-item active" aria-current="page">مشاهده درگاههای پرداخت</li>
          </ol>
        </nav>

 <span style="color: #db24cd">دقت نمایید شما فقط یک درگاه پرداخت برای سیستم می توانید فعال نمایید  </span>
                
                <br>
                
        <div class="row">
          <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <h6 class="card-title">مشاهده درگاههای پرداخت</h6>
                
                
                <div class="table-responsive">
                
@if($admins)
                  <table id="dataTableExample" class="table">
                    <thead>
                      <tr>
                        <th>ردیف</th>
                        <th>نام درگاه پرداخت</th>
                        <th>تاریخ ایجاد</th> 
                        <th>مشاهده</th> 
                      </tr>
                    </thead>
                    <tbody>
                    
<?php $i=1; ?>       
@foreach($admins as $admin)
                      <tr>
 <td>{{$i++}}</td>
 <td>
 <a href="{{env('APP_URL')}}/superadmin/mnggetway/{{$admin->id}}">{{$admin->getway_name}}</a>
 </td>
 <td>{{jDate::forge($admin->getway_createdatdate)->format('Y/m/d ساعت H:i a')}}</td> 
                        <td> 

 
 
  @if($admin->getway_active=='1')             
<button class="badge badge-success"  data-toggle="modal" data-target="#exampleModal{{$admin->id}}"><i data-feather="check-circle"></i> &nbsp; فعال </button>


 

@elseif($admin->getway_active=='0') 
<button class="badge badge-warning"  data-toggle="modal" data-target="#exampleModal{{$admin->id}}"><i data-feather="x-circle"></i> &nbsp; غیرفعال </button>


 <div class="modal fade" id="exampleModal{{$admin->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">فعال کردن درگاه پرداخت {{$admin->getway_name}} </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      آیا شما مایل به فعال کردن درگاه پرداخت  {{$admin->getway_name}}  هستید؟ 
      </div>
      <div class="modal-footer">
 <a href="{{env('APP_URL')}}/superadmin/mnggetwaystat/1/{{$admin->id}}" class="btn btn-success"  >فعال کردن درگاه پرداخت</a> 
        <button type="button" class="btn btn-secondary" data-dismiss="modal">خیر</button> 
      </div>
    </div>
  </div>
</div>
 
@endif   
 
 
   
 

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