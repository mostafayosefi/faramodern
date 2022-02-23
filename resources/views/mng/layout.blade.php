
     @yield('title')
 @if((Session::get('nav')=='viewsnews')||(Session::get('nav')=='viewslink')||(Session::get('nav')=='viewselan')||(Session::get('nav')=='viewsads')||(Session::get('nav')=='viewspage')||(Session::get('nav')=='viewsprods')||(Session::get('nav')=='viewspages')||(Session::get('nav')=='viewscats')||(Session::get('nav')=='mngbuys')||(Session::get('nav')=='mngbaskets')||(Session::get('nav')=='mngsellers')||(Session::get('nav')=='finicals')||(Session::get('nav')=='mngwallets')||(Session::get('nav')=='mngsettlements')||(Session::get('nav')=='mngdescription')||(Session::get('nav')=='mnggetway')||(Session::get('nav')=='viewschicks')||(Session::get('nav')=='mngqst')) 
 
 
 


  <link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/vendors/datatables.net-bs4/dataTables.bootstrap4.css">
 
 
 @endif



    
@if((Session::get('nav')=='increase')||(Session::get('nav')=='decrease')||(Session::get('nav')=='adduser')||(Session::get('nav')=='first')||(Session::get('nav')=='sec')||(Session::get('nav')=='thi')||(Session::get('nav')=='addperson')||(Session::get('nav')=='editreqpersonid')||(Session::get('nav')=='addcompany')||(Session::get('nav')=='editcompanyid')) 
  
	<!-- endinject -->
	<!-- plugin css for this page -->
	<link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/css/persian-datepicker-0.4.5.min.css">
	<link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/vendors/select2/select2.min.css">
	<link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/vendors/jquery-tags-input/jquery.tagsinput.min.css">
	<link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/vendors/dropzone/dropzone.min.css">
	<link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/vendors/dropify/dist/dropify.min.css">
	<link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/vendors/bootstrap-colorpicker/bootstrap-colorpicker.min.css">
	<link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.css">
	<link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/vendors/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/vendors/tempusdominus-bootstrap-4/tempusdominus-bootstrap-4.min.css">
	
	
	
 
	<link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/fonts/feather-font/css/iconfont.css">
	<link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/vendors/flag-icon-css/css/flag-icon.min.css">
	<!-- endinject -->
	<!-- Layout styles -->
	<link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/css/demo_1/style.css">
	<!-- End layout styles -->
	<link rel="shortcut icon" href="{{env('APP_URL')}}/build/template/assets/images/favicon.png" />
	
	
 @endif
    

 
 
 <div class="main-wrapper">
 
    <nav class="sidebar">
      <div class="sidebar-header">
        <a href="#" class="sidebar-brand">
         شماره <span> سیستم</span>
        </a>
        <div class="sidebar-toggler not-active">
          <span></span>
          <span></span>
          <span></span>
        </div>
      </div>
      <div class="sidebar-body">
        <ul class="nav">
          <li class="nav-item nav-category">اصلی</li>
          <li class="nav-item">
            <a href="{{env('APP_URL')}}/superadmin/dashboard" class="nav-link">
              <i class="link-icon" data-feather="box"></i>
              <span class="link-title">داشبورد</span>
            </a>
          </li>
          
  
          
          <li class="nav-item   ">
            <a class="nav-link" data-toggle="collapse" href="#user" role="button" aria-expanded="false" aria-controls="user">
              <i class="link-icon" data-feather="list"></i>
              <span class="link-title">مدیریت کاربران</span>
              <i class="link-arrow" data-feather="chevron-down"></i>
            </a>
            <div class="collapse   " id="user">
              <ul class="nav sub-menu">
                <li class="nav-item">
 <a href="{{env('APP_URL')}}/superadmin/adduser/user" class="nav-link  ">ثبت کاربر </a>
                </li>
                <li class="nav-item">
 <a href="{{env('APP_URL')}}/superadmin/mngcust/cust" class="nav-link   ">مشاهده کاربران</a>
                </li> 
              </ul>
            </div>
          </li> 
          
            
            
             



 
           
           
           
           
   
     <li class="nav-item @if((Session::get('nav')=='reqall')||(Session::get('nav')=='viewsrequsts')||(Session::get('nav')=='addperson')||(Session::get('nav')=='editreqpersonid')||(Session::get('nav')=='addcompany')||(Session::get('nav')=='editcompanyid')) active @endif">
            <a class="nav-link" data-toggle="collapse" href="#req" role="button" aria-expanded="false" aria-controls="req">
              <i class="link-icon" data-feather="list"></i>
              <span class="link-title">درخواست کاربران  
               @if (Session::get('countalerts')!=0)   &nbsp; 
 <span class="badge badge-pill badge-info" title="درخواست جدید"> {{Session::get('countalerts')}} </span>
@endif
              </span>
              <i class="link-arrow" data-feather="chevron-down"></i>
            </a>
            <div class="collapse  @if((Session::get('nav')=='reqall')||(Session::get('nav')=='viewsrequsts')||(Session::get('nav')=='addperson')||(Session::get('nav')=='editreqpersonid')||(Session::get('nav')=='addcompany')||(Session::get('nav')=='editcompanyid')) show  @endif" id="req">
              <ul class="nav sub-menu">
                
                <li class="nav-item">
                  <a href="{{env('APP_URL')}}/superadmin/addperson" class="nav-link  @if((Session::get('nav')=='addperson')) active @endif">ثبت درخواست حقیقی 
                  </a>
                </li>   
                <li class="nav-item">
                  <a href="{{env('APP_URL')}}/superadmin/addcompany" class="nav-link  @if((Session::get('nav')=='addcompany')) active @endif">ثبت درخواست حقوقی 
                  </a>
                </li>  
                <li class="nav-item">
                  <a href="{{env('APP_URL')}}/superadmin/viewsrequsts/reqall/person" class="nav-link  @if((Session::get('nav')=='reqall')) active @endif">مشاهده درخواستهای حقیقی 
                                 @if (Session::get('countpers')!=0)   &nbsp; 
 <span class="badge badge-pill badge-info" title="درخواست جدید"> {{Session::get('countpers')}} </span>
@endif
                  </a>
                </li>  
                <li class="nav-item">
                  <a href="{{env('APP_URL')}}/superadmin/viewsrequsts/reqall/company" class="nav-link  @if((Session::get('nav')=='reqall')) active @endif">مشاهده درخواستهای حقوقی                
                  @if (Session::get('countcomp')!=0)   &nbsp; 
 <span class="badge badge-pill badge-info" title="درخواست جدید"> {{Session::get('countcomp')}} </span>
@endif
                  </a>
                </li>   
              </ul>
            </div>
          </li> 
       
    
    
    
          <li class="nav-item @if((Session::get('nav')=='finicperson')||(Session::get('nav')=='finiccompany')) active @endif">
            <a class="nav-link" data-toggle="collapse" href="#mngfinic" role="button" aria-expanded="false" aria-controls="mngfinic">
              <i class="link-icon" data-feather="list"></i>
              <span class="link-title">مدیریت مالی</span>
              <i class="link-arrow" data-feather="chevron-down"></i>
            </a>
            <div class="collapse  @if((Session::get('nav')=='finicperson')||(Session::get('nav')=='finiccompany')) show  @endif" id="mngfinic">
              <ul class="nav sub-menu">
                  
                <li class="nav-item">
                  <a href="{{env('APP_URL')}}/superadmin/finic/person" class="nav-link  @if((Session::get('nav')=='finicperson')) active @endif">فاکتور درخواستهای حقیقی</a>
                </li> 
                <li class="nav-item">
                  <a href="{{env('APP_URL')}}/superadmin/finic/company" class="nav-link  @if((Session::get('nav')=='finiccompany')) active @endif">فاکتور درخواستهای حقوقی</a>
                </li>   
                
             
              </ul>
            </div>
          </li> 
     
             
          
          <li class="nav-item @if((Session::get('nav')=='mnggetway')||(Session::get('nav')=='view')||(Session::get('nav')=='mnglaw')||(Session::get('nav')=='mngsetting')||(Session::get('nav')=='viewsgetway')||(Session::get('nav')=='settingpay')) active @endif">
            <a class="nav-link" data-toggle="collapse" href="#bb" role="button" aria-expanded="false" aria-controls="bb">
              <i class="link-icon" data-feather="list"></i>
              <span class="link-title">تنظیمات سایت</span>
              <i class="link-arrow" data-feather="chevron-down"></i>
            </a>
            <div class="collapse  @if((Session::get('nav')=='mnggetway')||(Session::get('nav')=='mngsetting')||(Session::get('nav')=='mnglaw')||(Session::get('nav')=='avail')||(Session::get('nav')=='viewsgetway')||(Session::get('nav')=='settingpay')) show  @endif" id="bb">
              <ul class="nav sub-menu">
                  
                <li class="nav-item">
                  <a href="{{env('APP_URL')}}/superadmin/mngimgheader" class="nav-link  @if((Session::get('nav')=='mngimgheader')) active @endif">مدیریت لوگو و هدر</a>
                </li>  
                <li class="nav-item">
                  <a href="{{env('APP_URL')}}/superadmin/mngsetting" class="nav-link  @if((Session::get('nav')=='mngsetting')) active @endif">تنظیمات سایت</a>
                </li>  
             
                <li class="nav-item">
                  <a href="{{env('APP_URL')}}/superadmin/mnglaw" class="nav-link  @if((Session::get('nav')=='mnglaw')) active @endif">قوانین سایت</a>
                </li>  
             
                <li class="nav-item">
                  <a href="{{env('APP_URL')}}/superadmin/mngtxtdes" class="nav-link  @if((Session::get('nav')=='mnglaw')) active @endif">متن های پیش فرض</a>
                </li>  
             
             <li class="nav-item">
               <a href="{{env('APP_URL')}}/superadmin/viewsgetway" class="nav-link  @if((Session::get('nav')=='viewsgetway')) active @endif">تنظیمات درگاه پرداخت</a>
             </li>  
             
             <li class="nav-item">
               <a href="{{env('APP_URL')}}/superadmin/settingpay" class="nav-link  @if((Session::get('nav')=='settingpay')) active @endif">تنظیمات پرداخت</a>
             </li>  
             
             
              </ul>
            </div>
          </li> 
           
  
          <li class="nav-item @if((Session::get('nav')=='first')||(Session::get('nav')=='mngspotlite')||(Session::get('nav')=='sec')||(Session::get('nav')=='thi')) active @endif">
            <a class="nav-link" data-toggle="collapse" href="#mngindexes" role="button" aria-expanded="false" aria-controls="mngindexes">
              <i class="link-icon" data-feather="list"></i>
              <span class="link-title">مدیریت ایندکس</span>
              <i class="link-arrow" data-feather="chevron-down"></i>
            </a>
            <div class="collapse  @if((Session::get('nav')=='first')||(Session::get('nav')=='mngspotlite')||(Session::get('nav')=='sec')||(Session::get('nav')=='thi')) show  @endif" id="mngindexes">
              <ul class="nav sub-menu">
                  
                <li class="nav-item">
                  <a href="{{env('APP_URL')}}/superadmin/mngspotlite" class="nav-link  @if((Session::get('nav')=='mngspotlite')) active @endif">مدیریت اسپوتلایتها</a>
                </li>  
                <li class="nav-item">
                  <a href="{{env('APP_URL')}}/superadmin/comid/first" class="nav-link  @if((Session::get('nav')=='first')) active @endif">امکانات اول</a>
                </li>  
                <li class="nav-item">
                  <a href="{{env('APP_URL')}}/superadmin/comid/sec" class="nav-link  @if((Session::get('nav')=='sec')) active @endif">امکانات دوم</a>
                </li> 
                <li class="nav-item">
                  <a href="{{env('APP_URL')}}/superadmin/comid/thi" class="nav-link  @if((Session::get('nav')=='thi')) active @endif">کامنت مشتریان</a>
                </li>  
             
             
              </ul>
            </div>
          </li> 
           
           
           
          <li class="nav-item @if((Session::get('nav')=='mngcity')) active @endif">
            <a class="nav-link" data-toggle="collapse" href="#mngcity" role="button" aria-expanded="false" aria-controls="mngcity">
              <i class="link-icon" data-feather="list"></i>
              <span class="link-title">مدیریت شماره ها</span>
              <i class="link-arrow" data-feather="chevron-down"></i>
            </a>
            <div class="collapse  @if((Session::get('nav')=='mngcity')) show  @endif" id="mngcity">
              <ul class="nav sub-menu">
                  
                <li class="nav-item">
                  <a href="{{env('APP_URL')}}/superadmin/mngcity" class="nav-link  @if((Session::get('nav')=='mngcity')) active @endif">مشاهده شهرها</a>
                </li>   
                
             
              </ul>
            </div>
          </li> 
           
            
          
          <li class="nav-item  ">
            <a class="nav-link" data-toggle="collapse" href="#page" role="button" aria-expanded="false" aria-controls="page">
              <i class="link-icon" data-feather="list"></i>
              <span class="link-title">مدیریت صفحات سایت</span>
              <i class="link-arrow" data-feather="chevron-down"></i>
            </a>
            <div class="collapse   " id="page">
              <ul class="nav sub-menu">
                <li class="nav-item">
 <a href="{{env('APP_URL')}}/superadmin/add/page" class="nav-link  ">ثبت صفحه جدید </a>
                </li> 
                <li class="nav-item">
 <a href="{{env('APP_URL')}}/superadmin/views/page" class="nav-link  ">مشاهده صفحات </a>
                </li> 
              </ul>
            </div>
          </li> 
             
       
          <li class="nav-item  ">
            <a class="nav-link" data-toggle="collapse" href="#qst" role="button" aria-expanded="false" aria-controls="qst">
              <i class="link-icon" data-feather="list"></i>
              <span class="link-title">مدیریت پرسش پاسخ</span>
              <i class="link-arrow" data-feather="chevron-down"></i>
            </a>
            <div class="collapse   " id="qst">
              <ul class="nav sub-menu">
                <li class="nav-item">
 <a href="{{env('APP_URL')}}/superadmin/addqst" class="nav-link  ">ثبت پرسش پاسخ </a>
                </li> 
                <li class="nav-item">
 <a href="{{env('APP_URL')}}/superadmin/mngqst" class="nav-link  ">مشاهده پرسش پاسخها </a>
                </li> 
              </ul>
            </div>
          </li> 
             
       
            
   
 
     
          
       
   
     <li class="nav-item @if((Session::get('nav')=='mngcontact')||(Session::get('nav')=='viewsuserticketssup')||(Session::get('nav')=='viewsuserticketssupactive')) active @endif">
            <a class="nav-link" data-toggle="collapse" href="#ticket" role="button" aria-expanded="false" aria-controls="ticket">
              <i class="link-icon" data-feather="list"></i>
              <span class="link-title">پشتیبانی</span> @if (Session::get('tickreadstudentsup')!=0)   &nbsp; 
 <span class="badge badge-pill badge-info" title="پیام جدید"> {{ Session::get('tickreadstudentsup')}} </span>
@endif
              <i class="link-arrow" data-feather="chevron-down"></i>
            </a>
            <div class="collapse  @if((Session::get('nav')=='mngcontact')||(Session::get('nav')=='viewsuserticketssup')||(Session::get('nav')=='viewsuserticketssupactive')) show  @endif" id="ticket">
              <ul class="nav sub-menu"> 
              
                <li class="nav-item">
 <a href="{{env('APP_URL')}}/superadmin/mngcontact" class="nav-link   @if((Session::get('nav')=='mngcontact')) active @endif">مدیریت تماس با ما    
 
              </a>
                </li> 
                
        
 <li class="nav-item">
 <a href="{{env('APP_URL')}}/superadmin/viewsuserticketssup" class="nav-link  @if((Session::get('nav')=='viewsuserticketssup')) active @endif">مشاهده تیکتهای کاربران   
 @if (Session::get('tickreadstudentsup')!=0)   &nbsp; 
 <span class="badge badge-pill badge-info" title="پیام جدید"> {{ Session::get('tickreadstudentsup')}} </span>
@endif
              </a>
 </li>  
   
                
 <li class="nav-item">
 <a href="{{env('APP_URL')}}/superadmin/viewsuserticketssupactive" class="nav-link  @if((Session::get('nav')=='viewsuserticketssupactive')) active @endif">  تیکتهای منتظرپاسخ  </a>
 </li>      
       
       
              </ul>
            </div>
          </li> 
       
     
     
          
          
        </ul>
      </div>
    </nav> 

    <div class="page-wrapper">


      <nav class="navbar">
        <a href="#" class="sidebar-toggler">
          <i data-feather="menu"></i>
        </a>
        <div class="navbar-content">
          <form class="search-form">
            <div class="input-group">
              <div class="input-group-prepend">
                <div class="input-group-text">
                  <i data-feather="search"></i>
                </div>
              </div>
              <input type="text" class="form-control" id="navbarForm" placeholder="جستجو ...">
            </div>
          </form>
          <ul class="navbar-nav">
 
            <li class="nav-item dropdown nav-profile">
              <a class="nav-link dropdown-toggle" href="#" id="profileDropdown" role="button" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
 
@if(Session::get('usimg')=='') 
<img src="{{env('APP_URL')}}/public/images/user_male2.png" alt="">
@else
<img src="{{env('APP_URL')}}/public/images/{{Session::get('supimg')}}" alt=""> 
@endif 
              </a>
              <div class="dropdown-menu" aria-labelledby="profileDropdown">
                <div class="dropdown-header d-flex flex-column align-items-center">
                  <div class="figure mb-3">
 
 
@if(Session::get('usimg')=='') 
<img src="{{env('APP_URL')}}/public/images/user_male2.png" alt="">
@else
<img src="{{env('APP_URL')}}/public/images/{{Session::get('supimg')}}" alt=""> 
@endif 
                  </div>
                  <div class="info text-center">
 <p class="name font-weight-bold mb-0">{{Session::get('namemng')}}</p>
 <p class="email text-muted mb-3">{{Session::get('signsuperadmin')}}</p>
                  </div>
                </div>
                <div class="dropdown-body">
                  <ul class="profile-nav p-0 pt-3">
                    <li class="nav-item">
                      <a href="{{env('APP_URL')}}/superadmin/profile" class="nav-link">
                        <i data-feather="user"></i>
                        <span>پروفایل</span>
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="{{env('APP_URL')}}/superadmin/profile" class="nav-link">
                        <i data-feather="edit"></i>
                        <span>ویرایش پروفایل</span>
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="javascript:;" class="nav-link">
                        <i data-feather="repeat"></i>
                        <span>تغییر کاربر</span>
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="{{env('APP_URL')}}/superadmin/sign-out" class="nav-link">
                        <i data-feather="log-out"></i>
                        <span>خروج</span>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </li>
          </ul>
        </div>
      </nav> 




     @yield('body')
     
     
      <!-- partial:partials/_footer.html -->
      <footer class="footer d-flex flex-column flex-md-row align-items-center justify-content-between">
        <p class="text-muted text-center text-md-left">Copyright © 2020، تمام حقوق محفوظ است</p>
      </footer>
      <!-- partial -->
     @yield('footer')







 
                      
<style>
 

.openBtn {
    background: #f1f1f1;
    border: none;
    padding: 10px 15px;
    font-size: 20px;
    cursor: pointer;
}

.openBtn:hover {
    background: #bbb;
}

.overlay {
    height: 100%;
    width: 100%;
    display: none;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: rgb(0,0,0);
    background-color: rgba(0,0,0, 0.9);
}

.overlay-content {
    position: relative;
    top: 46%;
    width: 80%;
    text-align: center;
    margin-top: 30px;
    margin: auto;
}

.overlay .closebtn {
    position: absolute;
    top: 20px;
    right: 45px;
    font-size: 60px;
    cursor: pointer;
    color: white;
}

.overlay .closebtn:hover {
    color: #ccc;
}

.overlay input[type=text] {
    padding: 15px;
    font-size: 17px;
    border: none;
    float: left;
    width: 80%;
    background: white;
}

.overlay input[type=text]:hover {
    background: #f1f1f1;
}

.overlay button {
    float: left;
    width: 20%;
    padding: 15px;
    background: #ddd;
    font-size: 17px;
    border: none;
    cursor: pointer;
}

.overlay button:hover {
    background: #bbb;
}
</style>
 



<div id="myOverlay" class="overlay"> 
  <div class="overlay-content">
    <div id="escapingBallG">   
	  <h2 style="color: #38c8dd">لطفا صبر کنید</h2> 
	 
	 <div class="spinner-border text-warning" role="status">
  <span class="sr-only">  </span>
</div>
	 
		</div>
  </div>
</div>

 

 

<script>
function openSearch() {
  document.getElementById("myOverlay").style.display = "block";
}

function closeSearch() {
  document.getElementById("myOverlay").style.display = "none";
}
</script>
              
    							


    </div>
  </div>

@if((Session::get('nav')!='increase')&&(Session::get('nav')!='decrease')||(Session::get('nav')=='adduser')||(Session::get('nav')=='first')||(Session::get('nav')=='sec')||(Session::get('nav')=='thi')||(Session::get('nav')=='addperson')||(Session::get('nav')=='editreqpersonid')||(Session::get('nav')=='addcompany')||(Session::get('nav')=='editcompanyid')) 
    
  <!-- core:js -->
  <script src="{{env('APP_URL')}}/build/template/assets/vendors/core/core.js"></script>
  <!-- endinject -->
  <!-- plugin js for this page -->
  <script src="{{env('APP_URL')}}/build/template/assets/vendors/chartjs/Chart.min.js"></script>
  <script src="{{env('APP_URL')}}/build/template/assets/vendors/jquery.flot/jquery.flot.js"></script>
  <script src="{{env('APP_URL')}}/build/template/assets/vendors/jquery.flot/jquery.flot.resize.js"></script>
  <script src="{{env('APP_URL')}}/build/template/assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
  <script src="{{env('APP_URL')}}/build/template/assets/vendors/apexcharts/apexcharts.min.js"></script>
  <script src="{{env('APP_URL')}}/build/template/assets/vendors/progressbar.js/progressbar.min.js"></script>
  <!-- end plugin js for this page -->
  <!-- inject:js -->
  <script src="{{env('APP_URL')}}/build/template/assets/vendors/feather-icons/feather.min.js"></script>
  <script src="{{env('APP_URL')}}/build/template/assets/js/template.js"></script>
  <!-- endinject -->
  <!-- custom js for this page -->
  <script src="{{env('APP_URL')}}/build/template/assets/js/dashboard.js"></script>
  <script src="{{env('APP_URL')}}/build/template/assets/js/datepicker.js"></script>
  <script src="{{env('APP_URL')}}/build/template/assets/js/persian-date-0.1.8.min.js"></script>
  <script src="{{env('APP_URL')}}/build/template/assets/js/persian-datepicker-0.4.5.min.js"></script>
  
  @endif
  
  
  
  
  
 @if((Session::get('nav')=='viewsnews')||(Session::get('nav')=='viewslink')||(Session::get('nav')=='viewselan')||(Session::get('nav')=='viewsads')||(Session::get('nav')=='viewspage')||(Session::get('nav')=='viewsprods')||(Session::get('nav')=='viewspages')||(Session::get('nav')=='viewscats')||(Session::get('nav')=='mngbuys')||(Session::get('nav')=='mngbaskets')||(Session::get('nav')=='mngsellers')||(Session::get('nav')=='finicals')||(Session::get('nav')=='mngwallets')||(Session::get('nav')=='mngsettlements')||(Session::get('nav')=='mngdescription')||(Session::get('nav')=='mnggetway')||(Session::get('nav')=='viewschicks')||(Session::get('nav')=='mngqst'))  

 
  <script src="{{env('APP_URL')}}/build/template/assets/vendors/datatables.net/jquery.dataTables-ltr.js"></script>
  <script src="{{env('APP_URL')}}/build/template/assets/vendors/datatables.net-bs4/dataTables.bootstrap4-ltr.js"></script>
  
  <script src="{{env('APP_URL')}}/build/template/assets/js/data-table-ltr.js"></script>
 
 @endif
    
    
    
	

@if((Session::get('nav')=='mngtxtdes')||(Session::get('nav')=='viewsnews')||(Session::get('nav')=='addpage')||(Session::get('nav')=='viewspage')||(Session::get('nav')=='viewsprods')||(Session::get('nav')=='viewspages')||(Session::get('nav')=='mngdescription')||(Session::get('nav')=='mnggetway')||(Session::get('nav')=='increase')||(Session::get('nav')=='decrease')||(Session::get('nav')=='adduser')||(Session::get('nav')=='first')||(Session::get('nav')=='sec')||(Session::get('nav')=='thi')||(Session::get('nav')=='mnglaw')||(Session::get('nav')=='addperson')||(Session::get('nav')=='editreqpersonid')||(Session::get('nav')=='addcompany')||(Session::get('nav')=='editcompanyid')) 

<script src="{{env('APP_URL')}}/build/template/assets/vendors/tinymce-rtl/tinymce.min.js"></script>
	<script src="{{env('APP_URL')}}/build/template/assets/vendors/simplemde/simplemde.min.js"></script>
	<script src="{{env('APP_URL')}}/build/template/assets/vendors/ace-builds/src-min/ace.js"></script>
	<script src="{{env('APP_URL')}}/build/template/assets/vendors/ace-builds/src-min/theme-chaos.js"></script>
	<!-- end plugin js for this page -->
	<!-- inject:js -->
	<script src="{{env('APP_URL')}}/build/template/assets/vendors/feather-icons/feather.min.js"></script>
	<script src="{{env('APP_URL')}}/build/template/assets/js/template.js"></script>
	<!-- endinject -->
	<!-- custom js for this page -->
	<script src="{{env('APP_URL')}}/build/template/assets/js/tinymce.js"></script>
	<script src="{{env('APP_URL')}}/build/template/assets/js/simplemde.js"></script>
	<script src="{{env('APP_URL')}}/build/template/assets/js/ace.js"></script>
 
 @endif
  
@if((Session::get('nav')=='increase')||(Session::get('nav')=='decrease')||(Session::get('nav')=='adduser')||(Session::get('nav')=='first')||(Session::get('nav')=='sec')||(Session::get('nav')=='thi')||(Session::get('nav')=='addperson')||(Session::get('nav')=='editreqpersonid')||(Session::get('nav')=='addcompany')||(Session::get('nav')=='editcompanyid')) 
    
  

	<!-- core:js -->
	<script src="{{env('APP_URL')}}/build/template/assets/vendors/core/core.js"></script>
	<!-- endinject -->
	<!-- plugin js for this page -->
	<script src="{{env('APP_URL')}}/build/template/assets/vendors/jquery-validation/jquery.validate.min.js"></script>
	<script src="{{env('APP_URL')}}/build/template/assets/vendors/bootstrap-maxlength/bootstrap-maxlength.min.js"></script>
	<script src="{{env('APP_URL')}}/build/template/assets/vendors/inputmask/jquery.inputmask.min.js"></script>
	<script src="{{env('APP_URL')}}/build/template/assets/vendors/select2/select2.min.js"></script>
	<script src="{{env('APP_URL')}}/build/template/assets/vendors/typeahead.js/typeahead.bundle.min.js"></script>
	<script src="{{env('APP_URL')}}/build/template/assets/vendors/jquery-tags-input/jquery.tagsinput.min.js"></script>
	<script src="{{env('APP_URL')}}/build/template/assets/vendors/dropzone/dropzone.min.js"></script>
	<script src="{{env('APP_URL')}}/build/template/assets/vendors/dropify/dist/dropify.min.js"></script>
	<script src="{{env('APP_URL')}}/build/template/assets/vendors/bootstrap-colorpicker/bootstrap-colorpicker.min.js"></script>
	<script src="{{env('APP_URL')}}/build/template/assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
	<script src="{{env('APP_URL')}}/build/template/assets/vendors/moment/moment.min.js"></script>
	<script src="{{env('APP_URL')}}/build/template/assets/vendors/tempusdominus-bootstrap-4/tempusdominus-bootstrap-4.js"></script>
	<!-- end plugin js for this page -->
	<!-- inject:js -->
	<script src="{{env('APP_URL')}}/build/template/assets/vendors/feather-icons/feather.min.js"></script>
	<script src="{{env('APP_URL')}}/build/template/assets/js/template.js"></script>
	<!-- endinject -->
	<!-- custom js for this page -->
	<script src="{{env('APP_URL')}}/build/template/assets/js/form-validation.js"></script>
	<script src="{{env('APP_URL')}}/build/template/assets/js/bootstrap-maxlength.js"></script>
	<script src="{{env('APP_URL')}}/build/template/assets/js/inputmask.js"></script>
	<script src="{{env('APP_URL')}}/build/template/assets/js/select2.js"></script>
	<script src="{{env('APP_URL')}}/build/template/assets/js/typeahead.js"></script>
	<script src="{{env('APP_URL')}}/build/template/assets/js/tags-input.js"></script>
	<script src="{{env('APP_URL')}}/build/template/assets/js/dropzone.js"></script>
	<script src="{{env('APP_URL')}}/build/template/assets/js/dropify.js"></script>
	<script src="{{env('APP_URL')}}/build/template/assets/js/bootstrap-colorpicker.js"></script>
	<script src="{{env('APP_URL')}}/build/template/assets/js/datepicker.js"></script>
	<script src="{{env('APP_URL')}}/build/template/assets/js/timepicker.js"></script>
	<script src="{{env('APP_URL')}}/build/template/assets/js/persian-date-0.1.8.min.js"></script>
	<script src="{{env('APP_URL')}}/build/template/assets/js/persian-datepicker-0.4.5.min.js"></script>
	
 @endif
    
    
  
 @if((Session::get('nav')=='viewsuserticketssup'))  
  <script src="{{env('APP_URL')}}/build/template/assets/js/chat.js"></script>
  
 @endif
    
  
  <!-- end custom js for this page -->