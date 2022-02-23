@extends('mng.layout')


 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

@section('title')
<title>تنظیمات مالی</title>
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

		 

        <div class="row">
          <div class="col-12 col-xl-12 stretch-card">
            <div class="row flex-grow">
            
             
              
              
              
              <div class="col-md-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">

 <div class="card-header card-header-border-bottom">
 <h4>تنظیمات مالی</h4>
 </div>

<br>



   <script src="{{env('APP_URL')}}/build/js/alert/alertify.min.js"></script>
	<link rel="stylesheet" href="{{env('APP_URL')}}/build/js/alert/alertify.core.css" />
	<link rel="stylesheet" href="{{env('APP_URL')}}/build/js/alert/alertify.default.css" id="toggleCSS" />

<style>
.divclass {
  background: #415665;
  height: 50px;
  width:200px;
  border-radius: 15px;
  padding:20px;
  font-size:22px;
  color:#fff;   
}
</style> 




<script> 
    function calculate() {
        var myBox1 = document.getElementById('box1').value; 
        var myBox2 = document.getElementById('box2').value;  
        var maxmm = 100; 
 
        
  
  
var myResulttt =  100 - myBox1;
document.getElementById('box2').value = myResulttt; 

   

 if(myBox1>maxmm){

alertify.confirm("دقت نمایید مبلغ وارد شده بیشتر از هزینه پیش بینی شده می باشد ", function (e) {
    if (e) {
        alertify.alert("باتشکر از حسن توجه و شکیبایی شما");
    } else {
        alertify.alert("باتشکر از حسن توجه و شکیبایی شما");
    }
});


}

 
}    
</script>






<form class="forms-sample"  method="POST" action=""  >
 
<div class="row">




            
<div class="col-sm-12">         
        @if(count($errors))
			<div class="alert alert-danger">
				<strong>اخطار!</strong> لطفا اطلاعات را به درستی وارد نمایید
				<br/>
				<ul>
					@foreach($errors->all() as $error)
					<li>{{ $error }}</li>
					@endforeach
				</ul>
			</div>
		@endif
                    
			</div>



 
  
 
<div class="col-sm-2"> 

 
			</div>

 
<div class="col-sm-8"> 

 

				<div class="row">
					<div class="col-md-12 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
							
							
							
							
 <div class="form-group">
 <h4 class="card-title">درصد balance </h4>
<input type="text"   class="form-control"   autocomplete="off" placeholder="درصد balance " name="mngfinics_perbalance"  id="box1"  oninput="calculate();"  value="{{$admins->mngfinics_perbalance}}"  required > 
 </div>
 
 <hr>				
							
 <div class="form-group">
 <h4 class="card-title">درصد earning </h4>
<input type="text"   class="form-control"   autocomplete="off" placeholder="درصد earning " name="mngfinics_perearning"  id="box2"  oninput="calculate();"   value="{{$admins->mngfinics_perearning}}"  required > 
 </div>
 
 <hr>
    
  				
 <div class="form-group">
 <h4 class="card-title">   حداقل تخم مرغ جهت فروش </h4>
<input type="text"   class="form-control"   autocomplete="off" placeholder="حداقل تخم مرغ جهت فروش   " name="mngfinics_mineggssel"    value="{{$admins->mngfinics_mineggssel}}"  required > 
 </div>
 
 <hr>
    	
 <div class="form-group">
 <h4 class="card-title">  پاداش اولیه ثبت نام کاربر Gold Balance </h4>
<input type="text"   class="form-control"   autocomplete="off" placeholder="  پاداش اولیه ثبت نام کاربر Gold Balance  " name="mngfinics_rewardbalance"   value="{{$admins->mngfinics_rewardbalance}}"  required > 
 </div>
 
 <hr>
    
 <div class="form-group">
 <h4 class="card-title">  پاداش REFERRAL  </h4>
<input type="text"   class="form-control"   autocomplete="off" placeholder="  پاداش REFERRAL  " name="mngfinics_referral"   value="{{$admins->mngfinics_referral}}"  required > 
 </div>
 
 <hr>
    
  
  
 <div class="form-group">
 <h4 class="card-title">     قیمت هر واحد GOLD به تعداد تخم مرغ </h4>
<input type="text"   class="form-control"   autocomplete="off" placeholder="        قیمت هر واحد GOLD به تعداد تخم مرغ   " name="mngfinics_goldinegg"   value="{{$admins->mngfinics_goldinegg}}"  required > 
 </div>
 
 <hr>
    
  
  
 <div class="form-group">
 <h4 class="card-title">    هر بیت کویین معادل GOLD </h4>
<input type="text"   class="form-control"   autocomplete="off" placeholder="     هر بیت کویین معادل GOLD  " name="mngfinics_goldinbtc"   value="{{$admins->mngfinics_goldinbtc}}"  required > 
 </div>
 
 <hr>
    
  
	

 <input type="hidden" name="_token" value="{{ csrf_token() }}">
                     
<div class="form-group">
<label for="exampleInputUsername1"> </label>

<button type="submit" class="btn btn-success btn-block">ویرایش</button> 
</div>		
</div>				
  

 	
</div>
 	
</div>
 	
</div>
 	
 	
 	
			</div>

 
<div class="col-sm-2"> 

 
			</div>

 	
</div>
 	  
</form>








                  </div>
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