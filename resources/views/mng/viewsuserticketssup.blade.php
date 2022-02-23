@extends('mng.layout')


 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

@section('title')
<title> مشاهده تیکتهای کاربران   </title>
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
            <li class="breadcrumb-item"><a href="{{env('APP_URL')}}/superadmin/dashboard">پنل کاربر</a></li>
            <li class="breadcrumb-item active" aria-current="page">  مشاهده تیکتهای کاربران     </li>
          </ol>
        </nav>

        <div class="row">
          <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <h6 class="card-title">  لیست تیکتهای کاربران   </h6>
                <div class="table-responsive">
                
@if($admins)
                  <table id="dataTableExample" class="table">
                    <thead>
                        <tr>
     				    <th>ردیف</th> 
                        <th>فرستنده</th> 
                        <th>موضوع تیکت</th> 
                        <th>تاریخ تیکت</th>
                        <th>وضعیت</th> 
                        <th>حذف</th> 
                        </tr>
                    </thead>
                    <tbody>
                    
<?php $i=1; ?>       
@foreach($admins as $admin)



 <tr>
 <td>{{$i++}}</td> 
 <td>{{$admin->user_name}}</td>
 <td>{{$admin->tik_tit}} 
 @if($admin->tik_toread=='0') <span class="badge badge-primary" title="یک پیام جدید"    >1</span> @endif </td> 
  
   
  
  <td>{{jDate::forge($admin->tik_createdatdate)->format('l d F Y ساعت H:i a')}}</td>

 

@if($admin->tik_active == '2')                       
<td><a href="viewsuserticketssup/ticket/{{$admin->id}}"   onclick="openSearch()"> 	 <button type="button" class="mb-1 btn btn-sm btn-success"> پاسخ داده شده <i class="mdi mdi-check-circle"></i> </button></a></td>
@elseif($admin->tik_active == '1')
<td><a href="viewsuserticketssup/ticket/{{$admin->id}}" onclick="openSearch()"> <button type="button" class="mb-1 btn btn-sm btn-warning">  منتظر پاسخ  <i class="mdi mdi-close-circle"></i></button></a></td>
@elseif($admin->tik_active == '0')
<td><a href="viewsuserticketssup/ticket/{{$admin->id}}" onclick="openSearch()"> <button type="button" class="mb-1 btn btn-sm btn-primary">  تیکت بسته شده است  <i class="mdi mdi-close-circle"></i></button></a></td>
@endif


<td><a href="viewsuserticketssup/delet/{{$admin->id}}"   ><span class="btn btn-danger btn-sm">حذف</span></a></td>
 

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