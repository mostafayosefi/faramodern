<?php

namespace App\Http\Controllers\user;

use Illuminate\Http\Request;
use Auth;
use Session;
use DB;
use Crypt;
use Rule;
use Mail;

use Validator;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class UserController extends Controller
{ 
   
	
	
public function userlogin(Request $request){
	
	Session::set('idlang', '3'); 	
 
  $static_name='ورود کاربر';
DB::table('statics')->insert([
    ['static_ip' => $request->ip() ,  'static_url' => $request->url() , 'static_previous' => url()->previous() ,    'static_name' => $static_name ,   'static_createdatdate' =>  date('Y-m-d H:i:s'),  'static_browser' => $request->header('User-Agent') ]
]); 
 
 return view('user.login' );
 }
   
	
	
    public function userloginpost(Request $request)
    {
 

if($request->firstname!='enamad'){
    	$this->validate($request,[
    			'firstname' => 'required|email',
    			'lastname' => 'required'
    		],[
    			'firstname.required' => 'لطفا نام کاربری را وارد نمایید',
    			'firstname.email' => 'لطفا نام کاربری را به فرمت ایمیل وارد نمایید',
    			'lastname.required' => 'لطفا رمز ورود را وارد نمایید',
    			
    		]);
}

$admins = DB::table('user')->where([
    ['user_email',  $request->firstname],
])->first();
if($admins){

$password_db= $admins->user_password; 
$decryptedPassword =  Crypt::decrypt($password_db);
$userscou = DB::table('user')->where([
    ['user_email',  $request->firstname],
])->count();
$name_db= $admins->user_name;
$id_db= $admins->id;
$activeadmin= $admins->user_active; 
$username_db= $admins->user_email; 
$password_db= $admins->user_password; 
$username_log = $request->firstname; 
if(($username_log == $username_db)&&( $decryptedPassword == $request->lastname)){
	
	Session::set('fullname', $name_db);
	Session::set('iduser', $id_db);
	Session::set('signuser', $username_db);
	Session::set('activeuser', $activeadmin);

$adminslp = \DB::table('user')->where('id', '=', $id_db)  ->orderBy('id', 'desc')->first();
$logindatepas=$adminslp->user_loginatdate;	

$admimg=$adminslp->user_img;
if(empty($admimg)){$admimg='user2x.png';}	
	Session::set('logindatepasus', $logindatepas);
	Session::set('usimg', $admimg);
	$updatee = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->update(['user_loginatdate' => date('Y-m-d H:i:s') ,    'user_ip' => $request->ip()  ]); 
			return redirect('user/panel'); 
		} else 
			 $nametr = Session::flash('statust',  'متاسفانه مشکلی در ورود به سیستم وجود دارد');
				return redirect('user/sign-in'); 	
			
}
		else if(empty($admins)) {
			 $nametr = Session::flash('statust',  'متاسفانه مشکلی در ورود به سیستم وجود دارد');
				return redirect('user/sign-in'); 
		}
  }

	
	
public function paneluser(){ 

 if (Session::has('signuser')){  
$h = new UserController();
$h->checkverfysms();

$h = new UserController();
$h->checkactveaccount(); }


 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		
 if (Session::get('activeuser')==0){    return redirect('user/verificationdoc');  }
 else if (Session::has('signuser')){ 

Session::set('nav', 'paneluser'); 

	Session::set('idlang', '3');
 
	$admins = DB::table('user')->where([
    ['id',  Session::get('iduser')],
])->first();
$activeadmin= $admins->user_active; 
Session::set('activeuser', $activeadmin);


Session::set('verfyemail', $admins->user_emailactive);
Session::set('verfytell', $admins->user_tellactive);
Session::set('verfydoc', $admins->user_autactive);
 
 
   

$h = new UserController();
$h->sumdepozituser();


$h = new UserController();
$h->checkactveaccount();



 
 
 return view('user.dashboard'  , [  'admins' => $admins    ]); 
				
				
} }
    




		
	public function adduserfruser(Request $request){	

if (Session::has('moarefid')){
$moarefs=\DB::table('user')  ->where('user_moaref' , '=' , Session::get('moarefid'))->orderBy('id' , 'desc')->get(); } else{$moarefs=0; }


  $static_name='ثبت نام کاربر';
DB::table('statics')->insert([
    ['static_ip' => $request->ip() ,  'static_url' => $request->url() , 'static_previous' => url()->previous() ,    'static_name' => $static_name ,   'static_createdatdate' =>  date('Y-m-d H:i:s') ]
]);  

 return view('user.register', [     'moarefs' => $moarefs      ]);
 
				}




		
	public function registerid($id , Request $request){	

	Session::set('moarefid', $id);
	
$moarefs=\DB::table('user')  ->where('user_moaref' , '=' , $id)->orderBy('id' , 'desc')->get();

  $static_name='ثبت نام کاربر';
DB::table('statics')->insert([
    ['static_ip' => $request->ip() ,  'static_url' => $request->url() , 'static_previous' => url()->previous() ,    'static_name' => $static_name ,   'static_createdatdate' =>  date('Y-m-d H:i:s') ]
]);  

  

  return view('user.register', [ 'moarefs' => $moarefs ]);
 
				}


		
	public function adduserfruserid($id , Request $request){	

	Session::set('moarefid', $id);
	
$moarefs=\DB::table('user')  ->where('user_moaref' , '=' , $id)->orderBy('id' , 'desc')->get();

  $static_name='ثبت نام کاربر';
DB::table('statics')->insert([
    ['static_ip' => $request->ip() ,  'static_url' => $request->url() , 'static_previous' => url()->previous() ,    'static_name' => $static_name ,   'static_createdatdate' =>  date('Y-m-d H:i:s') ]
]);  

 return redirect('/'); 

// return view('user.register', [ 'moarefs' => $moarefs ]);
 
				}




public function adduserfruserPost(Request $request)
    {   	
 
  	
    	$this->validate($request,[
    			'name' => 'required',
    			'tell' => 'required|numeric|unique:user,user_tell,$request->tell|regex:/^09[0-9]{9}$/',
    			'username' => 'required|email|unique:user,user_email,$request->username',
    			'userpassword' => 'required|min:5|max:35|confirmed'
    		],[
    			'name.required' => 'لطفا نام و نام خانوادگی را وارد نمایید',
    			'tell.required' => 'شماره تلفن همراه را وارد نمایید', 
    			'tell.numeric' => 'شماره تلفن وارد شده معتبر نمی باشد', 
    			'tell.unique' => 'این شماره قبلا در سیستم ثبت شده است', 
    			'tell.regex' => 'لطفا شماره را با کد 09 و مربوط به اپراتورهای ایران انتخاب نمایید.', 
    			'username.required' => 'لطفا نام کاربری را وارد نمایید', 
    			'username.email' => 'فرمت ایمیل نامعتبر می باشد', 
    			'username.unique' => 'این نام کاربری قبلا در سیستم ثبت شده است', 
    			'userpassword.required' => 'لطفا رمز عبور را وارد نمایید', 
    			'userpassword.min' => 'رمزعبور کوتاه است', 
    			'userpassword.max' => 'رمزعبور طولانی است', 
    			'userpassword.confirmed' => 'رمزعبور با تکرار آن مطابقت ندارد', 
    		]);
    		
$rnd=rand(1, 99999999); 

  $img='demowhite.jpg';     		 
$encryptedPassword = \Crypt::encrypt($request->userpassword);
$decryptedPassword = \Crypt::decrypt($encryptedPassword);
		
DB::table('user')->insert([
    ['user_email' => $request->username ,'user_name' => $request->name  ,'user_tell' => $request->tell , 'user_password' => $encryptedPassword ,   'user_createdatdate' =>  date('Y-m-d H:i:s') , 'user_active' => 0 , 'user_img' => $img  , 'user_moaref' => $rnd  , 'user_idmoaref' =>  $request->idmoaref  , 'user_ip' =>  $request->ip()   ]
]);


$mngindxs = DB::table('mngindex')->where([
    ['mngindex.id', '=', '1'],
])->first();	

$user = DB::table('user')->where('user_email', $request->username)->first();

$iduser=0;
 $user_idmoaref=$user->user_idmoaref;

if($user_idmoaref!='0'){ 
$usermoaref = \DB::table('user')->where('user_moaref', '=', $user_idmoaref)  ->orderBy('id', 'desc')->first();
$iduser=$usermoaref->id;
}

if($request->idmoaref!='0'){

DB::table('finicals')->insert([
    ['finical_pay' => $mngindxs->ind_bis ,     'finical_createdatdate' =>  date('Y-m-d H:i:s') , 'finical_inc' => 8 , 'finical_payment' => 1 ,  'finical_arou' => 4 ,  'finical_iduser' => $iduser  ,  'finical_iduserbis' => $user->id  ]
]);

$chargefinical=\DB::table('finicals') ->where([['finical_inc', '=',  8 ],['finical_arou', '=',  4 ],['finical_iduser', '=',  $iduser],])->orderBy('id', 'desc')->first();	
		    	
DB::table('charge')->insert([
    ['charge_pay' => $mngindxs->ind_bis ,     'charge_createdatdate' =>  date('Y-m-d H:i:s') , 'charge_arou' => 4 ,  'charge_iduser' => $iduser ,  'charge_finical' => $chargefinical->id  ]
]);	    	
	
}






$users = DB::table('user')->where('user_email', $request->username)->first();
$userscou = DB::table('user')->where('user_email', $request->username)->count();

$id_db= $users->id; 
$password_db= $users->user_password; 
 

$admins = DB::table('user')->where([
    ['user_email',  $request->username],
])->first();
if($admins){

$password_db= $admins->user_password; 
$decryptedPassword =  Crypt::decrypt($password_db);
$userscou = DB::table('user')->where([
    ['user_email',  $request->username],
])->count();
$name_db= $admins->user_name;
$id_db= $admins->id;
$activeadmin= $admins->user_active; 
$username_db= $admins->user_email; 
$password_db= $admins->user_password; 
$username_log = $request->username; 
if(($username_log == $username_db)&&( $decryptedPassword == $request->userpassword)){

    Session::set('fullname', $name_db);
	Session::set('iduser', $id_db);
	Session::set('signuser', $username_db);
	Session::set('activeuser', $activeadmin);

$adminslp = \DB::table('user')->where('id', '=', $id_db)  ->orderBy('id', 'desc')->first();
$logindatepas=$adminslp->user_loginatdate;	

$admimg=$adminslp->user_img;
if(empty($admimg)){$admimg='user2x.png';}	
	Session::set('logindatepasus', $logindatepas);
	Session::set('usimg', $admimg);
	$updatee = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->update(['user_loginatdate' => date('Y-m-d H:i:s') ,    'user_ip' => $request->ip()  ]); 
			return redirect('user/panel'); 
		} 
   }
   }
	


	public function marketing(){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		
 if (Session::get('activeuser')==0){    return redirect('user/verificationdoc');  }
 else if (Session::has('signuser')){ 
	
Session::set('nav', 'marketing'); 	

$h = new UserController();
$h->marketingbis();
		  	

 
$users = \DB::table('user')    
->where([ 
    ['user.id', '=', Session::get('iduser')] ,    ]) ->orderBy('user.id', 'desc')->first();
    
$admins = \DB::table('user')    
->where([ 
    ['user.user_idmoaref', '=', $users->user_moaref] ,    ]) ->orderBy('user.id', 'desc')->get();
 
 
 
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();
 
 return view('user.viewsmarketing' , [ 'admins' => $admins ,  'users' => $users ,  'mngindexs' => $mngindexs    ]);
 
 
}}


	public function marketingbis(){
		
		
    
$admins = \DB::table('finicals')    
->join('user', 'finicals.finical_iduserbis', '=', 'user.id')  
->where([  
    ['finicals.id', '<>', 0] ,   
    ['finicals.finical_inc', '=', '8'] ,
    ['finicals.finical_arou', '=', '4'] , 
    ['finicals.finical_iduser', '=', Session::get('iduser')] , ])
    ->orderBy('finicals.id', 'desc')->get();

foreach($admins as $admin){

if($admin->user_active=='1'){ $user_active=1; }else{ $user_active=0; }
	
 $updatee = \DB::table('finicals')->where('finical_iduserbis', '=', $admin->id)  ->update(['finical_payment' => $user_active  ]); 
	  
}


		
		}
		
	public function forgetpass(Request $request){	
 

  $static_name='فراموشی رمزعبور';
DB::table('statics')->insert([
    ['static_ip' => $request->ip() ,  'static_url' => $request->url() , 'static_previous' => url()->previous() ,    'static_name' => $static_name ,   'static_createdatdate' =>  date('Y-m-d H:i:s') ]
]);  

 return view('user.forgetpass' );
 
				}
				
				
				
				
 
	public function forgetpasspost( Request $request){ 

  $this->validate($request,[ 
    			'email' => 'required|email', 
    		],[
    			'email.required' => 'لطفا ایمیل راوارد نمایید ', 
    			'email.email' => 'لطفا فرمت ایمیل را بصورت صحیح وارد نمایید',  
    			
    		]); 
    		
    		//$encryptedPassword =  Crypt::encrypt($request->lastname);


$counts = DB::table('user')->where([
    ['user_email',  $request->email],
])->count();
if($counts!='0'){ 
$user = DB::table('user')->where([
    ['user_email',  $request->email],
])->first();
$decryptedPassword = \Crypt::decrypt($user->user_password); 
 
 $usernamee = $user->user_name; 
 $titmes='با تشکر از حسن انتخاب شما ، رمز شما با موفقیت ارسال شد ';
 $mestt='رمز شما';
 $mesnot =  $decryptedPassword; 
   Mail::send('superadmin.mail', ['user' => $user , 'usernamee' => $usernamee, 'mesnot' => $mesnot, 'titmes' => $titmes , 'mestt' => $mestt], function ($m) use ($user) {
         

            $m->from('info@iranpay.biz', 'ایران پی');

            $m->to($user->user_email, $user->user_email)->subject('دریافت رمز عبور');
        }); 	
 
if($request->flag=='1'){

 $nametr = Session::flash('success', 'رمزعبور باموفقیت به ایمیل شما ارسال شد .'); 
 return  redirect('user/sign-in');  
}  else {
	

 $nametr = Session::flash('success', 'رمزعبور باموفقیت به ایمیل شما ارسال شد .'); 
 return  redirect('user/sign-in');  
}

 	
 	
 	
 		} 
 	elseif($counts=='0') {
 
 $nametr = Session::flash('statust', 'متاسفانه این ایمیل در سیستم وجود ندارد .'); 
 return  redirect('user/forgetpass');
}



}	







public function paneluserid($id){
if (Session::has('signuser')){ 
$lngmenu=\DB::table('language') ->where([['id', '=',  $id],['lng_active', '=',  '1'],])->orderBy('id', 'desc')->first();
	Session::set('idlang', $id);
return redirect('user/panel');}	
else{ return redirect('user/sign-in'); }
}
	

 

public function settingprofile(){
	
	
$h = new UserController();
$h->checkactveaccount();


	
 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		
 if (Session::get('activeuser')==0){    return redirect('user/verificationdoc');  }
 else if (Session::has('signuser')){ 

 Session::set('nav', 'prodserviceid'); 
 
 
	}
	}	
	
	

 

	public function usersignout(){	
	Session::forget('iduser');	
	Session::forget('signuser');
	Session::forget('signname');
	Session::forget('logindatepasus');
	Session::forget('usimg');
	Session::forget('activeuser');
	Session::forget('idimg');
	Session::forget('tickreaduser');

		return redirect('user/sign-in');
		}
			 
 
	public function editprofileuser(){
 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		 
 else if (Session::has('signuser')){ 
 	
Session::set('nav', 'paneluser'); 
$admins = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->orderBy('id', 'desc')->get();
$user = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->orderBy('id', 'desc')->first();

 $user_moaref=$user->user_moaref;
 
 if($user_moaref=='0'){
 	$rnd=rand(1, 99999999); 
	$updatee = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->update([  'user_moaref' => $rnd  ]); 
 }
$admins = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->orderBy('id', 'desc')->get();
$user = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->orderBy('id', 'desc')->first();

$usermoaref=0;
 $user_idmoaref=$user->user_idmoaref;

if($user_idmoaref!='0'){ 
$usermoaref = \DB::table('user')->where('user_moaref', '=', $user_idmoaref)  ->orderBy('id', 'desc')->first();
}

$admimg=$user->user_img;
if(empty($admimg)){$admimg='user2x.png';}	
	Session::set('usimg', $admimg);
	Session::set('activeuser', $user->user_active);

   

return view('user.myprofile', ['admins' => $admins , 'usermoaref' => $usermoaref    ]); }	 
				}
   


		 
	public function editprofiledetcharge($id){
 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		 
 else if (Session::has('signuser')){ 

$admins = \DB::table('user') 
->join('marsole', 'user.user_ncode', '=', 'marsole.mar_codmoshtari')  
->join('finicals', 'marsole.id', '=', 'finicals.finical_marid')  
->where([  
    ['finicals.id', '=', $id] ,  
    ['finicals.finical_iduser', '=', Session::get('iduser')],
    ['finicals.finical_payment', '=', 1], 
    ['finicals.finical_arou', '=', '4'] , ])
    ->orderBy('finicals.id', 'desc')->get();


 

$getwaypays=\DB::table('getwaypay')->where('getway_active', '=', 1)   ->orderBy('id' )->get();
 
 return view('user.detcharge' , [ 'admins' => $admins  , 'getwaypays' => $getwaypays     ]);

 

}  
				}
   	 
	
			
		 
	public function editprofileusercharge(){
 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		 
 else if (Session::has('signuser')){ 


//mycharge 
$charges = \DB::table('user') 
->join('charge', 'user.id', '=', 'charge.charge_iduser') 
->join('finicals', 'charge.charge_finical', '=', 'finicals.id') 
->where([
    ['charge.charge_arou', '=', 4],
    ['charge.charge_iduser', '=', Session::get('iduser')],
    ['finicals.finical_payment', '=', 1],
    ['finicals.finical_inc', '=', 5],])
    ->orderBy('charge.charge_id', 'desc')->get();
$chargepaymy=0;
foreach($charges as $charge){ $chargepaymy=$charge->charge_pay+$chargepaymy; }




 //supcharge  
$charges = \DB::table('user') 
->join('charge', 'user.id', '=', 'charge.charge_iduser')  
->join('finicals', 'charge.charge_finical', '=', 'finicals.id') 
->where([
    ['charge.charge_arou', '=', 4],
    ['charge.charge_iduser', '=', Session::get('iduser')],
    ['finicals.finical_payment', '=', 1],
    ['finicals.finical_inc', '=', 6],])
    ->orderBy('charge.charge_id', 'desc')->get();
$chargepaysup=0;
foreach($charges as $charge){ $chargepaysup=$charge->charge_pay+$chargepaysup; }



 //odat  
$charges = \DB::table('user') 
->join('charge', 'user.id', '=', 'charge.charge_iduser')  
->join('finicals', 'charge.charge_finical', '=', 'finicals.id') 
->where([
    ['charge.charge_arou', '=', 4],
    ['charge.charge_iduser', '=', Session::get('iduser')],
    ['finicals.finical_payment', '=', 1],
    ['finicals.finical_inc', '=', 7],])
    ->orderBy('charge.charge_id', 'desc')->get();
$chargepayodat=0;
foreach($charges as $charge){ $chargepayodat=$charge->charge_pay+$chargepayodat; }



//pardakht 
$charges = \DB::table('user') 
->join('charge', 'user.id', '=', 'charge.charge_iduser')  
->join('finicals', 'charge.charge_finical', '=', 'finicals.id') 
->where([
    ['charge.charge_arou', '=', 4],
    ['charge.charge_iduser', '=', Session::get('iduser')],
    ['finicals.finical_payment', '=', 1],
    ['finicals.finical_inc', '=', 3],])
    ->orderBy('charge.charge_id', 'desc')->get();
$chargepaypar=0;
foreach($charges as $charge){ $chargepaypar=$charge->charge_pay+$chargepaypar; }




 //bisinis  
$charges = \DB::table('user') 
->join('charge', 'user.id', '=', 'charge.charge_iduser')  
->join('finicals', 'charge.charge_finical', '=', 'finicals.id') 
->where([
    ['charge.charge_arou', '=', 4],
    ['charge.charge_iduser', '=', Session::get('iduser')],
    ['finicals.finical_payment', '=', 1],
    ['finicals.finical_inc', '=', 8],])
    ->orderBy('charge.charge_id', 'desc')->get();
$chargepaybisi=0;
foreach($charges as $charge){ $chargepaybisi=$charge->charge_pay+$chargepaybisi; }


//jamkol
$chargepay= ($chargepaysup +  $chargepaymy  + $chargepaybisi ) -  ($chargepaypar + $chargepayodat) ;
 

 

$chargeac=$chargepay;



 

$chargesas = \DB::table('user') 
->join('charge', 'user.id', '=', 'charge.charge_iduser')  
->join('finicals', 'charge.charge_finical', '=', 'finicals.id') 
->where([
    ['charge.charge_arou', '=', 4],
    ['charge.charge_iduser', '=', Session::get('iduser')],
    ['finicals.finical_payment', '=', 1], 
    ['finicals.finical_inc', '<>', 0],])
    ->orderBy('charge.charge_id', 'desc')->get();



return view('user.viewscharge', [  'chargesas' => $chargesas  ,'chargeac' => $chargeac ]); 






		 }	 
				}
   	 
		
		
	public function inccharge(){
 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		 
 else if (Session::has('signuser')){  
		
$getwaypays=\DB::table('getwaypay') ->where([['getway_active', '=',  1 ],['id', '<',  10 ], ])->orderBy('id', 'desc' )->get();

return view('user.inccharge', ['getwaypays' => $getwaypays   ]);	
		 }	 
				}
   	 
		
	public function incchargepost(Request $request){
 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		 
 else if (Session::has('signuser')){ 


    	$this->validate($request,[
    			'tit' => 'required|numeric', 
    			'getwaypay' => 'required' 
    		],[
    			'tit.required' => 'لطفا مبلغ شارژ را وارد نمایید',
    			'tit.numeric' => 'مبلغ شارژ نامعتبر است', 
    			'getwaypay.required' => 'لطفا درگاه پرداخت را انتخاب نمایید', 
    		]);
    		
$getwaypayid=$request->getwaypay; 		
    		
    	if ($request->tit < 1000){
			
  return redirect('user/inccharge');
		}

DB::table('finicals')->insert([
    ['finical_pay' => $request->tit ,     'finical_createdatdate' =>  date('Y-m-d H:i:s') , 'finical_inc' => 5 , 'finical_payment' => 0 ,  'finical_arou' => 4 ,  'finical_iduser' => Session::get('iduser')  ]
]);

$chargefinical=\DB::table('finicals') ->where([['finical_inc', '=',  5 ],['finical_arou', '=',  4 ],['finical_iduser', '=',  Session::get('iduser')],])->orderBy('id', 'desc')->first();	
		    	
DB::table('charge')->insert([
    ['charge_pay' => $request->tit ,     'charge_createdatdate' =>  date('Y-m-d H:i:s') , 'charge_arou' => 4 ,  'charge_iduser' => Session::get('iduser') ,  'charge_finical' => $chargefinical->id  ]
]);	    	



if ($getwaypayid == 2){ 
  return redirect('zarinpal/epayo.php?id='.$chargefinical->id.'');
  
  } else
if ($getwaypayid == 3){ 
  return redirect('nextpay/token.php?id='.$chargefinical->id.'');
 }


		 }	 
				}
   	 
		


		
	public function editprofileuserPost( Request $request ){
 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		 
 else if (Session::has('signuser')){  

 
 
$nametr = Session::flash('err', '2');
$this->validate($request,[
    			'name' => 'required|min:3|max:35',
    			'tell' => 'required|numeric',
    			'email' => 'required|email',
    			'adres' => 'required|min:3|max:555',
    			'file'  => 'max:1000', 
    		],[
    			'name.required' => 'لطفا نام و نام خانوادگی را وارد نمایید',
    			'name.min' => 'نام و نام خانوادگی کوتاه است', 
    			'name.max' => 'نام و نام خانوادگی طولانی است',
    			'tell.required' => 'شماره تلفن همراه را وارد نمایید', 
    			'tell.numeric' => 'شماره تلفن وارد شده معتبر نمی باشد', 
    			'email.required' => 'لطفا ایمیل راوارد نمایید ', 
    			'email.email' => 'لطفا فرمت ایمیل را به درستی وارد نمایید',
    			'adres.required' => 'لطفا آدرس را وارد نمایید',
    			'adres.min' => 'آدرس کوتاه می باشد',
    			'adres.max' => 'آدرس طولانی می باشد',  
    			'file.max' => 'حجم فایل آپلود شده بیشتر از حد مجاز می باشد. (حدمجاز 1مگابایت یا کمتر از این مقدار باید باشد)', 
    			
    		]);



$counttesttell = \DB::table('user')->where([
    ['user_tell', '=', $request->tell], 
    ['id', '<>', Session::get('iduser')], ])
    ->orderBy('id', 'desc')->count();


$counttestemail = \DB::table('user')->where([
    ['user_email', '=', $request->email], 
    ['id', '<>', Session::get('iduser')], ])
    ->orderBy('id', 'desc')->count();



if($counttesttell>0){
	$nametr = Session::flash('errortell',  'این شماره همراه قبلا در سیستم ثبت شده است');
	return redirect('user/myprofile/edit'); 
}

if($counttestemail>0){
		$nametr = Session::flash('erroremail',  'این ایمیل قبلا در سیستم ثبت شده است');
	return redirect('user/myprofile/edit'); 
}




$user = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->orderBy('id', 'desc')->first();

$imageName=$user->user_img;

 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    } 

    		


$user = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->orderBy('id', 'desc')->first();

 		if ( $request->email ==  $user->user_email   ){  $activeemail =  $user->user_emailactive ; }
 else   if ( $request->email !=  $user->user_email   ){  $activeemail ='0';}

 		if ( $request->tell ==  $user->user_tell   ){  $activetell =  $user->user_tellactive ; }
 else   if ( $request->tell !=  $user->user_tell   ){  $activetell ='0';}
 
 
$updatee = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->update(['user_name' => $request->name   ,  'user_tell' => $request->tell ,  'user_email' => $request->email ,  'user_adres' => $request->adres,  'user_emailactive' => $activeemail ,  'user_tellactive' => $activetell , 'user_img' => $imageName   ]); 

$user = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->orderBy('id', 'desc')->first();
if ( ($user->user_emailactive == 1) &&  ($user->user_tellactive == 1)   ){  $active=1;}
if ( ($user->user_emailactive == 0) ||  ($user->user_tellactive == 0)   ){  $active=0;}
$updatee = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->update(['user_active' => $active   ]);

$admins = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->orderBy('id', 'desc')->get();
$nametr = Session::flash('statust',  'باموفقیت انجام شد');
$nametrt = Session::flash('sessurl', 'myprofile/edit');
 return view('user.success' ); 
} 
}
		

 

public function dropzoneStoreuserprofile(Request $request)
    {
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);        
$updatee = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->update(['user_img' => $imageName   ]);
        return response()->json(['success'=>$imageName]);
    }
		    

		
		
	public function securityuserprofile( Request $request ){
 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		 
 else if (Session::has('signuser')){ 
$lngmenus= \DB::table('language') ->where([['id', '<>',  '0'],['lng_active', '=',  '1'],])->orderBy('id', 'desc')->get();
$lngmenu=\DB::table('language') ->where([['id', '=',  Session::get('idlang')],])->orderBy('id', 'desc')->first();

$nametr = Session::flash('err', '3');
 
    	$this->validate($request,[
    			'userpassword' => 'required|min:5|max:35|confirmed',
    			'tell' => 'required',
    			'email' => 'required',
    		],[
    			'userpassword.required' => $lngmenu->lng_wpassword.' ! '.$lngmenu->lng_wnotelq,
    			'userpassword.min' => $lngmenu->lng_wpassword.' ! '.$lngmenu->lng_wshort,
    			'userpassword.max' => $lngmenu->lng_wpassword.' ! '.$lngmenu->lng_wlong,
    			'userpassword.confirmed' => $lngmenu->lng_wpassword.' ! '.$lngmenu->lng_wconfpassword,
    			'tell.required' => $lngmenu->lng_wtell.' ! '.$lngmenu->lng_wnotelq,
    			'email.required' => $lngmenu->lng_wemail.' ! '.$lngmenu->lng_wnotelq,
    		]);

 
$encryptedPassword =  Crypt::encrypt($request->userpassword);
$decryptedPassword =  Crypt::decrypt($encryptedPassword);

$updatee = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->update(['user_password' => $encryptedPassword   ]); 

$admins = \DB::table('user')->where('id', '=',  Session::get('iduser'))  ->orderBy('id', 'desc')->first();
 
$nametr = Session::flash('statust', $lngmenu->lng_wsucsec);
$nametrt = Session::flash('sessurl', 'myprofile/edit');
   	
$user = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->orderBy('id', 'desc')->first();

$superadminselanats =  DB::table('superadminselanats')  ->orderBy('id', 'desc')->first(); 

 if($superadminselanats->supelan_emailuser == '1'){
 	if ( $user->user_email != '')  {
 	 $usernamee = $user->user_username; 
 $titmes= $lngmenu->lng_wsucsec;
 $mestt= $lngmenu->lng_wnewpas;
 $mesnot = Crypt::decrypt($user->user_password); 
   Mail::send('superadmin.mail', ['user' => $user , 'usernamee' => $usernamee, 'mesnot' => $mesnot, 'titmes' => $titmes , 'mestt' => $mestt], function ($m) use ($user) {       
$decryptedPassword =  Crypt::decrypt($user->user_password);
            $m->from('noreply@iranpay.biz',  'New Password'  );
            $m->to($user->user_email, $user->user_email)->subject('New Password');
        }); 	
 } }
 
 
 if($superadminselanats->supelan_smsuser == '1'){
 	if ( $user->user_tell != '')  {
 		
 $admins =  \DB::table('user')->where('id', '=', Session::get('iduser'))  ->orderBy('id', 'desc')->first();
$panelsms = \DB::table('panelsms')->where('id', '=',  1)  ->orderBy('id', 'desc')->first();
include(app_path().'/../sms/api_send_sms.php');
$message=$lngmenu->lng_whi.' '.$admins->user_name.' '.$lngmenu->lng_wsucsec .' . '. $lngmenu->lng_wnewpas .' : '.$decryptedPassword.' ';
$result = Send_SMS($panelsms->sms_username, $panelsms->sms_password, $panelsms->sms_fromnumber, $admins->user_tell, $message , 0, false) ; 		
 		
 		} }
 		

 return view('user.success', ['lngmenus' => $lngmenus , 'lngmenu' => $lngmenu ]); 

}	 
				}
		

 

	public function webservicemyuser(){
	if (Session::has('signuser')){ 
		if (Session::get('activeuser')==1){ 
$lngmenus= \DB::table('language') ->where([['id', '<>',  '0'],['lng_active', '=',  '1'],])->orderBy('id', 'desc')->get();
$lngmenu=\DB::table('language') ->where([['id', '=',  Session::get('idlang')],])->orderBy('id', 'desc')->first();
 

$adminss = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->get();	
$admins = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->orderBy('id', 'desc')->get();

return view('user.webserviceuser', ['admins' => $admins , 'adminss' => $adminss ,  'lngmenus' => $lngmenus , 'lngmenu' => $lngmenu ]);


}	else if (Session::get('activeuser')==0){    return redirect('user/activition'); }
else if (empty(Session::has('signstudent'))){   return redirect('user/sign-in'); } }
}		

 


	public function webservicemyuserpost(){
	if (Session::has('signuser')){ 
		if (Session::get('activeuser')==1){ 
$lngmenus= \DB::table('language') ->where([['id', '<>',  '0'],['lng_active', '=',  '1'],])->orderBy('id', 'desc')->get();
$lngmenu=\DB::table('language') ->where([['id', '=',  Session::get('idlang')],])->orderBy('id', 'desc')->first();
 

$characters_on_image = 24;  
$possible_letters = '1234567890abcdefghigklmnopqrstuvwxyz';
$code = '';
$i = 0;
while ($i < $characters_on_image) { 
$code .= substr($possible_letters, mt_rand(0, strlen($possible_letters)-1), 1);
$i++;
}
		
$updatee = \DB::table('user')->where('id', '=', Session::get('iduser') )  ->update(['user_api' => $code   ]);   
$nametr = Session::flash('statust',  $lngmenu->lng_wsuccess);
$nametrt = Session::flash('sessurl', 'myprofile/webservice');		  	
 return view('user.success', ['lngmenus' => $lngmenus , 'lngmenu' => $lngmenu ]); 

}	else if (Session::get('activeuser')==0){    return redirect('user/activition'); }
else if (empty(Session::has('signstudent'))){   return redirect('user/sign-in'); } }
}		


 
	public function verificationverfid($id){
 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		 
 else if (Session::has('signuser')){ 



$h = new UserController();
$h->checkverfysms();

$h = new UserController();
$h->checkactveaccount();


	 if($id=='email'){ Session::set('errus', '1'); } 
else if($id=='tell'){ Session::set('errus', '2'); }
else if($id=='doc'){ Session::set('errus', '3'); }
else  { Session::set('errus', '1'); }

return redirect('user/verificationdoc'); 

 } }




	public function verificationdoc(){
 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		 
 else if (Session::has('signuser')){ 
 
 
 

$h = new UserController();
$h->checkverfysms();

$h = new UserController();
$h->checkactveaccount();

 
 
 	
Session::set('nav', 'paneluser'); 



$user = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->orderBy('id', 'desc')->first();
if(($user->user_tellverfy=="")||($user->user_tellverfy=="0")){
 $rnd=rand(1, 99999); 		
$updatee = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->update(['user_tellverfy' => $rnd   ]);  
}
 
 
    

$admins = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->orderBy('id', 'desc')->get();
$user = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->orderBy('id', 'desc')->first();
$admimg=$user->user_img;
if(empty($admimg)){$admimg='user2x.png';}	
	Session::set('usimg', $admimg);
	Session::set('activeuser', $user->user_active);
	
	
Session::set('verfyemail', $user->user_emailactive);
Session::set('verfytell', $user->user_tellactive);
Session::set('verfydoc', $user->user_autactive);

   
$descriptionservice = \DB::table('descriptionservice') ->where([
    ['descriptionservice.id', '=', 4], ])
    ->orderBy('id', 'desc')->first();
    
$descriptionservicetell = \DB::table('descriptionservice') ->where([
    ['descriptionservice.id', '=', 7], ])
    ->orderBy('id', 'desc')->first();
    
    
$message = str_replace(array('#verfy' ,'#mytel' ), array( $user->user_tellverfy , $user->user_tell  ), $descriptionservicetell->des);
    
    
    
     
$admin = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->orderBy('id', 'desc')->first();


 
return view('user.verificationdoc', ['admins' => $admins ,'admin' => $admin , 'descriptionservice' => $descriptionservice   , 'descriptionservicetell' => $descriptionservicetell   , 'message' => $message  ]); }	 
				}



	public function testinbox(Request $request ){
	
	
	  
 $url   = env('APP_URL').'/sms/inbox.php';  
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0); 
    curl_setopt($ch, CURLOPT_POSTFIELDS, array());
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_HEADER, 0);
    $result = curl_exec($ch); 
 echo $result;
 
 
 
		}


	public function testverfy(Request $request ){
 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		 
 else if (Session::has('signuser')){ 

 	
Session::flash('errus', '2');

    	$this->validate($request,[
    			'tell' => 'required',
    		],[
    			'tell.required' => 'لطفا شماره همراه خود را ثبت نمایید و سپس نسبت به وریفای همراه خود اقدام نمایید',
    		]);  	
    		 		
    		
$user = \DB::table('user') ->where('id', '=', Session::get('iduser'))   ->orderBy('id', 'desc')->first();
 
 $url   = env('APP_URL').'/sms/inbox.php';  
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0); 
    curl_setopt($ch, CURLOPT_POSTFIELDS, array());
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_HEADER, 0);
    $result = curl_exec($ch); 
//echo $result;

if($result=='NO'){
	// echo 'NO MESSAGE';

$nametr = Session::flash('statust', 'متاسفانه کد اعتبارسنجی با کد وریفای سیستم مطابقت ندارد!!!!.');
$nametrt = Session::flash('sessurl', 'verificationdoc');
		  return view('user.error'); 

 } elseif($result!='NO'){ 
$counttell=substr_count($result, 'From:'.$user->user_tell); 
if($counttell){
$tele = explode('From:'.$user->user_tell, $result );
$telem = explode('**', $tele['1'] );
$teleme = $telem['0'];


$messag = explode('##', $tele['1'] );
$message = explode('Message:', $messag['0'] );
$messagee = $message['1'];


 $string=$messagee;
 $persian = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'];
$english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
 
$output= str_replace($persian, $english, $string);
//return $output;
 
 



if($user->user_tellverfy==$output){
	//echo 'OK';
	
 
$updatee = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->update(['user_tellactive' => 1   ]);
$user = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->orderBy('id', 'desc')->first();
if ( ($user->user_emailactive == 1) &&  ($user->user_tellactive == 1) &&  ($user->user_autactive == 1)   ){  $active=1; } else {  $active=0;}
$updatee = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->update(['user_active' => $active   ]);
Session::set('activeuser', $active);	
Session::set('verfytell', '1');
	
 $nametr = Session::flash('statust', 'تلفن شما با موفقیت فعال شد.');
 $nametrt = Session::flash('sessurl', 'verificationdoc');
		  return view('user.success'); 
		  
		  
} elseif($user->user_tellverfy!=$output){
	//echo 'NO according CODE';
	$nametr = Session::flash('statust', 'متاسفانه کد اعتبارسنجی با کد وریفای سیستم مطابقت ندارد!!!!.');
$nametrt = Session::flash('sessurl', 'verificationdoc');
		  return view('user.error'); 
}

}  elseif(!$counttell){ 
//echo 'NO SMS';
$nametr = Session::flash('statust', 'متاسفانه کد اعتبارسنجی با کد وریفای سیستم مطابقت ندارد!!!!.');
$nametrt = Session::flash('sessurl', 'verificationdoc');
		  return view('user.error'); 
		  }

}
 
 
 
 


}	 
				}



	public function verificationdocimgpost( Request $request ){
 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		 
 else if (Session::has('signuser')){ 
$nametr = Session::flash('filecard',  '1');

$nametr = Session::flash('errus', '3');

    	$this->validate($request,[
    			'file'  => 'required|max:5000',  
    		],[

    			'file.required' => 'لطفا نسبت به آپلود آیکن اقدام نمایید',  
    			'file.max' => 'حجم فایل آپلود شده بیشتر از حد مجاز می باشد. (حدمجاز کمتر از 5مگابایت می باشد)',  
    		]);
    		
    		
 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    } 
    
    
    $updatee = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->update(['user_uploadpassport' => $imageName, 'user_autactive' => '0'    ]);
    
    $user = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->orderBy('id', 'desc')->first();
if ( ($user->user_emailactive == 1) &&  ($user->user_tellactive == 1) &&  ($user->user_autactive == 1)   ){  $active=1; } else {  $active=0;}
$updatee = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->update(['user_active' => $active   ]);



DB::table('alert')->insert([
    [ 'iduser' =>  Session::get('iduser') , 'type' =>  1 , 'show' =>  0  ,   'date' =>  date('Y-m-d H:i:s')  ]
]);  
    		 
    	
    
    
    $nametr = Session::flash('statust',  'آپلود مدارک هویتی شما باموفقیت انجام شد');
$nametrt = Session::flash('sessurl', 'verificationdoc');


$nametr = Session::flash('typstst', 'success');

 	 return redirect('user/verificationdoc');	
    		
} 
				}


		
	public function verificationdocpost( Request $request ){
 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		 
 else if (Session::has('signuser')){ 

$lngmenus= \DB::table('language') ->where([['id', '<>',  '0'],['lng_active', '=',  '1'],])->orderBy('id', 'desc')->get();
$lngmenu=\DB::table('language') ->where([['id', '=',  Session::get('idlang')],])->orderBy('id', 'desc')->first();
 
$this->validate($request,[ 
    			'tell' => 'required|numeric',
    			'email' => 'required|email', 
    		],[ 
    			'tell.required' => 'شماره تلفن همراه را وارد نمایید', 
    			'tell.numeric' => 'شماره تلفن وارد شده معتبر نمی باشد', 
    			'email.required' => 'لطفا ایمیل راوارد نمایید ', 
    			'email.email' => 'لطفا فرمت ایمیل را به درستی وارد نمایید', 
    			
    		]);

 


$user = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->orderBy('id', 'desc')->first();

 		if ( $request->email ==  $user->user_email   ){  $activeemail =  $user->user_emailactive ; }
 else   if ( $request->email !=  $user->user_email   ){  $activeemail ='0';}

 		if ( $request->tell ==  $user->user_tell   ){  $activetell =  $user->user_tellactive ; }
 else   if ( $request->tell !=  $user->user_tell   ){  $activetell ='0';}
 
 
$updatee = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->update([  'user_tell' => $request->tell ,  'user_email' => $request->email  ,  'user_emailactive' => $activeemail ,  'user_tellactive' => $activetell ]); 

$user = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->orderBy('id', 'desc')->first();
if ( ($user->user_emailactive == 1) &&  ($user->user_tellactive == 1)   ){  $active=1;}
if ( ($user->user_emailactive == 0) ||  ($user->user_tellactive == 0)   ){  $active=0;}
$updatee = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->update(['user_active' => $active   ]);

$admins = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->orderBy('id', 'desc')->get();
$nametr = Session::flash('statust',  'باموفقیت انجام شد');
$nametrt = Session::flash('sessurl', 'verificationdoc');
 return view('user.success'); 
} 
}
		



public function dropzoneStoreusercardmel(Request $request)
    { 
        
                $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);        
$updatee = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->update(['user_uploadpassport' => $imageName, 'user_autactive' => '0'    ]);
        return response()->json(['success'=>$imageName]);
        
        
    }
		    


	
			
public function activitionuser(){
 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		 
 else if (Session::has('signuser')){ 
$lngmenus= \DB::table('language') ->where([['id', '<>',  '0'],['lng_active', '=',  '1'],])->orderBy('id', 'desc')->get();
$lngmenu=\DB::table('language') ->where([['id', '=',  Session::get('idlang')],])->orderBy('id', 'desc')->first();
 
$admins = \DB::table('user') ->where('id', '=', Session::get('iduser'))   ->orderBy('id', 'desc')->get();
return view('user.activition', [ 'admins' => $admins , 'lngmenus' => $lngmenus , 'lngmenu' => $lngmenu  ]);
}	 else{ return redirect('user/sign-in'); }
}



  
 
		
	public function emailuseractivitionverfy( Request $request ){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		 
 else if (Session::has('signuser')){ 
 
    	$this->validate($request,[
    			'email' => 'required',
    		],[
    			'email.required' => 'لطفا ایمیل خود را وارد نمایید',
    		]);  		
 $rnd=rand(1, 99999);    		
$updatee = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->update(['user_emailverfy' => $rnd   ]); 
$admins = \DB::table('user')->where('id', '=',  Session::get('iduser'))  ->orderBy('id', 'desc')->first();
			$nametr = Session::flash('statust', 'کدفعالسازی باموفقیت به ایمیل شما ارسال شد');
		  	$nametrt = Session::flash('sessurl', 'verificationdoc');		  	
$user = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->orderBy('id', 'desc')->first();
 	 $usernamee = $user->user_username; 
 $titmes = 'لطفا کد زیر را در سایت ثبت کنید';
 $mestt = 'کد فعالسازی';
 $mesnot =  $user->user_emailverfy ; 
 
 /*
   Mail::send('superadmin.mail', ['user' => $user , 'usernamee' => $usernamee, 'mesnot' => $mesnot, 'titmes' => $titmes , 'mestt' => $mestt], function ($m) use ($user) {
         $m->from('info@kargo.biz', 'ایران پی');
            $m->to($user->user_email, $user->user_email)->subject('فعال سازی ایمیل در ایران پی');
        }); 	
        
      */
        
 
	/*	 

          
 $url   = 'https://kargo.biz/user/sendmailiranpay/'.$user->user_email.'/'.$user->user_emailverfy.'';
  
 
         */ 
         
         $url   = 'https://kargo.biz/mail/sendmail.php?email='.$user->user_email.'&code='.$user->user_emailverfy.'';  
 
      
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0); 
    curl_setopt($ch, CURLOPT_POSTFIELDS, array());
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_HEADER, 0);
    $result = curl_exec($ch); 
        
 	 return redirect('user/verificationdoc');
}	 
}
		  
    
		
	public function emailuseractivition( Request $request ){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		 
 else if (Session::has('signuser')){ 

 
    	$this->validate($request,[
    			'codemail' => 'required',
    		],[
    			'codemail.required' => 'کد فعالسازی معتبر نمی باشد',
    		]);
$user = \DB::table('user')->where('id', '=', Session::get('iduser')) ->orderBy('id', 'desc')->first();      
if ( $request->codemail ==  $user->user_emailverfy   ){  
 
 
$updatee = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->update(['user_emailactive' => 1   ]);

$user = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->orderBy('id', 'desc')->first();
 
 
$nametr = Session::flash('statust', 'فعالسازی ایمیل باموفقیت انجام شد');
$nametrt = Session::flash('sessurl', 'verificationdoc');		  	
$user = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->orderBy('id', 'desc')->first();

$nametr = Session::flash('typstst', 'success');

 	 return redirect('user/verificationdoc');
} else   if ( $request->codemail !=  $user->user_emailverfy   ){  
$nametr = Session::flash('statust',   'متاسفانه کدفعالسازی معتبر نمی باشد' );
$nametrt = Session::flash('sessurl', 'verificationdoc');	

$nametr = Session::flash('typstst', 'error');
 	 return redirect('user/verificationdoc');
 }  
}
}

 


		
	public function telluseractivitionverfy( Request $request ){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		 
 else if (Session::has('signuser')){ 
 Session::set('errus', '2'); 
    	$this->validate($request,[
    			'tell' => 'required',
    		],[
    			'tell.required' => 'شماره تلفن نامعتبر می باشد',
    		]);  		
 $rnd=rand(1, 99999);    		
$updatee = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->update(['user_tellverfy' => $rnd   ]); 
$admins = \DB::table('user')->where('id', '=',  Session::get('iduser'))  ->orderBy('id', 'desc')->first();


//$panelsms = \DB::table('panelsms')->where('id', '=',  1)  ->orderBy('id', 'desc')->first();


$message='با سلام'.' '.$admins->user_name.' '.' کدفعالسازی شما '.':'.$rnd.'';




	$APIKey = "fb3104e963922916e94500a8";
	$SecretKey = "!Mehdi1241368";
	$LineNumber = "30004747479829"; 
	$MobileNumbers = array($admins->user_tell ); 
	$Messages = array($message );
	
include(app_path().'/../testsms/SendMessage.php');


			 $nametr = Session::flash('statust', 'کدفعالسازی باموفقیت ارسال شد');
		  	$nametrt = Session::flash('sessurl', 'verificationdoc');	 

$nametr = Session::flash('typstst', 'success');

 	 return redirect('user/verificationdoc');	  	
 
  
}	 
}
		
			 
		
	public function telluseractivition( Request $request ){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		 
 else if (Session::has('signuser')){ 
 
Session::set('errus', '2'); 
    	$this->validate($request,[
    			'codtell' => 'required',
    		],[
    			'codtell.required' => 'معتبر نمی باشد',
    		]);
$user = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->orderBy('id', 'desc')->first();      
if ( $request->codtell ==  $user->user_tellverfy   ){  
$updatee = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->update(['user_tellactive' => 1   ]);
$user = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->orderBy('id', 'desc')->first();
if ( ($user->user_emailactive == 1) &&  ($user->user_tellactive == 1)   ){  $active=1;



$superadminselanats =  DB::table('superadminselanats')  ->orderBy('id', 'desc')->first();
 if($superadminselanats->supelan_emailaccuser == '1'){
 $usernamee = $user->user_username; 
 $titmes='باموفقیت فعال شد';
 $mestt='';
 $mesnot = Crypt::decrypt($user->user_password); 
   Mail::send('superadmin.mail', ['user' => $user , 'usernamee' => $usernamee, 'mesnot' => $mesnot, 'titmes' => $titmes , 'mestt' => $mestt], function ($m) use ($user) {
        
$decryptedPassword =  Crypt::decrypt($user->user_password);

            $m->from('noreply@mellatpay.com', 'Account activation');

            $m->to($user->user_email, $user->user_email)->subject('Account activation');
        }); 	
 }	 	
 
 	
 if($superadminselanats->supelan_smsaccuser == '1'){	
   
$admins = \DB::table('user')->where('id', '=',  Session::get('iduser'))  ->orderBy('id', 'desc')->first();
$panelsms = \DB::table('panelsms')->where('id', '=',  1)  ->orderBy('id', 'desc')->first();
include(app_path().'/../sms/api_send_sms.php');
$message='سلام '.' '.$admins->user_name.' '.'باموفقیت فعال شد'.' ';

/* $result = Send_SMS($panelsms->sms_username, $panelsms->sms_password, $panelsms->sms_fromnumber, $admins->user_tell, $message , 0, false) ; */
 }


}
if ( ($user->user_emailactive == 0) ||  ($user->user_tellactive == 0)   ){  $active=0;}
$updatee = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->update(['user_active' => $active   ]);
Session::set('activeuser', $active);	
$admins = \DB::table('user')->where('id', '=',  Session::get('iduser'))  ->orderBy('id', 'desc')->first();
$nametr = Session::flash('statust', 'کدفعالسازی باموفقیت فعال شد'  );
$nametrt = Session::flash('sessurl', 'verificationdoc');		  	
$user = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->orderBy('id', 'desc')->first();
$usernamee = $user->user_username; 
 $titmes='باموفقیت فعال شد';
 $mestt=' ';
 $mesnot = ' ';
 
 
 
 /*
   Mail::send('superadmin.mail', ['user' => $user , 'usernamee' => $usernamee, 'mesnot' => $mesnot, 'titmes' => $titmes , 'mestt' => $mestt], function ($m) use ($user) {
$m->from('noreply@iranpay.biz', 'فعالسازی ایمیل');
$m->to($user->admin_email, $user->admin_email)->subject('ایمیل فعال شد');
}); 
*/



	
$nametr = Session::flash('typstst', 'success');

 	 return redirect('user/verificationdoc');	
}			 
 else   if ( $request->codtell !=  $user->user_tellverfy   ){  
$nametr = Session::flash('statust',   'کدفعالسازی باموفقیت فعال شد' );
$nametrt = Session::flash('sessurl', 'verificationdoc');	

$nametr = Session::flash('typstst', 'success');

 	 return redirect('user/verificationdoc');	
 }
 
}
}



public function prodcurrencytransferid($id){
	
	
$h = new UserController();
$h->checkactveaccount();



 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		
 if (Session::get('activeuser')==0){    return redirect('user/verificationdoc');  }
 else if (Session::has('signuser')){ 


 
 
$admin  = \DB::table('currencytransfer')
->join('currency', 'currencytransfer.ctrf_cur', '=', 'currency.id') ->where([
    ['currencytransfer.ctrf_id', '<>', 0], 
    ['currencytransfer.ctrf_type', '=', 1], 
    ['currencytransfer.ctrf_id', '=', $id], ])
    ->orderBy('ctrf_id', 'desc')->first(); 
    
    if($admin->ctrf_buy==1){
    	  Session::set('nav', 'prodcurrencytransferidbuy'); 
    	  
$descriptionservice = \DB::table('descriptionservice') ->where([
    ['descriptionservice.id', '=', 5], ])
    ->orderBy('id', 'desc')->first();
    	 } else if($admin->ctrf_buy==2){
    	  Session::set('nav', 'prodcurrencytransferidsell'); 
    	  
$descriptionservice = \DB::table('descriptionservice') ->where([
    ['descriptionservice.id', '=', 6], ])
    ->orderBy('id', 'desc')->first();
    	 	 } else if($admin->ctrf_buy==0){
    	  Session::set('nav', 'prodcurrencytransferid'); 
    	  
$descriptionservice = \DB::table('descriptionservice') ->where([
    ['descriptionservice.id', '=', 1], ])
    ->orderBy('id', 'desc')->first();
    	 	 }



$countrys = \DB::table('apps_countries')->where('id', '<>', 0)  ->orderBy('id', 'asc')->get();
$currency = \DB::table('currency')->where('id', '=', 1)  ->orderBy('id', 'desc')->first();

    
    
$catforms = \DB::table('catform')->where('catf_id', '<>', 0)  ->orderBy('catf_id', 'asc')->get();
 $progressives= \DB::table('progressive')
->join('progressivelist', 'progressive.pro_id', '=', 'progressivelist.prolist_idprog')   ->where([['pro_active', '<>',  '0'] , ])->orderBy('pro_id', 'asc')->get(); 


$law = \DB::table('descriptionservice') ->where([
    ['descriptionservice.id', '=', 9], ])
    ->orderBy('id', 'desc')->first();


$counts= \DB::table('desservice')  ->where([['dss_pctrid', '=',  $id] , ])->orderBy('dss_id', 'desc')->count(); 
if($counts=='0'){
	
DB::table('desservice')->insert([
    ['dss_pctrid' => $id   ]
]);

}


$desservice= \DB::table('desservice')  ->where([['dss_pctrid', '=',  $id] , ])->orderBy('dss_id', 'desc')->first(); 

    
    

	return view('user.currencytransfer', [  'admin' => $admin ,   'countrys' => $countrys , 'currency' => $currency  , 'descriptionservice' => $descriptionservice  , 'catforms' => $catforms , 'progressives' => $progressives   ,     'law' => $law   ,     'desservice' => $desservice   ]);

			}	
 
	}	
	
	
	

public function prodcurrencytransferidpost ($id , Request $request ){
 
 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		
 if (Session::get('activeuser')==0){    return redirect('user/verificationdoc');  }
 else if (Session::has('signuser')){ 

    	$this->validate($request,[
    			'namelastname' => 'required',  
    			'pay' => 'required|numeric',  
    			'country' => 'required', 
    			'des' => 'required',  
    		],[
    			'namelastname.required' => 'لطفا نام و نام خانوادگی گیرنده را وارد نمایید',   
    			'pay.required' => 'لطفا مبلغ حواله را به دلار وارد نمایید',  
    			'pay.numeric' => 'مبلغ حواله نامعتبر می باشد',  
    			'country.required' => 'لطفا کشور مقصد را انتخاب نمایید',  
    			'des.required' => 'لطفا توضیحات را وارد نمایید',  
    		]); 


 


$admin  = \DB::table('currencytransfer')
->join('currency', 'currencytransfer.ctrf_cur', '=', 'currency.id') ->where([
    ['currencytransfer.ctrf_id', '<>', 0], 
    ['currencytransfer.ctrf_type', '=', 1], 
    ['currencytransfer.ctrf_id', '=', $id], ])
    ->orderBy('ctrf_id', 'desc')->first(); 
    
    
    if($admin->ctrf_buy==0){ $price=$admin->cur_gh;}
    if($admin->ctrf_buy==1){ $price=$admin->cur_buyfrompay;}
    if($admin->ctrf_buy==2){ $price=$admin->cur_seltopay;}
    
   
if($admin->ctrf_progid=='0'){
	
$fixfee=$admin->ctrf_fixfee ; 
$varebfee = $request->pay*($admin->ctrf_varebfee/100); 
$finalfee=($fixfee+$varebfee)*$price; 
$payservirr=$request->pay*$price; 
$payfinalirr=($request->pay+$fixfee+$varebfee)*$price; 
	
}
else if($admin->ctrf_progid!='0'){
$fixfeem=0;

$progressives  = \DB::table('currencytransfer') 
->join('progressive', 'currencytransfer.ctrf_progid', '=', 'progressive.pro_id') 
->join('progressivelist', 'progressive.pro_id', '=', 'progressivelist.prolist_idprog') ->where([
    ['currencytransfer.ctrf_id', '<>', 0], 
    ['currencytransfer.ctrf_type', '=', 1], 
    ['currencytransfer.ctrf_id', '=', $id],  ])
    ->orderBy('ctrf_id', 'desc')->get(); 
    
foreach($progressives as $progressive){
if(($progressive->prolist_from <= $request->pay) && ($progressive->prolist_to >= $request->pay) ){
	$fixfeem=$progressive->prolist_fee; 
}
}
	
$fixfee=$fixfeem; 
$varebfee = 0; 
$finalfee=($fixfee+$varebfee)*$price; 
$payservirr=$request->pay*$price; 
$payfinalirr=($request->pay+$fixfee+$varebfee)*$price ; 

	}
	
 

DB::table('productcurtrans')->insert([
    [ 'prcrtr_namerecv' =>  $request->namelastname , 'prcrtr_country' =>  $request->country , 'prcrtr_idcrtrf' =>  $id  , 'prcrtr_des' =>  $request->des , 'prcrtr_iduser' =>   Session::get('iduser'),   'prcrtr_createdatdate' =>  date('Y-m-d H:i:s') , 'prcrtr_type' => 1  , 'prcrtr_fixfee' =>  $fixfee , 'prcrtr_varebfee' =>  $varebfee , 'prcrtr_finalfee' =>  $finalfee , 'prcrtr_pay' =>  $payservirr , 'prcrtr_payfinalirr' =>  $payfinalirr  , 'prcrtr_paycur' => $request->pay  , 'prcrtr_wallet' => $request->wallet  , 'prcrtr_did' => $request->id   ]
]);  
    		 
    		 

$productcurtrans = \DB::table('productcurtrans')->where('prcrtr_iduser', '=', Session::get('iduser'))  ->orderBy('prcrtr_id', 'desc')->first();

    		 DB::table('finicals')->insert([
    ['finical_marid' => $productcurtrans->prcrtr_id ,  'finical_pay' => $payfinalirr ,    'finical_createdatdate' => date('Y-m-d H:i:s') ,   'finical_inc' =>  '3' ,   'finical_iduser' =>   Session::get('iduser') ,   'finical_arou' =>  '4' ,   'finical_marpay' =>  '5' ,   'finical_payment' =>  0     ]
]); 



$nametr = Session::flash('statust', 'سفارش حواله ارزی شما باموفقیت ایجاد شد.');
$nametrt = Session::flash('sessurl', 'viewsprodbuy');
		  return view('user.success'); 
 
			}	
 
	}	
	
	
	

public function prodserviceid($id){
	
	
$h = new UserController();
$h->checkactveaccount();


	
 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		
 if (Session::get('activeuser')==0){    return redirect('user/verificationdoc');  }
 else if (Session::has('signuser')){ 

 Session::set('nav', 'prodserviceid'); 
 
  
$admin = \DB::table('currencytransfer')
->join('currency', 'currencytransfer.ctrf_cur', '=', 'currency.id') ->where([
    ['currencytransfer.ctrf_id', '<>', 0], 
    ['currencytransfer.ctrf_type', '=', 2], 
    ['currencytransfer.ctrf_id', '=', $id], ])
    ->orderBy('ctrf_id', 'desc')->first(); 

//$admin = \DB::table('currencytransfer')->where('ctrf_id', '=', $id)  ->orderBy('ctrf_id', 'desc')->first();
$user =  \DB::table('user')->where('id', '=', Session::get('iduser'))  ->orderBy('id', 'desc')->first();
$currency = \DB::table('currency')->where('id', '=', 1)  ->orderBy('id', 'desc')->first();


$descriptionservice = \DB::table('descriptionservice') ->where([
    ['descriptionservice.id', '=', 2], ])
    ->orderBy('id', 'desc')->first();
    
 
$counts= \DB::table('desservice')  ->where([['dss_pctrid', '=',  $id] , ])->orderBy('dss_id', 'desc')->count(); 
if($counts=='0'){
	
DB::table('desservice')->insert([
    ['dss_pctrid' => $id   ]
]);

}


$desservice= \DB::table('desservice')  ->where([['dss_pctrid', '=',  $id] , ])->orderBy('dss_id', 'desc')->first(); 

    
    
    
$law = \DB::table('descriptionservice') ->where([
    ['descriptionservice.id', '=', 9], ])
    ->orderBy('id', 'desc')->first();


 return view('user.service', [  'admin' => $admin ,   'user' => $user, 'currency' => $currency , 'descriptionservice' => $descriptionservice ,     'law' => $law   ,     'desservice' => $desservice   ]);

 
	}
	}	
	
	

public function viewsprodbuy(){
 
 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		
 if (Session::get('activeuser')==0){    return redirect('user/verificationdoc');  }
 else if (Session::has('signuser')){ 

 Session::set('nav', 'viewsprodbuy'); 
  
$admins  = \DB::table('currencytransfer')
->join('currency', 'currencytransfer.ctrf_cur', '=', 'currency.id') 
->join('productcurtrans', 'currencytransfer.ctrf_id', '=', 'productcurtrans.prcrtr_idcrtrf') ->where([
    ['productcurtrans.prcrtr_iduser', '=',  Session::get('iduser')],
    ['currencytransfer.ctrf_id', '<>', 0], 
    ['currencytransfer.ctrf_type', '=', 1],   ])
    ->orderBy('prcrtr_id', 'desc')->get(); 
         
return view('user.viewsprodbuy', ['admins' => $admins]);

			}	
 
	}	
	

public function viewsprodservice(){
 
 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		
 if (Session::get('activeuser')==0){    return redirect('user/verificationdoc');  }
 else if (Session::has('signuser')){ 

 Session::set('nav', 'viewsprodservice'); 
  
$admins  = \DB::table('currencytransfer')
->join('currency', 'currencytransfer.ctrf_cur', '=', 'currency.id') 
->join('productcurtrans', 'currencytransfer.ctrf_id', '=', 'productcurtrans.prcrtr_idcrtrf') ->where([
    ['productcurtrans.prcrtr_iduser', '=',  Session::get('iduser')],
    ['currencytransfer.ctrf_id', '<>', 0], 
    ['currencytransfer.ctrf_type', '=', 2],   ])
    ->orderBy('prcrtr_id', 'desc')->get(); 
        
    
return view('user.viewsprodservice', ['admins' => $admins]);

			}	
 
	}	
	
	

public function viewsfinicals(){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		
 if (Session::get('activeuser')==0){    return redirect('user/verificationdoc');  }
 else if (Session::has('signuser')){ 

 Session::set('nav', 'mali'); 
  
$admins  = \DB::table('currencytransfer')
->join('currency', 'currencytransfer.ctrf_cur', '=', 'currency.id') 
->join('productcurtrans', 'currencytransfer.ctrf_id', '=', 'productcurtrans.prcrtr_idcrtrf') ->where([
    ['productcurtrans.prcrtr_iduser', '=',  Session::get('iduser')],
    ['currencytransfer.ctrf_id', '<>', 0], 
    ['currencytransfer.ctrf_type', '<>', 0],   ])
    ->orderBy('prcrtr_id', 'desc')->get(); 
        
    
return view('user.viewsfinicals', ['admins' => $admins]);

			}	
 
	}	
	
	

public function trakings(){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		
 if (Session::get('activeuser')==0){    return redirect('user/verificationdoc');  }
 else if (Session::has('signuser')){ 
 
 Session::set('nav', 'trakings'); 
  

$h = new UserController();
$h->marketingbis();
		  	


$user = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->orderBy('id', 'desc')->first();

$id=$user->id;

//mycharge 
$charges = \DB::table('user') 
->join('charge', 'user.id', '=', 'charge.charge_iduser') 
->join('finicals', 'charge.charge_finical', '=', 'finicals.id') 
->where([
    ['charge.charge_arou', '=', 4],
    ['charge.charge_iduser', '=', $id],
    ['finicals.finical_payment', '=', 1],
    ['finicals.finical_inc', '=', 5],])
    ->orderBy('charge.charge_id', 'desc')->get();
$chargepaymy=0;
foreach($charges as $charge){ $chargepaymy=$charge->charge_pay+$chargepaymy; }




 //supcharge  
$charges = \DB::table('user') 
->join('charge', 'user.id', '=', 'charge.charge_iduser')  
->join('finicals', 'charge.charge_finical', '=', 'finicals.id') 
->where([
    ['charge.charge_arou', '=', 4],
    ['charge.charge_iduser', '=', $id],
    ['finicals.finical_payment', '=', 1],
    ['finicals.finical_inc', '=', 6],])
    ->orderBy('charge.charge_id', 'desc')->get();
$chargepaysup=0;
foreach($charges as $charge){ $chargepaysup=$charge->charge_pay+$chargepaysup; }



 //odat  
$charges = \DB::table('user') 
->join('charge', 'user.id', '=', 'charge.charge_iduser')  
->join('finicals', 'charge.charge_finical', '=', 'finicals.id') 
->where([
    ['charge.charge_arou', '=', 4],
    ['charge.charge_iduser', '=', $id],
    ['finicals.finical_payment', '=', 1],
    ['finicals.finical_inc', '=', 7],])
    ->orderBy('charge.charge_id', 'desc')->get();
$chargepayodat=0;
foreach($charges as $charge){ $chargepayodat=$charge->charge_pay+$chargepayodat; }




//pardakht 
$charges = \DB::table('user') 
->join('charge', 'user.id', '=', 'charge.charge_iduser')  
->join('finicals', 'charge.charge_finical', '=', 'finicals.id') 
->where([
    ['charge.charge_arou', '=', 4],
    ['charge.charge_iduser', '=', $id],
    ['finicals.finical_payment', '=', 1],
    ['finicals.finical_inc', '=', 3],])
    ->orderBy('charge.charge_id', 'desc')->get();
$chargepaypar=0;
foreach($charges as $charge){ $chargepaypar=$charge->charge_pay+$chargepaypar; }



 //bisinis  
$charges = \DB::table('user') 
->join('charge', 'user.id', '=', 'charge.charge_iduser')  
->join('finicals', 'charge.charge_finical', '=', 'finicals.id') 
->where([
    ['charge.charge_arou', '=', 4],
    ['charge.charge_iduser', '=', $id],
    ['finicals.finical_payment', '=', 1],
    ['finicals.finical_inc', '=', 8],])
    ->orderBy('charge.charge_id', 'desc')->get();
$chargepaybisi=0;
foreach($charges as $charge){ $chargepaybisi=$charge->charge_pay+$chargepaybisi; }


//jamkol
$chargepay= ($chargepaysup +  $chargepaymy  + $chargepaybisi ) -  ($chargepaypar + $chargepayodat) ; 

 

$chargeac=$chargepay;


$chargesas = \DB::table('user') 
->join('charge', 'user.id', '=', 'charge.charge_iduser')  
->join('finicals', 'charge.charge_finical', '=', 'finicals.id') 
->where([
    ['charge.charge_arou', '=', 4],
    ['charge.charge_iduser', '=', $id],
    ['finicals.finical_payment', '=', 1], 
    ['finicals.finical_pak', '<>', '2'] , 
    ['finicals.finical_inc', '<>', 0],])
    ->orderBy('charge.charge_id', 'desc')->get();



    
return view('user.trakings', ['chargesas' => $chargesas , 'chargeac' => $chargeac]); 
			} }	
	







public function checkout(){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		
 if (Session::get('activeuser')==0){    return redirect('user/verificationdoc');  }
 else if (Session::has('signuser')){ 
 
 Session::set('nav', 'checkout'); 
  

   

$user = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->orderBy('id', 'desc')->first();

$id=$user->id;

//mycharge 
$charges = \DB::table('user') 
->join('charge', 'user.id', '=', 'charge.charge_iduser') 
->join('finicals', 'charge.charge_finical', '=', 'finicals.id') 
->where([
    ['charge.charge_arou', '=', 4],
    ['charge.charge_iduser', '=', $id],
    ['finicals.finical_payment', '=', 1],
    ['finicals.finical_inc', '=', 5],])
    ->orderBy('charge.charge_id', 'desc')->get();
$chargepaymy=0;
foreach($charges as $charge){ $chargepaymy=$charge->charge_pay+$chargepaymy; }




 //supcharge  
$charges = \DB::table('user') 
->join('charge', 'user.id', '=', 'charge.charge_iduser')  
->join('finicals', 'charge.charge_finical', '=', 'finicals.id') 
->where([
    ['charge.charge_arou', '=', 4],
    ['charge.charge_iduser', '=', $id],
    ['finicals.finical_payment', '=', 1],
    ['finicals.finical_inc', '=', 6],])
    ->orderBy('charge.charge_id', 'desc')->get();
$chargepaysup=0;
foreach($charges as $charge){ $chargepaysup=$charge->charge_pay+$chargepaysup; }



 //odat  
$charges = \DB::table('user') 
->join('charge', 'user.id', '=', 'charge.charge_iduser')  
->join('finicals', 'charge.charge_finical', '=', 'finicals.id') 
->where([
    ['charge.charge_arou', '=', 4],
    ['charge.charge_iduser', '=', $id],
    ['finicals.finical_payment', '=', 1],
    ['finicals.finical_inc', '=', 7],])
    ->orderBy('charge.charge_id', 'desc')->get();
$chargepayodat=0;
foreach($charges as $charge){ $chargepayodat=$charge->charge_pay+$chargepayodat; }




//pardakht 
$charges = \DB::table('user') 
->join('charge', 'user.id', '=', 'charge.charge_iduser')  
->join('finicals', 'charge.charge_finical', '=', 'finicals.id') 
->where([
    ['charge.charge_arou', '=', 4],
    ['charge.charge_iduser', '=', $id],
    ['finicals.finical_payment', '=', 1],
    ['finicals.finical_inc', '=', 3],])
    ->orderBy('charge.charge_id', 'desc')->get();
$chargepaypar=0;
foreach($charges as $charge){ $chargepaypar=$charge->charge_pay+$chargepaypar; }



 //bisinis  
$charges = \DB::table('user') 
->join('charge', 'user.id', '=', 'charge.charge_iduser')  
->join('finicals', 'charge.charge_finical', '=', 'finicals.id') 
->where([
    ['charge.charge_arou', '=', 4],
    ['charge.charge_iduser', '=', $id],
    ['finicals.finical_payment', '=', 1],
    ['finicals.finical_inc', '=', 8],])
    ->orderBy('charge.charge_id', 'desc')->get();
$chargepaybisi=0;
foreach($charges as $charge){ $chargepaybisi=$charge->charge_pay+$chargepaybisi; }


//jamkol
$chargepay= ($chargepaysup +  $chargepaymy  + $chargepaybisi ) -  ($chargepaypar + $chargepayodat) ; 

 

$chargeac=$chargepay;


$chargesas = \DB::table('user') 
->join('charge', 'user.id', '=', 'charge.charge_iduser')  
->join('finicals', 'charge.charge_finical', '=', 'finicals.id') 
->where([
    ['charge.charge_arou', '=', 4],
    ['charge.charge_iduser', '=', $id],
    ['finicals.finical_payment', '=', 1], 
    ['finicals.finical_pak', '<>', '2'] , 
    ['finicals.finical_inc', '<>', 0],])
    ->orderBy('charge.charge_id', 'desc')->get();



    
return view('user.checkout', ['chargesas' => $chargesas , 'chargeac' => $chargeac]); 
			} }	
	
	


public function checkoutpost (  Request $request ){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		
 if (Session::get('activeuser')==0){    return redirect('user/verificationdoc');  }
 else if (Session::has('signuser')){ 


 
    	$this->validate($request,[ 
    			'price' => 'required|numeric',  
    		],[ 
    			'price.required' => 'لطفا مبلغ را به ریال وارد نمایید', 
    			'price.numeric' => 'لطفا هزینه را به فرمت عددی وارد نمایید',  
    		]); 


 

$pricestatus=0;

$myrequestcards  = \DB::table('myrequestcard') ->where([ 
    ['myreq_id', '<>', 0],    
    ['myreq_status', '=', 0],   
    ['myreq_iduser', '=', Session::get('iduser')],   ])
    ->orderBy('myreq_id', 'desc')->get(); 
    
    foreach($myrequestcards as $myrequestcard){
		$pricestatus=$myrequestcard->myreq_price+$pricestatus;
	}
	
	$pricestatus=$pricestatus+$request->price;


  
$counts  = \DB::table('cardbanking') ->where([ 
    ['card_id', '<>', 0],   
    ['card_iduser', '=', Session::get('iduser')],   ])
    ->orderBy('card_id', 'desc')->count(); 
    
    if($counts!='0'){
		
$admins  = \DB::table('cardbanking') ->where([ 
    ['card_id', '<>', 0],   
    ['card_iduser', '=', Session::get('iduser')],   ])
    ->orderBy('card_id', 'desc')->first(); 
    
    if($admins->card_numbercard==''){
 $nametrt = Session::set('stat', '1'); 
	 } 
	 if($admins->card_numbercard!='') { 
 $nametrt = Session::set('stat', '0'); 
	}

	}


if(($counts=='0')||($admins->card_numbercard=='')){
	
$nametr = Session::flash('statust',  'مشخصات حساب بانکی شما تکمیل نشده است ، لطفا نسبت به ثبت مشخصات کامل بانکی خود اقدام نمایید و سپس نسبت به تسویه اقدام فرمایید');
$nametrt = Session::flash('sessurl', 'cardbanking' );
 return view('user.error');
}


if($request->price > $request->charge){
	
$nametr = Session::flash('statust',  'متاسفانه مبلغ درخواستی شما از شارژ حساب پنل شما بیشتر است');
$nametrt = Session::flash('sessurl', 'checkout' );
 return view('user.error');
}

if($pricestatus > $request->charge ){
$nametr = Session::flash('statust',  'متاسفانه باتوجه به درخواست تسویه حساب قبلی شما تا تعیین تکلیف تسویه حساب درخواست قبلی شما امکان درخواست جدید وجود ندارد . لطفا در زمانی دیگر درخواست تسویه خود را ارسال نمایید . باتشکر. ');
$nametrt = Session::flash('sessurl', 'checkout' );
 return view('user.error');
	
}


if($pricestatus <= $request->charge ){
	

DB::table('myrequestcard')->insert([
    [   'myreq_createdatdate' =>  date('Y-m-d H:i:s')    , 'myreq_iduser' => Session::get('iduser')  , 'myreq_price' => $request->price    ]
]);  



$nametr = Session::flash('statust',  'درخواست تسویه حساب شما باموفقیت به سمت مدیریت ارسال شد');
$nametrt = Session::flash('sessurl', 'viewscheckout' );
 return view('user.success'); 
}


 
			} }	
	
	

	public function viewscheckout(){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		
 if (Session::get('activeuser')==0){    return redirect('user/verificationdoc');  }
 else if (Session::has('signuser')){ 


		
 Session::set('nav', 'viewscheckout'); 
 
$admins = \DB::table('user') 
->join('myrequestcard', 'user.id', '=', 'myrequestcard.myreq_iduser') 
->where([ 
    ['myrequestcard.myreq_iduser', '=', Session::get('iduser')], ])
    ->orderBy('myrequestcard.myreq_id', 'desc')->get();
  
return view('user.viewscheckout', ['admins' => $admins  ]);
}	 
}	


	public function checkoutid($id){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		
 if (Session::get('activeuser')==0){    return redirect('user/verificationdoc');  }
 else if (Session::has('signuser')){ 


		
 Session::set('nav', 'viewscheckout'); 
 
$admins = \DB::table('user') 
->join('myrequestcard', 'user.id', '=', 'myrequestcard.myreq_iduser') 
->where([ 
    ['myrequestcard.myreq_iduser', '=', Session::get('iduser')], 
    ['myrequestcard.myreq_id', '=', $id], ])
    ->orderBy('myrequestcard.myreq_id', 'desc')->get();
  
    
return view('user.checkoutid', ['admins' => $admins  ]);
}	 
}	








public function checkoutdeletid($id){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		
 if (Session::get('activeuser')==0){    return redirect('user/verificationdoc');  }
 else if (Session::has('signuser')){ 

 $admins = \DB::table('myrequestcard')->where([
    ['myrequestcard.myreq_iduser', '=', Session::get('iduser')], 
    ['myrequestcard.myreq_id', '=', $id],  
    ['myrequestcard.myreq_status', '=', 0],  ])
    ->delete(); 
 
$nametr = Session::flash('statust',  'درخواست من باموفقیت حذف شد');
$nametrt = Session::flash('sessurl', 'viewscheckout');
 return view('user.success'); 
 
			}	 
	}	
	





public function cardbanking(){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		
 if (Session::get('activeuser')==0){    return redirect('user/verificationdoc');  }
 else if (Session::has('signuser')){ 

 Session::set('nav', 'cardbanking'); 
  
$counts  = \DB::table('cardbanking') ->where([ 
    ['card_id', '<>', 0],   
    ['card_iduser', '=', Session::get('iduser')],   ])
    ->orderBy('card_id', 'desc')->count(); 
    
    if($counts=='0'){
		

DB::table('cardbanking')->insert([
    [   'card_createdatdate' =>  date('Y-m-d H:i:s')    , 'card_iduser' => Session::get('iduser')       ]
]);  


	}
  
$admins  = \DB::table('cardbanking') ->where([ 
    ['card_id', '<>', 0],   
    ['card_iduser', '=', Session::get('iduser')],   ])
    ->orderBy('card_id', 'desc')->first(); 
    
    if($admins->card_numbercard==''){
 $nametrt = Session::set('stat', '1'); 
	 } else { 
 $nametrt = Session::set('stat', '0'); 
	}


    
return view('user.cardbanking', ['admins' => $admins]);

			}	
 
	}	
	
	
	
	
	public function cardbankingpost(Request $request){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		
 if (Session::get('activeuser')==0){    return redirect('user/verificationdoc');  }
 else if (Session::has('signuser')){ 


$updatee = \DB::table('cardbanking')  
->where([ 
    ['card_iduser', '=', Session::get('iduser')] , ])
    ->update(['card_name' => $request->card_name , 'card_numberhes' => $request->card_numberhes , 'card_numbercard' => $request->card_numbercard , 'card_shaba' => $request->card_shaba   ]); 


if(Session::get('stat')=='1'){
	
			 $nametr = Session::flash('statust', 'اطلاعات حساب بانکی شما باموفقیت ثبت شد');
} else{
	
			 $nametr = Session::flash('statust', 'اطلاعات حساب بانکی شما باموفقیت ویرایش شد');
}
			 
		  	$nametrt = Session::flash('sessurl', 'cardbanking');
		  return view('user.success'); }	    
 }  


	

public function onlineshops(){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		
 if (Session::get('activeuser')==0){    return redirect('user/verificationdoc');  }
 else if (Session::has('signuser')){ 

 Session::set('nav', 'onlineshops'); 
  
$admins  = \DB::table('form') ->where([ 
    ['form_active', '<>', 0],   ])
    ->orderBy('form_id', 'desc')->get(); 


    
return view('user.onlineshops', ['admins' => $admins]);

			}	
 
	}	
	
	
public function onlineshopsid($id){

$h = new UserController();
$h->checkactveaccount();


 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		
 if (Session::get('activeuser')==0){    return redirect('user/verificationdoc');  }
 else if (Session::has('signuser')){ 
 Session::set('nav', 'onlineshops'); 
  

$form = \DB::table('form')  
->where([ 
    ['form.form_rnd', '=', $id], ])
    ->orderBy('form.form_id', 'asc')->first();
    
$admins = \DB::table('form') 
->join('list', 'form.form_rnd', '=', 'list.list_rnd')  
->where([
    ['list.list_aro', '=', 0],
    ['list.list_price', '=', 0],
    ['form.form_rnd', '=', $id], ])
    ->orderBy('list.list_chk', 'asc')->get();
 
 
$descriptionservice = \DB::table('descriptionservice') ->where([
    ['descriptionservice.id', '=', 3], ])
    ->orderBy('id', 'desc')->first();

 
return view('user.shopform', ['admins' => $admins ,'form' => $form  ,'descriptionservice' => $descriptionservice  ]);
 
}
	}	
	
	
	
	

public function onlineshopsidpost ($id , Request $request ){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		
 if (Session::get('activeuser')==0){    return redirect('user/verificationdoc');  }
 else if (Session::has('signuser')){ 


/*
    	$this->validate($request,[ 
    			'des' => 'required',  
    		],[ 
    			'des.required' => 'لطفا توضیحات را وارد نمایید',  
    		]); 
    		
    		*/


$form = \DB::table('form')  
->where([ 
    ['form.form_rnd', '=', $id], ])
    ->orderBy('form.form_id', 'asc')->first();

$admins = \DB::table('form') 
->join('list', 'form.form_rnd', '=', 'list.list_rnd')  
->where([
    ['list.list_aro', '=', 0],
    ['list.list_price', '=', 0],
    ['form.form_rnd', '=', $id], ])
    ->orderBy('list.list_id', 'asc')->get();


DB::table('myrequest')->insert([
    [ 'req_name' => $form->form_name ,   'req_date' =>  date('Y-m-d H:i:s') , 'req_rndform' => $id    , 'req_userid' => Session::get('iduser')       ]
]);  



$myrequest = \DB::table('myrequest')  
->where([ 
    ['myrequest.req_rndform', '=', $id],
    ['myrequest.req_userid', '=', Session::get('iduser')], ])
    ->orderBy('myrequest.req_id', 'desc')->first();


$i=0;


$price=0;

    foreach($admins as $admin){
    	
    	$req='name'; $reqname=$req.$admin->list_id;
    	
      $postdate=$request->$reqname;
     


if($admin->list_typ=='4'){
	
	 if( $request->hasFile($reqname)){ 
        $image = $request->file($reqname);
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 $postdate=$imageName;
    }   else {
		$postdate='';
	}
	
}
 


if($admin->list_price=='1'){  $price=$postdate;}
 
 
DB::table('list')->insert([
    [ 'list_rnd' => $id ,   'list_date' =>  date('Y-m-d H:i:s') , 'list_aro' => 1 , 'list_typ' => $admin->list_typ   , 'list_chk' => $admin->list_chk  , 'list_name' => $postdate   , 'list_userid' => Session::get('iduser') , 'list_myreqid' => $myrequest->req_id      ]
]);  
    
 
 
 $i++;
}



/*
$updatee = \DB::table('myrequest')->where([
    ['myrequest.req_userid', '=',  Session::get('iduser')], 
    ['myrequest.req_id', '=', $myrequest->req_id],   ])
    ->update(['req_price' => $price ]); 




 

DB::table('finicals')->insert([
    ['finical_marid' => $myrequest->req_id ,  'finical_pay' => $price ,    'finical_createdatdate' => date('Y-m-d H:i:s') ,   'finical_inc' =>  '3' ,   'finical_iduser' =>   Session::get('iduser') ,   'finical_arou' =>  '4' ,   'finical_marpay' =>  '7' ,   'finical_payment' =>  0     ]
]); 


*/



$nametr = Session::flash('statust',  'درخواست شما باموفقیت ایجاد شد');
$nametrt = Session::flash('sessurl', 'viewsonlineshops');
 return view('user.success'); 

	 
  
  			}	
 
	}	
	
	



	public function addticketuser(){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		 
 else if (Session::has('signuser')){ 



 Session::set('nav', 'addticket'); 
 return view('user.addticket'); }	 
		}			   



public function addticketuserPost(Request $request){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		 
 else if (Session::has('signuser')){ 

   	
 	
    	$this->validate($request,[
    			'tit' => 'required',
    			'des' => 'required'
    		],[
    			'tit.required' => 'لطفا موضوع تیکت را وارد نمایید', 
    			'des.required' => 'لطفا متن تیکت را وارد نمایید', 
    		]);
    	
DB::table('ticket')->insert([
    ['tik_tit' => $request->tit ,     'tik_createdatdate' =>  date('Y-m-d H:i:s') ,     'tik_date' =>  date('Y-m-d H:i:s') , 'tik_fromarou' => 4 , 'tik_toarou' => 2 , 'tik_fromid' => Session::get('iduser') ,  'tik_fromsh' => 1 , 'tik_tosh' => 1 , 'tik_active' => 1 , 'tik_fromread' => 1 , 'tik_toread' => 0]
]);

$users = DB::table('ticket')->where('tik_tit', $request->tit)->orderBy('id', 'desc')->first(); 

$idtik= $users->id;   

DB::table('message')->insert([
    ['mes_ticket' => $idtik ,  'mes_des' => $request->des   , 'mes_createdatdate' =>  date('Y-m-d H:i:s') , 'mes_flg' =>  1    ]
]);
			 $nametr = Session::flash('statust', 'تیکت باموفقیت ثبت شد');
		  	$nametrt = Session::flash('sessurl', 'viewstickets');
		  return view('user.success'); }	  
 }  




	public function viewsticketsuser(){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		 
 else if (Session::has('signuser')){ 


		
 Session::set('nav', 'viewstickets'); 
 
$admins = \DB::table('user') 
->join('ticket', 'user.id', '=', 'ticket.tik_fromid') 
->where([
    ['ticket.tik_fromarou', '=', 4],
    ['ticket.tik_toarou', '=', 2],
    ['ticket.tik_fromid', '=', Session::get('iduser')],
    ['ticket.tik_fromsh', '=', 1],])
    ->orderBy('ticket.tik_date', 'desc')->get();


$tickread = DB::table('user') 
->join('ticket', 'user.id', '=', 'ticket.tik_fromid')->where([
    ['ticket.tik_fromarou', '=', 4],
    ['ticket.tik_toarou', '=', 2],
    ['ticket.tik_fromid', '=', Session::get('iduser')],
    ['ticket.tik_fromsh', '=', 1],
    ['ticket.tik_fromread', '=', 0],])
    ->orderBy('ticket.id', 'desc')->count();
 
	Session::set('tickreaduser', $tickread);   
    
    
return view('user.viewstickets', ['admins' => $admins  ]);
} 
}	






	public function ticketuser($id){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		 
 else if (Session::has('signuser')){ 


$lngmenus= \DB::table('language') ->where([['id', '<>',  '0'],['lng_active', '=',  '1'],])->orderBy('id', 'desc')->get();
$lngmenu=\DB::table('language') ->where([['id', '=',  Session::get('idlang')],])->orderBy('id', 'desc')->first(); 
	Session::put('idimg', $id);
$tickets = \DB::table('user') 
->join('ticket', 'user.id', '=', 'ticket.tik_fromid')->where([
    ['ticket.id', '=', $id],
    ['tik_fromarou', '=', 4],
    ['tik_toarou', '=', 2],
    ['tik_fromid', '=', Session::get('iduser')],
    ['tik_fromsh', '=', 1],])  ->orderBy('ticket.id', 'desc')->get();
$messages = \DB::table('message')->where('mes_ticket', '=', $id)  ->orderBy('id')->get();

$updatee = \DB::table('user') 
->join('ticket', 'user.id', '=', 'ticket.tik_fromid')->where([
    ['ticket.id', '=', $id],
    ['tik_fromarou', '=', 4],
    ['tik_toarou', '=', 2],
    ['tik_fromid', '=', Session::get('iduser')],
    ['tik_fromsh', '=', 1],])  ->update(['tik_fromread' => 1   ]); 
    
$tickread = DB::table('user') 
->join('ticket', 'user.id', '=', 'ticket.tik_fromid')->where([
    ['ticket.tik_fromarou', '=', 4],
    ['ticket.tik_toarou', '=', 2],
    ['ticket.tik_fromid', '=', Session::get('iduser')],
    ['ticket.tik_fromsh', '=', 1],
    ['ticket.tik_fromread', '=', 0],])
    ->orderBy('ticket.id', 'desc')->count();
 
	Session::set('tickreaduser', $tickread); 
 
return view('user.ticket', ['tickets' => $tickets  ,  'messages' => $messages ,   'lngmenus' => $lngmenus , 'lngmenu' => $lngmenu ]); }	
 
				}
	   




	public function ticketuserPost($id  , Request $request ){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		 
 else if (Session::has('signuser')){ 


$lngmenus= \DB::table('language') ->where([['id', '<>',  '0'],['lng_active', '=',  '1'],])->orderBy('id', 'desc')->get();
$lngmenu=\DB::table('language') ->where([['id', '=',  Session::get('idlang')],])->orderBy('id', 'desc')->first(); 
$this->validate($request,[
    			'des' => 'required|min:2|max:666',
    		],[
    			'des.required' => $lngmenu->lng_wtext.' ! '.$lngmenu->lng_wnotelq,
    			'des.min' => $lngmenu->lng_wtext.' ! '.$lngmenu->lng_wshort,
    			'des.max' => $lngmenu->lng_wtext.' ! '.$lngmenu->lng_wlong,
    		]);


    
    DB::table('message')->insert([
    ['mes_ticket' => $id ,  'mes_des' => $request->des   , 'mes_createdatdate' =>  date('Y-m-d H:i:s') , 'mes_flg' =>  1    ]
]);

 $updatee = \DB::table('user') 
->join('ticket', 'user.id', '=', 'ticket.tik_fromid')->where([
    ['ticket.id', '=', $id],
    ['tik_fromarou', '=', 4],
    ['tik_toarou', '=', 2],
    ['tik_fromid', '=', Session::get('iduser')],
    ['tik_fromsh', '=', 1],])  ->update(['tik_toread' => 0  , 'tik_active' => 1 ,     'tik_date' =>  date('Y-m-d H:i:s')   ]); 

$nametr = Session::flash('statust', $lngmenu->lng_wsuccess);  
$nametrt = Session::flash('sessurl', 'viewstickets/ticket/'.$id.'');
return view('user.success', ['lngmenus' => $lngmenus , 'lngmenu' => $lngmenu ]);
 
}	 
}








	public function deletticketuser($id){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		 
 else if (Session::has('signuser')){ 


 
 Session::set('nav', 'viewstickets'); 
 $updatee = \DB::table('user') 
->join('ticket', 'user.id', '=', 'ticket.tik_fromid')->where([
    ['ticket.id', '=', $id],
    ['tik_fromarou', '=', 4],
    ['tik_toarou', '=', 2],
    ['tik_fromid', '=', Session::get('iduser')],
    ['tik_fromsh', '=', 1],])  ->update(['tik_fromsh' => 0   ]); 

$nametr = Session::flash('statust', 'تیکت باموفقیت حذف شد');  
$nametrt = Session::flash('sessurl', 'viewstickets');
return view('user.success');

 }	 
				}
	




	public function viewselanatsuser(){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		 
 else if (Session::has('signuser')){ 


 	
 
 Session::set('nav', 'viewselanatsuser'); 
 
$admins = \DB::table('user') 
->join('ticket', 'user.id', '=', 'ticket.tik_toid') 
->where([
    ['ticket.tik_fromarou', '=', 1],
    ['ticket.tik_toarou', '=', 4],
    ['ticket.tik_toid', '=', Session::get('iduser')],
    ['ticket.tik_tosh', '=', 1],])
    ->orderBy('ticket.id', 'desc')->get();


$elanread = DB::table('user') 
->join('ticket', 'user.id', '=', 'ticket.tik_toid')->where([
    ['ticket.tik_fromarou', '=', 1],
    ['ticket.tik_toarou', '=', 4],
    ['ticket.tik_toid', '=', Session::get('iduser')],
    ['ticket.tik_tosh', '=', 1],
    ['ticket.tik_toread', '=', 0],])
    ->orderBy('ticket.id', 'desc')->count();
 
	Session::set('elanreaduser', $elanread);   
    
    
return view('user.viewselanats', ['admins' => $admins ]);
}	 
}	


 


	public function elanatuser($id){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		 
 else if (Session::has('signuser')){ 


$lngmenus= \DB::table('language') ->where([['id', '<>',  '0'],['lng_active', '=',  '1'],])->orderBy('id', 'desc')->get();
$lngmenu=\DB::table('language') ->where([['id', '=',  Session::get('idlang')],])->orderBy('id', 'desc')->first(); 	
 
	Session::put('idimg', $id);
$tickets = \DB::table('user') 
->join('ticket', 'user.id', '=', 'ticket.tik_toid')->where([
    ['ticket.id', '=', $id],
    ['tik_fromarou', '=', 1],
    ['tik_toarou', '=', 4],
    ['tik_toid', '=', Session::get('iduser')],
    ['tik_tosh', '=', 1],])  ->orderBy('ticket.id', 'desc')->get();
$messages = \DB::table('message')->where('mes_ticket', '=', $id)  ->orderBy('id')->get();

$updatee = \DB::table('user') 
->join('ticket', 'user.id', '=', 'ticket.tik_toid')->where([
    ['ticket.id', '=', $id],
    ['tik_fromarou', '=', 1],
    ['tik_toarou', '=', 4],
    ['tik_toid', '=', Session::get('iduser')],
    ['tik_tosh', '=', 1],])  ->update(['tik_toread' => 1 , 'tik_active' => 2   ]); 
    
$elanread = DB::table('user') 
->join('ticket', 'user.id', '=', 'ticket.tik_toid')->where([
    ['ticket.tik_fromarou', '=', 1],
    ['ticket.tik_toarou', '=', 4],
    ['ticket.tik_toid', '=', Session::get('iduser')],
    ['ticket.tik_tosh', '=', 1],
    ['ticket.tik_toread', '=', 0],])
    ->orderBy('ticket.id', 'desc')->count();
 
	Session::set('elanreaduser', $elanread);  
 
return view('user.elanat', ['tickets' => $tickets , 'messages' => $messages ,'lngmenus' => $lngmenus , 'lngmenu' => $lngmenu ]); }	 
				}



	
	
	
public function viewsonlineshopsuser(){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		
 if (Session::get('activeuser')==0){    return redirect('user/verificationdoc');  }
 else if (Session::has('signuser')){ 

 Session::set('nav', 'viewsonlineshops'); 
  
$admins  = \DB::table('myrequest')
->join('user', 'myrequest.req_userid', '=', 'user.id')  ->where([
    ['user.id', '=',  Session::get('iduser')],  ])
    ->orderBy('req_id', 'desc')->get(); 
        
    
return view('user.viewsonlineshops', ['admins' => $admins]);

			}	
 
	}	
	
	
	
public function viewsonlineshopsuserid($id , $req_id){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		
 if (Session::get('activeuser')==0){    return redirect('user/verificationdoc');  }
 else if (Session::has('signuser')){ 

 Session::set('nav', 'viewsonlineshops'); 
  
$myrequest  = \DB::table('myrequest')
->join('user', 'myrequest.req_userid', '=', 'user.id')  ->where([
    ['user.id', '=',  Session::get('iduser')], 
    ['myrequest.req_rndform', '=',  $id],  
    ['myrequest.req_id', '=',  $req_id],  ])
    ->orderBy('req_id', 'desc')->first(); 


$form = \DB::table('form')  
->where([ 
    ['form.form_rnd', '=', $id], ])
    ->orderBy('form.form_id', 'asc')->first();
    
$admins = \DB::table('form') 
->join('list', 'form.form_rnd', '=', 'list.list_rnd')  
->where([
    ['list.list_aro', '=', 0], 
    ['form.form_rnd', '=', $id], ])
    ->orderBy('list.list_chk', 'asc')->get();
    
    
$lists = \DB::table('form') 
->join('list', 'form.form_rnd', '=', 'list.list_rnd') 
->join('myrequest', 'list.list_myreqid', '=', 'myrequest.req_id')  
->where([ 
    ['form.form_rnd', '=', $id], 
    ['list.list_userid', '=', Session::get('iduser')], 
    ['myrequest.req_id', '=',  $req_id],  ])
    ->orderBy('list.list_chk', 'asc')->get();
    
    
$reqs = \DB::table('form') 
->join('list', 'form.form_rnd', '=', 'list.list_rnd') 
->join('myrequest', 'list.list_myreqid', '=', 'myrequest.req_id')  
->where([ 
    ['form.form_rnd', '=', $id], 
    ['list.list_userid', '=', Session::get('iduser')], 
    ['myrequest.req_id', '=',  $req_id],  ])
    ->orderBy('list.list_chk', 'asc')->first();
    







//mycharge 
$charges = \DB::table('user') 
->join('charge', 'user.id', '=', 'charge.charge_iduser') 
->join('finicals', 'charge.charge_finical', '=', 'finicals.id') 
->where([
    ['charge.charge_arou', '=', 4],
    ['charge.charge_iduser', '=', Session::get('iduser')],
    ['finicals.finical_payment', '=', 1],
    ['finicals.finical_inc', '=', 5],])
    ->orderBy('charge.charge_id', 'desc')->get();
$chargepaymy=0;
foreach($charges as $charge){ $chargepaymy=$charge->charge_pay+$chargepaymy; }




 //supcharge  
$charges = \DB::table('user') 
->join('charge', 'user.id', '=', 'charge.charge_iduser')  
->join('finicals', 'charge.charge_finical', '=', 'finicals.id') 
->where([
    ['charge.charge_arou', '=', 4],
    ['charge.charge_iduser', '=', Session::get('iduser')],
    ['finicals.finical_payment', '=', 1],
    ['finicals.finical_inc', '=', 6],])
    ->orderBy('charge.charge_id', 'desc')->get();
$chargepaysup=0;
foreach($charges as $charge){ $chargepaysup=$charge->charge_pay+$chargepaysup; }



 //odat  
$charges = \DB::table('user') 
->join('charge', 'user.id', '=', 'charge.charge_iduser')  
->join('finicals', 'charge.charge_finical', '=', 'finicals.id') 
->where([
    ['charge.charge_arou', '=', 4],
    ['charge.charge_iduser', '=', Session::get('iduser')],
    ['finicals.finical_payment', '=', 1],
    ['finicals.finical_inc', '=', 7],])
    ->orderBy('charge.charge_id', 'desc')->get();
$chargepayodat=0;
foreach($charges as $charge){ $chargepayodat=$charge->charge_pay+$chargepayodat; }




//pardakht 
$charges = \DB::table('user') 
->join('charge', 'user.id', '=', 'charge.charge_iduser')  
->join('finicals', 'charge.charge_finical', '=', 'finicals.id') 
->where([
    ['charge.charge_arou', '=', 4],
    ['charge.charge_iduser', '=', Session::get('iduser')],
    ['finicals.finical_payment', '=', 1],
    ['finicals.finical_inc', '=', 3],])
    ->orderBy('charge.charge_id', 'desc')->get();
$chargepaypar=0;
foreach($charges as $charge){ $chargepaypar=$charge->charge_pay+$chargepaypar; }



 //bisinis  
$charges = \DB::table('user') 
->join('charge', 'user.id', '=', 'charge.charge_iduser')  
->join('finicals', 'charge.charge_finical', '=', 'finicals.id') 
->where([
    ['charge.charge_arou', '=', 4],
    ['charge.charge_iduser', '=', Session::get('iduser')],
    ['finicals.finical_payment', '=', 1],
    ['finicals.finical_inc', '=', 8],])
    ->orderBy('charge.charge_id', 'desc')->get();
$chargepaybisi=0;
foreach($charges as $charge){ $chargepaybisi=$charge->charge_pay+$chargepaybisi; }


//jamkol
$chargepay= ($chargepaysup +  $chargepaymy  + $chargepaybisi ) -  ($chargepaypar + $chargepayodat) ; 

 

$chargeac=$chargepay;



$listfinicals = \DB::table('user')  
->join('finicals', 'user.id', '=', 'finicals.finical_iduser') 
->where([
    ['finicals.finical_arou', '=', 4],
    ['finicals.finical_iduser', '=', Session::get('iduser')], 
    ['finicals.finical_marid', '=', $req_id],
    ['finicals.finical_marpay', '=', 7], ])
    ->orderBy('finicals.id', 'asc')->get();

    
$countfinicals = \DB::table('user')  
->join('finicals', 'user.id', '=', 'finicals.finical_iduser') 
->where([
    ['finicals.finical_arou', '=', 4],
    ['finicals.finical_iduser', '=', Session::get('iduser')], 
    ['finicals.finical_marid', '=', $req_id],
    ['finicals.finical_marpay', '=', 7], ])
    ->orderBy('finicals.id', 'asc')->count();

    



$descriptionservicetell = \DB::table('descriptionservice') ->where([
    ['descriptionservice.id', '=', 8], ])
    ->orderBy('id', 'desc')->first();



return view('user.onlineshopsid', ['admins' => $admins ,'form' => $form ,'myrequest' => $myrequest ,'lists' => $lists ,'reqs' => $reqs  ,'chargeac' => $chargeac  ,'listfinicals' => $listfinicals ,'countfinicals' => $countfinicals  , 'descriptionservicetell' => $descriptionservicetell   ]);        
     

			}	
 
	}	
	
	




public function viewsonlineshopsuseridpost($id ,$req_id , Request $request){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		
 if (Session::get('activeuser')==0){    return redirect('user/verificationdoc');  }
 else if (Session::has('signuser')){ 
 
$chargefinical=\DB::table('finicals') ->where([['finical_inc', '=',  3 ],['finical_marid', '=',  $req_id ],['finical_arou', '=',  4 ],['finical_iduser', '=',  Session::get('iduser')],])->orderBy('id', 'desc')->first();	
    

    
$countfinicals = \DB::table('user')  
->join('finicals', 'user.id', '=', 'finicals.finical_iduser') 
->where([
    ['finicals.finical_arou', '=', 4],
    ['finicals.finical_iduser', '=', Session::get('iduser')], 
    ['finicals.finical_marid', '=', $req_id],
    ['finicals.finical_marpay', '=', 7], ])
    ->orderBy('finicals.id', 'desc')->count();
    

$prfinicals = \DB::table('user')  
->join('finicals', 'user.id', '=', 'finicals.finical_iduser') 
->where([
    ['finicals.finical_arou', '=', 4],
    ['finicals.finical_iduser', '=', Session::get('iduser')], 
    ['finicals.finical_marid', '=', $req_id],
    ['finicals.finical_marpay', '=', 7],
    ['finicals.finical_payment', '=', 0], ])
    ->orderBy('finicals.id', 'desc')->first();


$reqs = \DB::table('form') 
->join('list', 'form.form_rnd', '=', 'list.list_rnd') 
->join('myrequest', 'list.list_myreqid', '=', 'myrequest.req_id')  
->where([ 
    ['form.form_rnd', '=', $id], 
    ['list.list_userid', '=', Session::get('iduser')], 
    ['myrequest.req_id', '=',  $req_id],  ])
    ->orderBy('list.list_id', 'asc')->first();
    
     if($countfinicals=='1'){ $price=$reqs->req_price; } 
 else { $price=$prfinicals->finical_pay; }



     
    $costdes='هزینه '.$reqs->req_name.'_ فاکتور شماره '.$chargefinical->id;
 
if($request->jamekol < $price) {
	$nametr = Session::flash('statust',  'متاسفانه مبلغ فاکتور بیشتر از موجودی حساب شما می باشد');
$nametrt = Session::flash('sessurl', 'viewsprodservice');		  	
 return view('user.error');  	
}  else {
 
$updatee = \DB::table('myrequest')->where([ 
    ['myrequest.req_rndform', '=', $id], 
    ['myrequest.req_userid', '=', Session::get('iduser')], 
    ['myrequest.req_id', '=',  $req_id],  ])
    ->update(['req_flg' => '3' ,   'req_paymentdate' =>  date('Y-m-d H:i:s') ]); 

 



$updatee = \DB::table('finicals')  
->where([ 
    ['finicals.finical_iduser', '=', Session::get('iduser')] ,  
    ['finicals.finical_arou', '=', '4'] ,
    ['finicals.finical_marpay', '=', '7'] ,
    ['finicals.finical_marid', '=', $req_id ] ,
    ['finicals.finical_payment', '=', 0 ] ,])
    ->update(['finical_payment' => '1'   ,  'finical_inc' => '3'  , 'finical_paymentdate' => date('Y-m-d H:i:s')  , 'finical_shenasepardakht' => $costdes]); 



$chargecount=\DB::table('charge') ->where([['charge_pay', '=',  $chargefinical->finical_pay ],['charge_finical', '=',  $chargefinical->id  ] ,])->orderBy('charge_id', 'desc')->count();


if ($chargecount<1)
		    	{
		    	
DB::table('charge')->insert([
    ['charge_pay' => $chargefinical->finical_pay ,     'charge_createdatdate' =>  date('Y-m-d H:i:s') , 'charge_arou' => 4 ,  'charge_iduser' => Session::get('iduser') ,  'charge_finical' => $chargefinical->id  ]
]);	    	
}
    }


$nametr = Session::flash('statust',  'سفارش باموفقیت پرداخت شد');
$nametrt = Session::flash('sessurl', 'viewsonlineshops');
 return view('user.success'); 

}

 
	}	
	









	
	

public function viewsprodserviceid($id){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		
 if (Session::get('activeuser')==0){    return redirect('user/verificationdoc');  }
 else if (Session::has('signuser')){ 


//mycharge 
$charges = \DB::table('user') 
->join('charge', 'user.id', '=', 'charge.charge_iduser') 
->join('finicals', 'charge.charge_finical', '=', 'finicals.id') 
->where([
    ['charge.charge_arou', '=', 4],
    ['charge.charge_iduser', '=', Session::get('iduser')],
    ['finicals.finical_payment', '=', 1],
    ['finicals.finical_inc', '=', 5],])
    ->orderBy('charge.charge_id', 'desc')->get();
$chargepaymy=0;
foreach($charges as $charge){ $chargepaymy=$charge->charge_pay+$chargepaymy; }




 //supcharge  
$charges = \DB::table('user') 
->join('charge', 'user.id', '=', 'charge.charge_iduser')  
->join('finicals', 'charge.charge_finical', '=', 'finicals.id') 
->where([
    ['charge.charge_arou', '=', 4],
    ['charge.charge_iduser', '=', Session::get('iduser')],
    ['finicals.finical_payment', '=', 1],
    ['finicals.finical_inc', '=', 6],])
    ->orderBy('charge.charge_id', 'desc')->get();
$chargepaysup=0;
foreach($charges as $charge){ $chargepaysup=$charge->charge_pay+$chargepaysup; }



 //odat  
$charges = \DB::table('user') 
->join('charge', 'user.id', '=', 'charge.charge_iduser')  
->join('finicals', 'charge.charge_finical', '=', 'finicals.id') 
->where([
    ['charge.charge_arou', '=', 4],
    ['charge.charge_iduser', '=', Session::get('iduser')],
    ['finicals.finical_payment', '=', 1],
    ['finicals.finical_inc', '=', 7],])
    ->orderBy('charge.charge_id', 'desc')->get();
$chargepayodat=0;
foreach($charges as $charge){ $chargepayodat=$charge->charge_pay+$chargepayodat; }




//pardakht 
$charges = \DB::table('user') 
->join('charge', 'user.id', '=', 'charge.charge_iduser')  
->join('finicals', 'charge.charge_finical', '=', 'finicals.id') 
->where([
    ['charge.charge_arou', '=', 4],
    ['charge.charge_iduser', '=', Session::get('iduser')],
    ['finicals.finical_payment', '=', 1],
    ['finicals.finical_inc', '=', 3],])
    ->orderBy('charge.charge_id', 'desc')->get();
$chargepaypar=0;
foreach($charges as $charge){ $chargepaypar=$charge->charge_pay+$chargepaypar; }



 //bisinis  
$charges = \DB::table('user') 
->join('charge', 'user.id', '=', 'charge.charge_iduser')  
->join('finicals', 'charge.charge_finical', '=', 'finicals.id') 
->where([
    ['charge.charge_arou', '=', 4],
    ['charge.charge_iduser', '=', Session::get('iduser')],
    ['finicals.finical_payment', '=', 1],
    ['finicals.finical_inc', '=', 8],])
    ->orderBy('charge.charge_id', 'desc')->get();
$chargepaybisi=0;
foreach($charges as $charge){ $chargepaybisi=$charge->charge_pay+$chargepaybisi; }


//jamkol
$chargepay= ($chargepaysup +  $chargepaymy  + $chargepaybisi ) -  ($chargepaypar + $chargepayodat) ; 

 

$chargeac=$chargepay;





$admin  = \DB::table('currencytransfer')
->join('currency', 'currencytransfer.ctrf_cur', '=', 'currency.id') 
->join('productcurtrans', 'currencytransfer.ctrf_id', '=', 'productcurtrans.prcrtr_idcrtrf') ->where([
    ['productcurtrans.prcrtr_iduser', '=',  Session::get('iduser')],
    ['currencytransfer.ctrf_id', '<>', 0], 
    ['productcurtrans.prcrtr_id', '=', $id],   ])
    ->orderBy('prcrtr_id', 'desc')->first(); 
    
    
$user = \DB::table('user') ->where('id', '=', Session::get('iduser'))   ->orderBy('id', 'desc')->first();
    

$descriptionservicetell = \DB::table('descriptionservice') ->where([
    ['descriptionservice.id', '=', 8], ])
    ->orderBy('id', 'desc')->first();

 Session::set('nav', 'viewsprodbuy');
 return view('user.currencybuyid', ['admin' => $admin , 'chargeac' => $chargeac , 'user' => $user , 'descriptionservicetell' => $descriptionservicetell ]);   
    

			}	 
	}	
	




public function viewspayhandle($id , Request $request){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		
 if (Session::get('activeuser')==0){    return redirect('user/verificationdoc');  }
 else if (Session::has('signuser')){ 



$admin  = \DB::table('currencytransfer')
->join('currency', 'currencytransfer.ctrf_cur', '=', 'currency.id') 
->join('productcurtrans', 'currencytransfer.ctrf_id', '=', 'productcurtrans.prcrtr_idcrtrf') ->where([
    ['productcurtrans.prcrtr_iduser', '=',  Session::get('iduser')],
    ['currencytransfer.ctrf_id', '<>', 0], 
    ['productcurtrans.prcrtr_id', '=', $id],   ]) 
    ->update(['prcrtr_despayuser' => $request->des ,   'prcrtr_handleflg' =>  1 ,   'prcrtr_handledate' =>  date('Y-m-d H:i:s') ]); 
    
    
    
$nametr = Session::flash('statust',  'اطلاعات واریز به حساب به صورت دستی جهت اقدامات بعدی انجام گردید');
$nametrt = Session::flash('sessurl', 'viewsprodbuy/'.$id.'' );
 return view('user.success'); 

}
}



public function viewsprodserviceidacc($id , Request $request){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		
 if (Session::get('activeuser')==0){    return redirect('user/verificationdoc');  }
 else if (Session::has('signuser')){ 



$admin  = \DB::table('currencytransfer')
->join('currency', 'currencytransfer.ctrf_cur', '=', 'currency.id') 
->join('productcurtrans', 'currencytransfer.ctrf_id', '=', 'productcurtrans.prcrtr_idcrtrf') ->where([
    ['productcurtrans.prcrtr_iduser', '=',  Session::get('iduser')],
    ['currencytransfer.ctrf_id', '<>', 0], 
    ['productcurtrans.prcrtr_id', '=', $id],   ])
    ->orderBy('prcrtr_id', 'desc')->first(); 
    
    $costdes='هزینه '.$admin->ctrf_name;


    	
if($request->jamekol < $admin->prcrtr_pay) {
	$nametr = Session::flash('statust',  'متاسفانه مبلغ فاکتور بیشتر از موجودی حساب شما می باشد');
$nametrt = Session::flash('sessurl', 'viewsprodservice');		  	
 return view('user.error');  	
}  else {





$updatee = \DB::table('productcurtrans')->where([
    ['productcurtrans.prcrtr_iduser', '=',  Session::get('iduser')], 
    ['productcurtrans.prcrtr_id', '=', $id],   ])
    ->update(['prcrtr_payment' => '1' ,   'prcrtr_paymentdate' =>  date('Y-m-d H:i:s') ]); 



$updatee = \DB::table('finicals')  
->where([ 
    ['finicals.finical_iduser', '=', Session::get('iduser')] ,  
    ['finicals.finical_arou', '=', '4'] ,
    ['finicals.finical_marpay', '=', '5'] ,
    ['finicals.finical_marid', '=', $id ] ,])
    ->update(['finical_payment' => '1'   ,  'finical_inc' => '3'  , 'finical_paymentdate' => date('Y-m-d H:i:s')  , 'finical_shenasepardakht' => $costdes]); 


$chargefinical=\DB::table('finicals') ->where([['finical_inc', '=',  3 ],['finical_marid', '=',  $id ],['finical_arou', '=',  4 ],['finical_iduser', '=',  Session::get('iduser')],])->orderBy('id', 'desc')->first();	

$chargecount=\DB::table('charge') ->where([['charge_pay', '=',  $chargefinical->finical_pay ],['charge_finical', '=',  $chargefinical->id  ] ,])->orderBy('charge_id', 'desc')->count();


if ($chargecount<1)
		    	{
		    	
DB::table('charge')->insert([
    ['charge_pay' => $chargefinical->finical_pay ,     'charge_createdatdate' =>  date('Y-m-d H:i:s') , 'charge_arou' => 4 ,  'charge_iduser' => Session::get('iduser') ,  'charge_finical' => $chargefinical->id  ]
]);	    	
}
    


$nametr = Session::flash('statust',  'سفارش باموفقیت پرداخت شد');
$nametrt = Session::flash('sessurl', 'viewsprodservice/'.$admin->prcrtr_id);
 return view('user.success'); 

}

		}	}	 
 
	




public function viewsprodserviceiddel($id){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		
 if (Session::get('activeuser')==0){    return redirect('user/verificationdoc');  }
 else if (Session::has('signuser')){ 

 $admins = \DB::table('productcurtrans')->where([
    ['productcurtrans.prcrtr_iduser', '=',  Session::get('iduser')], 
    ['productcurtrans.prcrtr_payment', '=', 0], 
    ['productcurtrans.prcrtr_id', '=', $id],   ])
    ->delete(); 
 
$nametr = Session::flash('statust',  'سفارش باموفقیت حذف شد');
$nametrt = Session::flash('sessurl', 'finicals');
 return view('user.success'); 
 
			}	
 
	}	
	


	

public function prodserviceidpost ($id , Request $request ){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		
 if (Session::get('activeuser')==0){    return redirect('user/verificationdoc');  }
 else if (Session::has('signuser')){ 

    	$this->validate($request,[ 
    			'des' => 'required',  
    		],[ 
    			'des.required' => 'لطفا توضیحات را وارد نمایید',  
    		]); 
  
$currency = \DB::table('currency')->where('id', '=', 1)  ->orderBy('id', 'desc')->first();
  
$admin = \DB::table('currencytransfer')
->join('currency', 'currencytransfer.ctrf_cur', '=', 'currency.id') ->where([
    ['currencytransfer.ctrf_id', '<>', 0], 
    ['currencytransfer.ctrf_type', '=', 2], 
    ['currencytransfer.ctrf_id', '=', $id], ])
    ->orderBy('ctrf_id', 'desc')->first(); 
$payrial=$admin->ctrf_pay*$admin->cur_gh;

DB::table('productcurtrans')->insert([
    [ 'prcrtr_idcrtrf' =>  $id , 'prcrtr_pay' =>  $payrial , 'prcrtr_payfinalirr' =>  $payrial , 'prcrtr_des' =>  $request->des , 'prcrtr_iduser' =>   Session::get('iduser'),   'prcrtr_createdatdate' =>  date('Y-m-d H:i:s') , 'prcrtr_type' => 2      ]
]);  


$productcurtrans = \DB::table('productcurtrans')->where('prcrtr_iduser', '=', Session::get('iduser'))  ->orderBy('prcrtr_id', 'desc')->first();

DB::table('finicals')->insert([
    ['finical_marid' => $productcurtrans->prcrtr_id ,  'finical_pay' => $payrial ,    'finical_createdatdate' => date('Y-m-d H:i:s') ,   'finical_inc' =>  '3' ,   'finical_iduser' =>   Session::get('iduser') ,   'finical_arou' =>  '4' ,   'finical_marpay' =>  '5' ,   'finical_payment' =>  0     ]
]); 



    		 

$nametr = Session::flash('statust', 'سفارش سرویس شما باموفقیت ایجاد شد.');
$nametrt = Session::flash('sessurl', 'viewsprodservice');
		  return view('user.success'); 

			}	
 
	}	
	
	

public function secruitlogin(){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		 
 else if (Session::has('signuser')){ 
 
 }
 }
	
    

public function secruitloginactive(){

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		
 if (Session::get('activeuser')==0){    return redirect('user/verificationdoc');  }
 else if (Session::has('signuser')){ 
 
 }
 }
 
 
 
 
 
 
	public function sumdepozituser(){	
  

}
	
 
 
 
	public function checkactveaccount(){	 

 if (empty(Session::has('signuser'))){   return redirect('user/sign-in'); }		 
 else if (Session::has('signuser')){ 

$user = \DB::table('user')->where('id', '=', Session::get('iduser'))->orderBy('id', 'desc')->first();

$user_active=$user->user_active;

if(($user->user_autactive=='1')&&($user->user_tellactive=='1')&&($user->user_emailactive=='1')){
	$user_active='1'; } else { $user_active='0';
} 
	Session::set('activeuser', $user_active);
 
$updatee = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->update([  'user_active' => $user_active ]); 


}
	}
 




 
	public function checkverfysms(){	 
 
$user = \DB::table('user') ->where('id', '=', Session::get('iduser'))   ->orderBy('id', 'desc')->first();
  
		  }
    
	
	
	}