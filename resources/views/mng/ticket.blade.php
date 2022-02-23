@extends('mng.layout')


 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

@section('title')
<title>      تیکت    </title>
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


@foreach ($tickets as $ticket)  

<?php $userimg='https://cdn3.iconfinder.com/data/icons/user-with-laptop/100/user-laptop-512.png'; ?>
 
      <div class="page-content">
      
      
       

        <div class="row chat-wrapper">
          <div class="col-md-12">
            <div class="card">
              <div class="card-body">
                <div class="row position-relative">
                  <div class="col-lg-4 chat-aside border-lg-left">
                    <div class="aside-content">
                   
                   
                   
                   

<div class="aside-body"> 
<ul class="list-group"> 
 
 
 <li class="list-group-item"> <i data-feather="calendar"></i>   تاریخ ثبت :    {{jDate::forge($ticket->tik_createdatdate)->format('Y/m/d ساعت H:i a')}} </li>
 
 <li class="list-group-item"> <i data-feather="user"></i> ایجاد کننده تیکت    : {{$ticket->user_name}}  </li>
   
 
 <li class="list-group-item"> <i data-feather="check-circle"></i>  وضعیت تیکت :  
@if($ticket->tik_active=='1')
 <a  class="badge badge-warning"  href="javascript:;">منتظر پاسخ </a>
 @elseif($ticket->tik_active=='2')
 <a  class="badge badge-success"  href="javascript:;">پاسخ داده شده  </a>   
  @elseif($ticket->tik_active=='0')
 <a  class="badge badge-danger"  href="javascript:;"> بسته شده  </a>  
 @endif   
 </li> 
 
 
 

    @if($ticket->tik_active!='0')                     
 
 <li class="list-group-item">    <a href="{{env('APP_URL')}}/superadmin/viewsuserticketssup/close/{{$ticket->id}}">
<div class="badge badge-danger"><i class="icon-sm  fa fa-lock  text-warning ml-2   "></i>&nbsp;&nbsp;بستن تیکت</div> </a>   </li>
   
   
@endif
 
 
 
 

</ul>
                    
                    
                    
                      </div>
                    </div>
                  </div>
                  
                  
                  
               
                  <div class="col-lg-8 chat-content">
                    <div class="chat-header border-bottom pb-2">
                      <div class="d-flex justify-content-between">
                        <div class="d-flex align-items-center">
                          <i data-feather="corner-up-left" id="backToChatList"
                            class="icon-lg ml-2 mr-n2 text-muted d-lg-none"></i>
                          <figure class="mb-0 ml-2">
 <img src="{{$userimg}}" class="img-sm rounded-circle" alt="image">
                            <div class="status online"></div>
                            <div class="status online"></div>
                          </figure>
                          <div>
                            <p>{{$ticket->user_name}}</p>
                            <p class="text-muted tx-13">کاربر</p>
                          </div>
                        </div>
                        
                      </div>
                    </div>
                    <div class="chat-body">
                      <ul class="messages">
                      
                      
                      
                      
                      
@foreach ($messages as $message)  
@if($message->mes_flg=='1')
                        <li class="message-item friend">

 <img src="{{$userimg}}" class="img-xs rounded-circle" alt="avatar">
                          <div class="content">
                            <div class="message">
                              <div class="bubble">
                                <p>{{$message->mes_des}}</p>
                              </div>
 <span>{{jDate::forge($message->mes_createdatdate)->format('l d F Y ساعت H:i a')}} </span>
                            </div>
                          </div>
                        </li>
                        @endif
@if($message->mes_flg=='2')
 
                        <li class="message-item me"> 
<img src="https://findicons.com/files/icons/2526/bloggers/256/admin.png" class="img-xs rounded-circle" alt="avatar">
                          <div class="content">
                            <div class="message">
                              <div class="bubble">
                                <p>{{$message->mes_des}}</p>
                              </div>
 <span>{{jDate::forge($message->mes_createdatdate)->format('l d F Y ساعت H:i a')}} </span>
                            </div>
                          </div>
                        </li>
                    
                        @endif
                        
                        @endforeach
                        
                      </ul>
                    </div>
                    <div class="chat-footer d-flex">
                  
                      <form class="search-form flex-grow ml-2"  action="" method="post"> 
                        <div class="input-group">
                          <input type="text" class="form-control rounded-pill" id="chatForm" placeholder="لطفا پیام خود را تایپ نمایید" name="des"  >
                        
                        <button type="submit" class="btn btn-primary btn-icon rounded-circle">
                          <i data-feather="send"></i>
                        </button>
                      </div>
                 
                     <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
@endforeach
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