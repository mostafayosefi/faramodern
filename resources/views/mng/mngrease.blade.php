@extends('mng.layout')



 

 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

@section('title')
<title>مدیریت موجودی کاربران</title>
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
            <li class="breadcrumb-item active" aria-current="page">مدیریت موجودی کاربران</li>
          </ol>
        </nav>


        <div class="row">
          <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <h6 class="card-title">مدیریت موجودی کاربران</h6>
                <div class="table-responsive">
                
@if($reqdeposites)
                  <table id="dataTableExample" class="table">
                    <thead>
                      <tr>
     				    <th>ردیف</th>  
                        <th>کاربر </th>
                        <th>نوع تراکنش </th>
                        <th>تاریخ ثبت</th>  
                        <th>وضعیت</th>   
                      </tr>
                    </thead>
                    <tbody>
                    
<?php $i=1; ?>       
@foreach($reqdeposites as $admin)

						<tr>

<td> {{$i++}} </td>  

<td>   {{$admin->user_username}}   </td> 

 <td>
 @if($admin->reqdep_inc=='1')
 <span class="badge badge-primary"> {{$admin->reqdep_price }} گلد    +   </span>
 @else
 <span class="badge badge-danger"> {{$admin->reqdep_price}} گلد   -  </span>
 @endif           
 
 </td> 

 
 <td>{{jDate::forge($admin->reqdep_createdatdate)->format('Y/m/d ساعت h:i a ')}}</td>
                        
  
 <td>
 
 

  
  
 @if($admin->reqdep_flg=='1')
  <span  class="badge badge-success"  > <i data-feather="check-circle"></i> &nbsp; تایید شده </span>
 @else
  <span type="button"  class="badge badge-warning" data-toggle="modal"  data-target="#exampleModal-{{$admin->reqdep_id}}"> <i data-feather="x-circle"></i> &nbsp; در انتظار تایید </span>
 @endif           
  
   <?php 
 if($admin->reqdep_inc=='1'){   $mcrase='افزایش حساب کاربر';     }
 elseif($admin->reqdep_inc=='2'){       $mcrase='کاهش حساب کاربر';     } 
   ?>

<div class="modal fade" id="exampleModal-{{$admin->reqdep_id}}" tabindex="-1" role="dialog"
                    aria-labelledby="exampleModalLabel-{{$admin->reqdep_id}}" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title" id="exampleModalLabel-{{$admin->reqdep_id}}">  {{$mcrase}} {{$admin->user_username}}</h5>
 
                        </div>
                        <div class="modal-body">
                          <p> آیا شما مایل به تایید {{$mcrase}} "{{$admin->user_username}}" به  تعداد{{$admin->reqdep_price}} Gold  هستید؟</p>

 <p> {{$admin->reqdep_price}} Gold        </p>

   
 <p> {{$admin->reqdep_amountwal}}     </p>

    
  
                        </div>
                        <div class="modal-footer">
   
 @if($admin->reqdep_flg=='1')
 @elseif($admin->reqdep_flg=='0') 
 <a href="{{env('APP_URL')}}/superadmin/gold/delet/{{$admin->reqdep_id}}"  type="button" class="btn btn-danger"> حذف  </a>
 @endif                    
                        




<a href="{{env('APP_URL')}}/superadmin/gold/acc/{{$admin->reqdep_id}}"  type="button" class="btn btn-success">تایید</a>
 <button type="button" class="btn btn-light" data-dismiss="modal">لغو</button>
                        </div>
                      </div>
                    </div>
                    </div>
							
 
 
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