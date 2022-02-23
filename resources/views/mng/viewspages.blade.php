@extends('mng.layout')


 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
<?php 
	if($page=='page'){ $namepages='صفحات';  $namepage='صفحه'; }
    if($page=='article'){ $namepages='مقالات';  $namepage='مقاله'; }
    if($page=='blog'){ $namepages='بلاگ های';  $namepage='بلاگ'; }
    if($page=='catfaq'){ $namepages='دسته بندی های پرسش پاسخ';  $namepage='دسته بندی پرسش پاسخ'; }
    if($page=='qst'){ $namepages='پرسش و پاسخ';  $namepage='پرسش و پاسخ ها'; }
?>
@section('title')
<title>مشاهده {{$namepages}} سایت</title>
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
            <li class="breadcrumb-item active" aria-current="page">مشاهده {{$namepages}} سایت</li>
          </ol>
        </nav>

        <div class="row">
          <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <h6 class="card-title">لیست {{$namepages}} سایت</h6>
                <div class="table-responsive">
                
@if($admins)
                  <table id="dataTableExample" class="table">
                    <thead>
                    

                    
                    
                      <tr>
                        <th>ردیف</th>
                        <th>نام {{$namepages}} </th> 
                        
                   @if($page=='qst') 
                        <th>گروه</th> 
                    @else 
                    
                    @endif
                        
                        <th>تاریخ ایجاد</th> 
                        <th>ویرایش</th>
                        <th>حذف</th>
                      </tr>
                    
                    
                    
                    </thead>
                    <tbody>
              
   
<?php $i=1; ?>       

            
    @if(($page=='page')||($page=='blog'))
@foreach($admins as $admin)
                      <tr>
 <td>{{$i++}}</td>
 <td>{{$admin->page_tit}}</td> 
<td>{{jDate::forge($admin->page_createdatdate)->format('Y/m/d ساعت H:i a')}}</td> 
                        <td> 

 
 
  <a href="{{env('APP_URL')}}/superadmin/views/{{$page}}/edit/{{$admin->id}}" class="btn btn-primary"  >
  	<i data-feather="edit"></i> 
  </a>
                        </td>
 <td><button type="button" class="btn btn-danger  "  data-toggle="modal" data-target="#delet{{$admin->id}}" ><i data-feather="trash"></i>  </button>
 
 
 
 
 <div class="modal fade" id="delet{{$admin->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"> حذف "{{$admin->page_tit}}" </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       آیه شما مایل به حذف "{{$admin->page_tit}}" از سیستم هستید؟
      </div>
      <div class="modal-footer">
        <a href="{{env('APP_URL')}}/superadmin/views/{{$page}}/delet/{{$admin->id}}" class="btn btn-danger"  >حذف</a> 
        <button type="button" class="btn btn-secondary" data-dismiss="modal">خیر</button> 
      </div>
    </div>
  </div>
</div>
 
</td>
                      </tr>
@endforeach  
@elseif($page=='article')

@foreach($admins as $admin)
                      <tr>
 <td>{{$i++}}</td>
 <td>{{$admin->art_name}}</td> 
 <td>{{jDate::forge($admin->art_createdatdate)->format('Y/m/d ساعت H:i a')}}</td> 
                        <td> 

 
 
  <a href="{{env('APP_URL')}}/superadmin/views/{{$page}}/edit/{{$admin->art_id}}" class="btn btn-primary"  >
  	<i data-feather="edit"></i> 
  </a>
                        </td>
 <td><button type="button" class="btn btn-danger  "  data-toggle="modal" data-target="#delet{{$admin->art_id}}" ><i data-feather="trash"></i>  </button>
 
 
 
 
 <div class="modal fade" id="delet{{$admin->art_id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"> حذف "{{$admin->art_name}}" </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       آیه شما مایل به حذف "{{$admin->art_name}}" از سیستم هستید؟
      </div>
      <div class="modal-footer">
        <a href="{{env('APP_URL')}}/superadmin/views/{{$page}}/delet/{{$admin->art_id}}" class="btn btn-danger"  >حذف</a> 
        <button type="button" class="btn btn-secondary" data-dismiss="modal">خیر</button> 
      </div>
    </div>
  </div>
</div>
 
</td>
                      </tr>
@endforeach  

@elseif($page=='catfaq')

@foreach($admins as $admin)
                      <tr>
 <td>{{$i++}}</td>
 <td>{{$admin->qstcat_name}}</td> 
 <td>{{jDate::forge($admin->qstcat_createdatdate)->format('Y/m/d ساعت H:i a')}}</td> 
                        <td> 

 
 
  <a href="{{env('APP_URL')}}/superadmin/views/{{$page}}/edit/{{$admin->id}}" class="btn btn-primary"  >
  	<i data-feather="edit"></i> 
  </a>
                        </td>
 <td><button type="button" class="btn btn-danger  "  data-toggle="modal" data-target="#delet{{$admin->id}}" ><i data-feather="trash"></i>  </button>
 
 
 
 
 <div class="modal fade" id="delet{{$admin->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"> حذف "{{$admin->qstcat_name}}" </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       آیه شما مایل به حذف "{{$admin->qstcat_name}}" از سیستم هستید؟
      </div>
      <div class="modal-footer">
        <a href="{{env('APP_URL')}}/superadmin/views/{{$page}}/delet/{{$admin->id}}" class="btn btn-danger"  >حذف</a> 
        <button type="button" class="btn btn-secondary" data-dismiss="modal">خیر</button> 
      </div>
    </div>
  </div>
</div>
 
</td>
                      </tr>
@endforeach 

 
@elseif($page=='qst')   
 
 
@foreach($admins as $admin)
                      <tr>
 <td>{{$i++}}</td>
 <td>{{$admin->qst_pors}}</td> 
 <td>{{$admin->qstcat_name}}</td> 
 <td>{{jDate::forge($admin->qst_createdatdate)->format('Y/m/d ساعت H:i a')}}</td> 
                        <td> 

 
 
  <a href="{{env('APP_URL')}}/superadmin/views/{{$page}}/edit/{{$admin->id}}" class="btn btn-primary"  >
  	<i data-feather="edit"></i> 
  </a>
                        </td>
 <td><button type="button" class="btn btn-danger  "  data-toggle="modal" data-target="#delet{{$admin->id}}" ><i data-feather="trash"></i>  </button>
 
 
 
 
 <div class="modal fade" id="delet{{$admin->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"> حذف "{{$admin->qst_pors}}" </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       آیه شما مایل به حذف "{{$admin->qst_pors}}" از سیستم هستید؟
      </div>
      <div class="modal-footer">
        <a href="{{env('APP_URL')}}/superadmin/views/{{$page}}/delet/{{$admin->id}}" class="btn btn-danger"  >حذف</a> 
        <button type="button" class="btn btn-secondary" data-dismiss="modal">خیر</button> 
      </div>
    </div>
  </div>
</div>
 
</td>
                      </tr>
 @endforeach
         
 


 
 @endif   
                 






 
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