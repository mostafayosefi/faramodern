<?php

namespace App\Http\Controllers\Superadmin;

use Illuminate\Http\Request;
use Auth;
use Session;
use DB;
use Crypt;
use Rule;
use Mail;
use jDate;    
use Validator;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class SuperadminController extends Controller
{



public function login(){ 
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();
 return view('mng.login'  , [ 'mngindexs' => $mngindexs     ]); 
 }
	
	
	
	 
    public function loginpost(Request $request)
    {
    	$this->validate($request,[
    			'firstname' => 'required',
    			'lastname' => 'required'
    		],[
    			'firstname.required' => 'Username Error',
    			'lastname.required' => 'Password Error',
    			
    		]);
	//$output = false;
	//$key =  env('APP_KEY');
	//$iv = md5($key);
	//$output = mcrypt_encrypt(MCRYPT_RIJNDAEL_256, md5($key), $request->lastname, MCRYPT_MODE_CBC, $iv);
	//$output = base64_encode($output);
	
//$encryptedPassword =  Crypt::encrypt($request->lastname);

$superadmins = DB::table('superadmins')->where([
    ['superadmin_username',  $request->firstname],
])->first();
if($superadmins){

$password_db= $superadmins->superadmin_userpassword; 
$decryptedPassword =  Crypt::decrypt($password_db);
$userscou = DB::table('superadmins')->where([
    ['superadmin_username',  $request->firstname],
])->count();
$id_db= $superadmins->id;
$username_db= $superadmins->superadmin_username; 
$password_db= $superadmins->superadmin_userpassword; 
$username_log = $request->firstname; 
if(($username_log == $username_db)&&( $decryptedPassword == $request->lastname)){
	

if($id_db=='1'){
	
	 } 
	
	
	Session::set('namemng', $superadmins->superadmin_name );
	Session::set('idsuperadmin', $id_db);
	Session::set('signsuperadmin', $username_db);	
$adminslp = \DB::table('superadmins')->where('id', '=', $id_db)  ->orderBy('id', 'desc')->first();
$logindatepas=$adminslp->superadmin_logindate;	
$supimg=$adminslp->superadmin_img;	
 
if(empty($supimg)){$supimg='';}	
	Session::set('logindatepas', $logindatepas);
	Session::set('supimg', $supimg);
	$updatee = \DB::table('superadmins')->where('id', '=', Session::get('idsuperadmin'))  ->update(['superadmin_logindate' => date('Y-m-d H:i:s') ,    'superadmin_ip' => $request->ip()  ]); 
	
	Session::set('flagpanel', '1');
			return redirect('superadmin/dashboard'); 
		} else 
			
  $nametr = Session::flash('statust', trans('lang.userpassnot'));
				return redirect('superadmin/sign-in'); 
		
			
}
		else if(empty($superadmins)) {
  $nametr = Session::flash('statust', trans('lang.userpassnot'));
				return redirect('superadmin/sign-in'); 
		}
		
		
		
    }

	 
	

	public function superadminsignout(){	
	Session::forget('idsuperadmin');	
	Session::forget('signsuperadmin');
	Session::forget('logindatepas');
	Session::forget('supimg');
	Session::forget('idimg');
	Session::forget('tickreadprofessorsup');
	Session::forget('namemng');
		return redirect('superadmin/sign-in');
		}




public function allchargeselelr(){
	
 
	
	}
 

public function dashboard(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){ 

/*
$h = new SuperadminController();
$h->allchargeselelr();
*/
$h = new SuperadminController();
$h->viewalertnot();

$h = new SuperadminController();
$h->updatenotifalert();



 Session::set('nav', 'dashboard'); 
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();

/*
 $h = new SuperadminController();
$h->superadminticketupd(); 
*/


/*
$countwallets = \DB::table('wallet')  
 ->where([  
 ['wallet.wallet_id', '<>',  0],])->orderBy('wallet_id', 'desc')->count();  
 */
 
 
$h = new SuperadminController();
$h->updatenotifalert();

 
  
 $counttickettikets = \DB::table('ticket')  ->where([
    ['tik_fromarou', '=', 4],
    ['tik_toarou', '=', 2],
    ['tik_walletid', '=', 0], ])
    ->orderBy('ticket.tik_date', 'desc')->count();
  
  
     
    
    
 $countrequests = \DB::table('ticket')  ->where([
    ['tik_fromarou', '=', 4],
    ['tik_toarou', '=', 2], 
    ['tik_walletid', '<>', 0], ])
    ->orderBy('ticket.tik_date', 'desc')->count();

 

$countusers = \DB::table('user')->where([
    ['id','<>' , 0],
    ['user_role','=' , 1], 
])->orderBy('id', 'desc')->count();

$countusersactive = \DB::table('user')->where([
    ['id','<>' , 0],
    ['user_active','=' , 1],
    ['user_role','=' , 1], 
])->orderBy('id', 'desc')->count();

$countusersdeactive = \DB::table('user')->where([
    ['id','<>' , 0],
    ['user_active','=' , 0],
    ['user_role','=' , 1], 
])->orderBy('id', 'desc')->count();

  
  
  
$countregperson = \DB::table('regperson') ->where([  
 ['regp_id', '<>',  0],    
  ])->orderBy('regp_id', 'desc')->count(); 
  
  
$countregcompany = \DB::table('regcompany') ->where([  
 ['regc_id', '<>',  0],     
  ])->orderBy('regc_id', 'desc')->count(); 
  
  
  $allreqcount=$countregperson+$countregcompany;
  

  return view('mng.dashboard'  , [ 'mngindexs' => $mngindexs , 'countusers' => $countusers , 'countusersactive' => $countusersactive , 'countusersdeactive' => $countusersdeactive , 'counttickettikets' => $counttickettikets  , 'allreqcount' => $allreqcount   ]); 
 }}
 
 
 
 
 
public function mngdescription(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'mngdescription');  
$admins = \DB::table('description') ->where('des_id', '<>', '0')->orderBy('des_id', 'asc')->get(); 
 return view('mng.mngdescription'  , [ 'admins' => $admins     ]); 
 }}
 
 
 
 
public function mngdescriptioneditid($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'mngdescription');  
$admin = \DB::table('description') ->where('des_id', '=', $id)->orderBy('des_id', 'asc')->first(); 
 return view('mng.editdesc'  , [ 'admin' => $admin     ]); 
 }}
 
 
 	public function descriptioneditidpost($id , Request $request ){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){ 

 
$updatee = \DB::table('description')->where('des_id', '=', $id)  ->update(['des_des' => $request->des ]); 
 
 $nametr = Session::flash('statust', ' متن توضیحات باموفقیت ویرایش شد.'); 

 return redirect('superadmin/mngdescription'); 
 }}
 
 
		 

public function profile(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){ 

 Session::set('nav', 'profile'); 
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();
$superadmins = \DB::table('superadmins') ->where('id', '=', Session::get('idsuperadmin'))->orderBy('id', 'desc')->first();
 return view('mng.profile'  , [ 'mngindexs' => $mngindexs  , 'superadmins' => $superadmins    ]); 
 }}
 
 
 	
	public function profilepost(  Request $request ){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){ 


//$nametr = Session::flash('err', '1');


$this->validate($request,[
    			'username' => 'required|min:3|max:35',
    			'tell' => 'required|numeric',
    			'email' => 'required|email',
    			'file'  => 'max:1000', 
    		],[
    			'username.required' => 'نام کاربری را وارد نمایید',
    			'username.min' => 'نام کاربری کوتاه است',
    			'username.max' => 'نام کاربری غیرقابل قبول است',
    			'tell.required' => 'شماره تلفن را بصورت صحیح وارد کنید',
    			'tell.numeric' => 'شماره غیرقابل قبول است',
    			'email.required' => 'ایمیل را بصورت صحیح وارد کنید',
    			'email.email' => 'فرمت ایمیل غیرقابل قبول است',  
    			'file.max' => 'حجم فایل آپلود شده بیشتر از حد مجاز می باشد. (حدمجاز 1مگابایت یا کمتر از این مقدار باید باشد)', 
    			
    		]);
    		
 
$admins = \DB::table('superadmins')->where('id', '=', Session::get('idsuperadmin'))  ->orderBy('id', 'desc')->first();

$imageName=$admins->superadmin_img;


 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }
 
 
 
$updatee = \DB::table('superadmins')->where('id', '=', Session::get('idsuperadmin'))  ->update(['superadmin_name' => $request->name , 'superadmin_username' => $request->username ,  'superadmin_tell' => $request->tell ,  'superadmin_email' => $request->email ,  'superadmin_ip' => $request->ip()  ,  'superadmin_img' => $imageName  ]); 


	Session::set('supimg', $imageName);

$admins = \DB::table('superadmins')->where('id', '=', Session::get('idsuperadmin'))  ->orderBy('id', 'desc')->get();

			 $nametr = Session::flash('statust', 'اطلاعات پروفایل من باموفقیت ویرایش شد.');
		  	$nametrt = Session::flash('sessurl', 'myprofile/edit/sup');


$admins = \DB::table('superadmins')->where('id', '=',  Session::get('idsuperadmin'))  ->orderBy('id', 'desc')->first();


	
$user = \DB::table('superadmins')->where('id', '=', Session::get('idsuperadmin'))  ->orderBy('id', 'desc')->first();

 
 return redirect('superadmin/profile'); 
 
}	 }


 

public function addelan(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'addelan');  
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first(); 
 return view('mng.addelan'  , [ 'mngindexs' => $mngindexs     ]); 
 }}




	public function addelanpost(  Request $request ){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){ 

$this->validate($request,[
    			'des' => 'required', 
    		],[
    			'des.required' => 'لطفا متن اطلاعیه را وارد نمایید',
    			
    		]);
    		
    		
    		
 
    		
DB::table('elanats')->insert([
    [  'elanat_des' => $request->des  ,   'elanat_createdatdate' =>  date('Y-m-d H:i:s')       ]
]);  
    		 
 $nametr = Session::flash('statust', ' اطلاعیه جدید باموفقیت ثبت شد.');
 $nametrt = Session::flash('sessurl', 'viewselan');

 return redirect('superadmin/viewselan'); 
 }}
 



public function viewselan(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'viewselan');  
$admins = \DB::table('elanats') ->where('elanat_id', '<>', '0')->orderBy('elanat_id', 'desc')->get(); 
 return view('mng.viewselan'  , [ 'admins' => $admins     ]); 
 }}
 



	public function deletelanid( $id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){  
 

 $admins = \DB::table('elanats')->where([
    ['elanats.elanat_id','=' , $id], 
    ['elanats.elanat_id','<>' , 0], 
])->delete(); 
 
 $nametr = Session::flash('statust', 'اطلاعیه باموفقیت حذف شد  ');  
 $nametrt = Session::flash('sessurl', 'viewselan');			  	 
 return redirect('superadmin/viewselan');  
 
}   }

 
 

public function addlink(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'addlink');  
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first(); 
 return view('mng.addlink'  , [ 'mngindexs' => $mngindexs     ]); 
 }}




 public function addlinkpost(  Request $request ){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){ 

$this->validate($request,[
    			'name' => 'required', 
    		],[
    			'name.required' => 'لطفا عنوان سایت را وارد نمایید',
    			
    		]);
    		
    		
    		

$mystring = $request->link; $findme   = 'http'; $pos = strpos($mystring, $findme);
  if ($pos !== false) {  $mystring = $request->link; }else{ $mystring = 'http://'.$request->link; }
    		
DB::table('links')->insert([
    [  'link_name' => $request->name ,  'link_link' => $mystring ,   'link_createdatdate' =>  date('Y-m-d H:i:s')       ]
]);  
    		 
 $nametr = Session::flash('statust', 'پیوند جدید باموفقیت ثبت شد.');
 $nametrt = Session::flash('sessurl', 'viewslink');

 return redirect('superadmin/viewslink'); 
 }}
 



public function viewslink(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'viewslink');  
$admins = \DB::table('links') ->where('link_id', '<>', '0')->orderBy('link_id', 'desc')->get(); 
 return view('mng.viewslink'  , [ 'admins' => $admins     ]); 
 }}
 



	public function deletlinkid( $id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){  
 

 $admins = \DB::table('links')->where([
    ['links.link_id','=' , $id], 
    ['links.link_id','<>' , 0], 
])->delete(); 
 
 $nametr = Session::flash('statust', 'لینک باموفقیت حذف شد  ');  
 $nametrt = Session::flash('sessurl', 'viewslink');			  	 
 return redirect('superadmin/viewslink');  
 
}   }



 

public function addads(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'addads');  
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first(); 
 return view('mng.addads'  , [ 'mngindexs' => $mngindexs     ]); 
 }}




	public function addadspost(  Request $request ){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){ 

$this->validate($request,[
    			'name' => 'required', 
    		],[
    			'name.required' => 'لطفا نام تبلیغات را وارد نمایید',
    			
    		]);
    		

$imageName='';
 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }
    		
    		

$mystring = $request->link;
    $findme   = 'http';
    $pos = strpos($mystring, $findme);
 
    if ($pos !== false) {  $mystring = $request->link; }else{
		$mystring = 'http://'.$request->link;
	}
    		
DB::table('adses')->insert([
    [  'ads_name' => $request->name ,   'ads_img' =>$imageName ,   'ads_catid' => $request->catid ,  'ads_link' => $mystring ,   'ads_createdatdate' =>  date('Y-m-d H:i:s')       ]
]);  
    		 
 $nametr = Session::flash('statust', ' تبلیغات جدید باموفقیت ثبت شد');
 $nametrt = Session::flash('sessurl', 'viewsads');

 return redirect('superadmin/viewsads'); 
 }}
 



public function viewsads(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'viewsads');  
$admins = \DB::table('adses') ->where('ads_id', '<>', '0')->orderBy('ads_id', 'desc')->get(); 
 return view('mng.viewsads'  , [ 'admins' => $admins     ]); 
 }}
 



	public function deletadsid( $id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){  
 

 $admins = \DB::table('adses')->where([
    ['adses.ads_id','=' , $id], 
    ['adses.ads_id','<>' , 0], 
])->delete(); 
 
 $nametr = Session::flash('statust', 'تبلیغات باموفقیت حذف شد  ');  
 $nametrt = Session::flash('sessurl', 'viewsads');			  	 
 return redirect('superadmin/viewsads');  
 
}   }




public function mngfinical(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'mngfinical');  
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first(); 
 return view('mng.mngfinical'  , [ 'mngindexs' => $mngindexs     ]); 
 }}
 




public function mngfinicalpost(Request $request ){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'mngfinical');  
  
$updatee = \DB::table('mngindex')->where('id', '=', 1)  ->update(['ind_bis' => $request->ind_bis , 'ind_bislimit' => $request->ind_bislimit ]); 
 
 $nametr = Session::flash('statust', 'اطلاعات مالی باموفقیت ویرایش شد .');
 $nametrt = Session::flash('sessurl', 'mngfinical');

 return redirect('superadmin/mngfinical'); 
 
 }}
 


public function addcat(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'addcat');  
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first(); 
 return view('mng.addcat'  , [ 'mngindexs' => $mngindexs     ]); 
 }}
 
public function addwalletsup(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'addwallet');  
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first(); 
 return view('mng.addwallet'  , [ 'mngindexs' => $mngindexs     ]); 
 }}
 
 
public function getbarcod($idwallet,$idsecret){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 
 
 
 
$h = new SuperadminController();
$h->fungetbarcode($idwallet,$idsecret);
 


 }}
 
 
 
 
public function fungetbarcode($idwallet,$idsecret){
	
 
 $url =env('APP_URL').'/qr2/php-qrcode-main/phpqrcode/showcode.php?idsecret='.$idsecret.'&&idwallet='.$idwallet; 
$ch = curl_init(); 
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HEADER, 0); 
curl_exec($ch);

$result = curl_exec($ch);

 



//echo  $result;
	
	}
 
 
 
 
public function savebarcode($idwallet , $name ){
  
 
  
$updatee = \DB::table('wallet')->where('wallet_id', '=', $idwallet)  ->update([ 'wallet_qrcode' => $name  ]); 
 


 }
 
 
 
 
 
	public function addwalletsuppost(  Request $request ){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){ 
 
    		
$imageName='';
 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }



DB::table('wallet')->insert([
    [  'wallet_name' => $request->name , 'wallet_idsecret' => $request->secret ,   'wallet_createdatdate' =>  date('Y-m-d H:i:s')  , 'wallet_logo' => $imageName      ]
]);  
    		 
 $nametr = Session::flash('statust', 'کیف پول باموفقیت ثبت شد.');
 $nametrt = Session::flash('sessurl', 'mngwallets');
 
 
 
$admins = \DB::table('wallet')  
 ->where([  
 ['wallet.wallet_id', '<>',  0], ])->orderBy('wallet_id', 'desc')->first(); 
 
 
 
$h = new SuperadminController();
$h->fungetbarcode($admins->wallet_id,$request->secret);
 
 

 return redirect('superadmin/mngwallets'); 
 }}
 
 
 
 

	public function addcatpost(  Request $request ){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){ 

$this->validate($request,[
    			'name' => 'required', 
    		],[
    			'name.required' => 'لطفا نام دسته بندی را وارد نمایید',
    			
    		]);
    		
    		
DB::table('cat')->insert([
    [  'cat_name' => $request->name ,   'cat_createdatdate' =>  date('Y-m-d H:i:s')       ]
]);  
    		 
 $nametr = Session::flash('statust', 'دسته بندی باموفقیت ثبت شد.');
 $nametrt = Session::flash('sessurl', 'viewscats');

 return redirect('superadmin/viewscats'); 
 }}
 
 
 

public function viewscats(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'viewscats');  
$admins = \DB::table('cat') ->where('cat_id', '<>', '0')->orderBy('cat_id', 'desc')->get(); 
 return view('mng.viewscats'  , [ 'admins' => $admins     ]); 
 }}
 
 
 
 
 
 
	public function deletcatid( $id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){  
 

 $admins = \DB::table('cat')->where([
    ['cat.cat_id','=' , $id], 
    ['cat.cat_id','<>' , 0], 
])->delete(); 
 
 $nametr = Session::flash('statust', 'دسته بندی باموفقیت حذف شد  ');  
 $nametrt = Session::flash('sessurl', 'viewscats');			  	 
 return redirect('superadmin/viewscats');  
 
}   }



 
 
 
 
public function viewspages($page){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'viewspages');  
 
	if($page=='page')   {
$admins = \DB::table('page') ->where([
    ['page.page_flg','=' , 0], 
    ['page.id','<>' , 0], 
])->orderBy('id', 'desc')->get();    }

if($page=='blog'){
$admins = \DB::table('page')  ->where([
    ['page.page_flg','=' , 1], 
    ['page.id','<>' , 0], 
])->orderBy('id', 'desc')->get();    }

if($page=='article'){
$admins = \DB::table('articles') ->where('art_id', '<>', '0')->orderBy('art_id', 'desc')->get();    }

if($page=='catfaq'){
$admins = \DB::table('qstcat') ->where('id', '<>', '0')->orderBy('id', 'desc')->get();    }
 
if($page=='qst'){
$admins = \DB::table('qstcat')
->join('question', 'qstcat.id', '=', 'question.qst_catid') ->orderBy('question.id', 'desc')->get();
 
 
 }
 
 
 return view('mng.viewspages'  , [ 'admins' => $admins ,  'page' => $page      ]); 
 }}
 
 
 
	

public function pageseditid($page, $id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'viewspages');  
 
 
    
    
	if($page=='page')   {
$admin = \DB::table('page') ->where([
    ['page.page_flg','=' , 0], 
    ['page.id','=' , $id], 
])->orderBy('id', 'desc')->first();  }
elseif($page=='spotlite'){
 $admin = \DB::table('spotlite')  ->where([ 
    ['spotlite_id', '<>', 0], 
    ['spotlite_id', '=', $id], ])
    ->orderBy('spotlite_id', 'desc')->first();  } 
elseif($page=='blog'){
$admin = \DB::table('page') ->where([
    ['page.page_flg','=' , 1], 
    ['page.id','=' , $id], 
])->orderBy('id', 'desc')->first();  }
elseif($page=='article'){ 
$admin = \DB::table('articles') ->where('art_id', '=', $id)->orderBy('art_id', 'desc')->first();     }
elseif($page=='catfaq'){ 
$admin = \DB::table('qstcat') ->where('id', '=', $id)->orderBy('id', 'desc')->first();     }
elseif($page=='qst'){ 

$qstcats = \DB::table('qstcat') ->orderBy('id', 'desc')->get();
 
$admin = \DB::table('qstcat')
->join('question', 'qstcat.id', '=', 'question.qst_catid') ->where('question.id', '=', $id)->orderBy('question.id', 'desc')->first(); 

}
  
if($page=='qst'){
 return view('mng.editqst'  , [ 'admin' => $admin    ,  'page' => $page  ,  'qstcats' => $qstcats     ]); } else {
 return view('mng.editpage'  , [ 'admin' => $admin    ,  'page' => $page    ]); 
 	
 }

 }}
 
 
 

public function pageseditidpost($page,$id , Request $request ){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){ 
 


if(($page=='page')||($page=='blog')){
	

$admin = \DB::table('page') ->where('id', '=', $id)->orderBy('id', 'desc')->first();   
$imageName=$admin->page_img;
 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }
    		 	 
$updatee = \DB::table('page')->where('id', '=', $id)  ->update([ 'page_tit' => $request->name  ,  'page_kh' => $request->short ,  'page_des' => $request->des ,  'page_img' => $imageName  ,    'page_active' => 1  ]); 
 

if(($page=='page')){
 $nametr = Session::flash('statust', 'صفحه باموفقیت ویرایش شد.'); 
	} 	
if(($page=='blog')){
 $nametr = Session::flash('statust', 'بلاگ باموفقیت ویرایش شد.'); 
	} 		 
	
} elseif($page=='article'){
	

$admin = \DB::table('articles') ->where('art_id', '=', $id)->orderBy('art_id', 'desc')->first();   
$imageName=$admin->art_img;
 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }
    		 	 
$updatee = \DB::table('articles')->where('art_id', '=', $id)  ->update([ 'art_name' => $request->name  ,  'art_kh' => $request->short ,  'art_des' => $request->des ,  'art_img' => $imageName  ,    'art_active' => 1  ]); 
 
    		 
 $nametr = Session::flash('statust', 'مقاله باموفقیت ویرایش شد.'); 
	
}elseif($page=='catfaq'){ 
$updatee = \DB::table('qstcat')->where('id', '=', $id)  ->update([ 'qstcat_name' => $request->name   ]);  
 $nametr = Session::flash('statust', 'دسته بندی باموفقیت ویرایش شد.');  
 
	}elseif($page=='qst'){ 

$updatee = \DB::table('question')->where('id', '=', $id)  ->update(['qst_pors' => $request->pors , 'qst_pas' => $request->pas   , 'qst_catid' => $request->name      ]);
    $nametr = Session::flash('statust', 'سوال و پاسخ باموفقیت ویرایش شد.');
 
	}elseif($page=='spotlite'){ 

$admin = \DB::table('spotlite') ->where('spotlite_id', '=', $id)->orderBy('spotlite_id', 'desc')->first();   
$imageName=$admin->spotlite_img;
 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }
    
$updatee = \DB::table('spotlite')->where('spotlite_id', '=', $id)  ->update([ 'spotlite_des' => $request->des  , 'spotlite_img' => $imageName     ]);
    $nametr = Session::flash('statust', 'اسپوتلایت باموفقیت ویرایش شد.');
 
 return redirect('superadmin/mngspotlite'); 
	}
    	 	
 

 return redirect('superadmin/views/'.$page.'/edit/'.$id); 


	
   
 
 
}}
		 
	

	public function editcatidpost($id , Request $request ){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){ 

$this->validate($request,[
    			'name' => 'required', 
    		],[
    			'name.required' => 'لطفا نام دسته بندی را وارد نمایید',
    			
    		]);
    		 
$updatee = \DB::table('cat')->where('cat_id', '=', $id)  ->update(['cat_name' => $request->name ]); 
 
 $nametr = Session::flash('statust', 'دسته بندی باموفقیت ویرایش شد.');
 $nametrt = Session::flash('sessurl', 'viewscats');

 return redirect('superadmin/viewscats'); 
 }}
 
 
 
 
 
public function addchick(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'addchick');  
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();  
 return view('mng.addchick'  , [ 'mngindexs' => $mngindexs  ]); 
 }}
 
 
 
 
	public function addchickpost(  Request $request ){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){ 

$this->validate($request,[
    			'name' => 'required', 
    			'price' => 'required', 
    			'eggperhour' => 'required', 
    			'file'  => 'required|max:1000', 
    		],[
    			'name.required' => 'لطفا نام مرغ را وارد نمایید',
    			'price.required' => 'لطفا هزینه را وارد نمایید',
    			'eggperhour.required' => 'لطفا تعداد تخمها در هر ساعت را وارد نمایید',
    			'file.required' => 'لطفا عکس مرغ را آپلود نمایید ',
    			'file.max' => 'حجم فایل آپلود شده بیشتر از حد مجاز می باشد. (حدمجاز 1مگابایت یا کمتر از این مقدار باید باشد)', 
    			
    		]);
 
 
 $imageName='';   		
 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }
    
 	 



DB::table('chicks')->insert([
    [  'ch_name' => $request->name ,  'ch_price' => $request->price ,  'ch_eggperhour' => $request->eggperhour ,  'ch_img' => $imageName , 'ch_createdatdate' =>  date('Y-m-d H:i:s')       ]
]);  

 
  
    		 
 $nametr = Session::flash('statust', 'مرغ جدید باموفقیت ثبت شد.');
 $nametrt = Session::flash('sessurl', 'viewschicks');

 return redirect('superadmin/viewschicks'); 
 }}
 
 
 
 
	public function mngchickseditpost( $id , Request $request ){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){ 

 
 
 
$chicks = \DB::table('chicks') ->where('ch_id', '=', $id)->orderBy('ch_id', 'desc')->first(); 
 $imageName=$chicks->ch_img;   		
 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }
    
 	 

$updatee = \DB::table('chicks')->where('ch_id', '=', $id)  ->update([   'ch_name' => $request->name ,  'ch_price' => $request->price ,  'ch_eggperhour' => $request->eggperhour ,  'ch_img' => $imageName  ]); 

 

  
    

  
  
  
    		 
 $nametr = Session::flash('statust', 'مرغ باموفقیت ویرایش شد.');
 $nametrt = Session::flash('sessurl', 'viewschicks');

 return redirect('superadmin/mngchicks/edit/'.$id); 
 }}
 
 
 

public function viewschicks(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'viewschicks');  
$admins = \DB::table('chicks') ->where('ch_id', '<>', '0')->orderBy('ch_id', 'asc')->get(); 
 
 return view('mng.viewschicks'  , [ 'admins' => $admins     ]); 
 }}
 
  
 

public function mngchicksedit($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'viewschicks');  
$admins = \DB::table('chicks') ->where('ch_id', '=', $id)->orderBy('ch_sort', 'desc')->first();  

$iid=$admins->ch_sort - 1;


$mysorts = \DB::table('chicks') ->where('ch_sort', '=', $iid)->orderBy('ch_sort', 'desc')->first(); 
$allchicks = \DB::table('chicks') ->where('ch_id', '<>', 0)->orderBy('ch_sort', 'asc')->get(); 
 
 return view('mng.editchicks'  , [ 'admins' => $admins  ,   'mysorts' => $mysorts  ,   'allchicks' => $allchicks   ]); 
 }}
 

public function mngchickseditsort(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'sortchick');  
$admins = \DB::table('chicks') ->where('ch_id', '<>', 0)->orderBy('ch_sort', 'asc')->get();  
 
 
 return view('mng.chikssort'  , [ 'admins' => $admins     ]); 
 }}
 
 
 
 
 
 
	public function mngchickseditsortpost(   Request $request ){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){ 

 
$admins = \DB::table('chicks') ->where('ch_id', '<>', 0)->orderBy('ch_sort', 'asc')->get();  

$i=0;
foreach($admins as $admin){
	$i++;
	$soort='sort'.$admin->ch_id;
	
	   $que = $request->$soort;
	 
	
	
   $updatee = \DB::table('chicks')->where('ch_id', '=', $admin->ch_id)  ->update([   'ch_sort' => $que ]); 
 
 
}

 
 
 
  
  
  
    		 
 $nametr = Session::flash('statust', 'سورت بندی باموفقیت انجام شد.');
 $nametrt = Session::flash('sessurl', 'viewschicks');

 return redirect('superadmin/mngchicks/sort'); 
 }}
 
 
 
  

public function mnglaw(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'mnglaw');  
$admins = \DB::table('law') ->where('law_id', '=', 1)->orderBy('law_id', 'desc')->first(); 
 
 return view('mng.law'  , [ 'admins' => $admins     ]); 
 }}
  

public function mnglawpost(Request $request){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'mnglaw');  
$admins = \DB::table('law') ->where('law_id', '=', 1)->orderBy('law_id', 'desc')->first(); 
 
 

$updatee = \DB::table('law')->where('law_id', '=', 1)  ->update([   'law_des' => $request->des   ]); 
 
  
    		 
 $nametr = Session::flash('statust', 'قوانین سایت باموفقیت ویرایش شد.');
 $nametrt = Session::flash('sessurl', 'mnglaw');

 return redirect('superadmin/mnglaw'); 
 
 }}
  

public function mngfinics(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'mngfinics');  
$admins = \DB::table('mngfinics') ->where('mngfinics_id', '=', 1)->orderBy('mngfinics_id', 'desc')->first(); 
 
 return view('mng.mngfinics'  , [ 'admins' => $admins     ]); 
 }}
 
  
 
	public function mngfinicspost(  Request $request ){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){ 

 
  
 	 

$updatee = \DB::table('mngfinics')->where('mngfinics_id', '=', 1)  ->update([   'mngfinics_perbalance' => $request->mngfinics_perbalance ,  'mngfinics_perearning' => $request->mngfinics_perearning ,  'mngfinics_mineggssel' => $request->mngfinics_mineggssel   ,  'mngfinics_rewardbalance' => $request->mngfinics_rewardbalance  ,  'mngfinics_goldinegg' => $request->mngfinics_goldinegg    ,  'mngfinics_goldinbtc' => $request->mngfinics_goldinbtc   ,  'mngfinics_referral' => $request->mngfinics_referral   ]); 
 
  
    		 
 $nametr = Session::flash('statust', 'تنظیمات مالی با موفقیت انجام شد.');
 $nametrt = Session::flash('sessurl', 'mngfinics');

 return redirect('superadmin/mngfinics'); 
 }}
 
 
 
 

public function addplan(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'addplan');  
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first(); 


$wallets = \DB::table('wallet') ->where('wallet_id', '<>', '0')->orderBy('wallet_id', 'asc')->get(); 

 return view('mng.addplan'  , [ 'mngindexs' => $mngindexs  ,  'wallets' => $wallets       ]); 
 }}
 
 
 
 
 
 
	public function addplanpost(  Request $request ){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){ 

 
 
 $imageName='';   		
 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }
    
 	  

DB::table('plan')->insert([
    [  'plan_name' => $request->name ,  'plan_usd' => $request->price  ,  'plan_img' => $imageName , 'plan_createdatdate' =>  date('Y-m-d H:i:s')       ]
]);  

 
 
 
$plans = \DB::table('plan') ->where('plan_id', '<>', '1')->orderBy('plan_id', 'desc')->first(); 
 
 $idplan=$plans->plan_id;
 
 
 
 
$admins = \DB::table('wallet')  
 ->where([  
 ['wallet.wallet_id', '<>',  0],])->orderBy('wallet_id', 'asc')->get();  
  
$i=0;  
foreach($admins as $admin) { 
$val = 'pricecur'.$admin->wallet_id;  
$value=$request->$val; 

DB::table('curplan')->insert([
    [  'curplan_idwallet' => $admin->wallet_id ,  'curplan_idplan' => $idplan ,  'curplan_price' => $value        ]
]);  
 
	
	$i++;	  }  
  
    		 
 $nametr = Session::flash('statust', 'پلان جدید با موفقیت ثبت شد .');
 $nametrt = Session::flash('sessurl', 'viewsplans');

  return redirect('superadmin/viewsplans'); 
 }}
 
 
 
 
 
 
public function viewsplans(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'viewsplans');  
  

$admins = \DB::table('plan')  
 ->where([  
 ['plan.plan_id', '<>',  0],])->orderBy('plan_id', 'desc')->get();  
 return view('mng.viewsplans'  , [    'admins'=> $admins   ]);  
 }}
 
 
 
public function viewsplansedit($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'viewsplans');  
  

$admins = \DB::table('plan')  
 ->where([  
 ['plan.plan_id', '<>',  0],
 ['plan.plan_id', '=',  $id],])->orderBy('plan_id', 'desc')->first(); 
 
  
  
  
$allwallets = \DB::table('wallet') ->where('wallet_id', '<>', '0')->orderBy('wallet_id', 'asc')->get(); 
 



foreach($allwallets as $allwallet ){
	
	
	
$countcurplans = \DB::table('wallet') 
->leftjoin('curplan', 'wallet.wallet_id', '=', 'curplan.curplan_idwallet')
 ->where([  
 ['curplan.curplan_id', '<>',  0],
 ['curplan.curplan_idplan', '=',  $id],
 ['wallet.wallet_id', '=',  $allwallet->wallet_id],])->orderBy('curplan_id', 'asc')->count(); 
	
	
	if($countcurplans=='0'){
		
DB::table('curplan')->insert([
    [  'curplan_idwallet' => $allwallet->wallet_id ,  'curplan_idplan' => $id        ]
]);  

	}
	
	
	
}


 
	
$wallets = \DB::table('wallet') 
->leftjoin('curplan', 'wallet.wallet_id', '=', 'curplan.curplan_idwallet')
 ->where([  
 ['curplan.curplan_id', '<>',  0],
 ['curplan.curplan_idplan', '=',  $id], ])->orderBy('curplan_id', 'asc')->get(); 
  
 return view('mng.editplan'  , [    'admins'=> $admins  ,  'wallets'=> $wallets    ]);  
 }}
 
 
 
 

	public function viewsplanseditpost($id , Request $request ){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){ 

$admins = \DB::table('plan')  
 ->where([  
 ['plan.plan_id', '<>',  0],
 ['plan.plan_id', '=',  $id],])->orderBy('plan_id', 'desc')->first(); 

 
$imageName=$admins->plan_img;
 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }
 
	 
$updatee = \DB::table('plan')->where('plan_id', '=', $id)->update([  'plan_name' => $request->name ,  'plan_usd' => $request->price  ,  'plan_img' => $imageName     ]); 


$admins = \DB::table('wallet')  
 ->where([  
 ['wallet.wallet_id', '<>',  0],])->orderBy('wallet_id', 'asc')->get();  
  
$i=0;  
foreach($admins as $admin) { 
$val = 'pricecur'.$admin->wallet_id;  
$value=$request->$val; 
 

$updatee = \DB::table('curplan')
 ->where([  
 ['curplan.curplan_idplan', '<>',  0],
 ['curplan.curplan_idplan', '=',  $id],
 ['curplan.curplan_idwallet', '=',  $admin->wallet_id ],])->update([  'curplan_price' =>  $value    ]); 


 
	
	$i++;	  }  
  


 
 $nametr = Session::flash('statust', 'ویرایش پلان باموفقیت انجام شد.');
 $nametrt = Session::flash('sessurl', 'viewsplans');

 return redirect('superadmin/viewsplans/edit/'.$id); 


 }}
 
 



 
public function viewsplansdelet($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'mngbuys');  
   
 
 $admins = \DB::table('plan')->where([
    ['plan.plan_id','=' , $id],  
])->delete(); 


 $admins = \DB::table('curplan')->where([
    ['curplan.curplan_idplan','=' , $id],  
])->delete(); 


 

 
 $nametr = Session::flash('statust', 'پلان با موفقیت از سیستم حذف شد  ');  
 $nametrt = Session::flash('sessurl', 'viewsplans');		
    return redirect('superadmin/viewsplans');  	
   
   
 }}
 
	
 
 
 
 

public function viewsrequstsiid($id,$role){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 
  
if($id=='reqall'){ 
 Session::set('nav', 'reqall');  $rbt='<>'; $id=10;
}

if($id=='waitforp'){ 
 Session::set('nav', 'reqforp');   $rbt='='; $id=0;
}

if($id=='waitfors'){ 
 Session::set('nav', 'reqfors'); $rbt='='; $id=1;  
}
if($id=='delv'){ 
 Session::set('nav', 'reqdelv'); $rbt='='; $id=2;  
}



$h = new SuperadminController();
$h->updatenotifalert();


 

if($role=='person'){
	
	 



$requests = \DB::table('regperson')  
->join('user', 'regperson.regp_iduser', '=', 'user.id')
 ->where([  
 ['regp_id', '<>',  0], 
 ['regp_flg', $rbt ,  $id], 
  ])->orderBy('regp_id', 'desc')->get(); 

return view('mng.viewsrequsts' ,[ 'requests' => $requests , 'id' => $id , 'role' => $role ]); 
}

if($role=='company'){
	
$requests = \DB::table('regcompany') 
->join('user', 'regcompany.regc_iduser', '=', 'user.id')
 ->where([  
 ['regc_id', '<>',  0], 
 ['regc_flg', $rbt ,  $id], 
  ])->orderBy('regc_id', 'desc')->get(); 

return view('mng.viewsrequstscompany' ,[ 'requests' => $requests , 'id' => $id , 'role' => $role ]); 
}

 }}
 
 
 

public function updateshowalert($id,$role){
	
	if($role=='person'){  
$updatee = \DB::table('alert')->where([ 
    ['alert.rnd', '=', $id],   
    ['alert.active', '=', 0],   
    ['alert.type', '=', 11],    ])
    ->update(['active' => 1   ]);
  }
	
	
	if($role=='company'){ 
$updatee = \DB::table('alert')->where([ 
    ['alert.rnd', '=', $id],   
    ['alert.active', '=', 0],   
    ['alert.type', '=', 12],    ])
    ->update(['active' => 1   ]); 
	}
	
	}
 
 

public function reqpersonid($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 
 Session::set('nav', 'regperson');
$requests = \DB::table('regperson') 
 ->where([  
 ['regp_id', '=',  $id],  
  ])->orderBy('regp_id', 'desc')->first(); 
  
  $role='person';
$h = new SuperadminController();
$h->updateshowalert($id,$role);

$h = new SuperadminController();
$h->updatenotifalert();




 return view('mng.obserreg'  , [  'requests' => $requests      ]); 
 }}
 
 
 

public function reqcompanyid($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 
 Session::set('nav', 'regcompany');
$requests = \DB::table('regcompany') 
 ->where([  
 ['regc_id', '=',  $id],  
  ])->orderBy('regc_id', 'desc')->first(); 
  
  $role='company';
$h = new SuperadminController();
$h->updateshowalert($id,$role);

$h = new SuperadminController();
$h->updatenotifalert();


 return view('mng.obserregcompany'  , [  'requests' => $requests      ]); 
 }}
 
 
 

public function reqpersonaccid(Request $request , $id , $stat, $role){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){   
   
    
	$regp_waitstat='0'; 
 if($stat=='1'){ $nametr = Session::flash('statust', 'درخواست باموفقیت تایید و اعلام هزینه شد   ');  }
 if($stat=='2'){ $nametr = Session::flash('statust', '  درخواست باموفقیت فعال شد  ');  }
 if($stat=='3'){ $nametr = Session::flash('statust', ' درخواست باموفقیت رد شد  '); }
 
 
if($role=='person'){
	
$updatee = \DB::table('regperson')->where('regp_id', '=', $id)  ->update([    'regp_flg' => $stat ,  'regp_price' => $request->price  ,  'regp_statdes' => $request->des  ,  'regp_pricedate' => date('Y-m-d H:i:s') ,  'regp_waitstat' => $regp_waitstat   ]); 
 return redirect('superadmin/reqperson/'.$id); 
}

if($role=='company'){
	
$updatee = \DB::table('regcompany')->where('regc_id', '=', $id)  ->update([    'regc_flg' => $stat  ,  'regc_price' => $request->price  ,  'regc_statdes' => $request->des ,  'regc_pricedate' => date('Y-m-d H:i:s') ,  'regc_waitstat' => $regp_waitstat       ]); 
 return redirect('superadmin/reqcompany/'.$id); 
}
 
 
 
 } }
		
		

 

public function addprod(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'addprod');  
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first(); 
$cats = \DB::table('cat') ->where('cat_id', '<>', '0')->orderBy('cat_id', 'desc')->get(); 
 return view('mng.addprod'  , [ 'mngindexs' => $mngindexs  ,  'cats' => $cats     ]); 
 }}
 
 
 
	public function addprodpost(  Request $request ){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){ 

$this->validate($request,[
    			'name' => 'required', 
    		],[
    			'name.required' => 'لطفا نام محصول را وارد نمایید',
    			
    		]);
    		
    		
    		 
 	

$myChars = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
  
$rnd = substr(str_shuffle($myChars),0,8);




$filename='';



DB::table('product')->insert([
    [  'pro_name' => $request->name ,  'pro_cat' => $request->catid ,  'pro_kh' => $request->short ,  'pro_des' => $request->des  ,  'pro_price' => $request->price  ,  'pro_active' => 1   ,  'pro_link' => $rnd , 'pro_createdatdate' =>  date('Y-m-d H:i:s')       ]
]);  


$admins = \DB::table('product') ->where('pro_id', '<>', '0')->orderBy('pro_id', 'desc')->first(); 

$id=$admins->pro_id;

    	

  if($request->image_uploader_multiple){
    $file = $request->image_uploader_multiple;
    if(is_array($file))
    { foreach($file as $part) { if($part){
            $filename = time().$part->getClientOriginalName(); 
            $part->move(public_path('images'), $filename);
             
DB::table('file')->insert([
 ['file_name' => $filename , 'file_prod' => $id ]
]);    
            }  }  } }


	 
$updatee = \DB::table('product')->where('pro_id', '=', $id)->update([ 'pro_img' => $filename   ]); 




  if($request->uploadfile){
    $file = $request->uploadfile;
    if(is_array($file))
    { foreach($file as $part) { if($part){
            $filename = time().$part->getClientOriginalName(); 
            $part->move(public_path('images'), $filename);
             
DB::table('file')->insert([
 ['file_name' => $filename , 'file_prod' => $id  , 'file_status' => 1 ]
]);    
            }  }  } }




    		 
 $nametr = Session::flash('statust', 'محصول جدید باموفقیت ثبت شد.');
 $nametrt = Session::flash('sessurl', 'viewsprods');

 return redirect('superadmin/viewsprods'); 
 }}
 
 

public function viewsprods(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'viewsprods');  
$admins = \DB::table('product') ->where('pro_id', '<>', '0')->orderBy('pro_id', 'desc')->get(); 
 return view('mng.viewsprods'  , [ 'admins' => $admins     ]); 
 }}
 
	
 

public function editprodid($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'viewsprods');  
$admin = \DB::table('product') ->where('pro_id', '=', $id)->orderBy('pro_id', 'desc')->first(); 
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();

$cats = \DB::table('cat') ->where('cat_id', '<>', '0')->orderBy('cat_id', 'desc')->get(); 


$files = \DB::table('file')  ->where([
    ['file_prod','=' , $id], 
    ['file_id','<>' , 0], 
    ['file_status','=' , 0],   
])->orderBy('file_id', 'desc')->get(); 


$fileuploads = \DB::table('file')  ->where([
    ['file_prod','=' , $id], 
    ['file_id','<>' , 0], 
    ['file_status','=' , 1],   
])->orderBy('file_id', 'desc')->get(); 





 return view('mng.editprod'  , [ 'admin' => $admin  ,  'mngindexs' => $mngindexs    ,  'cats' => $cats   , 'files'=> $files  , 'fileuploads'=> $fileuploads ]); 
 }}
 
 
 
 
 
 
 
 
	public function editprodidpost( $id , Request $request ){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){ 

$this->validate($request,[
    			'name' => 'required', 
    		],[
    			'name.required' => 'لطفا نام محصول را وارد نمایید',
    			
    		]);
    		
    		
   
$admin = \DB::table('product') ->where('pro_id', '=', $id)->orderBy('pro_id', 'desc')->first();  		 
 
  
    		 
    		 
$updatee = \DB::table('product')->where('pro_id', '=', $id)  ->update([ 'pro_name' => $request->name ,  'pro_cat' => $request->catid ,  'pro_kh' => $request->short ,  'pro_des' => $request->des  ,  'pro_price' => $request->price,  'pro_bis' => $request->ind_bis  ,  'pro_active' => 1  ]); 






  if($request->image_uploader_multiple){
    $file = $request->image_uploader_multiple;
    if(is_array($file))
    { foreach($file as $part) { if($part){
            $filename = time().$part->getClientOriginalName(); 
            $part->move(public_path('images'), $filename);
             
DB::table('file')->insert([
 ['file_name' => $filename , 'file_prod' => $id ]
]);    
            }  }  } }
            
            
            
            

  if($request->uploadfile){
    $file = $request->uploadfile;
    if(is_array($file))
    { foreach($file as $part) { if($part){
            $filename = time().$part->getClientOriginalName(); 
            $part->move(public_path('images'), $filename);
             
DB::table('file')->insert([
 ['file_name' => $filename , 'file_prod' => $id  , 'file_status' => 1 ]
]);    
            }  }  } }



 
    		 
    		 
 $nametr = Session::flash('statust', 'محصول باموفقیت ویرایش شد.');
 $nametrt = Session::flash('sessurl', 'viewsprods');

 return redirect('superadmin/viewsprods'); 
 }}
 
 
 
 
 
	
 	
	public function deletprodid( $id  ){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){  
  
 $admins = \DB::table('product')->where([
    ['pro_id','=' , $id], 
    ['pro_id','<>' , 0], 
])->delete(); 
 
 $nametr = Session::flash('statust', 'محصول با موفقیت حذف شد   ');  
 $nametrt = Session::flash('sessurl', 'viewsprods');			  	 
 return redirect('superadmin/viewsprods');  
 
}}
	
 	
	public function deletfileid( $id , $idfile){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){  
 

 $admins = \DB::table('file')->where([
    ['file_id','=' , $idfile], 
    ['file_id','<>' , 0], 
])->delete(); 
 
 $nametr = Session::flash('statust', 'فایل مربوطه باموفقیت حذف شد   ');  
 $nametrt = Session::flash('sessurl', 'viewsprods');			  	 
 return redirect('superadmin/viewsprods/edit/'.$id);  
 
}}


	public function accfileid( $id , $idfile){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){  
 

 $admins = \DB::table('file')->where([
    ['file_id','=' , $idfile], 
    ['file_id','<>' , 0], 
])->first(); 



$updatee = \DB::table('product')->where('pro_id', '=', $id)  ->update([    'pro_img' => $admins->file_name    ]); 

 

 
 $nametr = Session::flash('statust', 'تصویر اصلی محصول انتخاب شد   ');  
 $nametrt = Session::flash('sessurl', 'viewsprods');			  	 
 return redirect('superadmin/viewsprods/edit/'.$id);  
 
}}


	 	
	public function deletfile( $id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){  
 

 $admins = \DB::table('product')->where([
    ['product.pro_id','=' , $id], 
    ['product.pro_id','<>' , 0], 
])->delete(); 
 
 $nametr = Session::flash('statust', 'محصول باموفقیت حذف شد  ');  
 $nametrt = Session::flash('sessurl', 'viewsprods');			  	 
 return redirect('superadmin/viewsprods');  
 
}}
	
 
 
public function addpage($page){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'addpage');   

if($page=='qst'){
	
$qstcats = \DB::table('qstcat') ->orderBy('id', 'desc')->get();

 return view('mng.addqst'  , [   'page' => $page ,  'qstcats' => $qstcats    ]); 	
}

if($page!='qst'){
 return view('mng.addpage'  , [   'page' => $page    ]); 
}


 }}




 public function addpagepost( $page ,  Request $request ){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){ 

$this->validate($request,[
    			'name' => 'required', 
    		],[
    			'name.required' => 'لطفا عنوان صفحه را وارد نمایید',
    			
    		]);
    		
     

$imageName='';
 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }

if($page=='page'){
	
DB::table('page')->insert([
    [   'page_tit' => $request->name  ,  'page_kh' => $request->short ,  'page_des' => $request->des ,  'page_img' => $imageName  ,    'page_active' => 1 ,   'page_createdatdate' =>  date('Y-m-d H:i:s')       ]
]);   
 $nametr = Session::flash('statust', 'صفحه جدید باموفقیت ثبت شد.');
	
}
if($page=='article'){
	
DB::table('articles')->insert([
    [   'art_name' => $request->name  ,  'art_kh' => $request->short ,  'art_des' => $request->des ,  'art_img' => $imageName  ,    'art_active' => 1 ,   'art_createdatdate' =>  date('Y-m-d H:i:s')       ]
]);   
 $nametr = Session::flash('statust', 'مقاله شما باموفقیت ثبت شد.');
	
}
if($page=='blog'){
	
DB::table('page')->insert([
    [   'page_tit' => $request->name  ,  'page_kh' => $request->short ,  'page_des' => $request->des ,  'page_img' => $imageName  ,    'page_active' => 1 ,   'page_createdatdate' =>  date('Y-m-d H:i:s') ,    'page_flg' => 1       ]
]);   
 $nametr = Session::flash('statust', 'بلاگ جدید باموفقیت ثبت شد.');
	
}
if($page=='catfaq'){
	
DB::table('qstcat')->insert([
    [   'qstcat_name' => $request->name , 'qstcat_createdatdate' => date('Y-m-d H:i:s')  ]
]);   
 $nametr = Session::flash('statust', 'دسته بندی پرسش پاسخ باموفقیت ثبت شد.');
	
}


if($page=='qst'){ 
 DB::table('question')->insert([
    ['qst_pors' => $request->pors , 'qst_pas' => $request->pas  , 'qst_catid' => $request->name  ,   'qst_createdatdate' =>  date('Y-m-d H:i:s')     ]
]);   	  
$nametr = Session::flash('statust', 'پرسش و پاسخ جدید با موفقیت ثبت شد.'); 
    	 }	
 

 return redirect('superadmin/views/'.$page); 
 }}
 



public function viewspage($page){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'viewspage');  
$admins = \DB::table('pages') ->where('page_id', '<>', '0')->orderBy('page_id', 'desc')->get(); 
 return view('mng.viewspage'  , [ 'admins' => $admins     ]); 
 }}
 


 public function pageidpost($page, $id ,  Request $request ){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){ 


$updatee = \DB::table('pages')->where('page_id', '=', $id)  ->update([   'page_name' => $request->name    ,  'page_des' => $request->des      ]); 

  
    		 
 $nametr = Session::flash('statust', 'صفحه باموفقیت ویرایش شد.');
 $nametrt = Session::flash('sessurl', 'viewspage');

 return redirect('superadmin/viewspage'); 
 }}
 




	public function deletpageid($page,$id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){  
 


 


if($page=='page'){
	
 $admins = \DB::table('page')->where([
    ['page.page_flg','=' , 0], 
    ['page.id','=' , $id], 
])->delete();  
 $nametr = Session::flash('statust', 'صفحه سایت باموفقیت حذف شد.');
	
} elseif($page=='blog'){
	
 $admins = \DB::table('page')->where([
    ['page.page_flg','=' , 1], 
    ['page.id','=' , $id], 
])->delete();   
 $nametr = Session::flash('statust', 'بلاگ باموفقیت حذف شد.');
	
}elseif($page=='article'){
	
 $admins = \DB::table('articles')->where([
    ['articles.art_id','=' , $id], 
    ['articles.art_id','<>' , 0], 
])->delete();  
 $nametr = Session::flash('statust', 'مقاله باموفقیت حذف شد.');
	
}elseif($page=='catfaq'){
	
 $admins = \DB::table('qstcat')->where([
    ['qstcat.id','=' , $id], 
    ['qstcat.id','<>' , 0], 
])->delete();  
 $nametr = Session::flash('statust', 'دسته بندی باموفقیت حذف شد.');
	
}elseif($page=='qst'){
	
 $admins = \DB::table('question')->where([
    ['question.id','=' , $id], 
    ['question.id','<>' , 0], 
])->delete();  
 $nametr = Session::flash('statust', 'پرسش پاسخ با موفقیت حذف شد.');
	
}
    	 	
 

 return redirect('superadmin/views/'.$page); 




 
}   }


 
public function mngfinicalsstat($stat){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  

if($stat=='succ')
{
	$id=1;  Session::set('nav', 'buyssucc');
}
elseif($stat=='err')
{
	$id=0; Session::set('nav', 'buyserr');
}
 
  
$finicals = \DB::table('finicals') 
->Join('basket', 'finicals.finical_rnd', '=', 'basket.basket_rnd')
->Join('product', 'basket.basket_idprod', '=', 'product.pro_id')
->Join('cat', 'product.pro_cat', '=', 'cat.cat_id')
->Join('user', 'basket.basket_iduser', '=', 'user.id')->where([ 
    ['finical_payment', '=' , $id], 
])->orderBy('finical_createdatdate', 'desc')->get();


	Session::set('allsearchfinicals', $finicals); 
 
 
$cats = \DB::table('cat') ->where('cat_id', '<>', '0')->orderBy('cat_id', 'desc')->get(); 


 return view('mng.finicals'  , [ 'finicals' => $finicals ,  'cats' => $cats  ]); 
 }}
 
 

 
public function mngfinicalsstatpost($stat,Request $request){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  

if($stat=='succ')
{
	$id=1;  Session::set('nav', 'buyssucc');
}
elseif($stat=='err')
{
	$id=0; Session::set('nav', 'buyserr');
}
 
 
 
 
 
$username = $request->username;
$code = $request->code;
$cat = $request->cat;


if($username==null){ $rabeteusername='<>';  } else { $rabeteusername='like'; }
if($code==null){ $rabetecode='<>'; $code=0;  } else { $rabetecode='='; }
if($cat==null){ $rabetecat='<>';  $cat=0; } else { $rabetecat='='; }


 $username='%'.$username.'%'; 
 
 
 
 
  
$finicals = \DB::table('finicals') 
->Join('basket', 'finicals.finical_rnd', '=', 'basket.basket_rnd')
->Join('product', 'basket.basket_idprod', '=', 'product.pro_id')
->Join('cat', 'product.pro_cat', '=', 'cat.cat_id')
->Join('user', 'basket.basket_iduser', '=', 'user.id')->where([ 
    ['finicals.finical_payment', '=' , $id], 
    ['user.user_name', $rabeteusername , $username], 
    ['finicals.finical_rnd', $rabetecode , $code], 
    ['cat.cat_id', $rabetecat , $cat], 
])->orderBy('finical_createdatdate', 'desc')->get();
 
	Session::set('allsearchfinicals', $finicals); 
 
$cats = \DB::table('cat') ->where('cat_id', '<>', '0')->orderBy('cat_id', 'desc')->get(); 


 return view('mng.finicals'  , [ 'finicals' => $finicals ,  'cats' => $cats  ]); 
 }}
 
 
 
 
public function xls(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){ 



 


$developer = Session::get('allsearchfinicals');


header("Content-Type: application/xls");    
header("Content-Disposition: attachment; filename=filename.xls");  
header("Pragma: no-cache"); 
header("Expires: 0");

$i=1;
echo '<table border="1">';
//make the column headers what you want in whatever order you want
echo '                      <tr>
                        <th>ردیف</th>
                        <th>نام خریدار</th>  
                        <th>هزینه</th> 
                        <th>نام محصول</th> 
                        <th>تاریخ خرید</th> 
                        <th>شماره پیگیری</th> 
                        <th>وضعیت پرداخت</th> 
                      </tr>';
//loop the query data to the table in same order as the headers
foreach ($developer as $admin){
    echo "                      <tr>
 <td>".$i++."</td>
 <td>".$admin->user_name."</td>  
 <td>".$admin->finical_pay." ريال</td> 
 <td>".$admin->pro_name."</td>  
 <td>".jDate::forge($admin->finical_createdatdate)->format('Y/m/d ساعت H:i a')."</td> 
 <td>".$admin->finical_rnd."</td>  
                         
                        
                        
 <td> ";
  if($admin->finical_payment=='1'){
  	echo "پرداخت شده";
  } elseif($admin->finical_payment=='0'){
  	echo "منتظر پرداخت";
  }             
 
 echo "</td>  </tr>";
}
echo '</table>';


 }} 
 
 
public function mngfinicals(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'finicals');  
   


$finicals = \DB::table('finicals') 
->Join('basket', 'finicals.finical_rnd', '=', 'basket.basket_rnd')
->Join('product', 'basket.basket_idprod', '=', 'product.pro_id')
->Join('cat', 'product.pro_cat', '=', 'cat.cat_id')
->Join('user', 'basket.basket_iduser', '=', 'user.id')->where([ 
    ['finical_payment', '<>' , 2], 
])->orderBy('finical_createdatdate', 'desc')->get();
 
 
$cats = \DB::table('cat') ->where('cat_id', '<>', '0')->orderBy('cat_id', 'desc')->get(); 


 return view('mng.finicals'  , [ 'finicals' => $finicals ,  'cats' => $cats  ]); 
 }}
 
	
 
public function mngbuys(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'mngbuys');  
  
$baskets = \DB::table('basket') 
->leftJoin('product', 'basket.basket_idprod', '=', 'product.pro_id')
->Join('user', 'basket.basket_iduser', '=', 'user.id')->where([
    ['basket_id', '<>' , 0],
    ['basket_flg', '=' , 1], 
])->orderBy('basket_id', 'desc')->get();
 
 
 return view('mng.mngbuys'  , [ 'baskets' => $baskets  ]); 
 }}
 
	
 
 
 
public function mngbuysid($rnd){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 
  

$users = \DB::table('user')   ->where([ 
    ['id', '<>' , 0],  
])->orderBy('id', 'desc')->get();
 
 
 

$fileuploads = \DB::table('file')  ->where([ 
    ['file_id','<>' , 0], 
    ['file_status','=' , 1],   
])->orderBy('file_id', 'desc')->get(); 




$filepros = \DB::table('basket') 
->leftJoin('product', 'basket.basket_idprod', '=', 'product.pro_id')
->leftJoin('file', 'basket.basket_idprod', '=', 'file.file_prod')
->Join('user', 'basket.basket_iduser', '=', 'user.id')->where([
    ['basket_id', '<>' , 0],
    ['basket_flg', '=' , 1], 
    ['file_status', '=' , 1], 
    ['basket_rnd', '=' , $rnd], 
])->orderBy('basket_id', 'desc')->get();


if($filepros){  
 
 $updatee =  \DB::table('finicals')  
->Join('user', 'finicals.finical_iduser', '=', 'user.id')->where([ 
    ['finical_payment', '=' , 1], 
    ['finical_recv', '=' , 0], 
    ['finical_status', '=' , 0], 
    ['finical_rnd', '=' ,$rnd], 
])->update([ 'finical_des' => 'محصول به صورت مجازی و قابل دانلود می باشد' , 'finical_status' => '1'  , 'finical_recv' => '1'    , 'finical_datesend' => date('Y-m-d H:i:s')   , 'finical_daterecv' => date('Y-m-d H:i:s')     ]);
 

}


$baskets = \DB::table('basket') 
->leftJoin('product', 'basket.basket_idprod', '=', 'product.pro_id')
->Join('user', 'basket.basket_iduser', '=', 'user.id')->where([
    ['basket_id', '<>' , 0],
    ['basket_flg', '=' , 1], 
    ['basket_rnd', '=' , $rnd], 
])->orderBy('basket_id', 'desc')->get();




$finicals = \DB::table('finicals')  
->Join('user', 'finicals.finical_iduser', '=', 'user.id')->where([ 
    ['finical_payment', '<>' , 2], 
    ['finical_rnd', '=' ,$rnd], 
])->orderBy('finical_createdatdate', 'desc')->first();
 

 
 
 return view('mng.orderid'  , [ 'baskets' => $baskets ,  'finicals' => $finicals ,  'users' => $users  ,  'fileuploads' => $fileuploads  ,  'filepros' => $filepros  ]); 
 }}
 
	
	
	
	 
	
	
	
	
	
	
	
public function mngbuysidpost($rnd,Request $request){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'mngbuys');  
     
 $updatee =  \DB::table('finicals')  
->Join('user', 'finicals.finical_iduser', '=', 'user.id')->where([ 
    ['finical_payment', '=' , 1], 
    ['finical_recv', '=' , 0], 
    ['finical_status', '=' , 0], 
    ['finical_rnd', '=' ,$rnd], 
])->update([ 'finical_des' => $request->des , 'finical_status' => '1'      , 'finical_datesend' => date('Y-m-d H:i:s')       ]);
  
 $nametr = Session::flash('statust', 'ارسال محصول باموفقیت انجام شد');  
 $nametrt = Session::flash('sessurl', 'mngsettlements');			  	 
 return redirect('superadmin/mngbuys/'.$rnd);  
  
  
 }}
 
 
public function mngbaskets(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'mngbaskets');  
  
$baskets = \DB::table('basket') 
->leftJoin('product', 'basket.basket_idprod', '=', 'product.pro_id')
->Join('user', 'basket.basket_iduser', '=', 'user.id')->where([
    ['basket_id', '<>' , 0],
    ['basket_flg', '=' , 0], 
])->orderBy('basket_id', 'desc')->get();
 
 
 return view('mng.mngbuys'  , [ 'baskets' => $baskets  ]); 
 }}
 
	 
public function mngwallets(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'mngwallets');  
  

$admins = \DB::table('wallet')  
 ->where([  
 ['wallet.wallet_id', '<>',  0],])->orderBy('wallet_id', 'desc')->get();  
 return view('mng.mngwallets'  , [    'admins'=> $admins   ]);  
 }}
 
 
 
public function mngwalletsid($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'mngwallets');  
  

$admins = \DB::table('wallet')  
 ->where([  
 ['wallet.wallet_id', '<>',  0],
 ['wallet.wallet_id', '=',  $id],])->orderBy('wallet_id', 'desc')->first();  
 return view('mng.editwallet'  , [    'admins'=> $admins   ]);  
 }}
 
 
 

	public function mngwalletsidpost($id , Request $request ){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){ 

 	
$admins = \DB::table('wallet')  
 ->where([  
 ['wallet.wallet_id', '<>',  0],
 ['wallet.wallet_id', '=',  $id],])->orderBy('wallet_id', 'desc')->first();

$imageName=$admins->wallet_logo;
 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }
    
    		 
$updatee = \DB::table('wallet')->where('wallet_id', '=', $id)  ->update(['wallet_name' => $request->name , 'wallet_idsecret' => $request->secret  , 'wallet_logo' => $imageName  ]); 
 
 
  
$h = new SuperadminController();
$h->fungetbarcode($id,$request->secret);
 
 
 
 
 $nametr = Session::flash('statust', 'ویرایش کیف پول باموفقیت انجام شد.');
 $nametrt = Session::flash('sessurl', 'mngwallets');

 return redirect('superadmin/mngwallets'); 
 }}
 
 
 
	 
public function mngsettlements(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'mngsettlements');  
  

$admins = \DB::table('settlement')  
->Join('user', 'settlement.settlement_iduser', '=', 'user.id') 
 ->where([ ['settlement.settlement_iduser', '<>', 0], 
 ['settlement.settlement_id', '<>',  0],])->orderBy('settlement_id', 'desc')->get(); 
 
 
$wallets = \DB::table('wallet') 
->Join('user', 'wallet.wallet_iduser', '=', 'user.id') 
 ->where([ ['wallet.wallet_iduser', '<>',  0], 
 ['wallet.wallet_id', '<>',  0],])->orderBy('wallet_id', 'desc')->get();  
 
    
 return view('mng.mngsettlements'  , [    'admins'=> $admins , 'wallets'=>$wallets   ]);  
 }}
 
 
 
 
	 
public function mngsettlementsid($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'mngsettlements');  
  

$admin = \DB::table('settlement')  
->Join('user', 'settlement.settlement_iduser', '=', 'user.id') 
 ->where([ ['settlement.settlement_iduser', '<>', 0], 
 ['settlement.settlement_id', '=',  $id],])->orderBy('settlement_id', 'desc')->first(); 
 
 $iduser=$admin->settlement_iduser;
 
 
$wallets = \DB::table('wallet') 
->Join('user', 'wallet.wallet_iduser', '=', 'user.id') 
 ->where([ ['wallet.wallet_iduser', '<>',  0], 
 ['wallet.wallet_id', '<>',  0],
 ['wallet.wallet_iduser', '=',  $iduser],])->orderBy('wallet_id', 'desc')->get();  
 
    
 return view('mng.settlementsid'  , [    'admin'=> $admin , 'wallets'=>$wallets   ]);  
 }}
 
 

public function superadminticketupd(){
	
$tickread =  \DB::table('ticket')  ->where([
    ['tik_fromarou', '=', 4],
    ['tik_toarou', '=', 2],
    ['tik_tosh', '=', 0],
    ['tik_toread', '=', 0], 
    ['tik_walletid', '=', 0], ])
    ->orderBy('ticket.id', 'desc')->count();
	Session::set('tickreadstudentsup', $tickread);  
	
$tickread =  \DB::table('ticket')  ->where([
    ['tik_fromarou', '=', 4],
    ['tik_toarou', '=', 2],
    ['tik_tosh', '=', 0],
    ['tik_toread', '=', 0], 
    ['tik_walletid', '<>', 0], ])
    ->orderBy('ticket.id', 'desc')->count();
	Session::set('reqsup', $tickread);  
	
	 
	
	
$countreqdeposite = \DB::table('ticket')  
->join('wallet', 'ticket.tik_walletid', '=', 'wallet.wallet_id')
->join('reqdeposite', 'ticket.tik_idreqdep', '=', 'reqdeposite.reqdep_id')
 ->where([  
 ['ticket.id', '<>',  0], 
 ['reqdeposite.reqdep_flg', '=',  0], ])->orderBy('ticket.id', 'desc')->count(); 
 
 
	Session::set('reqwith', $countreqdeposite);  
	
	
    
    
    
    
	}
	
 
public function addqst(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'addqst');  
   
 $admins = 0;
 
 
 return view('mng.addqst'  , [ 'admins' => $admins       ]); 
 }}
 
 
 public function addqstpost(  Request $request){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
  
$h = new SuperadminController();
$h->validatesuperadmin();

  

DB::table('qsts')->insert([
    [   'qst_soa' => $request->soa  , 'qst_pas' => $request->pas   ,   'qst_date' =>  date('Y-m-d H:i:s')   ]
]);  
    		 
   	   
 $nametr = Session::flash('statust', 'ثبت سوال و پاسخ باموفقیت انجام شد  ');  		  	 
 return redirect('superadmin/mngqst');  
 
	 } }
			
 
public function mngcontact(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'mngcontact');  
   
 $admins = \DB::table('contact')  ->where([ 
    ['contact_id', '<>', 0], ])
    ->orderBy('contact_id', 'desc')->get(); 
 
 return view('mng.mngcontact'  , [ 'admins' => $admins       ]); 
 }}
 
 
 
 
 
public function viewalertnot(){ 
 
$admins  = \DB::table('alert')
->join('user', 'alert.iduser', '=', 'user.id')  ->where([
    ['user.id', '<>',  0], 
    ['alert.type', '<>',  15], 
    ['alert.show', '=',  0],  ])
    ->orderBy('alert_id', 'desc')->limit(5)->get(); 
    
    
$countalert  = \DB::table('alert')
->join('user', 'alert.iduser', '=', 'user.id')  ->where([
    ['user.id', '<>',  0], 
    ['alert.type', '<>',  15], 
    ['alert.show', '=',  0],  ])
    ->orderBy('alert_id', 'desc')->count(); 
 
 Session::set('countalert', $countalert);  
 Session::set('alertnotf', $admins);  
 
 }
	 

			
	public function viewsuserticketssup(){

if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
		 

$h = new SuperadminController();
$h->viewalertnot();

$h = new SuperadminController();
$h->updatenotifalert();



	Session::set('nav', 'viewsuserticketssup'); 
$admins = \DB::table('user') 
->join('ticket', 'user.id', '=', 'ticket.tik_fromid')
->where([
    ['tik_fromarou', '=', 4],
    ['tik_toarou', '=', 2],
    ['tik_tosh', '=', 1],])
    ->orderBy('ticket.tik_date', 'desc')->get();


    
    
return view('mng.viewsuserticketssup', ['admins' => $admins]);

 }}
 
 
 
 
 
 
 
 
 

	public function ticketsup($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
	Session::put('idimg', $id);
	Session::set('nav', 'viewsuserticketssup'); 
$tickets = \DB::table('user') 
->join('ticket', 'user.id', '=', 'ticket.tik_fromid')->where([
    ['ticket.id', '=', $id],
    ['tik_fromarou', '=', 4],
    ['tik_toarou', '=', 2],
    ['tik_tosh', '=', 1],])  ->orderBy('ticket.id', 'desc')->get();
$messages = \DB::table('message')->where('mes_ticket', '=', $id)  ->orderBy('id')->get();

$updatee = \DB::table('user') 
->join('ticket', 'user.id', '=', 'ticket.tik_fromid')->where([
    ['ticket.id', '=', $id],
    ['tik_fromarou', '=', 4],
    ['tik_toarou', '=', 2],
    ['tik_tosh', '=', 1],])  ->update(['tik_toread' => 1   ]); 
    
$tickread = DB::table('user') 
->join('ticket', 'user.id', '=', 'ticket.tik_fromid')->where([
    ['tik_fromarou', '=', 4],
    ['tik_toarou', '=', 2],
    ['tik_tosh', '=', 1],
    ['tik_toread', '=', 0],])
    ->orderBy('ticket.id', 'desc')->count();
	Session::set('tickreadstudentsup', $tickread);  
	


$typ='14';
$link=$id;
$req=0;
$h = new SuperadminController();
$h->showupdatealert($typ,$link,$req);


 
return view('mng.ticket', ['tickets' => $tickets], ['messages' => $messages]); 


}	  }
	

		
	public function ticketusersupPost($id  , Request $request ){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
$this->validate($request,[
    			'des' => 'required|min:2|max:666',
    		],[
    			'des.required' => 'لطفا پیام خود را وارد نمایید',
    			'des.min' => 'پیام شما نا معتبر است',
    			'des.max' => 'پیام شما نا معتبر است',
    			
    		]);
    
    DB::table('message')->insert([
    ['mes_ticket' => $id ,  'mes_des' => $request->des   , 'mes_createdatdate' =>  date('Y-m-d H:i:s') , 'mes_flg' =>  2    ]
]);

 $updatee = \DB::table('user') 
->join('ticket', 'user.id', '=', 'ticket.tik_fromid')->where([
    ['ticket.id', '=', $id],
    ['tik_fromarou', '=', 4],
    ['tik_toarou', '=', 2],
    ['tik_tosh', '=', 1],])  ->update(['tik_fromread' => 0 , 'tik_active' => 2  ,     'tik_date' =>  date('Y-m-d H:i:s')   ]); 
    
 
    
    
$tickets = \DB::table('ticket') 
->join('user', 'ticket.tik_fromid', '=', 'user.id')->where([
    ['ticket.id', '=', $id], ])  ->orderBy('ticket.id', 'desc')->first(); 


$iduser=$tickets->id;     
$typ='15';
$link=$id;
$req='0';
$h = new SuperadminController();
$h->alertsup($iduser,$typ,$link,$req);

$nametr = Session::flash('statust', 'پیام شما با موفقیت ارسال شد.');
$nametrt = Session::flash('sessurl', 'viewsuserticketssup/ticket/'.$id.'');
//return view('superadmin.success');

    	 	return  redirect('superadmin/viewsuserticketssup/ticket/'.$id.'');

} }
		


public function alertsup($iduser,$typ,$link,$req){ 


/* 
$typ==15  tiket sup  
*/

DB::table('alert')->insert([
    [ 'iduser' =>  $iduser , 'type' =>  $typ , 'show' =>  0  ,   'date' =>  date('Y-m-d H:i:s') , 'link' =>  $link, 'req' =>  $req ]
]);  
    	

}


public function showupdatealert($typ,$link,$req){ 
 

$updatee = \DB::table('alert')
->join('user', 'alert.iduser', '=', 'user.id')  ->where([
    ['alert.type', '=', $typ],
    ['alert.link', '=', $link],
    ['alert.req', '=', $req],
    ['alert.alert_id', '<>', 0], ])  ->update(['show' => 1   ]); 


$h = new SuperadminController();
$h->viewalertnot();

}
 
 
			
	public function viewsuserticketssupactive(){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
		
	Session::set('nav', 'viewsuserticketssupactive'); 
	
$admins = \DB::table('user') 
->join('ticket', 'user.id', '=', 'ticket.tik_fromid')
->where([
    ['tik_fromarou', '=', 4],
    ['tik_toarou', '=', 2],
    ['tik_active', '=', '1'],
    ['tik_tosh', '=', 1],])
    ->orderBy('ticket.tik_date', 'desc')->get();


$tickread = DB::table('user') 
->join('ticket', 'user.id', '=', 'ticket.tik_fromid')->where([
    ['tik_fromarou', '=', 4],
    ['tik_toarou', '=', 2],
    ['tik_tosh', '=', 1],
    ['tik_toread', '=', 0],])
    ->orderBy('ticket.id', 'desc')->count();
	Session::set('tickreadstudentsup', $tickread);   
    
    
return view('mng.viewsuserticketssup', ['admins' => $admins]);
}}



	public function deletticketusersup($id){

if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
	
 $updatee = \DB::table('user') 
->join('ticket', 'user.id', '=', 'ticket.tik_fromid')->where([
    ['ticket.id', '=', $id],
    ['tik_fromarou', '=', 4],
    ['tik_toarou', '=', 2],
    ['tik_tosh', '=', 1],])  ->update(['tik_tosh' => 0   ]); 

$nametr = Session::flash('statust', 'تیکت شما با موفقیت حذف شد.');
$nametrt = Session::flash('sessurl', 'viewsuserticketssup');

    	 	return  redirect('superadmin/viewsuserticketssup');

 }	 }
	
 
public function addperson(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'addperson');  
   

$myusers = \DB::table('user') ->where('id', '<>', '1')->orderBy('id', 'desc')->get();
$law = \DB::table('law') ->where('law_id', '=', '1')->orderBy('law_id', 'desc')->first();


$provinces = \DB::table('province')  ->where([  
 ['id', '<>',  0],  
 ['flg', '=',  1],  
  ])->orderBy('id', 'asc')->get();
$citys = \DB::table('city') ->where('flg', '=', '1')->orderBy('flg', 'desc')->orderBy('id', 'asc')->get();


 $txtdes = \DB::table('txtdes')  ->where([ 
    ['txt_id', '<>', 0], 
    ['txt_id', '=', 1], ])
    ->orderBy('txt_id', 'asc')->first();
    
 $txtdesupload = \DB::table('txtdes')  ->where([ 
    ['txt_id', '<>', 0], 
    ['txt_id', '=', 5], ])
    ->orderBy('txt_id', 'asc')->first();

 
 return view('mng.addperson'  , [     'law' => $law   ,  'provinces' => $provinces  ,  'citys' => $citys   ,  'txtdes' => $txtdes  ,  'txtdesupload' => $txtdesupload   ,  'myusers' => $myusers         ]); 
 }}
 
 
 
public function editreqpersonid($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'editreqpersonid');  
 
 $admins = 0;   
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();
	Session::set('mngindexs', $mngindexs);   
$law = \DB::table('law') ->where('law_id', '=', '1')->orderBy('law_id', 'desc')->first(); 
$provinces = \DB::table('province')  ->where([  
 ['id', '<>',  0],  
 ['flg', '=',  1],  
  ])->orderBy('id', 'asc')->get();
$citys = \DB::table('city') ->where('flg', '=', '1')->orderBy('flg', 'desc')->orderBy('id', 'asc')->get();
$requests = \DB::table('regperson') 
 ->where([  
 ['regp_id', '=',  $id],  
  ])->orderBy('regp_id', 'desc')->first();   
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();
	Session::set('mngindexs', $mngindexs); 
	
	
 $txtdes = \DB::table('txtdes')  ->where([ 
    ['txt_id', '<>', 0], 
    ['txt_id', '=', 1], ])
    ->orderBy('txt_id', 'asc')->first();
    
    
 $txtdesupload = \DB::table('txtdes')  ->where([ 
    ['txt_id', '<>', 0], 
    ['txt_id', '=', 5], ])
    ->orderBy('txt_id', 'asc')->first();

    
$myusers = \DB::table('user') ->where('id', '<>', '1')->orderBy('id', 'desc')->get();
    
 return view('mng.editperson'  , [  'requests' => $requests , 'admins' => $admins ,  'law' => $law   ,  'provinces' => $provinces  ,  'citys' => $citys  ,  'txtdes' => $txtdes  ,  'txtdesupload' => $txtdesupload  ,  'myusers' => $myusers       ]);  
 
 }}
 
 
 
 
 
public function editreqpersoniduserpost( $id , Request $request){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){   
 
 
 
$rnd=rand(1, 99999999);  



  $value=$request->codmel;
  
  $stt='0';

    if(!preg_match('/^[0-9]{10}$/',$value)) {
      $stt='0';
    }
 
    for($i=0;$i<10;$i++)
        if(preg_match('/^'.$i.'{10}$/',$value)) {
            $stt='0';
        }
 
    for($i=0,$sum=0;$i<9;$i++)
        $sum+=((10-$i)*intval(substr($value, $i,1)));
        $ret=$sum%11;
        $parity=intval(substr($value, 9,1));
        if(($ret<2 && $ret==$parity) || ($ret>=2 && $ret==11-$parity)) {
            $stt='1';
        }



if($stt=='0'){  

 $nametr = Session::flash('statust', 'کدملی متاسفانه معتبر نمی باشد');  
 $nametr = Session::flash('flgstatus', 'error');  
     
    return redirect('/superadmin/editreqperson/edit/'.$id); 	
}
 
 
 $requests = \DB::table('regperson') 
 ->where([  
 ['regp_id', '=',  $id],  
  ])->orderBy('regp_id', 'desc')->first(); 
 
$imageName=$requests->regp_file;

 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }




$updatee = \DB::table('regperson')->where([  
 ['regp_id', '<>',  0],   
 ['regp_id', '=',  $id],  
  ])->update([   'regp_name' => $request->name , 'regp_family' => $request->family , 'regp_father' => $request->father  ,'regp_nameeng' => $request->nameeng ,'regp_mobile' => $request->mobile , 'regp_tell' => $request->tell , 'regp_email' => $request->email , 'regp_birthday' => $request->birthday ,'regp_codmel' => $request->codmel , 'regp_shnum' => $request->shnum , 'regp_sodor' => $request->sodor  ,'regp_country' => $request->country ,'regp_ost' => $request->ost , 'regp_city' => $request->city , 'regp_codp' => $request->codp , 'regp_adres' => $request->adres  , 'regp_des' => $request->des  , 'regp_tellreq' => $request->tellreq  , 'regp_file' => $imageName ,   'regp_pernumber' =>   $request->pernumber  ,   'regp_iduser' =>   $request->userid    ]); 
  
  
  
   

 $nametr = Session::flash('statust', 'اطلاعات ثبت شده شما با موفقیت ویرایش شد');  
 $nametr = Session::flash('flgstatus', 'success'); 
 return redirect('/superadmin/reqperson/'.$id); 	

 
 
 
 }}
 
 
 
 
 
 
 
 
 
public function addpersonuserpost(Request $request){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  

$rnd=rand(1, 99999999);  



  $value=$request->codmel;
  
  $stt='0';

    if(!preg_match('/^[0-9]{10}$/',$value)) {
      $stt='0';
    }
 
    for($i=0;$i<10;$i++)
        if(preg_match('/^'.$i.'{10}$/',$value)) {
            $stt='0';
        }
 
    for($i=0,$sum=0;$i<9;$i++)
        $sum+=((10-$i)*intval(substr($value, $i,1)));
        $ret=$sum%11;
        $parity=intval(substr($value, 9,1));
        if(($ret<2 && $ret==$parity) || ($ret>=2 && $ret==11-$parity)) {
            $stt='1';
        }



if($stt=='0'){  

 $nametr = Session::flash('statust', 'کدملی متاسفانه معتبر نمی باشد');  
 $nametr = Session::flash('flgstatus', 'error');  
     
    return redirect('/superadmin/addperson'); 	
}
 
 
 
 
$imageName='';
 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }

		 
DB::table('regperson')->insert([
    [ 'regp_name' => $request->name , 'regp_family' => $request->family , 'regp_father' => $request->father  ,'regp_nameeng' => $request->nameeng ,'regp_mobile' => $request->mobile , 'regp_tell' => $request->tell , 'regp_email' => $request->email , 'regp_birthday' => $request->birthday ,'regp_codmel' => $request->codmel , 'regp_shnum' => $request->shnum , 'regp_sodor' => $request->sodor  ,'regp_country' => $request->country ,'regp_ost' => $request->ost , 'regp_city' => $request->city , 'regp_codp' => $request->codp , 'regp_adres' => $request->adres  , 'regp_des' => $request->des  , 'regp_tellreq' => $request->tellreq  , 'regp_file' => $imageName ,   'regp_createdatdate' =>  date('Y-m-d H:i:s') ,   'regp_iduser' =>   $request->userid,   'regp_pernumber' =>   $request->pernumber         ]
]);


 $nametr = Session::flash('statust', 'پیش ثبت نام شما باموفقیت انجام شد');  
 $nametr = Session::flash('flgstatus', 'success'); 
	
    return redirect('/superadmin/viewsrequsts/reqall/person'); 	






}}
 
 
public function fechcityid($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  

$h = new SuperadminController();
$h->provstflg($id);

$citys = \DB::table('city') ->where('province', '=', $id)->orderBy('flg', 'desc')->orderBy('id', 'asc')->get();

echo '

<div class="col-md-12 grid-margin stretch-card" >
<div class="card">
<div class="card-body">
<div class="card-header card-header-border-bottom">
<h4>  مشاهده شهرها </h4>
</div>

                <div class="table-responsive">';
                
 if($citys){
 	
 

echo '
                  <table id="dataTableExample" class="table">
                    <thead>
                      <tr>
     				    <th>ردیف</th>  
                        <th>نام شهر </th>
                        <th>کد پیش شماره</th>  
                        <th>وضعیت</th>  
                      </tr>
                    </thead>
                    <tbody>';
                    
  $i=1;       
 foreach($citys as $city){
  

 echo '<tr>

<td> '.$i++.' </td>  

<td>   '.$city->name.' </td>
<td>   '.$city->pernumber.' </td>  
                        
  

 
  

 <td>'; 

 if($city->flg=='1'){
 	
 
echo '       
<button class="badge badge-success" type="button"   data-toggle="modal"  data-target="#exampleModal-'.$city->id.'"><i data-feather="check-square"></i> &nbsp; فعال </button>'; 
} else{

echo '
<button class="badge badge-warning" type="button"   data-toggle="modal"  data-target="#exampleModal-'.$city->id.'"><i data-feather="x-square"></i> &nbsp; غیرفعال </button>'; 
	
} 
    
 
echo '
<div class="modal fade" id="exampleModal-'.$city->id.'" tabindex="-1" role="dialog"
                    aria-labelledby="exampleModalLabel-'.$city->id.'" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
 <h5 class="modal-title" id="exampleModalLabel-'.$city->id.'"> '.$city->name.'</h5>'; 
 
 if($city->flg=='1'){
 	
  
 
 echo '     
<span class="badge badge-success"     ><i data-feather="check-square"></i> &nbsp; فعال </span>'; 
} else {
	

echo '
<span class="badge badge-warning"     ><i data-feather="x-square"></i> &nbsp; غیرفعال </span>'; 
}
 
                       echo ' </div>
                        <div class="modal-body">
                          

<form method="post" action="editcity/'.$city->id.'">


<div class="form-group">
 <label>پیش شماره</label>
<input size="1" type="text" name="pernumber" id="form-field-name" class="form-control" placeholder="پیش شماره"   value="'.$city->pernumber.'" aria-required="true"> 
</div>

 <input type="hidden" name="_token" value="'. csrf_token().'">
                     
<div class="form-group">
<label for="exampleInputUsername1"> </label> 
<button type="submit" class="btn btn-success btn-block"> ویرایش  </button> 
</div>	
	
</form>

                          
                          
                        </div>
                        <div class="modal-footer">';



 if($city->flg=='1'){
 	
echo ' 
<a href="city/stat/'.$city->id.'/0"  type="button" class="btn btn-primary">    غیرفعال کردن  </a>'; 
} else{
	
  
echo '
<a href="city/stat/'.$city->id.'/1"  type="button" class="btn btn-primary">   فعال کردن   </a> ';
}


echo ' <button type="button" class="btn btn-light" data-dismiss="modal">لغو</button>
                        </div>
                      </div>
                    </div>
                    </div>
							
 
 
 
 
 </td>
                   
 

 
						</tr>';
						 
}


 echo '
                    </tbody>
                  </table>';

}

               echo ' </div>




</div> 
</div> 
</div> 
     

';

}}



public function provflg($id){
	
$citys = \DB::table('city') ->where('id', '=', $id)->orderBy('flg', 'desc')->first();
 $prov=$citys->province;
	
$countcitys = \DB::table('city') ->where([  
 ['id', '=',  $id],  
 ['flg', '=',  '1'],  
  ])->orderBy('flg', 'desc')->count();
  
  if($countcitys!='0'){ 
$updatee = \DB::table('province') ->where([  
 ['id', '=',  $prov],  
  ])->update([ 'flg' => 1     ]); 
  }else{
  	
$updatee = \DB::table('province') ->where([  
 ['id', '=',  $prov],  
  ])->update([ 'flg' => 0     ]); 
  }
	}
	
	
	
public function provstflg($prov){
	
$citys = \DB::table('city') ->where('province', '=', $prov)->orderBy('flg', 'desc')->first();
 $prov=$citys->province;
	
$countcitys = \DB::table('city') ->where([  
 ['province', '=',  $prov],  
 ['flg', '=',  '1'],  
  ])->orderBy('flg', 'desc')->count();
  
  if($countcitys!='0'){ 
$updatee = \DB::table('province') ->where([  
 ['id', '=',  $prov],  
  ])->update([ 'flg' => 1     ]); 
  }else{
  	
$updatee = \DB::table('province') ->where([  
 ['id', '=',  $prov],  
  ])->update([ 'flg' => 0     ]); 
  }
	}

 
public function citystatflg($id , $flg){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  


 
$citys = \DB::table('city') ->where('id', '=', $id)->orderBy('flg', 'desc')->first();


$provinces = \DB::table('province') ->where('id', '<>', '0')->orderBy('id', 'asc')->get();
 
 $prov=$citys->province;
 
 $nametr = Session::flash('province', $citys->province); 
 
$updatee = \DB::table('city') ->where([  
 ['id', '=',  $id],  
  ])->update([ 'flg' => $flg     ]); 
  
  
  

$h = new SuperadminController();
$h->provflg($id);
  
   if($flg=='1'){
   	$m='فعال';
   }else{
   	$m='غیر فعال';
   }

 $nametr = Session::flash('statust', ' شهر مورد نظر با موفقیت  '.$m.' شد ');  
 $nametr = Session::flash('flgstatus', 'success'); 
 return redirect('/superadmin/mngcity'); 

}}






public function editcitypost( $id , Request $request){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){   
 
 
$citys = \DB::table('city') ->where('id', '=', $id)->orderBy('flg', 'desc')->first();
 
 $nametr = Session::flash('province', $citys->province); 

$updatee = \DB::table('city') ->where([  
 ['id', '=',  $id],  
  ])->update([   'pernumber' => $request->pernumber , 'flg' => '1'     ]); 
  
   
$h = new SuperadminController();
$h->provflg($id);

 $nametr = Session::flash('statust', 'اطلاعات تلفن شهر باموفقیت ویرایش شد ');  
 $nametr = Session::flash('flgstatus', 'success'); 
 return redirect('/superadmin/mngcity'); 
 
 
 
 }}
 
 
public function mngcity(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'mngcity');  
    
$provinces = \DB::table('province') ->where('id', '<>', '0')->orderBy('id', 'asc')->get();
$citys = \DB::table('city') ->where('province', '=', Session::get('province'))->orderBy('flg', 'desc')->orderBy('id', 'asc')->get();

  
 return view('mng.mngcity'  , [   'provinces' => $provinces  ,  'citys' => $citys      ]); 
 }}
 
 
 
public function finicrole($role){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'finicrole');  
    
    
    if($role=='person'){ 
$requests = \DB::table('order') 
->join('regperson', 'order.order_idprod', '=', 'regperson.regp_id')
 ->where([   
    ['regp_id','<>' , 0 ],  
    ['order_role','=' , $role ],  
]) ->orderBy('regp_id', 'desc')->get();

 return view('mng.viewsrequsts'  , [   'requests' => $requests   ]); 
	}


    if($role=='company'){ 
$requests = \DB::table('order') 
->join('regcompany', 'order.order_idprod', '=', 'regcompany.regc_id')
 ->where([   
    ['regc_id','<>' , 0 ],  
    ['order_role','=' , $role ],  
]) ->orderBy('regc_id', 'desc')->get();

 return view('mng.viewsrequstscompany'  , [   'requests' => $requests   ]); 
	}


  
 }}
 
 
 
 
public function addcompanysup(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'addcompany');  
   

$myusers = \DB::table('user') ->where('id', '<>', '1')->orderBy('id', 'desc')->get();
$law = \DB::table('law') ->where('law_id', '=', '1')->orderBy('law_id', 'desc')->first();


$provinces = \DB::table('province')  ->where([  
 ['id', '<>',  0],  
 ['flg', '=',  1],  
  ])->orderBy('id', 'asc')->get();
$citys = \DB::table('city') ->where('flg', '=', '1')->orderBy('flg', 'desc')->orderBy('id', 'asc')->get();


 $txtdes = \DB::table('txtdes')  ->where([ 
    ['txt_id', '<>', 0], 
    ['txt_id', '=', 1], ])
    ->orderBy('txt_id', 'asc')->first();
    
 $txtdesupload = \DB::table('txtdes')  ->where([ 
    ['txt_id', '<>', 0], 
    ['txt_id', '=', 6], ])
    ->orderBy('txt_id', 'asc')->first();

 
 return view('mng.addcompany'  , [     'law' => $law   ,  'provinces' => $provinces  ,  'citys' => $citys   ,  'txtdes' => $txtdes  ,  'txtdesupload' => $txtdesupload   ,  'myusers' => $myusers         ]); 
 }}
 
 
public function addcompanysuppost(Request $request){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  


$rnd=rand(1, 99999999);  



  $value=$request->codmel;
  
  $stt='0';

    if(!preg_match('/^[0-9]{10}$/',$value)) {
      $stt='0';
    }
 
    for($i=0;$i<10;$i++)
        if(preg_match('/^'.$i.'{10}$/',$value)) {
            $stt='0';
        }
 
    for($i=0,$sum=0;$i<9;$i++)
        $sum+=((10-$i)*intval(substr($value, $i,1)));
        $ret=$sum%11;
        $parity=intval(substr($value, 9,1));
        if(($ret<2 && $ret==$parity) || ($ret>=2 && $ret==11-$parity)) {
            $stt='1';
        }



if($stt=='0'){  

 $nametr = Session::flash('statust', 'کدملی متاسفانه معتبر نمی باشد');  
 $nametr = Session::flash('flgstatus', 'error');  
     
    return redirect('/superadmin/addcompany'); 	
}
 
 
 
 
$imageName='';
 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }

		 
DB::table('regcompany')->insert([
    [ 'regc_namecompany' => $request->namecompany , 'regc_namecompanyeng' => $request->namecompanyeng , 'regc_numsabt' => $request->numsabt  ,'regc_datesabt' => $request->datesabt ,'regc_locsabt' => $request->locsabt , 'regc_codfin' => $request->codfin , 'regc_shemel' => $request->shemel , 'regc_tell' => $request->tell ,'regc_email' => $request->email , 'regc_country' => $request->country , 'regc_ost' => $request->ost  ,'regc_city' => $request->city , 'regc_codp' => $request->codp , 'regc_adres' => $request->adres  , 'regc_des' => $request->des  , 'regc_tellreq' => $request->tellreq   , 'regc_namemodir' => $request->namemodir ,'regc_desactive' => $request->desactive , 'regc_namerabet' => $request->namerabet , 'regc_familyrabet' => $request->familyrabet  ,'regc_namerabeteng' => $request->namerabeteng , 'regc_fatherrabet' => $request->fatherrabet , 'regc_semat' => $request->semat  , 'regc_mobile' => $request->mobile  , 'regc_birthday' => $request->birthday  , 'regc_countryrabet' => $request->countryrabet ,'regc_codmel' => $request->codmel , 'regc_shosherabet' => $request->shosherabet   , 'regc_file' => $imageName ,   'regc_createdatdate' =>  date('Y-m-d H:i:s')  ,   'regc_iduser' =>   Session::get('iduser')  ,   'regc_pernumber' =>   $request->pernumber ,   'regc_iduser' =>   $request->userid      ]
]);


 $nametr = Session::flash('statust', 'پیش ثبت نام شما باموفقیت انجام شد');  
 $nametr = Session::flash('flgstatus', 'success'); 
	
    return redirect('/superadmin/viewsrequsts/reqall/company'); 	




 }}
 
 
 
 
 
public function editcompanyid($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'editcompanyid');  
 $mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();
	Session::set('mngindexs', $mngindexs);   
$law = \DB::table('law') ->where('law_id', '=', '1')->orderBy('law_id', 'desc')->first(); 
$provinces = \DB::table('province')  ->where([  
 ['id', '<>',  0],  
 ['flg', '=',  1],  
  ])->orderBy('id', 'asc')->get();
$citys = \DB::table('city') ->where('flg', '=', '1')->orderBy('flg', 'desc')->orderBy('id', 'asc')->get(); 
$requests = \DB::table('regcompany') 
 ->where([  
 ['regc_id', '=',  $id],   
  ])->orderBy('regc_id', 'desc')->first();   
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();
	Session::set('mngindexs', $mngindexs); 
	
 $txtdes = \DB::table('txtdes')  ->where([ 
    ['txt_id', '<>', 0], 
    ['txt_id', '=', 2], ])
    ->orderBy('txt_id', 'asc')->first();
    
    
    $admins=0;
    
 $txtdesupload = \DB::table('txtdes')  ->where([ 
    ['txt_id', '<>', 0], 
    ['txt_id', '=', 6], ])
    ->orderBy('txt_id', 'asc')->first();
    
$myusers = \DB::table('user') ->where('id', '<>', '1')->orderBy('id', 'desc')->get();
    
 return view('mng.editcompany'  , [  'requests' => $requests , 'admins' => $admins ,  'law' => $law   ,  'provinces' => $provinces  ,  'citys' => $citys    ,  'txtdes' => $txtdes  ,  'txtdesupload' => $txtdesupload     ,  'myusers' => $myusers     ]);  
 
 
 }}
 
 
 
 
public function editcompanyidpost( $id , Request $request){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){   
 
 
 
$rnd=rand(1, 99999999);  



  $value=$request->codmel;
  
  $stt='0';

    if(!preg_match('/^[0-9]{10}$/',$value)) {
      $stt='0';
    }
 
    for($i=0;$i<10;$i++)
        if(preg_match('/^'.$i.'{10}$/',$value)) {
            $stt='0';
        }
 
    for($i=0,$sum=0;$i<9;$i++)
        $sum+=((10-$i)*intval(substr($value, $i,1)));
        $ret=$sum%11;
        $parity=intval(substr($value, 9,1));
        if(($ret<2 && $ret==$parity) || ($ret>=2 && $ret==11-$parity)) {
            $stt='1';
        }



if($stt=='0'){  

 $nametr = Session::flash('statust', 'کدملی متاسفانه معتبر نمی باشد');  
 $nametr = Session::flash('flgstatus', 'error');  
     
    return redirect('/superadmin/editcompany/'.$id); 	
}
 
 
$requests = \DB::table('regcompany') 
 ->where([  
 ['regc_id', '=',  $id],   
  ])->orderBy('regc_id', 'desc')->first();
 
$imageName=$requests->regc_file;

 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }




$updatee = \DB::table('regcompany') ->where([  
 ['regc_id', '=',  $id],  
  ])->update([   'regc_namecompany' => $request->namecompany , 'regc_namecompanyeng' => $request->namecompanyeng , 'regc_numsabt' => $request->numsabt  ,'regc_datesabt' => $request->datesabt ,'regc_locsabt' => $request->locsabt , 'regc_codfin' => $request->codfin , 'regc_shemel' => $request->shemel , 'regc_tell' => $request->tell ,'regc_email' => $request->email , 'regc_country' => $request->country , 'regc_ost' => $request->ost  ,'regc_city' => $request->city , 'regc_codp' => $request->codp , 'regc_adres' => $request->adres  , 'regc_des' => $request->des  , 'regc_tellreq' => $request->tellreq   , 'regc_namemodir' => $request->namemodir ,'regc_desactive' => $request->desactive , 'regc_namerabet' => $request->namerabet , 'regc_familyrabet' => $request->familyrabet  ,'regc_namerabeteng' => $request->namerabeteng , 'regc_fatherrabet' => $request->fatherrabet , 'regc_semat' => $request->semat  , 'regc_mobile' => $request->mobile  , 'regc_birthday' => $request->birthday  , 'regc_countryrabet' => $request->countryrabet ,'regc_codmel' => $request->codmel , 'regc_shosherabet' => $request->shosherabet   , 'regc_file' => $imageName ,   'regc_pernumber' =>   $request->pernumber  ,   'regc_iduser' =>   $request->userid     ]); 
  
   

 $nametr = Session::flash('statust', 'اطلاعات ثبت شده شما با موفقیت ویرایش شد');  
 $nametr = Session::flash('flgstatus', 'success'); 
 return redirect('/superadmin/reqcompany/'.$id); 	


 
 }}
 
 
 	public function closeticketusersup($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
	
 $updatee = \DB::table('user') 
->join('ticket', 'user.id', '=', 'ticket.tik_fromid')->where([
    ['ticket.id', '=', $id],
    ['tik_fromarou', '=', 4],
    ['tik_toarou', '=', 2],
    ['tik_tosh', '=', 1],])  ->update(['tik_active' => 0   ]); 

$nametr = Session::flash('statust', 'تیکت با موفقیت بسته شد.');
$nametrt = Session::flash('sessurl', 'viewsuserticketssup');

    	 	return  redirect('superadmin/viewsuserticketssup');	

 }	 }

 
public function obsercontid($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'mngcontact');  
   
 $admin = \DB::table('contact')  ->where([ 
    ['contact_id', '<>', 0], 
    ['contact_id', '=', $id], ])
    ->orderBy('contact_id', 'desc')->first(); 
 
 return view('mng.obsercont'  , [ 'admin' => $admin       ]); 
 }}
 
 
 
public function mngspotlite(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'mngspotlite');  
   
 $admins = \DB::table('spotlite')  ->where([ 
    ['spotlite_id', '<>', 0], ])
    ->orderBy('spotlite_id', 'asc')->get(); 
 
 return view('mng.mngspotlite'  , [ 'admins' => $admins       ]); 
 }}
 
 
 
public function comid($stat){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', $stat);  
   
 $admins = \DB::table('comid')  ->where([ 
    ['comid_id', '<>', 0], 
    ['comid_stat', '=', $stat], ])
    ->orderBy('comid_id', 'asc')->get(); 
    
 $fonts = \DB::table('font')  ->where([ 
    ['font_id', '<>', 0],   ])
    ->orderBy('font_id', 'asc')->get(); 
    
    
 
 return view('mng.comid'  , [ 'admins' => $admins ,  'stat' => $stat   ,  'fonts' => $fonts      ]); 
 }}
 
 
public function editcomid($stat,$id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', $stat);  
   
 $admins = \DB::table('comid')  ->where([ 
    ['comid_id', '<>', 0], 
    ['comid_id', '=', $id], 
    ['comid_stat', '=', $stat], ])
    ->orderBy('comid_id', 'asc')->first(); 
    
    
 $fonts = \DB::table('font')  ->where([ 
    ['font_id', '<>', 0],   ])
    ->orderBy('font_id', 'asc')->get(); 
    
    
 
 return view('mng.editcomid'  , [ 'admins' => $admins ,  'stat' => $stat  ,  'fonts' => $fonts       ]); 
 }}
 
 
  

 public function addcomidpost( $stat  ,  Request $request){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
   
    
    
   $imageName='';
 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }
    
 
 if($stat=='first'){
 	
    DB::table('comid')->insert([
    ['comid_stat' => $stat ,    'comid_tit' => $request->tit  , 'comid_des' => $request->des   , 'comid_btn' => $request->btn   , 'comid_icon' => $request->icon  , 'comid_link' => $request->link      ]
]);
 }   
 
 if($stat=='sec'){
 	
    DB::table('comid')->insert([
    ['comid_stat' => $stat ,    'comid_tit' => $request->tit    , 'comid_img' => $imageName     ]
]);
 }   
 
 if($stat=='thi'){
 	
    DB::table('comid')->insert([
    ['comid_stat' => $stat ,    'comid_tit' => $request->tit  , 'comid_des' => $request->des    , 'comid_icon' => $request->icon       ]
]);
 }   
 
  
 
 if($stat=='first'){  $mees='امکانات اول';  }
 if($stat=='sec'){ $mees='امکانات دوم';  }
 if($stat=='thi'){ $mees='کامنت مشتری';  }
     
   	   
 $nametr = Session::flash('statust', 'ثبت '.$mees.' با موفقیت انجام شد  ');  		  	 

		  	 
 return redirect('superadmin/comid/'.$stat);  
 
	 } }
			
			
			
			
 public function editcomidpost( $stat , $id ,  Request $request){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
   
   
 $admins = \DB::table('comid')  ->where([ 
    ['comid_id', '<>', 0], 
    ['comid_id', '=', $id], 
    ['comid_stat', '=', $stat], ])
    ->orderBy('comid_id', 'asc')->first(); 
    
   $imageName='';

$imageName=$admins->comid_img;
 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }
    
    
    
 	$updatee =  \DB::table('comid')   
 ->where([ 
    ['comid_id', '<>', 0], 
    ['comid_id', '=', $id], 
    ['comid_stat', '=', $stat], ])
    -> update( [   'comid_tit' => $request->tit  , 'comid_des' => $request->des   , 'comid_btn' => $request->btn   , 'comid_icon' => $request->icon  , 'comid_link' => $request->link   , 'comid_img' => $imageName     ]);
  
   	   
 if($stat=='first'){  $mees='امکانات اول';  }
 if($stat=='sec'){ $mees='امکانات دوم';  }
 if($stat=='thi'){ $mees='کامنت مشتری';  }
     
   	   
 $nametr = Session::flash('statust', 'ویرایش '.$mees.' با موفقیت انجام شد  ');  	
 
 
  		  	 
 return redirect('superadmin/comid/'.$stat.'/edit/'.$id);  
 
	 } }
			
 
 
 
public function deletcomid($stat,$id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', $stat);  
   
 $admins = \DB::table('comid')  ->where([ 
    ['comid_id', '<>', 0], 
    ['comid_id', '=', $id], 
    ['comid_stat', '=', $stat], ])
    ->orderBy('comid_id', 'asc')->delete(); 
    
    
  


 if($stat=='first'){  $mees='امکانات اول';  }
 if($stat=='sec'){ $mees='امکانات دوم';  }
 if($stat=='thi'){ $mees='کامنت مشتری';  }
     
   	   
 $nametr = Session::flash('statust', 'حذف '.$mees.' با موفقیت انجام شد  ');  	
 		  	 
 return redirect('superadmin/comid/'.$stat);  
 
 }}
 
 
 
public function mngqst(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'mngqst');  
   
 $admins = \DB::table('qsts')  ->where([ 
    ['qst_id', '<>', 0], ])
    ->orderBy('qst_id', 'desc')->get(); 
 
 return view('mng.mngqst'  , [ 'admins' => $admins       ]); 
 }}
 
 
 
public function editqstid($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'mngqst');  
   
 $admins = \DB::table('qsts')  ->where([ 
    ['qst_id', '<>', 0], 
    ['qst_id', '=', $id], ])
    ->orderBy('qst_id', 'desc')->first(); 
 
 return view('mng.editqst'  , [ 'admins' => $admins       ]); 
 }}
 

 public function editqstidpost( $id ,  Request $request){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
   

 	$updatee =  \DB::table('qsts')   
 ->where([ ['qst_id', '=', $id], ])-> update( [   'qst_soa' => $request->soa  , 'qst_pas' => $request->pas   ,   'qst_date' =>  date('Y-m-d H:i:s')   ]);
 
  
   	   
 $nametr = Session::flash('statust', 'ویرایش باموفقیت انجام شد  ');  		  	 
 return redirect('superadmin/mngqst');  
 
	 } }
			
 
 
public function addleader(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'addleader');  
 


 $h = new SuperadminController();
$h->superadminticketupd(); 

    
 $admins = \DB::table('leaders')  ->where([ 
    ['leader_id', '<>', 0], ])
    ->orderBy('leader_id', 'desc')->get();
 
 
 return view('mng.addleader'  , [ 'admins' => $admins       ]); 
 }}
 
public function viewsleaders(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'viewsleaders');  
 


 $h = new SuperadminController();
$h->superadminticketupd(); 

    
 $admins = \DB::table('leaders')  ->where([ 
    ['leader_id', '<>', 0], ])
    ->orderBy('leader_price', 'desc')->get();
 
 
 return view('mng.viewsleaders'  , [ 'admins' => $admins       ]); 
 }}
 

public function viewstickets(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'viewstickets');  
 


 $h = new SuperadminController();
$h->superadminticketupd(); 

    
 $admins = \DB::table('ticket')  ->where([
    ['tik_fromarou', '=', 4],
    ['tik_toarou', '=', 2],
    ['tik_walletid', '=', 0], ])
    ->orderBy('ticket.tik_date', 'desc')->get();

$desstat='تیکتهای کاربران';
 
 return view('mng.viewstickets'  , [ 'admins' => $admins  , 'desstat' => $desstat     ]); 
 }}
 
  
public function viewsrequests(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'viewsrequests');  
 


 $h = new SuperadminController();
$h->superadminticketupd(); 

    
 $admins = \DB::table('ticket')  ->where([
    ['tik_fromarou', '=', 4],
    ['tik_toarou', '=', 2], 
    ['tik_walletid', '<>', 0], ])
    ->orderBy('ticket.tik_date', 'desc')->get();


 
$desstat='درخواست برداشت کاربران';
 
 return view('mng.viewstickets'  , [ 'admins' => $admins  , 'desstat' => $desstat     ]); 
 }}
 
 
 
 
 
 
 
 
 
 
 
public function settingpay(){
	if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
	if (Session::has('signsuperadmin')){  
	 Session::set('nav', 'mngtxtdes');  
	    
 
		
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first(); 
	  
	 return view('mng.settingpay'  , [ 'mngindexs' => $mngindexs     ]); 
	 }}
	 


	 
  
 public function settingpaypost(  Request $request){   
	if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
	if (Session::has('signsuperadmin')){   
	  
$updatee =  \DB::table('mngindex')  ->where([ 
    ['id', '<>', 0], 
    ['id', '=', 1], ])
    ->update(['ind_settingpay' => $request->namesetingpay    ]); 


	
	$nametr = Session::flash('statust', 'تنظیمات پرداخت باموفقیت ذخیره شد');
	$nametrt = Session::flash('sessurl', 'settingpay');
	$nametrt = Session::flash('flgsts', 'success');
	$redact='superadmin/settingpay';  
	return redirect($redact); 


	}}
	 
 
public function mngtxtdes(){
	if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
	if (Session::has('signsuperadmin')){  
	 Session::set('nav', 'mngtxtdes');  
	   
	 $admins = \DB::table('txtdes')  ->where([ 
		['txt_id', '<>', 0], ])
		->orderBy('txt_id', 'asc')->get();
	  
	 return view('mng.mngtxtdes'  , [ 'admins' => $admins     ]); 
	 }}
	 
	   
 
public function mngtxtdeseditid($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'mngtxtdes');  
   
 $admins = \DB::table('txtdes')  ->where([ 
    ['txt_id', '<>', 0], 
    ['txt_id', '=', $id], ])
    ->orderBy('txt_id', 'asc')->first();
  
 return view('mng.edittxt'  , [ 'admins' => $admins     ]); 
 }}
 
  
  
  
  
 public function mngtxtdeseditidpost(  $id, Request $request){   
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){   
  
  
$txtdes = \DB::table('txtdes') ->where('txt_id', '=', $id)->orderBy('txt_id', 'desc')->first(); 
 $imageName=$txtdes->txt_img;   		
 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }
    
 	 
    
 $updatee =  \DB::table('txtdes')  ->where([ 
    ['txt_id', '<>', 0], 
    ['txt_id', '=', $id], ])
    ->update(['txt_des' => $request->des , 'txt_img' => $imageName   ]); 
    
 
$nametr = Session::flash('statust', 'متن پیش فرض با موفقیت ویرایش شد.'); 
 
 return  redirect('superadmin/mngtxtdes/edit/'.$id.'');
  
} }

  
  
  
  

 public function viewsticketssupid( $id){  


if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 
 
 
 
 
$tickets = \DB::table('ticket')  ->where([
    ['id', '=', $id],
    ['tik_fromarou', '=', 4],
    ['tik_toarou', '=', 2], ])  ->orderBy('ticket.id', 'desc')->get();
    
    
$firsttickets = \DB::table('ticket')  ->where([
    ['id', '=', $id],
    ['tik_fromarou', '=', 4],
    ['tik_toarou', '=', 2], ])  ->orderBy('ticket.id', 'desc')->first();
    
      if($firsttickets->tik_walletid=='0'){
      	 Session::set('nav', 'viewstickets'); 
	  	$desstat='تیکت';
	  }else{
	  	 Session::set('nav', 'viewsrequests');  
	  	$desstat='درخواست برداشت';
	  }
 
    
    
$messages = \DB::table('message')->where('mes_ticket', '=', $firsttickets->tik_fromid)  ->orderBy('id')->get();

$updatee = \DB::table('ticket')  ->where([
    ['id', '=', $id],
    ['tik_fromarou', '=', 4],
    ['tik_toarou', '=', 2], ])  ->update(['tik_toread' => 1   ]); 


 $h = new SuperadminController();
$h->superadminticketupd(); 





$messagesafirst = \DB::table('message') 
->join('ticket', 'message.mes_ticket', '=', 'ticket.tik_fromid')
 ->where([   
    ['mes_ticket','<>' , 0 ],  
    ['ticket.id','=' , $id ],  
]) ->orderBy('message.id', 'asc')->first();

if($messagesafirst){
	$updatee = \DB::table('ticket') ->where([   
    ['id', '=', $id], 
]) ->update([  'tik_name' => $messagesafirst->mes_des  ]);
	
}




return view('mng.ticket', ['tickets' => $tickets  ,  'messages' => $messages  , 'desstat' => $desstat  ]); 


}
}



 public function viewsticketssupidpost(  $id, Request $request){  

if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'viewstickets');  
 
 
 
$firsttickets = \DB::table('ticket')  ->where([
    ['id', '=', $id],
    ['tik_fromarou', '=', 4],
    ['tik_toarou', '=', 2], ])  ->orderBy('ticket.id', 'desc')->first();
 
    DB::table('message')->insert([
    ['mes_ticket' => $firsttickets->tik_fromid ,  'mes_des' => $request->des   , 'mes_createdatdate' =>  date('Y-m-d H:i:s') , 'mes_flg' =>  2    ]
]);
 
    
 $updatee = \DB::table('ticket')  ->where([ 
    ['tik_fromarou', '=', 4],
    ['tik_toarou', '=', 2],
    ['id', '=', $id], ])  ->update(['tik_fromread' => 0  , 'tik_active' => 2 ,     'tik_date' =>  date('Y-m-d H:i:s')   ]); 
    
 
$nametr = Session::flash('statust', 'پیام شما با موفقیت ارسال شد.'); 
 
 return  redirect('superadmin/viewstickets/ticket/'.$id.'');
  
}
}



public function mngfilter($stat){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  


if($stat=='unav'){ 
 Session::set('nav', 'unav'); 
 $flg=0; 
}elseif($stat=='avail'){ 
 Session::set('nav', 'avail'); 
  $flg=1;
	}
	
	 
	 
	 
  
$admins = \DB::table('filtermail')	 ->where([ ['filter_id', '<>', 0], 
	           ['filter_flg', '=', $flg], ])-> orderBy('filter_id', 'desc')->get(); 
 return view('mng.mngfilter'  , [ 'admins' => $admins ,  'stat' => $stat     ]); 
 }}
 


	public function mngfilterpost(  Request $request  , $stat){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){ 

if($stat=='unav'){ 
 Session::set('nav', 'unav'); 
 $flg=0; 
}elseif($stat=='avail'){ 
 Session::set('nav', 'avail'); 
  $flg=1;
	}


 $filter_mail='%'.$request->name.'%';
 
		  	$admins = \DB::table('filtermail')->where('filter_mail', 'like', $filter_mail)->count(); 

if($admins != '0'){
	
 $nametr = Session::flash('statust', 'این سایت قبلا در سیستم ثبت شده است.');
 $nametrt = Session::flash('sessurl', 'mngfilter');
 $nametrt = Session::flash('flgsts', 'error');

		  	$redact='superadmin/mngfilter/'.$stat;  
 return redirect($redact); 
}

DB::table('filtermail')->insert([
    [  'filter_mail' => $request->name , 'filter_flg' => $flg ,  'filter_createdatdate' =>  date('Y-m-d H:i:s')       ]
]);  

 
  
    		 
 $nametr = Session::flash('statust', 'سایت جدید باموفقیت ثبت شد.');
 $nametrt = Session::flash('sessurl', 'mngfilter');
 $nametrt = Session::flash('flgsts', 'success');
 $redact='superadmin/mngfilter/'.$stat;  
 return redirect($redact); 
 }}
 
 
 
 
 	public function deletfilter($id  , $stat  ){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin(); 
		  	$admins = \DB::table('filtermail')->where('filter_id', '=', $id)->delete(); 
		  	$nametrt = Session::flash('sessurl', 'viewsusers');


  
 $nametrt = Session::flash('flgsts', 'success');
		  	$nametr = Session::flash('statust', 'حذف فیلتر با موفقیت انجام شد.');
		  	$redact='superadmin/mngfilter/'.$stat;  

  
 return redirect($redact); 
	}	  }
		
		
 

 public function creattiketid(  $id, Request $request){  

if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'viewstickets');  
 
 
$messages = \DB::table('message')->where('mes_ticket', '=', $id)  ->orderBy('id')->get();

if($messages){
	
}else{
	
 DB::table('ticket')->insert([
    ['tik_fromid' => $id ,  'tik_fromarou' => 4  ,  'tik_toarou' => 2  , 'tik_tosh' => 1 ]
]);
}
 
 
 /*
    DB::table('message')->insert([
    ['mes_ticket' => $id ,  'mes_des' => ''   , 'mes_createdatdate' =>  date('Y-m-d H:i:s') , 'mes_flg' =>  2    ]
]);
*/
 
    
 $updatee = \DB::table('order') 
->join('ticket', 'order.order_id', '=', 'ticket.tik_fromid')->where([ 
    ['tik_fromarou', '=', 4],
    ['tik_toarou', '=', 2],
    ['tik_fromid', '=', $id], ])  ->update(['tik_toread' => 0  , 'tik_active' => 2 ,     'tik_date' =>  date('Y-m-d H:i:s')   ]); 
    
  
 
 return  redirect('superadmin/viewstickets/ticket/'.$id.'');
  
}
}







 public function addleaderpost(  Request $request){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
  
$h = new SuperadminController();
$h->validatesuperadmin();

  

DB::table('leaders')->insert([
    [   'leader_name' => $request->name  , 'leader_price' => $request->price   ,   'leader_createdatdate' =>  date('Y-m-d H:i:s')   ]
]);  
    		 
   	   
 $nametr = Session::flash('statust', 'ثبت لیدر باموفقیت انجام شد  ');  		  	 
 return redirect('superadmin/viewsleaders');  
 
	 } }
			

 public function editleaderid( $id ,  Request $request){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
  
$h = new SuperadminController();
$h->validatesuperadmin();

  

 	$updatee =  \DB::table('leaders')   
 ->where([ ['leaders.leader_id', '=', $id], ])-> update([ 'leader_name' => $request->name  , 'leader_price' => $request->price   ]);
 
  
   	   
 $nametr = Session::flash('statust', 'لیدر باموفقیت ویرایش شد  ');  		  	 
 return redirect('superadmin/viewsleaders');  
 
	 } }
			

	public function mngqstdeletid($id ){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();


 $admins = \DB::table('qsts')->where('qst_id', '=', $id)->delete(); 
 
 $nametr = Session::flash('statust', 'حذف سوال با موفقیت انجام شد.');
		  	 
 return redirect('superadmin/mngqst');  
	}	  }
		

	public function deleteleader($id ){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();


 $admins = \DB::table('leaders')->where('leader_id', '=', $id)->delete(); 
 
 $nametr = Session::flash('statust', 'حذف لیدر با موفقیت انجام شد.');
		  	 
 return redirect('superadmin/viewsleaders');  
	}	  }
		

 
	 
public function mngsettlementsidpost($id,Request $request){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'mngsettlements');  
    
 	$updatee =  \DB::table('settlement')  
->Join('user', 'settlement.settlement_iduser', '=', 'user.id') 
 ->where([ ['settlement.settlement_iduser', '<>', 0], 
 ['settlement.settlement_id', '=',  $id],])-> update([ 'settlement_flg' => 1  ,'settlement_traing' => $request->trak , 'settlement_des' => $request->des , 'settlement_paymentdate' => date('Y-m-d H:i:s')      ]);
  
 $nametr = Session::flash('statust', 'درخواست تسویه کاربر بازاریاب باموفقیت به حساب واریز شد  ');  
 $nametrt = Session::flash('sessurl', 'mngsettlements');			  	 
 return redirect('superadmin/mngsettlements/'.$id);  
  
  
 }}
 
 
 
 
 
 
public function mngwalletsdeletid($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'mngbuys');  
   
 
 $admins = \DB::table('wallet')->where([
    ['wallet.wallet_id','=' , $id], 
    ['wallet.wallet_iduser','<>' , 0], 
])->delete(); 
 
 $nametr = Session::flash('statust', 'کیف پول باموفقیت حذف شد  ');  
 $nametrt = Session::flash('sessurl', 'mywallets');		
    return redirect('superadmin/mngwallets');  	
   
   
 }}
 
	
 
	
 
	
 
 
public function mngsellers(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'mngsellers');  
  

$baskets = \DB::table('basket') 
->leftJoin('product', 'basket.basket_idprod', '=', 'product.pro_id')
->Join('user', 'basket.basket_idref', '=', 'user.id')->where([
    ['basket_id', '<>' , 0],
    ['basket_flg', '=' , 1], 
])->orderBy('basket_id', 'desc')->get();
 
 
 
 return view('mng.mngsellers'  , [ 'baskets' => $baskets  ]); 
 }}
 
	



 

public function mngsetting(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'mngsetting');  
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first(); 
 
 return view('mng.mngsetting'  , [ 'mngindexs' => $mngindexs     ]); 
 }}
 
 
 
  

public function viewsgetway(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'mnggetway');  
$admins = \DB::table('getwaypay') ->where('id', '<>', '0')->orderBy('id', 'desc')->get(); 
 
 return view('mng.viewsgetway'  , [ 'admins' => $admins     ]); 
 }}
 
  

public function mnggetwayid($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'mnggetway');  
$getwaypay = \DB::table('getwaypay') ->where('id', '=', $id)->orderBy('id', 'desc')->first(); 
 
 return view('mng.mnggetway'  , [ 'getwaypay' => $getwaypay     ]); 
 }}
 
 
 

public function mnggetwaystatid($stat,$id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'mnggetway');  
 
 
 
$updatee = \DB::table('getwaypay')->where('id', '<>',$id)  ->update([      'getway_active' => 0 ,   'getway_createdatdate' =>  date('Y-m-d H:i:s')  ]); 
 
$updatee = \DB::table('getwaypay')->where('id', '=',$id)  ->update([      'getway_active' => $stat ,   'getway_createdatdate' =>  date('Y-m-d H:i:s')  ]); 
 
 

 
 $nametr = Session::flash('statust', ' درگاه باموفقیت فعال شد');
 $nametrt = Session::flash('sessurl', 'mnggetway');

 return redirect('superadmin/viewsgetway'); 
 
 
 
 }}
 
 
 

public function mnggetwayidpost($id , Request $request){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'mnggetway');  
$getwaypay = \DB::table('getwaypay') ->where('id', '=', $id)->orderBy('id', 'desc')->first(); 
 
 
 
$updatee = \DB::table('getwaypay')->where('id', '=',$id)  ->update([      'getway_merchent' => $request->getway_merchent ,     'getway_uid' => $request->getway_uid  ,     'getway_token' => $request->getway_token  ,     'getway_apikey' => $request->getway_apikey  ,     'getway_terminalid' => $request->getway_terminalid  ,   'getway_createdatdate' =>  date('Y-m-d H:i:s')   ]); 
 
 

 
 $nametr = Session::flash('statust', ' تنظیمات درگاه پرداخت باموفقیت ویرایش شد');
 $nametrt = Session::flash('sessurl', 'mnggetway');

 return redirect('superadmin/mnggetway/'.$id); 
 
 }}
 
 
 
 
 
 
 
 
public function mngsettingpost(Request $request){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'mngimgheader');  

$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first(); 


$mystring = $request->instagram; $findme   = 'https'; $pos = strpos($mystring, $findme);
  if ($pos !== false) {  $mystring = $request->instagram; }else{ $mystring = 'https://'.$request->instagram; }
    		

$facebook = $request->facebook; $findme   = 'https'; $pos = strpos($facebook, $findme);
  if ($pos !== false) {  $facebook = $request->facebook; }else{ $facebook = 'https://'.$request->facebook; }
    		
    		
$twitter = $request->twit; $findme   = 'https'; $pos = strpos($twitter, $findme);
  if ($pos !== false) {  $twitter = $request->twit; }else{ $twitter = 'https://'.$request->twit; }
    		

$youtube = $request->youtube; $findme   = 'https'; $pos = strpos($youtube, $findme);
  if ($pos !== false) {  $youtube = $request->youtube; }else{ $youtube = 'https://'.$request->youtube; }
    		
    		
    		

$imageName=$mngindexs->ind_indexHeader;
 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }
    

    
$updatee = \DB::table('mngindex')->where('id', '=', 1)  ->update([   'ind_ftitile' => $request->ind_ftitile    ,  'instagram' => $mystring    ,  'facebook' => $facebook   ,  'youtube' => $youtube   ,  'twitter' => $twitter    ,  'ind_cont' => $request->ind_cont    ,  'ind_adres' => $request->ind_adres   ,  'tell' => $request->tell   ,  'email' => $request->email    ,  'ind_key' => $request->ind_key    ,  'ind_fcopy' => $request->ind_fcopy   ,  'ind_analtik' => $request->ind_analtik     ,  'ind_codetiket' => $request->ind_codetiket          ]); 

 

 
 $nametr = Session::flash('statust', ' تنظیمات سایت باموفقیت ویرایش شد');
 $nametrt = Session::flash('sessurl', 'mngsetting');

 return redirect('superadmin/mngsetting'); 
 
 } }
 
 

public function mngimgheader(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'mngimgheader');  
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first(); 
 
 return view('mng.mngimgheader'  , [ 'mngindexs' => $mngindexs     ]); 
 }}
 
 
 

public function mngimgheaderpost(Request $request){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'mngimgheader');  

$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first(); 

 
 

$ind_headermobile=$mngindexs->ind_headermobile;
 if( $request->hasFile('ind_headermobile')){ 
        $image = $request->file('ind_headermobile');
        $ind_headermobile = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$ind_headermobile);  
	 
    }
    
 


 
$imagelogo=$mngindexs->ind_himglog;
 if( $request->hasFile('filel')){ 
        $image = $request->file('filel');
        $imagelogo = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imagelogo);    }
 
    
    

    
$updatee = \DB::table('mngindex')->where('id', '=', 1)  ->update([   'ind_himglog' => $imagelogo  , 'ind_headermobile' => $ind_headermobile     ]); 

 

    
 $nametr = Session::flash('statust', 'تنظیمات لوگو و هدر باموفقیت ویرایش شد.');
 $nametrt = Session::flash('sessurl', 'mngimgheader');

 return redirect('superadmin/mngimgheader'); 


 
 }}
 
 
 

public function addnew(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'addnew');  
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first(); 

$cats = \DB::table('cat') ->where('cat_id', '<>', '0')->orderBy('cat_id', 'desc')->get(); 
 
 
 return view('mng.addnew'  , [ 'mngindexs' => $mngindexs ,  'cats' => $cats      ]); 
 }}
 
 
 
 
 
	public function addnewpost(  Request $request ){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){ 

$this->validate($request,[
    			'name' => 'required', 
    		],[
    			'name.required' => 'لطفا تیتر خبر را وارد نمایید',
    			
    		]);
    		
$imageName='';


 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }
    
    
 $b=env('APP_URL').'/public/images/'.$imageName; 
if($imageName==""){
 $imageName='';
}elseif($imageName!=""){ 
 $imageName='<img src="'.$b.'"      />'; 
 } 
    
    
    
//  style="width:400px; height: 400px"     

 
 
    		
DB::table('news')->insert([
    [  'new_tit' => $request->name ,  'new_short' => $request->short ,  'new_des' => $request->des ,  'new_img' => $imageName ,   'new_createdatdate' =>  date('Y-m-d H:i:s')       ]
]);  
    		 
 $nametr = Session::flash('statust', 'خبر باموفقیت ثبت شد.');
 $nametrt = Session::flash('sessurl', 'viewsnews');

 return redirect('superadmin/viewsnews'); 
 }}
 

public function viewsnews(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'viewsnews');  
$admins = \DB::table('news') ->where('new_id', '<>', '0')->orderBy('new_id', 'desc')->get(); 
 return view('mng.viewsnews'  , [ 'admins' => $admins     ]); 
 }}
 

public function viewsnewseditid($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'viewsnews');  
$admin = \DB::table('news') ->where('new_id', '=', $id)->orderBy('new_id', 'desc')->first(); 

$cats = \DB::table('cat') ->where('cat_id', '<>', '0')->orderBy('cat_id', 'desc')->get(); 

 return view('mng.editnew'  , [ 'admin' => $admin ,  'cats' => $cats    ]); 
 }}
 

public function viewsnewseditidpost($id , Request $request ){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/login');  }
if (Session::has('signsuperadmin')){  
 Session::set('nav', 'viewsnews'); 
 


$this->validate($request,[
    			'name' => 'required', 
    		],[
    			'name.required' => 'لطفا تیتر خبر را وارد نمایید',
    			
    		]);
    		
 
  
$admin = \DB::table('news') ->where('new_id', '=', $id)->orderBy('new_id', 'desc')->first(); 





 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
 $b=env('APP_URL').'/public/images/'.$imageName; 
 $imageName='<img src="'.$b.'"    />'; 
  }  else { $imageName=$admin->new_img; }
    
    
    
    
$updatee = \DB::table('news')->where('new_id', '=', $id)  ->update([  'new_tit' => $request->name ,  'new_short' => $request->short ,  'new_catid' => $request->catid  ,  'new_des' => $request->des ,  'new_img' => $imageName ,   'new_createdatdate' =>  date('Y-m-d H:i:s')       ]); 

 

 
 
    	  
    		 
 $nametr = Session::flash('statust', 'خبر باموفقیت ویرایش شد.');
 $nametrt = Session::flash('sessurl', 'viewsnews');

 return redirect('superadmin/viewsnews'); 







 return view('mng.editnew'  , [ 'admin' => $admin    ]); 
 }}
 

	public function deletnewid( $id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){  
 

 $admins = \DB::table('news')->where([
    ['news.new_id','=' , $id], 
    ['news.new_id','<>' , 0], 
])->delete(); 
 
 $nametr = Session::flash('statust', 'اخبار باموفقیت حذف شد  ');  
 $nametrt = Session::flash('sessurl', 'viewsnews');			  	 
 return redirect('superadmin/viewsnews');  
 
}   }
		
		

public function curlfetch(){ 

$handle = curl_init();
 
 // https://www.mehrnews.com/rss?pl=1
 //https://www.mehrnews.com/rss
 //http://www.evaz-shahrdari.ir//RSS.php
 
$url = "https://www.mehrnews.com/rss?pl=1"; 
curl_setopt($handle, CURLOPT_URL, $url); 
curl_setopt($handle, CURLOPT_RETURNTRANSFER, true);
$output = curl_exec($handle);
curl_close($handle);
 

//echo $output;

 

for($i=2;$i<10;$i++){
 $m=$i-1;
 
 $bcodee = explode("<title>",$output);
 $coname=$bcodee[$i];  
 $titlee = explode("</title>",$coname);
 $title=$titlee['0'];  
 
   
 $bcodee = explode("<guid>",$output);
 $coname=$bcodee[$m];  
 $guidee = explode("</guid>",$coname);
 $guide=$guidee['0'];  
 
$handle = curl_init(); 
curl_setopt($handle, CURLOPT_URL, $guide); 
curl_setopt($handle, CURLOPT_RETURNTRANSFER, true);
$outputguide = curl_exec($handle);
curl_close($handle);


   
 $bcodee = explode('<p class="summary introtext" itemprop="description">',$outputguide);
 $coname=$bcodee['1'];  
 $shortee = explode("</p></div>",$coname);
 $shorte=$shortee['0'];  
 
 
 $bcodee = explode('<div itemprop="articleBody" class="item-text">',$outputguide);
 $coname=$bcodee['1'];  
 $desee = explode('</div><div class="item-code">',$coname);
 $dese=$desee['0'];  
 
 
 $dese= str_replace( 'https://www.mehrnews.com','#' , $dese);  
 $dese= str_replace( 'خبرنگار مهر','خبرنگار ما' , $dese);  
 $dese= str_replace( 'خبرگزاری مهر','خبرنگار ما' , $dese);  
 
 
 
 $bcodee = explode('<figure class="item-img">',$outputguide);
 $coname=$bcodee['1'];  
 $imgee = explode('</figure>',$coname);
 $imge=$imgee['0'];  
 
 
   
  
DB::table('news')->insert([
    [  'new_tit' => $title ,   'new_des' => $dese ,   'new_short' => $shorte ,     'new_link' => $guide ,    'new_img' => $imge ,   'new_createdatdate' =>  date('Y-m-d H:i:s')       ]
]);  
 
 echo $title.'<br>';
 echo $dese.'<br>';


}

}
 



public function curlfetch1(){ 

$handle = curl_init();
 
$url = "https://www.mehrnews.com/news/5030979/زورآزمایی-اتحادیه-جهانی-کشتی-با-موج-سوم-کرونا";
 
// Set the url
curl_setopt($handle, CURLOPT_URL, $url);
// Set the result output to be a string.
curl_setopt($handle, CURLOPT_RETURNTRANSFER, true);
 
$output = curl_exec($handle);
 
curl_close($handle);
 

 //echo $output;

 

for($i=1;$i<2;$i++){
 
 
 $bcodee = explode("<title>",$output);
 $coname=$bcodee[$i];  
 $titlee = explode("</title>",$coname);
 $title=$titlee['0'];  
 
   
   
 echo $title.'<br>';


}

}
 


		 

	 
public function superadminlogin(){
 Session::set('arou', 'superadmin');  
  
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();
  
 return view('sup.login'  , [ 'mngindexs' => $mngindexs     ]); 
  
}
	

	 

public function superadminloginpass(){

$superadmins = DB::table('superadmins')->where([
    ['id', '=' , 1],
])->first(); 

$password_db= $superadmins->superadmin_userpassword; 
$decryptedPassword =  Crypt::decrypt($password_db);
	echo $decryptedPassword;
  
}
	


    public function superadminPosts(Request $request)
    {
    	$this->validate($request,[
    			'firstname' => 'required',
    			'lastname' => 'required'
    		],[
    			'firstname.required' => 'لطفا نام کاربری را وارد نمایید',
    			'lastname.required' => 'لطفا رمز ورود را وارد نمایید',
    			
    		]);
	//$output = false;
	//$key =  env('APP_KEY');
	//$iv = md5($key);
	//$output = mcrypt_encrypt(MCRYPT_RIJNDAEL_256, md5($key), $request->lastname, MCRYPT_MODE_CBC, $iv);
	//$output = base64_encode($output);
	
//$encryptedPassword =  Crypt::encrypt($request->lastname);

$superadmins = DB::table('superadmins')->where([
    ['superadmin_username',  $request->firstname],
])->first();
if($superadmins){

$password_db= $superadmins->superadmin_userpassword; 
$decryptedPassword =  Crypt::decrypt($password_db);
$userscou = DB::table('superadmins')->where([
    ['superadmin_username',  $request->firstname],
])->count();
$id_db= $superadmins->id;
$username_db= $superadmins->superadmin_username; 
$password_db= $superadmins->superadmin_userpassword; 
$username_log = $request->firstname; 
if(($username_log == $username_db)&&( $decryptedPassword == $request->lastname)){
	
	Session::set('idsuperadmin', $id_db);
	Session::set('signsuperadmin', $username_db);	
$adminslp = \DB::table('superadmins')->where('id', '=', $id_db)  ->orderBy('id', 'desc')->first();
$logindatepas=$adminslp->superadmin_logindate;	
$supimg=$adminslp->superadmin_img;	
 
if(empty($supimg)){$supimg='user2x.png';}	
	Session::set('logindatepas', $logindatepas);
	Session::set('supimg', $supimg);
	$updatee = \DB::table('superadmins')->where('id', '=', Session::get('idsuperadmin'))  ->update(['superadmin_logindate' => date('Y-m-d H:i:s') ,    'superadmin_ip' => $request->ip()  ]); 
	
	Session::set('flagpanel', '1');
			return redirect('superadmin/panel'); 
		} else 
			 $nametr = Session::flash('statust', 'اطلاعات را به درستی وارد نمایید.');
				return redirect('superadmin/sign-in'); 
		
			
}
		else if(empty($superadmins)) {
			 $nametr = Session::flash('statust', 'اطلاعات را به درستی وارد نمایید.');
				return redirect('superadmin/sign-in'); 
		}
		
		
		
    }

 public function mngindexsession(){   	  
 
$mngindex = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();

  
 Session::set('ind_himglog', $mngindex->ind_himglog);   
 Session::set('ind_fcopy', $mngindex->ind_fcopy);   
 Session::set('instagram', $mngindex->instagram);   
 Session::set('linkedin', $mngindex->linkedin);   
 Session::set('telegram', $mngindex->telegram);   
 Session::set('youtube', $mngindex->youtube); 
 Session::set('facebook', $mngindex->facebook); 
 Session::set('twitter', $mngindex->twitter); 
 
 }
  


public function panel(){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 	
Session::set('nav', 'panel');   


$h = new SuperadminController();
$h->validatesuperadmin();	

$h = new SuperadminController();
$h->updatenotifalert();

 
 $h = new SuperadminController();
 $h->mngindexsession();
 
$admins =  DB::table('user')->where([['id', '<>',  '0'],])->count(); 
$useractives =  DB::table('user')->where([['id', '<>',  '0'],['user_active', '=',  '1'],])->count(); 


	$countusers = DB::table('user')->where([
    ['id',  '<>' , 0],
])->count();
 
	$countadmins = DB::table('admins')->where([
    ['id',  '<>' , 0],
])->count();


 

$levels = \DB::table('teacher')  
->leftJoin('level', 'teacher.id', '=', 'level.level_teacher') 
->where('level.level_active', '=' , 1)->orderBy('level.id', 'desc')->get();
  
  
return view('superadmin.testpanel2' , ['admins' => $admins , 'useractives' => $useractives  , 'countusers' => $countusers  , 'countadmins' => $countadmins , 'levels' => $levels  ]); 
  
}
}




 public function addcountry(){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
 Session::set('nav', 'addcountry');  
$h = new SuperadminController();
$h->validatesuperadmin();
return view('sup.addcountry');
	 }}
			
 public function addcountrypost(Request $request){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
 Session::set('nav', 'addcountry');  
$h = new SuperadminController();
$h->validatesuperadmin();

    	$this->validate($request,[
    			'name' => 'required', 
    		],[
    			'name.required' => 'لطفا نام کشور را وارد نمایید', 
    		]);   
    	 
DB::table('country')->insert([
    [  'country_name' => $request->name         ]
]);  
    		 
 $nametr = Session::flash('statust', 'کشور باموفقیت ثبت شد.');
 $nametrt = Session::flash('sessurl', 'viewscountry');

 return redirect('superadmin/viewscountry'); 


	 } }
			
			
			
			
			

public function viewscountry(){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
Session::set('nav', 'viewscountry'); 

$admins = \DB::table('country') ->orderBy('country_id', 'desc')->get();
return view('sup.viewscountry', ['admins' => $admins]);
 
} }



 public function addsubcatcourse(){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
 Session::set('nav', 'addsubcatcourse');  
$h = new SuperadminController();
$h->validatesuperadmin();

$idd=0;
$idd=Session::get('idd');

$admins = \DB::table('catcourse') ->orderBy('catcourse_id', 'desc')->get();
$states = \DB::table('subcatcourse')
->join('catcourse', 'subcatcourse.subcatcourse_catid', '=', 'catcourse.catcourse_id')  ->where([ ['catcourse_id', '=',  $idd],])->orderBy('subcatcourse_id', 'desc')->get();
$names = \DB::table('catcourse')  ->where([ ['catcourse_id', '=',  $idd],])->orderBy('catcourse_id', 'desc')->first();
if($names){ $name=$names->catcourse_name; } else { $name='';}



return view('superadmin.addsubcatcourse' , ['admins' => $admins , 'states' => $states  , 'name' => $name   ]); 

 
	 }}
	 
	 
	 
			
 public function addsubcatcoursepost(Request $request){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
 Session::set('nav', 'addstate');  
$h = new SuperadminController();
$h->validatesuperadmin();

    	$this->validate($request,[
    			'name' => 'required', 
    		],[
    			'name.required' => 'لطفا نام استان را وارد نمایید', 
    		]);   
    	 
    	 
	Session::flash('idd', $request->country);
	  
DB::table('subcatcourse')->insert([
    [  'subcatcourse_catid' => $request->country   , 'subcatcourse_name' => $request->name         ]
]);  
    		 
 $nametr = Session::flash('statust', 'ساب کتوگری دوره با موفقیت ایجاد شد.');
 $nametrt = Session::flash('sessurl', 'addsubcatcourse'); 
 return redirect('superadmin/addsubcatcourse');  

	 } }
			

 public function subcatcourseid($id){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
 Session::set('nav', 'addsubcatcourse');  
$h = new SuperadminController();
$h->validatesuperadmin();

$subcatcourse= \DB::table('subcatcourse')
->join('catcourse', 'subcatcourse.subcatcourse_catid', '=', 'catcourse.catcourse_id')  ->where([ ['subcatcourse_id', '=',  $id],])->orderBy('subcatcourse_id', 'desc')->first();
 
return view('superadmin.editsubcat' , [  'subcatcourse' => $subcatcourse   ]); 
 

	 }}
	 
	 
public function subcatcourseidpost($id ,Request $request ){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
Session::set('nav', 'addsubcatcourse'); 


$admins = \DB::table('subcatcourse')
->join('catcourse', 'subcatcourse.subcatcourse_catid', '=', 'catcourse.catcourse_id')  ->where('subcatcourse_id', '=', $id)  ->orderBy('subcatcourse_id', 'desc')->first();


	Session::flash('idd', $admins->catcourse_id);

$imageName=$admins->subcatcourse_coverimg;
$icon=$admins->subcatcourse_icon;

 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }

 if( $request->hasFile('icon')){ 
        $image = $request->file('icon');
        $icon = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$icon);  
	 
    }


$updatee = \DB::table('subcatcourse')->where('subcatcourse_id', '=', $id)  ->update(['subcatcourse_name' => $request->name , 'subcatcourse_coverimg' => $imageName  , 'subcatcourse_icon' => $icon   ]); 
 
 $nametr = Session::flash('statust', ' زیرمجموعه دوره باموفقیت ویرایش شد.');
 $nametrt = Session::flash('sessurl', 'addsubcatcourse');

 return redirect('superadmin/addsubcatcourse'); 
 
} }

	 
	 
	 


		
	public function deletstate($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin(); 


$names = \DB::table('subcatcourse')  ->where([ ['subcatcourse_id', '=',  $id],])->orderBy('subcatcourse_id', 'desc')->first();

if($names){ $state_country=$names->subcatcourse_catid; } else { $state_country='';}
	Session::flash('idd', $state_country);
	

 $admins = \DB::table('subcatcourse')->where('subcatcourse_id', '=', $id)->delete();
 
		  	$nametr = Session::flash('statust', 'حذف زیرمجموعه دوره با موفقیت انجام شد.');
		  	$nametrt = Session::flash('sessurl', 'addsubcatcourse');
		  	 return redirect('superadmin/addsubcatcourse');
	}	 }
		
		
	




public function fechcourse($id){  

$countrys= \DB::table('catcourse')  ->where([ ['catcourse_id', '=',  $id] , ])->orderBy('catcourse_id', 'asc')->get();


$states= \DB::table('subcatcourse')  ->where([ ['subcatcourse_catid', '=',  $id] , ])->orderBy('subcatcourse_id', 'desc')->get();

foreach($countrys as $country){  
echo ' <option value=""  >لطفا انتخاب نمایید</option> ';

foreach($states as $admin){
	echo '<option value="'.$admin->subcatcourse_id.'"   >'.$admin->subcatcourse_name.'</option> ';
}
 
  
 

	
}	
 }


	 

public function fechpost($id){  
 
 
echo ' 

<div class="elementor-icon-wrapper">
<div class="elementor-icon">
<i  aria-hidden="true" class="fa '.$id.'"  style="font-size:78px;color:#665CAC;"></i>	
</div>
</div>';
 

	 
 }
 

public function fechtablestate($id){  

$states= \DB::table('subcatcourse')  ->where([ ['subcatcourse_catid', '=',  $id] , ])->orderBy('subcatcourse_id', 'desc')->get();

$names = \DB::table('catcourse')  ->where([ ['catcourse_id', '=',  $id],])->orderBy('catcourse_id', 'desc')->first();
if($names){ $name=$names->catcourse_name; } else { $name='';}
 
echo ' 
<div class="col-12"> <div class="card"> <div class="card-body">
 <h4 class="card-title"> زیرمجموعه  "'.$name.'"</h4>
 

<table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;"> <thead>
                      <tr>
     				    <th>ردیف</th> 
                        <th>نام زیرمجموعه</th> 
                        <th>تصویر</th> 
                        <th>ویرایش</th> 
                        <th>حذف</th> 
                      </tr>
                    </thead> 
                    <tbody>';
  $i=1;             
foreach($states as $state){ 
 echo'<tr>
                      <td>'.$i++.'</td>
                        <td>'.$state->subcatcourse_name.'</td>
 <td>  <img  '; if ($state->subcatcourse_coverimg)  { echo 'src="'.env('APP_URL').'/public/images/'.$state->subcatcourse_coverimg.'" ';  } else { echo 'src=""'; }  echo 'alt="" class="avatar-lg mx-auto img-thumbnail rounded-circle"> </td>
 <td><a href="'.env('APP_URL').'/superadmin/subcatcourse/edit/'.$state->subcatcourse_id.'"    class="btn btn-success btn-sm"  >مشاهده<i class="far fa-check-square btn-icon-prepend"></i></a>  </td> 
<td>'.'<a href="'.env('APP_URL').'/superadmin/state/delet/'.$state->subcatcourse_id.'"   class="btn btn-danger btn-sm"     >حذف<i  class="fa fa-trash mr-1 mt-1"></i></a> </td> </tr> '; }
 echo '</tbody> </table> </div> </div>  </div>  ';  
	
 
 }

	 
	 


 public function addcity(){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
 Session::set('nav', 'addcity');  
$h = new SuperadminController();
$h->validatesuperadmin();

$idd=0;
$idd=Session::get('idd');

$admins = \DB::table('country') ->orderBy('country_id', 'desc')->get();


$states = \DB::table('state')
->join('country', 'state.state_country', '=', 'country.country_id')  ->where([ ['state_country', '<>',  0],])->orderBy('state_id', 'desc')->get();

$citys = \DB::table('country')  
->join('state', 'country.country_id', '=', 'state.state_country') 
->join('city', 'state.state_id', '=', 'city.city_state')  ->where([ ['city_state', '=',  $idd],])->orderBy('city_id', 'desc')->get();
 
$names = \DB::table('state')  ->where([ ['state_id', '=',  $idd],])->orderBy('state_id', 'desc')->first();
if($names){ $name=$names->state_name; } else { $name='';}



return view('sup.addcity' , ['admins' => $admins , 'states' => $states  , 'citys' => $citys  , 'name' => $name   ]); 

 
	 }}
	 
	 
	 
	 
	  public function addcitypost(Request $request){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
 Session::set('nav', 'addcity');  
$h = new SuperadminController();
$h->validatesuperadmin();

 
    	 
	Session::flash('idd', $request->state);
	  
DB::table('city')->insert([
    [  'city_state' => $request->state   , 'city_name' => $request->city         ]
]);  
    		 
 $nametr = Session::flash('statust', 'شهر باموفقیت ثبت شد.');
 $nametrt = Session::flash('sessurl', 'addcity'); 
 return redirect('superadmin/addcity');  

	 } }
	 
	 

public function fechstate($id){  

$states= \DB::table('country')
->join('state', 'country.country_id', '=', 'state.state_country')  ->where([ ['country_id', '=',  $id] , ])->orderBy('state_id', 'asc')->get();
 

echo '
<div class="form-group form-group"  > 
<label class="control-label"  for="location2" >استان</label> 
<select     class="md-form-control" onchange="fetch_selects(this.value);"    id="demo-select2-1"     name="state"  required  > 


<option value=""  >لطفا انتخاب نمایید</option> ';

foreach($states as $state){  
echo '<option value="'.$state->state_id.'"   >'.$state->state_name.'</option>';  
}
 
echo '</select>
                  <label class="md-control-label"></label>
</div> 	
      
      ';  
 }





public function fechstatecity($id){  

$citys= \DB::table('state')
->join('city', 'state.state_id', '=', 'city.city_state')  ->where([ ['state_id', '=',  $id] , ])->orderBy('city_id', 'asc')->get();
 

echo '
<div class="form-group form-group"  > 
<label class="control-label"  for="location2" >شهر</label> 
<select     class="md-form-control" onchange="fetch_selectcity(this.value);"    id="demo-select2-4"     name="state"  required  > 


<option value=""  >لطفا انتخاب نمایید</option> ';

foreach($citys as $city){  
echo '<option value="'.$city->city_id.'"   >'.$city->city_name.'</option>';  
}
 
echo '</select>  <label class="md-control-label"></label> </div>  ';  
 }





public function fechstatecityarea($id){  

$citys= \DB::table('state')
->join('city', 'state.state_id', '=', 'city.city_state')  ->where([ ['state_id', '=',  $id] , ])->orderBy('city_id', 'asc')->get();
 

echo '
<div class="form-group form-group"  > 
<label class="control-label"  for="location2" >شهر</label> 
<select     class="md-form-control" onchange="fetch_selectcity(this.value);"    id="demo-select2-4"     name="city"  required  > 


<option value=""  >لطفا انتخاب نمایید</option> ';

foreach($citys as $city){  
echo '<option value="'.$city->city_id.'"   >'.$city->city_name.'</option>';  
}
 
echo '</select>  <label class="md-control-label"></label> </div>  ';  


echo '
<div class="form-group form-group"  > <label for="email-1">نام منطقه</label><input   name="area" class="form-control" type="text"  value=""  required  minlength="1" ></div>';  

 }







	 

public function inputcity($id){  

$countrys= \DB::table('state')  ->where([ ['state_id', '=',  $id] , ])->orderBy('state_id', 'asc')->get();

foreach($countrys as $country){  
echo '<label for="email-1">نام شهر</label><input   name="city" class="form-control" type="text"  value=""  required  minlength="2" ></div>';  
	
}	
 }


	 

public function inputcityarea($id){  

$countrys= \DB::table('state')  ->where([ ['state_id', '=',  $id] , ])->orderBy('state_id', 'asc')->get();

foreach($countrys as $country){  
echo '<label for="email-1">نام شهر</label><input   name="city" class="form-control" type="text"  value=""  required  minlength="2" ></div>';  
	
}	
 }



	 

public function inputarea($id){  

$citys= \DB::table('city') ->where([ ['city_id', '=',  $id] , ])->orderBy('city_id', 'asc')->get();

foreach($citys as $city){  
echo '<label for="email-1">نام منطقه</label><input   name="area" class="form-control" type="text"  value=""  required  minlength="1" ></div>';  
	
}	
 }


	 

public function inputcityloc($id){  

$countrys= \DB::table('state')  ->where([ ['state_id', '=',  $id] , ])->orderBy('state_id', 'asc')->get();

foreach($countrys as $country){  
echo '<div class="form-group form-group-lg"><label for="email-1">نام شهر</label><input   name="city" class="form-control" type="text"  value=""  required  minlength="2" ></div><div class="form-group form-group-lg"><label for="email-1">منطقه</label><input   name="loc" class="form-control" type="text"  value=""  required  minlength="2" ></div>';  
	
}	
 }


	 

public function fechtablecity($id){  

$citys= \DB::table('city')  ->where([ ['city_state', '=',  $id] , ])->orderBy('city_id', 'desc')->get();

$names = \DB::table('state')  ->where([ ['state_id', '=',  $id],])->orderBy('state_id', 'desc')->first();
if($names){ $name=$names->state_name; } else { $name='';}
 
echo ' 
 <div class="col-xs-12"> <div class="card"> <div class="card-header">
  <strong>شهرهای استان "'.$name.'"</strong> </div>
 <div class="card-body">
 <table id="demo-datatables-3" class="table table-striped table-nowrap dataTable" cellspacing="0" width="100%"> <thead>
                      <tr>
     				    <th>ردیف</th> 
                        <th>شهر</th> 
                        <th>حذف</th> 
                      </tr>
                    </thead> 
                    <tbody>';
  $i=1;             
foreach($citys as $city){ 
 echo'<tr>
                      <td>'.$i++.'</td>
                        <td>'.$city->city_name.'</td> 
<td>'.'<a href="'.env('APP_URL').'/'.Session::get("arou").'/city/delet/'.$city->city_id.'"    > <span class="sidenav-badge badge badge-danger">حذف</span></a> </td> </tr> '; }
 echo '</tbody> </table> </div> </div>  </div>  ';  
	
 
 }






	public function mngindex(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
	Session::set('nav', 'mngindex'); 
 
 $allevents = \DB::table('events') ->where([
    ['event_id','<>' , 0],  
])->orderBy('event_id', 'desc') ->get(); 
 
return view('sup.mngindex', ['allevents' => $allevents]);
}	 
}





	public function blogmng(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
	Session::set('nav', 'blogmng'); 
 
$admins = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();
  
return view('sup.blogmng', ['admins' => $admins]);
}	 
}




  public function blogmngpost(Request $request){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
 
$h = new SuperadminController();
$h->validatesuperadmin();

 
    		
$admins = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();

$imageName=$admins->ind_coverblog;

 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }
 

$updatee = \DB::table('mngindex')->where('id', '=', 1)  ->update([  'ind_createdatdate' =>  date('Y-m-d H:i:s') ,'ind_coverblog' => $imageName ]); 

 

 $nametr = Session::flash('statust', 'اطلاعات باموفقیت ویرایش شد.');
 $nametrt = Session::flash('sessurl', 'blogmng'); 
 return redirect('superadmin/blogmng');  


} }

		




	 
	  public function mngindexpost(Request $request){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
 Session::set('nav', 'addcity');  
$h = new SuperadminController();
$h->validatesuperadmin();

$updatee = \DB::table('events')->where('event_id', '<>', 0)  ->update(['event_show' => 0   ]); 

$updatee = \DB::table('events')->where('event_id', '=', $request->event1)  ->update(['event_show' => 1   ]); 

$updatee = \DB::table('events')->where('event_id', '=', $request->event2)  ->update(['event_show' => 2   ]); 

$updatee = \DB::table('events')->where('event_id', '=', $request->event3)  ->update(['event_show' => 3   ]); 


 $nametr = Session::flash('statust', 'اطلاعات باموفقیت ویرایش شد.');
 $nametrt = Session::flash('sessurl', 'mngindex'); 
 return redirect('superadmin/mngindex');  


} }

	 
		
	public function deletcity($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin(); 


$names = \DB::table('city')  ->where([ ['city_id', '=',  $id],])->orderBy('city_id', 'desc')->first();

if($names){ $city_state=$names->city_state; } else { $city_state='';}
	Session::flash('idd', $city_state);
	

		  	$admins = \DB::table('city')->where('city_id', '=', $id)->delete();
 
		  	$nametr = Session::flash('statust', 'حذف شهر با موفقیت انجام شد.');
		  	$nametrt = Session::flash('sessurl', 'addcity');
		  	 return redirect('superadmin/addcity');
	}	 }
		
		
	

 public function addcitysup(){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
 Session::set('nav', 'addcity');  
$h = new SuperadminController();
$h->validatesuperadmin();
return view('superadmin.addcity');
	 }}
	 
	 
	 
	 


 public function addcitysuppost(Request $request){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
 Session::set('nav', 'addcity');  
$h = new SuperadminController();
$h->validatesuperadmin();
 
DB::table('city')->insert([
    [   'city_name' =>  $request->name , 'city_active' => 1     ]
]);  
    		 
 $nametr = Session::flash('statust', ' شهر باموفقیت ثبت شد ');
 $nametrt = Session::flash('sessurl', 'viewscity');

 return redirect('superadmin/viewscity'); 


	 } }
			


	 
	 

public function viewscitysup(){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
Session::set('nav', 'viewscity'); 

$admins = \DB::table('city') ->orderBy('city_id', 'asc')->get();
return view('superadmin.viewscity', ['admins' => $admins]);
 
} }




	public function editstatcity($stat , $id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){  
 
  
$updatee = \DB::table('city')->where('city_id', '=', $id)  ->update(['city_active' => $stat ]); 

if($stat=='1'){
 $nametr = Session::flash('statust', 'شهر باموفقیت فعال شد ');
} else {
 $nametr = Session::flash('statust', 'شهر باموفقیت غیرفعال شد ');
}

 $nametrt = Session::flash('sessurl', 'viewscity');			  	
 return redirect('superadmin/viewscity');  
 
}   }
		
		


	public function deletcitysup($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin(); 
 
		  	$admins = \DB::table('city')->where('city_id', '=', $id)->delete(); 
		  	$nametr = Session::flash('statust', 'حذف شهر با موفقیت انجام شد.');
		  	$nametrt = Session::flash('sessurl', 'viewscity');
		  	
		  	
 return redirect('superadmin/viewscity'); 
	}	  }



	  

 public function statusersup($stat, $id){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
 Session::set('nav', 'adduser');  
$h = new SuperadminController();
$h->validatesuperadmin(); 


$updatee = \DB::table('user')->where('id', '=', $id)  ->update(['user_active' => $stat  ]); 

if($stat=='1'){ $nametr = Session::flash('statust', 'اکانت کاربر باموفقیت فعال شد.'); }
		  else{ $nametr = Session::flash('statust', 'اکانت کاربر باموفقیت غیرفعال شد شد.'); }  

$admin = \DB::table('user')->where('id', '=', $id)  ->orderBy('id', 'desc')->first();
  		if($admin->user_role=='1'){$role='cust'; } 
    elseif($admin->user_role=='2'){$role='artf'; }
 return redirect('superadmin/viewsusers/edituser/'.$id.'/'.$role);  



	 }}
			

	   

	  

 public function goldusercras($cras){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 

$h = new SuperadminController();
$h->validatesuperadmin();  

 $h = new SuperadminController();
$h->superadminticketupd(); 



$admins = \DB::table('user')->where([
    ['id','<>' , 0],
    ['user_role','=' , 1], 
])->orderBy('id', 'desc')->get();


$reqdeposites = \DB::table('reqdeposite')
->join('user', 'reqdeposite.reqdep_iduser', '=', 'user.id') ->where([
    ['reqdep_id','<>' , 0], 
])->orderBy('reqdep_id', 'desc')->get();

	if($cras=='increase'){  Session::set('nav', 'increase'); return view('mng.goldusercras', ['cras' => $cras   , 'admins' => $admins   ]);     }
elseif($cras=='decrease'){  Session::set('nav', 'decrease'); return view('mng.goldusercras', ['cras' => $cras   , 'admins' => $admins   ]);    }
elseif($cras=='mngcrease'){  Session::set('nav', 'mngcrease'); return view('mng.mngrease', ['cras' => $cras   , 'reqdeposites' => $reqdeposites   ]);    }

  
 

	 }}
			
			
	 

 public function goldusercrasidstst($stat , $id  ){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 

$h = new SuperadminController();
$h->validatesuperadmin();  

 
 
	
	
 
if($stat=='delet'){
	
	
	
	
	
$admins=\DB::table('reqdeposite')->where('reqdep_id','=', $id)->orderBy('reqdep_id', 'desc')->first();

$iduser=$admins->reqdep_iduser;
$reqdep_price=$admins->reqdep_price;
 
$income  = \DB::table('income')
->join('user', 'income.income_iduser', '=', 'user.id') ->where([ 
    ['user.id', '<>', 0],  
    ['user.id', '=', $iduser],    ])
    ->orderBy('user.id', 'desc')->first();  
    
 $income_earning=$income->income_earning + $reqdep_price;
  
		 $updatee = \DB::table('income')  ->where([ 
    ['income_iduser', '=', $iduser], ])  ->update(['income_earning' => $income_earning   ]); 
    
	 
	
	
	
$reqdeposites = \DB::table('reqdeposite')  ->where([
    ['reqdep_id','=' , $id], 
])->orderBy('reqdep_id', 'desc')->delete();  
 $nametr = Session::flash('statust', 'حذف درخواست با موفقیت انجام شد.'); 
 return redirect('superadmin/golduser/mngcrease'); 
}else{
	
$reqdeposites = \DB::table('reqdeposite')  ->where([
    ['reqdep_id','=' , $id], 
])->update(['reqdep_flg' => 1 ]); 
 $nametr = Session::flash('statust', 'درخواست باموفقیت تایید شد.'); 
 return redirect('superadmin/golduser/mngcrease'); 
}
 

	 }}
			
			
			
			

 public function goldusercraspost( $cras ,  Request $request){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
  
$h = new SuperadminController();
$h->validatesuperadmin();

  
 		    if($cras=='increase'){  $crs=1; $mcrase='افزایش حساب کاربر';     }
		elseif($cras=='decrease'){  $crs=2; $mcrase='کاهش حساب کاربر';     } 






$income  = \DB::table('income')
->join('user', 'income.income_iduser', '=', 'user.id') ->where([ 
    ['user.id', '<>', 0],  
    ['user.id', '=', $request->iduser],    ])
    ->orderBy('user.id', 'desc')->first();  
    
 $myincome_balance=$income->income_balance + $request->price;
 $myincome_earning=$income->income_earning - $request->price;


if($cras=='decrease'){ 


 $updatee = \DB::table('income')  ->where([ 
 ['income_iduser', '=', $request->iduser], ])  ->update(['income_earning' => $myincome_earning   ]);

}


if($cras=='increase'){ 

 $updatee = \DB::table('income')  ->where([ 
 ['income_iduser', '=', $request->iduser], ])  ->update(['income_balance' => $myincome_balance   ]); 

$myrefrals  = \DB::table('user')  ->where([   
    ['id', '=', $request->iduser],   ])
    ->orderBy('id', 'desc')->first(); 
    
    $user_idmoaref=$myrefrals->user_idmoaref;
    
    
    
	 if($user_idmoaref !=0 ){


$reqdep_price=$request->price / 10;
$income  = \DB::table('income')
->join('user', 'income.income_iduser', '=', 'user.id') ->where([ 
    ['user.id', '<>', 0],  
    ['user.id', '=', $user_idmoaref],    ])
    ->orderBy('user.id', 'desc')->first();  
    
 $income_balance=$income->income_balance + $reqdep_price;
  
 $updatee = \DB::table('income')  ->where([ 
    ['income_iduser', '=', $user_idmoaref], ])  ->update(['income_balance' => $income_balance   ]); 
    
DB::table('reqdeposite')->insert([
    ['reqdep_iduser' => $user_idmoaref ,'reqdep_inc' => $crs ,'reqdep_price' => $reqdep_price , 'reqdep_flg' => 1 ,   'reqdep_createdatdate' =>  date('Y-m-d H:i:s')  ]
]);

	 
	 
	 }

     
 


   }

DB::table('reqdeposite')->insert([
    ['reqdep_iduser' => $request->iduser ,'reqdep_inc' => $crs ,'reqdep_price' => $request->price , 'reqdep_flg' => 1 ,   'reqdep_createdatdate' =>  date('Y-m-d H:i:s')  ]
]);

  
   	   
 $nametr = Session::flash('statust', $mcrase.' با موفقیت انجام شد');  		  	 
 return redirect('superadmin/golduser/mngcrease');  
 
	 } }
			
			
			
			
			

 public function addusersup($role){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 

	if($role=='user'){   $idrole='1';  }
elseif($role=='seller'){  $idrole='2';  }

  
$h = new SuperadminController();
$h->validatesuperadmin();  




$admins = \DB::table('user')->where([
    ['id','<>' , 0],
    ['user_role','=' , 1], 
])->orderBy('id', 'desc')->get();

 Session::set('nav', 'adduser');

return view('mng.adduser', ['role' => $role   , 'admins' => $admins  ]);
	 }}
			

	  

 public function mngindexdes(){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
 Session::set('nav', 'mngindexdes'); 
 
$admins = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();
 
$h = new SuperadminController();
$h->validatesuperadmin();
return view('sup.mngindexdes', ['admins' => $admins]);
	 }}
			


  public function mngindexdespost(Request $request){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
 
$h = new SuperadminController();
$h->validatesuperadmin();

 
    		
$admins = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();

$imageName=$admins->ind_himglog;

 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }
 

$updatee = \DB::table('mngindex')->where('id', '=', 1)  ->update(['ind_ftitile' => $request->name  , 'ind_fcopy' => $request->ind_fcopy  , 'instagram' => $request->instagram  , 'facebook' => $request->facebook  , 'telegram' => $request->telegram  , 'youtube' => $request->youtube  , 'linkedin' => $request->linkedin   , 'twitter' => $request->twitter  , 'ind_createdatdate' =>  date('Y-m-d H:i:s') ,'ind_himglog' => $imageName ]); 

 

 $nametr = Session::flash('statust', 'اطلاعات باموفقیت ویرایش شد.');
 $nametrt = Session::flash('sessurl', 'mngindexdes'); 
 return redirect('superadmin/mngindexdes');  


} }

		

 
		
		


public function validatesuperadmin(){   
Session::set('arou', 'superadmin');
	Session::set('accessadmin_user', '1');	
	Session::set('accessadmin_blog', '1');	
	Session::set('accessadmin_shop', '1');	
	Session::set('accessadmin_event', '1');	 
	
	
$updatee = \DB::table('user')->where('id', '<>', 0)  ->update(['user_active' => 1   ]); 
 
}



		
		
		
		


	public function myprofile(){
if (Session::has('signsuperadmin')){ 

$h = new SuperadminController();
$h->validatesuperadmin();
	Session::set('nav', 'panel'); 
$admins = \DB::table('superadmins')->where('id', '=', Session::get('idsuperadmin'))  ->orderBy('id', 'desc')->first();
return view('sup.profile', ['admins' => $admins]);
}	
else{ return redirect('superadmin/sign-in'); }
				}
				
		
		
			
	public function editmyprofilePost(  Request $request ){
if (Session::has('signsuperadmin')){ 

$h = new SuperadminController();
$h->validatesuperadmin();
 
$h = new SuperadminController();
$h->validatesuperadmin();


$nametr = Session::flash('err', '1');


$this->validate($request,[
    			'username' => 'required|min:3|max:35',
    			'tell' => 'required|numeric',
    			'email' => 'required|email',
    			'file'  => 'max:1000', 
    		],[
    			'username.required' => 'نام کاربری را وارد نمایید',
    			'username.min' => 'نام کاربری کوتاه است',
    			'username.max' => 'نام کاربری غیرقابل قبول است',
    			'tell.required' => 'شماره تلفن را بصورت صحیح وارد کنید',
    			'tell.numeric' => 'شماره غیرقابل قبول است',
    			'email.required' => 'ایمیل را بصورت صحیح وارد کنید',
    			'email.email' => 'فرمت ایمیل غیرقابل قبول است',  
    			'file.max' => 'حجم فایل آپلود شده بیشتر از حد مجاز می باشد. (حدمجاز 1مگابایت یا کمتر از این مقدار باید باشد)', 
    			
    		]);
    		
 
$admins = \DB::table('superadmins')->where('id', '=', Session::get('idsuperadmin'))  ->orderBy('id', 'desc')->first();

$imageName=$admins->superadmin_img;


 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }
 
 
 
$updatee = \DB::table('superadmins')->where('id', '=', Session::get('idsuperadmin'))  ->update(['superadmin_username' => $request->username ,  'superadmin_tell' => $request->tell ,  'superadmin_email' => $request->email ,  'superadmin_ip' => $request->ip()  ,  'superadmin_img' => $imageName  ]); 


	Session::set('supimg', $imageName);

$admins = \DB::table('superadmins')->where('id', '=', Session::get('idsuperadmin'))  ->orderBy('id', 'desc')->get();

			 $nametr = Session::flash('statust', 'اطلاعات پروفایل من باموفقیت ویرایش شد.');
		  	$nametrt = Session::flash('sessurl', 'myprofile/edit/sup');


$admins = \DB::table('superadmins')->where('id', '=',  Session::get('idsuperadmin'))  ->orderBy('id', 'desc')->first();


	
$user = \DB::table('superadmins')->where('id', '=', Session::get('idsuperadmin'))  ->orderBy('id', 'desc')->first();

/*
 $usernamee = $user->superadmin_username; 
 $titmes='اطلاعات شما با موفقیت تغییر کرد';
 $mestt='نام کاربری جدید';
 $mesnot = $usernamee; 
 
  Mail::send('superadmin.mail', ['user' => $user , 'usernamee' => $usernamee, 'mesnot' => $mesnot, 'titmes' => $titmes , 'mestt' => $mestt], function ($m) use ($user) {      
$decryptedPassword =  Crypt::decrypt($user->superadmin_userpassword);
            $m->from('info@demo.com', 'تغییر نام کاربری');
            $m->to($user->superadmin_email, $user->superadmin_email)->subject('ویرایش اطلاعات');
        }); 	
         	*/ 
         	
         	return redirect('superadmin/myprofile/edit/sup'); 
 
}	
else{ return redirect('superadmin/sign-in'); }
				}



		
	public function securityuserprofilesup( Request $request ){

if (empty(Session::has('signsuperadmin'))){ return redirect('superadmin/sign-in'); }
else if (Session::has('signsuperadmin')){ 

 
$h = new SuperadminController();
$h->validatesuperadmin();
 
$h = new SuperadminController();
$h->validatesuperadmin();



$nametr = Session::flash('err', '2');
 
    	$this->validate($request,[
    			'nowpass' => 'required',
    			'userpassword' => 'required|min:5|max:35|confirmed', 
    		],[
    			'nowpass.required' => 'لطفا رمزعبور فعلی را وارد نمایید',
    			'userpassword.required' => 'لطفا رمزعبور جدید را وارد نمایید',
    			'userpassword.min' => 'رمزعبور کوتاه است', 
    			'userpassword.confirmed' => 'رمزعبور باهم مطابقت ندارد', 
    		]);

 
 
$admins = \DB::table('superadmins')->where('id', '=',  Session::get('idsuperadmin'))  ->orderBy('id', 'desc')->first();
 
$decryptedPasswordnow =  Crypt::decrypt($admins->superadmin_userpassword);


 if($request->nowpass!=$decryptedPasswordnow){
 	$nametr = Session::flash('statusterror', 'رمزعبور فعلی اشتباه وارد شده است');
 	return  redirect('superadmin/myprofile/edit/sup');
 }
 
 
$encryptedPassword =  Crypt::encrypt($request->userpassword);
$decryptedPassword =  Crypt::decrypt($encryptedPassword);

$updatee = \DB::table('superadmins')->where('id', '=', Session::get('idsuperadmin'))  ->update(['superadmin_userpassword' => $encryptedPassword   ]); 

$admins = \DB::table('superadmins')->where('id', '=',  Session::get('idsuperadmin'))  ->orderBy('id', 'desc')->first();
 
$nametr = Session::flash('statust', 'رمزعبور باموفقیت تغییر پیدا کرد');
$nametrt = Session::flash('sessurl', 'myprofile/edit/sup');
   	 
 
 	return  redirect('superadmin/myprofile/edit/sup');

}	 
				}
		


public function dropzoneStoredmyprofile(Request $request)
    {
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);        
$updatee = \DB::table('superadmins')->where('id', '=', Session::get('idsuperadmin'))  ->update(['superadmin_img' => $imageName   ]); 
$adminslp = \DB::table('superadmins')->where('id', '=', Session::get('idsuperadmin'))  ->orderBy('id', 'desc')->first();
$supimg=$adminslp->superadmin_img;	
	Session::set('supimg', $supimg);
        return response()->json(['success'=>$imageName]);
    }		





		
		
	public function securityysup( Request $request ){
if (Session::has('signsuperadmin')){ 

$h = new SuperadminController();
$h->validatesuperadmin();
  	$this->validate($request,[
    			'userpassword' => 'required|min:5|max:35|confirmed',
    			'tell' => 'required',
    			'email' => 'required',
    		],[
    			'userpassword.required' => 'لطفا رمز ورود را وارد نمایید',
    			'userpassword.min' => ' رمز کوتاه است',
    			'userpassword.max' => ' رمزعبور طولانی است ',
    			'userpassword.confirmed' => 'رمزعبور با تکرار آن مطابقت ندارد ',
    			'tell.required' => 'دقت نمایید تا زمانی که شماره تلفن شما ثبت نشده باشد شما نمی توانید رمز خود را تغییر دهید',
    			'email.required' => 'دقت نمایید تا زمانی که ایمیل شما ثبت نشده باشد شما نمی توانید رمز خود را تغییر دهید',
    		]);
    		
	
$encryptedPassword =  Crypt::encrypt($request->userpassword);
$decryptedPassword =  Crypt::decrypt($encryptedPassword);

$updatee = \DB::table('superadmins')->where('id', '=', Session::get('idsuperadmin'))  ->update(['superadmin_userpassword' => $encryptedPassword   ]); 

$admins = \DB::table('superadmins')->where('id', '=',  Session::get('idsuperadmin'))  ->orderBy('id', 'desc')->first();

			 $nametr = Session::flash('statust', 'رمز شما با موفقیت تغییر کرد.');
		  	$nametrt = Session::flash('sessurl', 'myprofile/edit/sup');	
		  	
 	
$user = \DB::table('superadmins')->where('id', '=', Session::get('idsuperadmin'))  ->orderBy('id', 'desc')->first();
/*
 	if ( $user->superadmin_email != '')  {
 	 $usernamee = $user->superadmin_username; 
 $titmes='رمز شما با موفقیت تغییر کرد';
 $mestt='رمزجدید';
 $mesnot = Crypt::decrypt($user->superadmin_userpassword); 
   Mail::send('superadmin.mail', ['user' => $user , 'usernamee' => $usernamee, 'mesnot' => $mesnot, 'titmes' => $titmes , 'mestt' => $mestt], function ($m) use ($user) {       
$decryptedPassword =  Crypt::decrypt($user->superadmin_userpassword);
            $m->from('info@demo.com', 'رمز جدید');
            $m->to($user->superadmin_email, $user->superadmin_email)->subject('امنیت اطلاعات');
        }); 	
 } 
 */
 
 /*
 	if ( $user->superadmin_tell != '')  {
 		
 $admins =  \DB::table('superadmins')->where('id', '=', Session::get('idsuperadmin'))  ->orderBy('id', 'desc')->first();
$panelsms = \DB::table('panelsms')->where('id', '=',  1)  ->orderBy('id', 'desc')->first();
include(app_path().'/../sms/api_send_sms.php');
$message='با عرض سلام. رمز شما با موفقیت تغییر کرد . رمز جدید : '.$decryptedPassword.' ';
$result = Send_SMS($panelsms->sms_username, $panelsms->sms_password, $panelsms->sms_fromnumber, $admins->superadmin_tell, $message , 0, false) ; 		
 		
 		} 
 		*/
 
 

        
        
        
          return view('superadmin.success');

}	
else{ return redirect('superadmin/sign-in'); }
				}
		


		
	public function rejdocpost($id , Request $request){
		if (Session::has('signsuperadmin')){ 
			
Session::set('errus', '7'); 
$adminacc =  DB::table('user')->where('id', '=', $id) ->orderBy('id', 'desc')->first();	
 
						
$updatee = \DB::table('user')->where('id', '=', $id)  ->update(['user_autdes' => $request->des , 'user_autactive' => 2      ]); 

 
$user = \DB::table('user')->where('id', '=', $id)  ->orderBy('id', 'desc')->first();
if ( ($user->user_emailactive == 1) &&  ($user->user_tellactive == 1) &&  ($user->user_autactive == 1)   ){  $active=1; } else {  $active=0;}
$updatee = \DB::table('user')->where('id', '=', $id)  ->update(['user_active' => $active   ]);

		  	$admins = \ DB::table('user')->where('id', $id)->get();				
		  	$nametr = Session::flash('statust', 'مدارک کاربر توسط مدیریت تایید نشد .');
		  	$nametrt = Session::flash('sessurl', 'viewsusers/edituser/'.$id.'');		
		  	
		  	
$nametr = Session::flash('err', '7');

$updatee = \DB::table('alert')->where('iduser', '=', $id)  ->update(['show' => 1  ]); 
    

$h = new SuperadminController();
$h->updatenotifalert();
		  	
 	 return redirect('superadmin/viewsusers/edituser/'.$id);	
		  	
		  	
		  	} else{ return redirect('superadmin/sign-in'); } }




	public function accdocusersup($id){
		if (Session::has('signsuperadmin')){ 
			
$adminacc =  DB::table('user')->where('id', '=', $id) ->orderBy('id', 'desc')->first();	
 
						
$updatee = \DB::table('user')->where('id', '=', $id)  ->update(['user_autactive' => 1   ]); 
		  	$admins = \ DB::table('user')->where('id', $id)->get();	
		  	
		  	$user = \DB::table('user')->where('id', '=', $id)  ->orderBy('id', 'desc')->first();
if ( ($user->user_emailactive == 1) &&  ($user->user_tellactive == 1) &&  ($user->user_autactive == 1)   ){  $active=1; } else {  $active=0;}
$updatee = \DB::table('user')->where('id', '=', $id)  ->update(['user_active' => $active   ]);
		  	
		  				
		  	$nametr = Session::flash('statust', 'مدارک کاربر باموفقیت به تایید مدیریت رسید .');
		  	$nametrt = Session::flash('sessurl', 'viewsusers/edituser/'.$id.'');		
		  	
		  	
$nametr = Session::flash('err', '7');

$updatee = \DB::table('alert')->where('iduser', '=', $id)  ->update(['show' => 1  ]); 
    

$h = new SuperadminController();
$h->updatenotifalert();
		  	
 	 return redirect('superadmin/viewsusers/edituser/'.$id);	
		  	
		  	
		  	} else{ return redirect('superadmin/sign-in'); } }
		
		

		
	public function addadmin(){
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
	Session::set('nav', 'addadmin'); return view('sup.addadmin');}	
else{ return redirect('superadmin/sign-in'); }
				}
			


public function addadminPost(Request $request)
    {
if (Session::has('signsuperadmin')){    	
    	
    	$this->validate($request,[
    			'name' => 'required',
    			'username' => 'required|min:5|max:35|unique:admins,admin_username,$request->username',
    			'userpassword' => 'required|min:5|max:35|confirmed'
    		],[
    			'name.required' => 'لطفا نام و نام خانوادگی را وارد نمایید',
    			'username.required' => 'لطفا نام کاربری را وارد نمایید',
    			'username.min' => 'نام کاربری شما باید بیشتر از 5 کاراکتر باشد',
    			'username.max' => 'یوزرنیم شما باید کمتر از 35 کارکتر باشد',
    			'username.unique' => 'این نام کاربری قبللا در سیستم ثبت شده است',
    			'userpassword.required' => 'لطفا رمز ورود را وارد نمایید',
    			'userpassword.min' => ' رمز کوتاه است',
    			'userpassword.max' => ' رمزعبور طولانی است ',
    			'userpassword.confirmed' => 'رمزعبور با تکرار آن مطابقت ندارد ',
    		]);
    		 
$encryptedPassword = \Crypt::encrypt($request->userpassword);
$decryptedPassword = \Crypt::decrypt($encryptedPassword);
		
DB::table('admins')->insert([
    ['admin_username' => $request->username , 'admin_name' => $request->name , 'admin_password' => $encryptedPassword ,   'admin_createdatdate' =>  date('Y-m-d H:i:s') , 'admin_active' => 0]
]);

$users = DB::table('admins')->where('admin_username', $request->username)->first();
$userscou = DB::table('admins')->where('admin_username', $request->username)->count();

$id_db= $users->id; 
$password_db= $users->admin_password; 

DB::table('accessadmins')->insert([
    ['accessadmin_idadmin' => $id_db , 'accessadmin_elanat' => 1 , 'accessadmin_ticket' => 1     ]
]);
			 $nametr = Session::flash('statust', 'ثبت نام مدیر با موفقیت انجام شد.');
		  	$nametrt = Session::flash('sessurl', 'viewsadmins');
 return redirect('superadmin/viewsadmins'); 
    
  }	
else{ return redirect('superadmin/sign-in'); }    
    	
    }
	
	
	
	
	
			
		
	public function viewsadmins(){
		if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin(); Session::set('nav', 'viewsadmins');
$admins = \DB::table('admins') ->orderBy('id', 'desc')->get();
return view('sup.viewsadmins', ['admins' => $admins]);
}	else{ return redirect('superadmin/sign-in'); }
}
	
	
	


	public function editadmin($id){
if (Session::has('signsuperadmin')){ 
	Session::put('idimg', $id); Session::set('nav', 'viewsadmins'); 
$h = new SuperadminController();
$h->validatesuperadmin();
$admins = \DB::table('admins')->where('id', '=', $id)  ->orderBy('id', 'desc')->get();
$accadmins = \DB::table('accessadmins')->where('accessadmin_idadmin', '=', $id)  ->orderBy('id', 'desc')->first();

 

return view('sup.editadmin', ['admins' => $admins ,  'accadmins' => $accadmins   ]); }	
else{ return redirect('superadmin/sign-in'); }
}



		
	public function accessadminpost( $id , Request $request ){
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
$nametr = Session::flash('err', '3');
$updatee = \DB::table('accessadmins')->where('accessadmin_idadmin', '=',$id)  ->update([ 'accessadmin_user' => $request->accessadmin_user   ,'accessadmin_blog' => $request->accessadmin_blog    ]); 
 

			 $nametr = Session::flash('statust', 'سطح دسترسی با موفقیت ویرایش شد.');
		  	$nametrt = Session::flash('sessurl', 'viewsadmins/edit/'.$id.'');		  	


$nametr = Session::flash('err', '3');

 return redirect('superadmin/viewsadmins/edit/'.$id.'');  

}	
else{ return redirect('superadmin/sign-in'); }
				}
		



		
	public function accadmsup($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
$adminacc =  DB::table('admins')->where('id', '=', $id) ->orderBy('id', 'desc')->first();	
 
						
$updatee = \DB::table('admins')->where('id', '=', $id)  ->update(['admin_active' => 1   ]); 
		  	$admins = \ DB::table('admins')->where('id', $id)->get();				
		  	$nametr = Session::flash('statust', 'اکانت مدیر باموفقیت فعال شد .');
		  	$nametrt = Session::flash('sessurl', 'viewsadmins/edit/'.$id.'');			  	
		  			  	
		  	$user = \DB::table('admins')->where('id', '=', $id)  ->orderBy('id', 'desc')->first();
 
$nametr = Session::flash('err', '1');

 return redirect('superadmin/viewsadmins/edit/'.$id.'');  
		
	
 
}   }
		
		
	public function rejadmsup($id){
 if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();				
$updatee = \DB::table('admins')->where('id', '=', $id)  ->update(['admin_active' => 0   ]); 
		  	$admins = \ DB::table('admins')->where('id', $id)->get();				
		  	$nametr = Session::flash('statust', 'اکانت مدیر باموفقیت غیرفعال شد.');
		  	$nametrt = Session::flash('sessurl', 'viewsadmins/edit/'.$id.'');	
$nametr = Session::flash('err', '1');

 return redirect('superadmin/viewsadmins/edit/'.$id.''); 
	}  }
				 
			
		


		
	public function editadminpost($id  , Request $request ){
if (Session::has('signsuperadmin')){ 

$h = new SuperadminController();
$h->validatesuperadmin();
$nametr = Session::flash('err', '1');

$this->validate($request,[
    			'name' => 'required|min:3|max:35', 
    			'tell' => 'required|numeric',
    			'email' => 'required|email',
    			'adres' => 'required|min:3|max:555',
    			'file'  => 'max:1000', 
    		],[
    			'name.required' => 'نام و نام خانوادگی را وارد نمایید',
    			'name.min' => 'نام کوتاه است',
    			'name.max' => 'نام غیقابل قبول',
    			'tell.required' => 'شماره تلفن را بصورت صحیح وارد کنید',
    			'tell.numeric' => 'شماره غیرقابل قبول است',
    			'email.required' => 'ایمیل را بصورت صحیح وارد کنید',
    			'email.email' => 'فرمت ایمیل غیرقابل قبول است',
    			'adres.required' => 'آدرس را بصورت صحیح وارد کنید',
    			'adres.min' => 'دآدرس کوتاه است',
    			'adres.max' => 'آدرس خیلی بلند است',  
    			'file.max' => 'حجم فایل آپلود شده بیشتر از حد مجاز می باشد. (حدمجاز 1مگابایت یا کمتر از این مقدار باید باشد)', 
    			
    		]);
    		


$user = \DB::table('admins')->where('id', '=', $id)  ->orderBy('id', 'desc')->first();

$imageName=$user->admin_img;


 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }
 
 

 		if ( $request->email ==  $user->admin_email   ){  $activeemail =  $user->admin_emailactive ; }
 else   if ( $request->email !=  $user->admin_email   ){  $activeemail ='0';}

 		if ( $request->tell ==  $user->admin_tell   ){  $activetell =  $user->admin_tellactive ; }
 else   if ( $request->tell !=  $user->admin_tell   ){  $activetell ='0';}
 
  
 
$updatee = \DB::table('admins')->where('id', '=', $id)  ->update(['admin_name' => $request->name    ,  'admin_tell' => $request->tell ,  'admin_email' => $request->email ,  'admin_adres' => $request->adres ,  'admin_emailactive' => $activeemail ,  'admin_tellactive' => $activetell , 'admin_img' => $imageName  ]); 

$user = \DB::table('admins')->where('id', '=', $id)  ->orderBy('id', 'desc')->first();
if ( ($user->admin_emailactive == 1) &&  ($user->admin_tellactive == 1)   ){  $active=1;}
if ( ($user->admin_emailactive == 0) ||  ($user->admin_tellactive == 0)   ){  $active=0;}
$updatee = \DB::table('admins')->where('id', '=', $id)  ->update(['admin_active' => $active   ]);

$admins = \DB::table('admins')->where('id', '=', $id)  ->orderBy('id', 'desc')->get();
$nametr = Session::flash('statust', 'ویرایش اطلاعات مدیر با موفقیت انجام شد.');
$nametrt = Session::flash('sessurl', 'viewsadmins/edit/'.$id.''); 
	 

 return redirect('superadmin/viewsadmins/edit/'.$id.'');  
		 
}	else{ return redirect('superadmin/sign-in'); }
}
	


	
		
	public function securityyadmin( Request $request, $id ){
if (Session::has('signsuperadmin')){ 

$h = new SuperadminController();
$h->validatesuperadmin();
$nametr = Session::flash('err', '2');


 
    	$this->validate($request,[
    			'nowpass' => 'required',
    			'userpassword' => 'required|min:5|max:35|confirmed', 
    		],[
    			'nowpass.required' => 'لطفا رمزعبور فعلی را وارد نمایید',
    			'userpassword.required' => 'لطفا رمزعبور جدید را وارد نمایید',
    			'userpassword.min' => 'رمزعبور کوتاه است', 
    			'userpassword.confirmed' => 'رمزعبور باهم مطابقت ندارد', 
    		]); 


 
 
$admins = \DB::table('admins')->where('id', '=',  $id)  ->orderBy('id', 'desc')->first();
 
$decryptedPasswordnow =  Crypt::decrypt($admins->admin_password);


 if($request->nowpass!=$decryptedPasswordnow){
 	$nametr = Session::flash('statusterror', 'رمزعبور فعلی اشتباه وارد شده است');
 	return  redirect(''.Session::get('arou').'/viewsadmins/edit/'.$id.'');
 }
 
 
$encryptedPassword =  Crypt::encrypt($request->userpassword);
$decryptedPassword =  Crypt::decrypt($encryptedPassword);

$updatee = \DB::table('admins')->where('id', '=',  $id)  ->update(['admin_password' => $encryptedPassword   ]); 

  
$nametr = Session::flash('statust', 'رمزعبور باموفقیت تغییر پیدا کرد'); 
 
 	return  redirect(''.Session::get('arou').'/viewsadmins/edit/'.$id.'');
 

}	
else{ return redirect('superadmin/sign-in'); }
				}
		



		
		
	public function deletadmin($id){
		if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
		  	$admins = \ DB::table('admins')->where('id', $id)->get();
		  	$admins = \DB::table('admins')->where('id', '=', $id)->delete();
		  	$admins = \DB::table('accessadmins')->where('accessadmin_idadmin', '=', $id)->delete();
		  	$nametr = Session::flash('statust', 'حذف مدیر با موفقیت انجام شد.');
		  	$nametrt = Session::flash('sessurl', 'viewsadmins');
		  	 return redirect('superadmin/viewsadmins');
	}	
else{ return redirect('superadmin/sign-in'); }
				}
		
		
	
	
	
			
		
	public function loginadmin($id){
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
	Session::put('idimg', $id);
	 
	
 $updatee = \DB::table('admins')->where('id', '=', $id)  ->update(['admin_loginatdate' => date('Y-m-d H:i:s')    ,    'admin_active' => '1'   ,    'admin_emailactive' => '1'   ,    'admin_tellactive' => '1'      ]); 
	
$admins = \DB::table('admins')->where('id', '=', $id)  ->orderBy('id', 'desc')->first();

if($admins){

$password_db= $admins->admin_password; 
$decryptedPassword =  Crypt::decrypt($password_db);
$userscou = DB::table('admins')->where([
    ['admin_username',  $admins->admin_username],
])->count();
$name_db= $admins->admin_name;
$id_db= $admins->id;
$activeadmin= $admins->admin_active; 
$name_db= $admins->admin_name; 
$username_db= $admins->admin_username; 
$password_db= $admins->admin_password; 
$username_log = $admins->admin_username; 
if(($username_log == $username_db)&&( $decryptedPassword == Crypt::decrypt($password_db))){
 
	Session::set('idadmin', $id_db); 
	Session::set('signadmin', $username_db);
	Session::set('activeadmin', $activeadmin);
	Session::set('idlang', '3');
	
	

$accessadmins = \DB::table('accessadmins')->where('accessadmin_idadmin', '=',  Session::get('idadmin'))  ->orderBy('id', 'desc')->first();	 
 
	Session::set('accessadmin_user', $accessadmins->accessadmin_user);	
	Session::set('accessadmin_blog', $accessadmins->accessadmin_blog);	 
	
	

$adminslp = \DB::table('admins')->where('id', '=', $id_db)  ->orderBy('id', 'desc')->first();
$logindatepas=$adminslp->admin_loginatdate;	

$admimg=$adminslp->admin_img;
if(empty($admimg)){$admimg='user2x.png';}	
	Session::set('logindatepasadm', $logindatepas);
	Session::set('admimg', $admimg);
	$updatee = \DB::table('admins')->where('id', '=', Session::get('idadmin'))  ->update(['admin_loginatdate' => date('Y-m-d H:i:s')    ]); 
	
	 return redirect('admin/panel'); 
		} else 
			 $nametr = Session::flash('statust',  'اخطار');
				return redirect('admin/sign-in');  
} 
 
}	
else{ return redirect('superadmin/sign-in'); }
}



	


public function forgetpasssuperadmin(){ 
 Session::set('arou', 'superadmin');  
 
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();
  
 return view('cust.forgetpass'  , [ 'mngindexs' => $mngindexs     ]); 
 
}
		
		
		

	public function forgetpasssuperadminpost( Request $request){ 

  $this->validate($request,[ 
    			'email' => 'required|email', 
    		],[
    			'email.required' => 'لطفا ایمیل راوارد نمایید ', 
    			'email.email' => 'لطفا فرمت ایمیل را بصورت صحیح وارد نمایید',  
    			
    		]); 
    		
    	 

$counts = DB::table('superadmins')->where([
    ['superadmin_email',  $request->email],
])->count();
if($counts!='0'){ 
 
$str = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
$shuffled = str_shuffle($str);

	$updatee = \DB::table('superadmins')->where([
    ['superadmin_email',  $request->email],
])->update(['superadmin_linkforget' => $shuffled  ]); 

$user = DB::table('superadmins')->where([
    ['superadmin_email',  $request->email],
])->first(); 
$user_linkforget=$user->superadmin_linkforget;
  
 
 $mesnot =$user_linkforget; 
 
 $url='https://kargo.biz/mail/forgetpass.php?email='.$user->superadmin_email.'&code='.$mesnot.'&arou=superadmin';  
 
      
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0); 
    curl_setopt($ch, CURLOPT_POSTFIELDS, array());
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_HEADER, 0);
    $result = curl_exec($ch); 
   
 $nametr = Session::flash('success', 'لینک فعالسازی رمزعبور شما باموفقیت به ایمیل شما ارسال شد .'); 
 return  redirect('superadmin/sign-in');  
 
	  
 		} 
 	elseif($counts=='0') {
 
 $nametr = Session::flash('statust', 'متاسفانه این ایمیل در سیستم وجود ندارد .'); 
 return  redirect('superadmin/forgetpass');
} 

}	


 

 
	public function newpasswordsuperadmin(Request $request , $id){  
 
 $adminscount = DB::table('superadmins')->where([
    ['superadmin_linkforget' ,   $id ],
])->count();

if($adminscount=='0'){
	 return redirect('superadmin/sign-in'); 
} else{
	
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();

 $admins = DB::table('superadmins')->where([
    ['superadmin_linkforget' ,   $id ],
])->first();

return view('sup.newpassword', ['mngindexs' => $mngindexs , 'admins' => $admins]);
}
 }
	
		


 
				
				
public function newpasswordsuperadminpost(Request $request ,  $id)
    {   	
 
  	
    	$this->validate($request,[ 
    			'userpassword' => 'required|min:5|max:35|confirmed'
    		],[ 
    			'userpassword.required' => 'لطفا رمز عبور را وارد نمایید', 
    			'userpassword.min' => 'رمزعبور کوتاه است', 
    			'userpassword.max' => 'رمزعبور طولانی است', 
    			'userpassword.confirmed' => 'رمزعبور با تکرار آن مطابقت ندارد', 
    		]);
    		
    		
$encryptedPassword = \Crypt::encrypt($request->userpassword);
    		
	$updatee = \DB::table('superadmins')->where([
    ['superadmin_linkforget',  $id],
])->update(['superadmin_userpassword' => $encryptedPassword  ]); 



 $nametr = Session::flash('success', 'رمزعبور شما باموفقیت تعییر پیدا کرد .'); 
 return  redirect('superadmin/sign-in');  

    		
    		}
				
			
	



 public function addusertPost($role , Request $request){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
  
$h = new SuperadminController();
$h->validatesuperadmin();


	if($role=='user')  {  $redact='superadmin/mngcust/cust';   $idrole='1';
				 $nametr = Session::flash('statust', 'ثبت نام کاربر با موفقیت انجام شد.');  }
elseif($role=='seller'){  $redact='superadmin/mngartf/artf';  $idrole='2';  
			 $nametr = Session::flash('statust', 'ثبت نام بازاریاب با موفقیت انجام شد.');}


    	$this->validate($request,[
    			'username' => 'required|min:3|unique:user,user_username,$request->username', 
    			'userpassword' => 'required|min:5|max:35|confirmed'
    		],[
    			'username.required' => 'لطفا نام کاربری را وارد نمایید',
    			'username.min' => 'نام کاربری شما باید بیشتر از 3 کاراکتر باشد',
    			'username.unique' => 'این نام کاربری قبللا در سیستم ثبت شده است',
    			'userpassword.required' => 'لطفا رمز ورود را وارد نمایید',
    			'userpassword.min' => ' رمز کوتاه است',
    			'userpassword.max' => ' رمزعبور طولانی است ',
    			'userpassword.confirmed' => 'رمزعبور با تکرار آن مطابقت ندارد ',
    		]);   
    		
 

$encryptedPassword = \Crypt::encrypt($request->userpassword);
$decryptedPassword = \Crypt::decrypt($encryptedPassword);
$rnd=rand(1, 99999999); 

$user=\DB::table('user')  ->where('id' , '<>' , '0')->orderBy('id' , 'desc')->first();  
    		

DB::table('user')->insert([
    [ 'user_password' => $encryptedPassword ,   'user_createdatdate' =>  date('Y-m-d H:i:s') , 'user_active' => 0 , 'user_moaref' => $rnd   , 'user_username' => $request->username  , 'user_email' => $request->email    , 'user_name' => $request->name , 'user_idmoaref' => $request->idmoaref    , 'user_role' => $idrole       ]
]);  
    		 
    	
$user=\DB::table('user')  ->where('user_username' , '=' , $request->username)->orderBy('id' , 'desc')->first(); 	 

$mngfinics=\DB::table('mngfinics')  ->where('mngfinics_id' , '=' , '1')->orderBy('mngfinics_id' , 'desc')->first();  
    		
    		
DB::table('income')->insert([
    [ 'income_iduser' => $user->id ,   'income_update' =>  date('Y-m-d H:i:s') , 'income_balance' =>  $mngfinics->mngfinics_rewardbalance , 'income_earning' => 0  , 'income_time' => time()    ]
]);  
    	 




$incomeuser=\DB::table('income')  ->where('income_iduser' , '=' , $request->idmoaref)->orderBy('income_iduser' , 'desc')->first(); 


$income_balance=0;

if($incomeuser){
	$income_balance=$incomeuser->income_balance+$mngfinics->mngfinics_referral;
}



	$updatee = \DB::table('income')->where('income_iduser', '=', $request->idmoaref )  ->update([  'income_balance' => $income_balance  ]);
	





 

		  	$nametrt = Session::flash('sessurl', 'viewsusers');
		  	
 return redirect($redact); 


	 } }
			


	 

	 
	 

public function allpagerank($stat  ,  $id ){

	// $stat=0;  allusers
	// $stat=1;  allticket allrequest
	// $stat=2;  allmngcrease 


	
$limit=10 ;  
$page=($id-1)*$limit; 
  
 

	if($stat=='0'){
		$idrole=1;

		 
		$admins = \DB::table('user')->where([
			['id','<>' , 0],
			['user_role','=' , $idrole], 
		])->offset($page) ->limit($limit)->orderBy('id', 'desc')->get();

		$count = \DB::table('user')->where([
			['id','<>' , 0],
			['user_role','=' , $idrole], 
		])->orderBy('id', 'desc')->count();

	}


	if($stat=='1'){

		
		$admins = \DB::table('ticket')  ->where([
			['tik_fromarou', '=', 4],
			['tik_toarou', '=', 2],
			['tik_walletid', '=', 0], ])
			->offset($page) ->limit($limit)->orderBy('ticket.tik_date', 'desc')->get();
		
			$count = \DB::table('ticket')  ->where([
			   ['tik_fromarou', '=', 4],
			   ['tik_toarou', '=', 2],
			   ['tik_walletid', '=', 0], ])
			   ->orderBy('ticket.tik_date', 'desc')->count();

	}

	
 

	

	if($stat=='2'){

		

		$admins = \DB::table('reqdeposite')
		->join('user', 'reqdeposite.reqdep_iduser', '=', 'user.id') ->where([
			['reqdep_id','<>' , 0], 
		])->offset($page) ->limit($limit)->orderBy('reqdep_id', 'desc')->get();


		$count = \DB::table('reqdeposite')
		->join('user', 'reqdeposite.reqdep_iduser', '=', 'user.id') ->where([
			['reqdep_id','<>' , 0], 
		])->orderBy('reqdep_id', 'desc')->count();

 

	}


	$pagerank=ceil($count/$limit);
	
	Session::set('pagerank', $pagerank ); 
	Session::set('count', $count ); 
	Session::set('allquerypages', $admins ); 




}


	 public function viewsuserssup($role , $id=null ){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 

 Session::set('nav', 'viewsusers'); 
 
$h = new SuperadminController();
$h->validatesuperadmin();

$link_p_page=$id;
if(($id > 1)){} else{$id=1;}


$stat=0;  
$h = new SuperadminController();
$h->allpagerank($stat,$id);




	if($role=='cust'){    $idrole='1'; }
elseif($role=='artf'){    $idrole='2'; }




 
 
 
$pagerank=Session::get('pagerank'); 
$count=Session::get('count'); 
$admins=Session::get('allquerypages'); 



return view('mng.viewsusers', ['admins' => $admins , 'role' => $role   , 'id' => $id  , 'pagerank' => $pagerank , 'count' => $count , 'link_p_page' => $link_p_page   ]);
 
} }




 




	public function deletcontact($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
 
		  	$admins = \DB::table('contact')->where('contact_id', '=', $id)->delete(); 
		  	$nametr = Session::flash('statust', 'حذف پیام با موفقیت انجام شد.');
		  	$nametrt = Session::flash('sessurl', 'mngcontact');
		  	
 return redirect('superadmin/mngcontact'); 
	}	 
				}


		


		
 






	public function editusersup( $id , $role ){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
	Session::put('idimg', $id); Session::set('nav', 'viewsusers'); 
$admin = \DB::table('user')->where('id', '=', $id)  ->orderBy('id', 'desc')->first();



$crpt = \DB::table('user')->where('id', '=', $id)  ->orderBy('id', 'desc')->first();

$oldpassword=$crpt->user_password;

$password_db= $oldpassword; 
$decryptedPassword =  Crypt::decrypt($password_db);

$refralusers = \DB::table('user')->where('user_idmoaref', '=', $id)  ->orderBy('id', 'desc')->get();

$sarshakhes = \DB::table('user')->where('id', '=', $crpt->user_idmoaref)  ->orderBy('id', 'desc')->first();

 	  
return view('mng.profileuser', ['admin' => $admin , 'decryptedPassword' => $decryptedPassword  , 'role' => $role   , 'refralusers' => $refralusers    , 'sarshakhes' => $sarshakhes  ]); }	 
}

		
	public function editusersupPost($id  ,  $role , Request $request ){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
 

$this->validate($request,[ 
    			'username' => 'required', 
    			'email' => 'required|email', 
    			'file'  => 'max:1000', 
    		],[ 
    			'username.required' => 'لطفا نام کاربری را وارد نمایید',    
    			'email.required' => 'ایمیل را بصورت صحیح وارد کنید',
    			'email.email' => 'فرمت ایمیل غیرقابل قبول است', 
    			'file.max' => 'حجم فایل آپلود شده بیشتر از حد مجاز می باشد. (حدمجاز 1مگابایت یا کمتر از این مقدار باید باشد)', 
    			
    		]);
    		


$user = \DB::table('user')->where('id', '=', $id)  ->orderBy('id', 'desc')->first();

$imageName=$user->user_img;


 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }
 
 

 		if ( $request->email ==  $user->user_email   ){  $activeemail =  $user->user_emailactive ; }
 else   if ( $request->email !=  $user->user_email   ){  $activeemail ='0';}

 		if ( $request->tell ==  $user->user_tell   ){  $activetell =  $user->user_tellactive ; }
 else   if ( $request->tell !=  $user->user_tell   ){  $activetell ='0';}
 
  
 
$updatee = \DB::table('user')->where('id', '=', $id)  ->update(['user_name' => $request->name    ,  'user_tell' => $request->tell ,  'user_email' => $request->email ,  'user_adres' => $request->adres ,  'user_emailactive' => $activeemail ,  'user_tellactive' => $activetell , 'user_img' => $imageName  ]); 

$user = \DB::table('user')->where('id', '=', $id)  ->orderBy('id', 'desc')->first();
if ( ($user->user_emailactive == 1) &&  ($user->user_tellactive == 1)   ){  $active=1;}
if ( ($user->user_emailactive == 0) ||  ($user->user_tellactive == 0)   ){  $active=0;}
$updatee = \DB::table('user')->where('id', '=', $id)  ->update(['user_active' => $active   ]);

$admins = \DB::table('user')->where('id', '=', $id)  ->orderBy('id', 'desc')->get();
$nametr = Session::flash('statust', 'ویرایش اطلاعات کاربر با موفقیت انجام شد.');
$nametrt = Session::flash('sessurl', 'viewsusers/edituser/'.$id.''); 
	 
	 
	  
 return redirect('superadmin/viewsusers/edituser/'.$id.'/'.$role);  
	   }
}
	




	public function editusersupincchargePost($id , Request $request){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();

$nametr = Session::flash('err', '3');

    	$this->validate($request,[
    			'tit' => 'required|numeric' 
    		],[
    			'tit.required' => 'لطفا مبلغ شارژ را وارد نمایید',
    			'tit.numeric' => 'مبلغ شارژ نامعتبر است', 
    		]);
    	

DB::table('finicals')->insert([
    ['finical_pay' => $request->tit , 'finical_shenasepardakht' => $request->des ,     'finical_createdatdate' =>  date('Y-m-d H:i:s') , 'finical_inc' => 6 , 'finical_payment' => 1 ,  'finical_arou' => 4 ,  'finical_iduser' => $id  ]
]);

$chargefinical=\DB::table('finicals') ->where([['finical_inc', '=',  6 ],['finical_arou', '=',  4 ],['finical_iduser', '=',  $id],])->orderBy('id', 'desc')->first();	
		    	
DB::table('charge')->insert([
    ['charge_pay' => $request->tit ,     'charge_createdatdate' =>  date('Y-m-d H:i:s') , 'charge_arou' => 4 ,  'charge_iduser' => $id ,  'charge_finical' => $chargefinical->id  ]
]);	    	

 
  
$nametr = Session::flash('statust',  'افزایش شارژ کاربر با موفقیت انجام شد');
$nametrt = Session::flash('sessurl', 'viewsusers/edituser/'.$id.'');		  	
 return view('superadmin.success'); 
 
}	 
}
 





	public function chargeuserincpostodat($id , Request $request){
if (Session::has('signsuperadmin')){ 
 
 
$nametr = Session::flash('err', '4');

    	$this->validate($request,[
    			'tit' => 'required|numeric' 
    		],[
    			'tit.required' => 'لطفا مبلغ را وارد نمایید',
    			'tit.numeric' => 'مبلغ نامعتبر است', 
    		]);
    	
if($request->jamekol < $request->tit) {
	$nametr = Session::flash('statust',  'مبلغ انتخاب شده جهت عودت بیشتر از شارژ اکانت کاربر می باشد');
$nametrt = Session::flash('sessurl', 'viewsusers/edituser/'.$id.'');			  	
 return view('superadmin.error');  	
}  else {


DB::table('finicals')->insert([
    ['finical_pay' => $request->tit ,  'finical_shenasepardakht' => $request->des ,     'finical_createdatdate' =>  date('Y-m-d H:i:s') , 'finical_inc' => 7 , 'finical_payment' => 1 ,  'finical_arou' => 4 ,  'finical_iduser' => $id  ]
]);

$chargefinical=\DB::table('finicals') ->where([['finical_inc', '=',  7 ],['finical_arou', '=',  4 ],['finical_iduser', '=',  $id],])->orderBy('id', 'desc')->first();	
		    	
DB::table('charge')->insert([
    ['charge_pay' => $request->tit ,     'charge_createdatdate' =>  date('Y-m-d H:i:s') , 'charge_arou' => 4 ,  'charge_iduser' => $id ,  'charge_finical' => $chargefinical->id  ]
]);	    	

 
  
$nametr = Session::flash('statust',  'عودت مبلغ شارژ از کاربر باموفقیت انجام شد');
$nametrt = Session::flash('sessurl', 'viewsusers/edituser/'.$id.'');		  	
 return view('superadmin.success');  	
}

 
}	else{ return redirect('superadmin/sign-in'); }
}
 









public function dropzoneStoreuser(Request $request)
    {
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);        
$updatee = \DB::table('user')->where('id', '=', Session::get('idimg'))  ->update(['user_img' => $imageName   ]); 
        return response()->json(['success'=>$imageName]);
    }
			
	public function deletusersup($id , $role){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
		  	$admins = \ DB::table('user')->where('id', $id)->get();
		  	$admins = \DB::table('user')->where('id', '=', $id)->delete(); 
		  	$nametrt = Session::flash('sessurl', 'viewsusers');


	if($role=='cust'){    
		  	$nametr = Session::flash('statust', 'حذف کاربر با موفقیت انجام شد.');
		  	$redact='superadmin/mngcust/cust';   $idrole='1'; }
elseif($role=='artf'){ 
		  	$nametr = Session::flash('statust', 'حذف بازاریاب با موفقیت انجام شد.');
		  	$redact='superadmin/mngartf/artf';  $idrole='2'; }

  
 return redirect($redact); 
	}	  }
		
		
		
		
		
		
	public function securityystud( Request $request, $id ,  $role){
if (Session::has('signsuperadmin')){ 

$h = new SuperadminController();
$h->validatesuperadmin();
$nametr = Session::flash('err', '1');


 
    	$this->validate($request,[
    			'nowpass' => 'required',
    			'userpassword' => 'required|min:5|max:35|confirmed', 
    		],[
    			'nowpass.required' => 'لطفا رمزعبور فعلی را وارد نمایید',
    			'userpassword.required' => 'لطفا رمزعبور جدید را وارد نمایید',
    			'userpassword.min' => 'رمزعبور کوتاه است', 
    			'userpassword.confirmed' => 'رمزعبور باهم مطابقت ندارد', 
    		]); 


 
 
$admins = \DB::table('user')->where('id', '=',  $id)  ->orderBy('id', 'desc')->first();
 
$decryptedPasswordnow =  Crypt::decrypt($admins->user_password);


 if($request->nowpass!=$decryptedPasswordnow){
 	$nametr = Session::flash('statusterror', 'رمزعبور فعلی اشتباه وارد شده است');
 	return  redirect(''.Session::get('arou').'/viewsusers/edituser/'.$id.'/'.$role);
 }
 
 
$encryptedPassword =  Crypt::encrypt($request->userpassword);
$decryptedPassword =  Crypt::decrypt($encryptedPassword);

$updatee = \DB::table('user')->where('id', '=',  $id)  ->update(['user_password' => $encryptedPassword   ]); 

  
$nametr = Session::flash('statust', 'رمزعبور باموفقیت تغییر پیدا کرد'); 
 

 return redirect('superadmin/viewsusers/edituser/'.$id.'/'.$role); 
 

}	
else{ return redirect('superadmin/sign-in'); }
				}
		

		
		
		
	public function accusersup($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
$nametr = Session::flash('err', '3');
$adminacc =  DB::table('user')->where('id', '=', $id) ->orderBy('id', 'desc')->first();	
  
$updatee = \DB::table('user')->where('id', '=', $id)  ->update(['user_active' => 1   ]); 
		  	$admins = \ DB::table('user')->where('id', $id)->get();				
		  	$nametr = Session::flash('statust', 'اکانت کاربر با موفقیت فعال شد .');
		  	$nametrt = Session::flash('sessurl', 'viewsusers/edituser/'.$id.'');			  	
		  			  	
		  	$user = \DB::table('user')->where('id', '=', $id)  ->orderBy('id', 'desc')->first();
  
 return redirect('superadmin/viewsusers/edituser/'.$id.'');  
 
}   }
		
		
		
		 

	public function updatenotifalert(){	
		    
$alerts  = \DB::table('alert')
->join('user', 'alert.iduser', '=', 'user.id') ->where([ 
    ['alert.active', '=', 0],    ])
    ->orderBy('alert.date', 'desc')->get(); 
    
Session::set('alerts', $alerts);  
    
$countalerts  = \DB::table('alert')
->join('user', 'alert.iduser', '=', 'user.id') ->where([ 
    ['alert.active', '=', 0],    ])
    ->orderBy('alert.date', 'desc')->count(); 	  

Session::set('countalerts', $countalerts);  


$countpers  = \DB::table('alert')
->join('user', 'alert.iduser', '=', 'user.id') ->where([ 
    ['alert.active', '=', 0],   
    ['alert.type', '=', 11],    ])
    ->orderBy('alert.date', 'desc')->count(); 	  

Session::set('countpers', $countpers);  

$countcomp  = \DB::table('alert')
->join('user', 'alert.iduser', '=', 'user.id') ->where([ 
    ['alert.active', '=', 0],   
    ['alert.type', '=', 12],    ])
    ->orderBy('alert.date', 'desc')->count(); 	  

Session::set('countcomp', $countcomp);  

$countalerts=$countpers+$countcomp;

Session::set('countalerts', $countalerts); 




$tickread = DB::table('user') 
->join('ticket', 'user.id', '=', 'ticket.tik_fromid')->where([
    ['tik_fromarou', '=', 4],
    ['tik_toarou', '=', 2],
    ['tik_tosh', '=', 1],
    ['tik_toread', '=', 0],])
    ->orderBy('ticket.id', 'desc')->count();
	Session::set('tickreadstudentsup', $tickread);   

}
		
 


		
	public function rejusersup($id){
 if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();		
$nametr = Session::flash('err', '3');		
$updatee = \DB::table('user')->where('id', '=', $id)  ->update(['user_active' => 0   ]); 
		  	$admins = \ DB::table('user')->where('id', $id)->get();				
		  	$nametr = Session::flash('statust', 'اکانت کاربر باموفقیت غیرفعال شد.');
		  	$nametrt = Session::flash('sessurl', 'viewsusers/edituser/'.$id.'');		  	

 return redirect('superadmin/viewsusers/edituser/'.$id.'');  
	}  }






		
	public function loginusersup($id, $role){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
	Session::put('idimg', $id);
	
	
	$updatee = \DB::table('user')->where('id', '=', $id)  ->update(['user_loginatdate' => date('Y-m-d H:i:s')     ]); 
	
	
	
	/*
	$updatee = \DB::table('user')->where('id', '=', $id)  ->update(['user_loginatdate' => date('Y-m-d H:i:s')    ,    'user_active' => '1'   ,    'user_emailactive' => '1'   ,    'user_tellactive' => '1'   ,    'user_autactive' => '1'   ]); 
	
	*/
	
$admins = \DB::table('user')->where('id', '=', $id)  ->orderBy('id', 'desc')->first();

if($admins){

$password_db= $admins->user_password; 
$decryptedPassword =  Crypt::decrypt($password_db);
$userscou = DB::table('user')->where([
    ['user_username',  $admins->user_username],
])->count();
$name_db= $admins->user_name ;
$id_db= $admins->id;
$activeadmin= $admins->user_active; 
$name_db= $admins->user_name ; 
$username_db= $admins->user_username; 
$password_db= $admins->user_password; 
$username_log = $admins->user_username; 
if(($username_log == $username_db)&&( $decryptedPassword == Crypt::decrypt($password_db))){


$adminslp = \DB::table('user')->where('id', '=', $id_db)  ->orderBy('id', 'desc')->first();
$logindatepas=$adminslp->user_loginatdate;	

$admimg=$adminslp->user_img;

 $updatee = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->update(['user_loginatdate' => date('Y-m-d H:i:s')    ]); 
	
	
	
	
 if($role=='user'){
	Session::set('signuser', $username_db);
	Session::set('fullname', $name_db);
	Session::set('iduser', $id_db);
	Session::set('signname', $name_db); 
	Session::set('activeuser', $activeadmin); 
	Session::set('logindatepasus', $logindatepas);
	Session::set('usimg', $admimg); 
    return redirect('/'); 
    }	
 elseif($role=='seller'){
	Session::set('signseller', $username_db);
	Session::set('fullname', $name_db);
	Session::set('iduser', $id_db);
	Session::set('signname', $name_db); 
	Session::set('activeuser', $activeadmin); 
	Session::set('logindatepasus', $logindatepas);
	Session::set('usimg', $admimg); 
    return redirect('/'); 
    }
    
    
    
		} else 
			 $nametr = Session::flash('statust',  'اخطار');
				return redirect('user/sign-in');  
} 
 
}	 
}



	  

 public function addlevel(){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
 Session::set('nav', 'addlevel');  
$h = new SuperadminController();
$h->validatesuperadmin();


$admins = \DB::table('teacher')->where('teach_active', '=', 1)  ->orderBy('id', 'desc')->get();
return view('sup.addlevel', ['admins' => $admins]);
 
	 }}
			


public function addlevelPost(Request $request){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
 Session::set('nav', 'addlevel');  
$h = new SuperadminController();
$h->validatesuperadmin(); 	    	
    	$this->validate($request,[
    			'name' => 'required|min:3|max:66|unique:level,level_name,$request->name',
    			'teacher' => 'required',
    		],[
    			'name.required' => 'لطفا نام دوره را وارد نمایید',
    			'name.min' => 'نام دروه کوتاه است',
    			'name.max' => ' نام دوره معتبر نیست',
    			'name.unique' => 'نام دوره قبلا در سیستم ثبت شده است',
    			'teacher.required' => 'لطفا استاد مدرس را وارد نمایید',
    			
    		]);   
     			
DB::table('level')->insert([
    ['level_name' => $request->name ,'level_teacher' => $request->teacher ,  'level_active' => 0 ,   'level_createdatdate' =>  date('Y-m-d H:i:s'),'level_des' => $request->level_des ,'level_sesion' => $request->level_sesion    ]
]); 

$users = DB::table('level')->where('level_name', $request->name)->first();
$userscou = DB::table('level')->where('level_name', $request->name)->count();

$nametr = Session::flash('statust', 'دوره با موفقیت ثبت شد.');
$nametrt = Session::flash('sessurl', 'viewslevels');
		
 return redirect('superadmin/viewslevels');     	 
 }}
		

	  

 public function viewslevels(){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
 Session::set('nav', 'viewslevels');  
$h = new SuperadminController();
$h->validatesuperadmin();
$admins = \DB::table('level') ->orderBy('id', 'desc')->get();
return view('sup.viewslevels', ['admins' => $admins]); 
	 }}
			


	  

 public function viewslevelsid($id){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
 Session::set('nav', 'viewslevels');  
$h = new SuperadminController();
$h->validatesuperadmin(); 
$admins = \DB::table('level')   
->where('level.id', '=' , $id)->orderBy('level.id', 'desc')->get();
$terms = \DB::table('term') ->where('term_level', '=' , $id)->orderBy('id', 'asc')->get();
$teachers = \DB::table('teacher')->where('teach_active', '=', 1)  ->orderBy('id', 'desc')->get();
return view('sup.editlevel', ['admins' => $admins ,'terms' => $terms ,'teachers' => $teachers  ]); 
	 }}
			




	public function viewslevelsidpost($id  , Request $request ){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();

$nametr = Session::flash('err', '1');

$this->validate($request,[
    			'name' => 'required|min:3|max:35', 
    			'teacher' => 'required',
    		],[
    			'name.required' => 'نام دوره را وارد نمایید',
    			'name.min' => 'نام کوتاه است',
    			'name.max' => 'نام غیقابل قبول', 
    			'teacher.required' => 'لطفا استاد مدرس را وارد نمایید',
    			
    		]);
    		 
$user = \DB::table('level')->where('id', '=', $id)  ->orderBy('id', 'desc')->first();
  
$updatee = \DB::table('level')->where('id', '=', $id)  ->update(['level_name' => $request->name ,'level_teacher' => $request->teacher  ,'level_provpor' => $request->provpor  ,'level_des' => $request->level_des ,'level_sesion' => $request->level_sesion  ]); 
  
$nametr = Session::flash('statust', 'ویرایش اطلاعات دوره با موفقیت انجام شد.');
$nametrt = Session::flash('sessurl', 'viewslevels/editlevel/'.$id.''); 
	 
 return redirect('superadmin/viewslevels/editlevel/'.$id.'');     }
}
	

	public function acclevelsid($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin(); 	
  
$updatee = \DB::table('level')->where('id', '=', $id)  ->update(['level_active' => 1   ]);  			
		  	$nametr = Session::flash('statust', 'دوره باموفقیت فعال شد .');
		  	$nametrt = Session::flash('sessurl', 'viewslevels/editlevel/'.$id.'');		 
  
 return redirect('superadmin/viewslevels/editlevel/'.$id.'');  
 
}   }
		



	public function rejlevelsid($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin(); 	
  
$updatee = \DB::table('level')->where('id', '=', $id)  ->update(['level_active' => 0   ]);  			
		  	$nametr = Session::flash('statust', 'دوره باموفقیت غیرفعال شد .');
		  	$nametrt = Session::flash('sessurl', 'viewslevels/editlevel/'.$id.'');		 
  
 return redirect('superadmin/viewslevels/editlevel/'.$id.'');  
 
}   }
		



	public function deletlevelsid($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin(); 
		  	$admins = \DB::table('level')->where('id', '=', $id)->delete(); 
		  	$nametr = Session::flash('statust', 'حذف دوره با موفقیت انجام شد.');
		  	$nametrt = Session::flash('sessurl', 'viewslevels');
		  	
 return redirect('superadmin/viewslevels'); 
	}	  }



public function addtermidPost($id , Request $request){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
 Session::set('nav', 'addlevel');  
$h = new SuperadminController();
$h->validatesuperadmin(); 	  


$nametr = Session::flash('err', '2');
  	
    	$this->validate($request,[
    			'namee' => 'required'
    		],[
    			'namee.required' => 'لطفا نام ترم را وارد نمایید', 
    			
    		]);   
     			
DB::table('term')->insert([
    ['term_name' => $request->namee ,  'term_active' => 0 ,   'term_createdatdate' =>  date('Y-m-d H:i:s')  ,  'term_level' => $id  ]
]); 
 

$nametr = Session::flash('statust', 'ترم با موفقیت ثبت شد.');
		  	$nametrt = Session::flash('sessurl', 'viewslevels/editlevel/'.$id.'');
		
 return redirect('superadmin/viewslevels/editlevel/'.$id.'');     	 
 }}
		



 public function addcatcourse(){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
 Session::set('nav', 'addcatcourse');  
$h = new SuperadminController();
$h->validatesuperadmin();
return view('superadmin.addcatcourse');
	 }}
			


 public function addcatcoursepost(Request $request){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
 Session::set('nav', 'addcatcourse');  
$h = new SuperadminController();
$h->validatesuperadmin();
  
$imageName=''; 
 if( $request->hasFile('filei')){ 
        $image = $request->file('filei');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);    }
        
DB::table('catcourse')->insert([
    [   'catcourse_createdatdate' =>  date('Y-m-d H:i:s')     , 'catcourse_name' => $request->name    , 'catcourse_coverimg' => $imageName      ]
]);  
    		 
 $nametr = Session::flash('statust', 'ثبت کتوگری دوره با موفقیت انجام شد.');
 $nametrt = Session::flash('sessurl', 'viewscatcourse');

 return redirect('superadmin/viewscatcourse');  

	 } }
			


		

public function viewscatcourse(){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
Session::set('nav', 'viewscatcourse'); 

$admins = \DB::table('catcourse') ->orderBy('catcourse_id', 'desc')->get();
return view('superadmin.viewscatcourse', ['admins' => $admins]);
 
} }


public function catcourseeditpost($id ,Request $request ){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
Session::set('nav', 'viewscatcourse'); 


$admin = \DB::table('catcourse') ->where('catcourse_id', '=', $id)  ->orderBy('catcourse_id', 'desc')->first();

$imageName=$admin->catcourse_coverimg; 
 if( $request->hasFile('filei')){ 
        $image = $request->file('filei');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);    }



$updatee = \DB::table('catcourse')->where('catcourse_id', '=', $id)  ->update(['catcourse_name' => $request->name , 'catcourse_coverimg' => $imageName    ]); 
 
 $nametr = Session::flash('statust', ' کتوگری دوره با موفقیت ویرایش شد.');
 $nametrt = Session::flash('sessurl', 'viewscatcourse');

 return redirect('superadmin/viewscatcourse'); 
 
} }


	public function catcoursedeletid( $id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){  
 

 $admins = \DB::table('catcourse')->where([
    ['catcourse.catcourse_id','=' , $id], 
    ['catcourse.catcourse_id','<>' , 0], 
])->delete(); 
 
 $nametr = Session::flash('statust', 'کتوگری دوره باموفقیت حدف شد  ');  
 $nametrt = Session::flash('sessurl', 'viewscatcourse');			  	 
 return redirect('superadmin/viewscatcourse');  
 
}   }
		
		
		
		
		

 public function addcatart(){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
 Session::set('nav', 'addcatart');  
$h = new SuperadminController();
$h->validatesuperadmin();
return view('superadmin.addcatart');
	 }}
			
 public function addcatartpost(Request $request){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
 Session::set('nav', 'addcatart');  
$h = new SuperadminController();
$h->validatesuperadmin();
  
DB::table('catart')->insert([
    [   'catart_createdatdate' =>  date('Y-m-d H:i:s')     , 'catart_name' => $request->name      ]
]);  
    		 
 $nametr = Session::flash('statust', 'ثبت کتوگری مقالات با موفقیت انجام شد.');
 $nametrt = Session::flash('sessurl', 'viewsarts');

 return redirect('superadmin/viewsarts');  

	 } }
			

public function viewsarts(){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
Session::set('nav', 'viewsarts'); 

$admins = \DB::table('catart') ->orderBy('catart_id', 'desc')->get();
return view('superadmin.viewsarts', ['admins' => $admins]);
 
} }


public function editartidpost($id ,Request $request ){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
Session::set('nav', 'viewsarts'); 

$updatee = \DB::table('catart')->where('catart_id', '=', $id)  ->update(['catart_name' => $request->name    ]); 
 
 $nametr = Session::flash('statust', ' کتوگری مقاله با موفقیت ویرایش شد.');
 $nametrt = Session::flash('sessurl', 'viewsarts');

 return redirect('superadmin/viewsarts'); 
 
} }

			
	public function catartdeletid( $id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){  
 

 $admins = \DB::table('catart')->where([
    ['catart.catart_id','=' , $id], 
    ['catart.catart_id','<>' , 0], 
])->delete(); 
 
 $nametr = Session::flash('statust', 'کتوگری مقاله باموفقیت حدف شد  ');  
 $nametrt = Session::flash('sessurl', 'viewsarts');			  	 
 return redirect('superadmin/viewsarts');  
 
}   }
		
		


 public function addteacher(){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
 Session::set('nav', 'addteacher');  
$h = new SuperadminController();
$h->validatesuperadmin();
return view('superadmin.addteacher');
	 }}
			



		


 public function addteacherpost(Request $request){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
 Session::set('nav', 'addteacher');  
$h = new SuperadminController();
$h->validatesuperadmin();

    	$this->validate($request,[
    			'name' => 'required',
    			'family' => 'required',
    			'email' => 'required|unique:teacher,teach_email,$request->email',
    			'tell' => 'required|unique:teacher,teach_tell,$request->tell|regex:/^09[0-9]{9}$/',
    			'username' => 'required|min:3|unique:teacher,teach_username,$request->username', 
    			'userpassword' => 'required|min:5|max:35|confirmed'
    		],[
    			'name.required' => 'لطفا نام را وارد نمایید',
    			'family.required' => 'لطفا نام خانوادگی را وارد نمایید',
    			'email.required' => 'لطفا ایمیل را وارد نمایید',
    			'email.unique' => 'این ایمیل قبلا در سیستم ثبت شده است',
    			'tell.required' => 'لطفا شماره همراه را وارد نمایید', 
    			'tell.unique' => 'این شماره همراه قبلا در سیستم ثبت شده است',
    			'tell.regex' => 'لطفا شماره را با کد 09 و مربوط به اپراتورهای ایران انتخاب نمایید.',    
    			'username.required' => 'لطفا نام کاربری را وارد نمایید',
    			'username.min' => 'نام کاربری شما باید بیشتر از 3 کاراکتر باشد',
    			'username.unique' => 'این نام کاربری قبللا در سیستم ثبت شده است',
    			'userpassword.required' => 'لطفا رمز ورود را وارد نمایید',
    			'userpassword.min' => ' رمز کوتاه است',
    			'userpassword.max' => ' رمزعبور طولانی است ',
    			'userpassword.confirmed' => 'رمزعبور با تکرار آن مطابقت ندارد ',
    		]);   
    		
$encryptedPassword = \Crypt::encrypt($request->userpassword);
$decryptedPassword = \Crypt::decrypt($encryptedPassword);
$rnd=rand(1, 99999999); 

$user=\DB::table('teacher')  ->where('id' , '<>' , '0')->orderBy('id' , 'desc')->first();  
    		

DB::table('teacher')->insert([
    [ 'teach_password' => $encryptedPassword ,   'teach_createdatdate' =>  date('Y-m-d H:i:s') , 'teach_active' => 0    , 'teach_username' => $request->username  , 'teach_email' => $request->email  , 'teach_tell' => $request->tell  , 'teach_name' => $request->name   , 'teach_family' => $request->family       ]
]);  
    		 
 $nametr = Session::flash('statust', 'ثبت نام استاد با موفقیت انجام شد.');
 $nametrt = Session::flash('sessurl', 'viewsteachers');

 return redirect('superadmin/viewsteachers'); 


	 } }
			





		

public function viewsteachers(){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
Session::set('nav', 'viewsusers');  

$admins = \DB::table('teacher') ->orderBy('id', 'desc')->get();
return view('superadmin.viewsteachers', ['admins' => $admins]);
 
} }




	public function viewsteachersid($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
	Session::put('idimg', $id); Session::set('nav', 'viewsusers');  
$admins = \DB::table('teacher')->where('id', '=', $id)  ->orderBy('id', 'desc')->get();


$profileteachers = \DB::table('teacher')
->Join('profileteacher', 'teacher.id', '=', 'profileteacher.profile_idteacher') ->where('teacher.id', '=', $id)  ->orderBy('profileteacher.profile_id', 'desc')->get();


$crpt = \DB::table('teacher')->where('id', '=', $id)  ->orderBy('id', 'desc')->first();

$oldpassword=$crpt->teach_password;

$password_db= $oldpassword; 
$decryptedPassword =  Crypt::decrypt($password_db);
 

 	  
return view('superadmin.editteacher', ['admins' => $admins  , 'profileteachers' => $profileteachers , 'decryptedPassword' => $decryptedPassword    ]);

 }	 
}





	public function viewsprofileteachers(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
 

Session::set('nav', 'viewsprofileteachers'); 

$profileteachers = \DB::table('teacher')
->Join('profileteacher', 'teacher.id', '=', 'profileteacher.profile_idteacher') ->where([
    ['teacher.id','<>' , 0], 
])->orderBy('profileteacher.profile_id', 'desc')->get();

 
return view('superadmin.viewsprofileteachers', [ 'profileteachers' => $profileteachers    ]); }	 }


	public function editprofileteacherid($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
 

Session::set('nav', 'profileteachers'); 

$admin = \DB::table('teacher')
->Join('profileteacher', 'teacher.id', '=', 'profileteacher.profile_idteacher') ->where([
    ['teacher.id','<>' , 0], 
    ['profileteacher.profile_id','=' , $id], 
])->orderBy('profileteacher.profile_id', 'desc')->first();



$langs = \DB::table('lang') ->where('lang.lang_id', '<>', 0)  ->orderBy('lang.lang_id', 'desc')->get();

$sens = \DB::table('sen') ->where('sen.sen_id', '<>', 0)  ->orderBy('sen.sen_id', 'asc')->get();
 

$levels = \DB::table('leveltadris') ->where('leveltadris.levelt_id', '<>', 0)  ->orderBy('leveltadris.levelt_id', 'asc')->get();

$citys = \DB::table('city') ->where('city.city_active', '<>', 0)  ->orderBy('city.city_id', 'asc')->get();


$listsens = \DB::table('listsen') 
->Join('sen', 'listsen.listsen_idsen', '=', 'sen.sen_id')    ->where([
    ['listsen.listsen_id','<>' , 0], 
    ['listsen.listsen_idprofile','=' , $id], 
])->orderBy('listsen.listsen_id', 'asc')->get();

$listleveltadriss = \DB::table('listleveltadris') 
->Join('leveltadris', 'listleveltadris.listleveltadris_idleveltadris', '=', 'leveltadris.levelt_id')    ->where([
    ['listleveltadris.listleveltadris_id','<>' , 0], 
    ['listleveltadris.listleveltadris_idprofile','=' , $id], 
])->orderBy('listleveltadris.listleveltadris_id', 'asc')->get();
 

$listlangs = \DB::table('listlang') 
->Join('lang', 'listlang.listlang_idlang', '=', 'lang.lang_id')    ->where([
    ['listlang.listlang_id','<>' , 0], 
    ['listlang.listlang_idprofile','=' , $id], 
])->orderBy('listlang.listlang_id', 'asc')->get();
 

$catcourses = \DB::table('catcourse') ->where('catcourse.catcourse_id', '<>', 0)  ->orderBy('catcourse.catcourse_id', 'asc')->get();


$subcatcourses= \DB::table('subcatcourse')  ->where([ ['subcatcourse_catid', '=',  $admin->profile_typcat] , ])->orderBy('subcatcourse_id', 'desc')->get();
 
return view('superadmin.editprofileteacher', [ 'admin' => $admin   ,'langs' => $langs  ,'sens' => $sens  ,'levels' => $levels  ,'citys' => $citys    ,'listsens' => $listsens  ,'catcourses' => $catcourses   , 'listleveltadriss' => $listleveltadriss  , 'listlangs' => $listlangs   , 'subcatcourses' => $subcatcourses     ]); 


}	 }



	public function editprofileteacheridpost($id  , Request $request){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();


$admin = \DB::table('teacher')
->Join('profileteacher', 'teacher.id', '=', 'profileteacher.profile_idteacher') ->where([
    ['teacher.id','<>' , 0], 
    ['profileteacher.profile_id','=' , $id], 
])->orderBy('profileteacher.profile_id', 'desc')->first();

if($request->typsubcat!=""){$typsubcat=$request->typsubcat;} else{
	$typsubcat=$admin->profile_typsubcat;
}


$imageName=$admin->profile_img; 
 if( $request->hasFile('filei')){ 
        $image = $request->file('filei');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);    }

$filedoc=$admin->profile_madrak; 
 if( $request->hasFile('filed')){ 
        $image = $request->file('filed');
        $filedoc = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$filedoc);    }

$filevid=$admin->profile_uplvid; 
 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $filevid = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$filevid);    }

$sis5darsad=5*$request->ojratsis*($request->takh5/100);
$sis5=(5*$request->ojratsis)-$sis5darsad;
$sis10darsad=10*$request->ojratsis*($request->takh10/100);
$sis10=(10*$request->ojratsis)-$sis10darsad; 





 
 $persian = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹']; 
 $english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
 
 
 $about= str_replace( $english,$persian , $request->about);  
 $adres= str_replace( $english,$persian , $request->adres);  
 $ojratlevel= str_replace( $english,$persian , $request->ojratlevel); 
 $ojrataz= str_replace( $english,$persian , $request->ojrataz); 
 $ojratsis= str_replace( $english,$persian , $request->ojratsis);   

$idprofile=$admin->profile_id;
 
 $delet = \DB::table('listsen')->where('listsen_idprofile', '=', $idprofile)->delete(); 
 $delet = \DB::table('listlang')->where('listlang.listlang_idprofile', '=', $idprofile)->delete(); 
 $delet = \DB::table('listleveltadris')->where('listleveltadris_idprofile', '=', $idprofile)->delete(); 





//sen
$sens = \DB::table('sen') ->where('sen.sen_id', '<>', 0) ->orderBy('sen.sen_id', 'asc')->get();
foreach($sens as $sen) {  
DB::table('listsen')->insert([
    [   'listsen_idsen' => $sen->sen_id ,   'listsen_arou' => 3   ,   'listsen_idprofile' => $idprofile  ,   'listsen_active' => 0    ]
]);  
}


$myCheckboxes = $request->input('sen');  
$sen=''; $sen .= implode(",", $myCheckboxes);  
if($myCheckboxes != NULL)  {
foreach($myCheckboxes as $quan) {   
 
	$updatee = \DB::table('listsen') ->where([
    ['listsen.listsen_idprofile','=' , $idprofile], 
    ['listsen.listsen_idsen','=' , $quan],   
])->update(['listsen_active' =>   '1'     ]); 
	 
  } }
  
  	




//lang

$langs = \DB::table('lang') ->where('lang.lang_id', '<>', 0)  ->orderBy('lang.lang_id', 'desc')->get();
foreach($langs as $lang) {  
DB::table('listlang')->insert([
    [   'listlang_idlang' => $lang->lang_id ,   'listlang_arou' => 3   ,   'listlang_idprofile' => $idprofile    ]
]);  
}


$myCheckboxes = $request->input('lang'); 
$lang=''; $lang .= implode(",", $myCheckboxes);  
if($myCheckboxes != NULL)  {
foreach($myCheckboxes as $quan) {  
 
	$updatee = \DB::table('listlang') ->where([
    ['listlang.listlang_idprofile','=' , $idprofile], 
    ['listlang.listlang_idlang','=' , $quan],   
])->update(['listlang_active' =>   '1'     ]); 

 
} }
  	

//leveltadris
$levels = \DB::table('leveltadris') ->where('leveltadris.levelt_id', '<>', 0)  ->orderBy('leveltadris.levelt_id', 'asc')->get();
foreach($levels as $level) {  
DB::table('listleveltadris')->insert([
    [   'listleveltadris_idleveltadris' => $level->levelt_id ,   'listleveltadris_arou' => 3   ,   'listleveltadris_idprofile' => $idprofile   ,   'listleveltadris_active' => 0    ]
]); 
}
  
  
$myCheckboxes = $request->input('level'); 
$level=''; $level .= implode(",", $myCheckboxes);  
if($myCheckboxes != NULL)  {
foreach($myCheckboxes as $quan) {  
 
	$updatee = \DB::table('listleveltadris') ->where([
    ['listleveltadris.listleveltadris_idprofile','=' , $idprofile], 
    ['listleveltadris.listleveltadris_idleveltadris','=' , $quan],   
])->update(['listleveltadris_active' =>   '1'     ]); 

 
} }
  		
   



	$updatee = \DB::table('profileteacher') ->where([
    ['profileteacher.profile_id','=' , $idprofile],   
])->update([  'profile_active' => 0    , 'profile_tit' => $request->tit  , 'profile_instagram' => $request->instagram    , 'profile_about' => $about , 'profile_madrak' => $request->madrak   ,    'profile_uplvid' => $filevid ,    'profile_img' => $imageName ,    'profile_doc' => $filedoc  , 'profile_sex' => $request->sex  , 'profile_city' => $request->city  , 'profile_adres' => $adres  , 'profile_tahsil' => $request->madrak  , 'profile_ojratlevel' => $request->ojratlevel  , 'profile_ojratexam' => $request->ojrataz  , 'profile_ojratsis' => $request->ojratsis  , 'profile_ojrat5' => $request->takh5  , 'profile_ojrat10' => $request->takh10  , 'profile_sis5' => $sis5  , 'profile_sis10' => $sis10 ,  'profile_createdatdate' =>  date('Y-m-d H:i:s')  , 'profile_radesen' => $sen  , 'profile_lang' => $lang  , 'profile_level' => $level   , 'profile_typcat' => $request->typcat  , 'profile_typsubcat' => $typsubcat      ]); 

 

  		
    			 
 $nametr = Session::flash('statust', 'ویرایش پروفایل با موفقیت انجام شد ');
 $nametrt = Session::flash('sessurl', 'viewsteachers');
 

 return redirect('superadmin/editprofileteacher/'.$id); 
  
  
  	


}}


		
	public function viewsteachersidpost($id  , Request $request ){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();

$nametr = Session::flash('err', '1');

$this->validate($request,[
    			'name' => 'required|min:3|max:35',
    			'family' => 'required',
    			'username' => 'required',
    			'tell' => 'required|regex:/^09[0-9]{9}$/',
    			'email' => 'required|email',
    			'adres' => 'required|min:3|max:555',
    			'file'  => 'max:1000', 
    		],[
    			'name.required' => 'لطفا نام را وارد نمایید',
    			'name.min' => 'نام کوتاه است',
    			'name.max' => 'نام غیقابل قبول',
    			'family.required' => 'لطفا نام خانوادگی را وارد نمایید',
    			'username.required' => 'لطفا نام کاربری را وارد نمایید',
    			'tell.required' => 'شماره تلفن را بصورت صحیح وارد کنید',
    			'tell.regex' => 'لطفا شماره را با کد 09 و مربوط به اپراتورهای ایران انتخاب نمایید.',    
    			'email.required' => 'ایمیل را بصورت صحیح وارد کنید',
    			'email.email' => 'فرمت ایمیل غیرقابل قبول است',
    			'adres.required' => 'آدرس را بصورت صحیح وارد کنید',
    			'adres.min' => 'دآدرس کوتاه است',
    			'adres.max' => 'آدرس خیلی بلند است',  
    			'file.max' => 'حجم فایل آپلود شده بیشتر از حد مجاز می باشد. (حدمجاز 1مگابایت یا کمتر از این مقدار باید باشد)', 
    			
    		]);
    		


$user = \DB::table('teacher')->where('id', '=', $id)  ->orderBy('id', 'desc')->first();

$imageName=$user->teach_img;


 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }
 
 

 		if ( $request->email ==  $user->teach_email   ){  $activeemail =  $user->teach_emailactive ; }
 else   if ( $request->email !=  $user->teach_email   ){  $activeemail ='0';}

 		if ( $request->tell ==  $user->teach_tell   ){  $activetell =  $user->teach_tellactive ; }
 else   if ( $request->tell !=  $user->teach_tell   ){  $activetell ='0';}
 
  
 
$updatee = \DB::table('teacher')->where('id', '=', $id)  ->update(['teach_name' => $request->name    ,  'teach_tell' => $request->tell ,  'teach_email' => $request->email ,  'teach_adres' => $request->adres ,  'teach_emailactive' => $activeemail ,  'teach_tellactive' => $activetell , 'teach_img' => $imageName  ]); 

$user = \DB::table('teacher')->where('id', '=', $id)  ->orderBy('id', 'desc')->first();
if ( ($user->teach_emailactive == 1) &&  ($user->teach_tellactive == 1)   ){  $active=1;}
if ( ($user->teach_emailactive == 0) ||  ($user->teach_tellactive == 0)   ){  $active=0;}
$updatee = \DB::table('teacher')->where('id', '=', $id)  ->update(['teach_active' => $active   ]);

$admins = \DB::table('teacher')->where('id', '=', $id)  ->orderBy('id', 'desc')->get();
$nametr = Session::flash('statust', 'ویرایش اطلاعات استاد با موفقیت انجام شد.');
$nametrt = Session::flash('sessurl', 'viewsteachers/edit/'.$id.''); 
	 
 return redirect('superadmin/viewsteachers/edit/'.$id.'');     }
}
	



		

	public function deletteachersid($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
		  	$admins = \ DB::table('teacher')->where('id', $id)->get();
		  	$admins = \DB::table('teacher')->where('id', '=', $id)->delete(); 
		  	$nametr = Session::flash('statust', 'حذف استاد با موفقیت انجام شد.');
		  	$nametrt = Session::flash('sessurl', 'viewsteachers');
		  	
 return redirect('superadmin/viewsteachers'); 
	}	 
				}


		
	public function accteacher($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();


$nametr = Session::flash('err', '3');

$adminacc =  DB::table('teacher')->where('id', '=', $id) ->orderBy('id', 'desc')->first();	
  
$updatee = \DB::table('teacher')->where('id', '=', $id)  ->update(['teach_active' => 1   ]); 
		  	$admins = \ DB::table('teacher')->where('id', $id)->get();				
		  	$nametr = Session::flash('statust', 'اکانت استاد با موفقیت فعال شد .');
		  	$nametrt = Session::flash('sessurl', 'viewsteachers/edit/'.$id.'');			  	
		  			  	
		  	$user = \DB::table('teacher')->where('id', '=', $id)  ->orderBy('id', 'desc')->first();
  
 return redirect('superadmin/viewsteachers/edit/'.$id.'');  
 
}   }
		

		
	public function rejteacher($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();

$nametr = Session::flash('err', '3');

$adminacc =  DB::table('teacher')->where('id', '=', $id) ->orderBy('id', 'desc')->first();	
  
$updatee = \DB::table('teacher')->where('id', '=', $id)  ->update(['teach_active' => 0   ]); 
		  	$admins = \ DB::table('teacher')->where('id', $id)->get();				
		  	$nametr = Session::flash('statust', 'اکانت استاد با موفقیت غیرفعال شد .');
		  	$nametrt = Session::flash('sessurl', 'viewsteachers/edit/'.$id.'');			  	
		  			  	
		  	$user = \DB::table('teacher')->where('id', '=', $id)  ->orderBy('id', 'desc')->first();
  
 return redirect('superadmin/viewsteachers/edit/'.$id.'');  
 
}   }





	public function profileteacherstatid($stat , $id  ){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 


$profileteachers = \DB::table('teacher')
->Join('profileteacher', 'teacher.id', '=', 'profileteacher.profile_idteacher') ->where('profileteacher.profile_id', '=', $id)  ->orderBy('profileteacher.profile_id', 'desc')->first();


$nametr = Session::flash('err', '4'); 
  
$updatee = \DB::table('profileteacher')->where('profile_id', '=', $id)  ->update(['profile_active' => $stat  ]); 

if($stat=='1'){
		  	$nametr = Session::flash('statust', 'پروفایل باموفقیت فعال شد  '); } else{
		  	$nametr = Session::flash('statust', 'پروفایل باموفقیت غیرفعال شد  '); }

		  	$nametrt = Session::flash('sessurl', 'viewsprofileteachers');			  	
		  			  	 
  
 return redirect('superadmin/viewsprofileteachers');  



}}



	public function profileteacherdeletid( $id  ){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 


$profileteachers = \DB::table('teacher')
->Join('profileteacher', 'teacher.id', '=', 'profileteacher.profile_idteacher') ->where('profileteacher.profile_id', '=', $id)  ->orderBy('profileteacher.profile_id', 'desc')->first(); 

$nametr = Session::flash('err', '4');  
 $admins = \DB::table('profileteacher')->where('profile_id', '=', $id)  ->delete(); 

 
 $nametr = Session::flash('statust', 'پروفایل باموفقیت حذف شد  ');  
 $nametrt = Session::flash('sessurl', 'viewsteachers/edit/'.$profileteachers->profile_idteacher.'');			  	 
 return redirect('superadmin/viewsprofileteachers');   
  
}}



		
	public function loginteacher(Request $request , $id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
  

$admins = DB::table('teacher')->where([
    ['id' , '=' ,  $id],
])->first();
 

if($admins){

$password_db= $admins->teach_password; 
$decryptedPassword =  Crypt::decrypt($password_db);
 



$name_db= $admins->teach_name.' '.$admins->teach_family;
$id_db= $admins->id;
$activeadmin= $admins->teach_active; 
$teachername_db= $admins->teach_username; 
$password_db= $admins->teach_password;  
  
	
    Session::set('nameteacher', $admins->teach_name.' '.$admins->teach_family);
	Session::set('idteacher', $admins->id); 
	Session::set('signteacher', $admins->teach_username);
	Session::set('activeteacher', $admins->teach_active);

 $updatee = \DB::table('teacher')->where('id', '=', Session::get('idteacher'))  ->update(['teach_loginatdate' => date('Y-m-d H:i:s') ,    'teach_active' => '1'   ,    'teach_emailactive' => '1'   ,    'teach_tellactive' => '1'     ]); 
	

$adminslp = \DB::table('teacher')->where('id', '=', $id_db)  ->orderBy('id', 'desc')->first();
$logindatepas=$adminslp->teach_loginatdate;	

$admimg=$adminslp->teach_img;
if(empty($admimg)){$admimg='user2x.png';}	
 
		
	Session::set('logindateteacher', $logindatepas);
	Session::set('teacherimg', $admimg);
	
 $updatee = \DB::table('teacher')->where('id', '=', Session::get('idteacher'))  ->update(['teach_loginatdate' => date('Y-m-d H:i:s') ,    'teach_ip' => $request->ip()  ]); 
			 return redirect('teacher/panel'); 
	 
}
		else if(empty($admins)) {
			 $nametr = Session::flash('statust',   'اطلاعات را به درستی وارد نمایید.');
			 return redirect('superadmin/viewsteachers'); 
		}















}}





 public function addvideo(){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
 Session::set('nav', 'addvideo');  
$h = new SuperadminController();
$h->validatesuperadmin();
return view('superadmin.addvideo');
	 }}
			
			
			


 public function addvideopost(Request $request){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
 Session::set('nav', 'addteacher');  
$h = new SuperadminController();
$h->validatesuperadmin();



$imageName=''; 
 if( $request->hasFile('filei')){ 
        $image = $request->file('filei');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);    }
 
    		 

DB::table('eduvideo')->insert([
    [   'eduvideo_createdatdate' =>  date('Y-m-d H:i:s') , 'eduvideo_active' => 0     , 'eduvideo_name' => $request->name    , 'eduvideo_link' => $request->link  , 'eduvideo_show' => $request->show   , 'eduvideo_cover' => $imageName ]
]);  
    		 
 $nametr = Session::flash('statust', 'ثبت ویدیو با موفقیت انجام شد.');
 $nametrt = Session::flash('sessurl', 'viewsvideos');

 return redirect('superadmin/viewsvideos'); 


	 } }
			



	

public function viewsvideos(){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
Session::set('nav', 'viewsvideos'); 

$admins = \DB::table('eduvideo') ->orderBy('eduvideo_id', 'desc')->get();
return view('superadmin.viewsvideos', ['admins' => $admins]);
 
} }



		
	public function editstatvideos($stat , $id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){  
 
  
$updatee = \DB::table('eduvideo')->where('eduvideo_id', '=', $id)  ->update(['eduvideo_active' => $stat ]); 

if($stat=='1'){
 $nametr = Session::flash('statust', 'ویدیو باموفقیت فعال شد ');
} else {
 $nametr = Session::flash('statust', 'ویدیو باموفقیت غیرفعال شد ');
}

 $nametrt = Session::flash('sessurl', 'viewsvideos');			  	
 return redirect('superadmin/viewsvideos');  
 
}   }
		





	public function editvideoid($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
	Session::put('idimg', $id); Session::set('nav', 'viewsvideos'); 
$admin = \DB::table('eduvideo') ->where('eduvideo_id', '=', $id)->orderBy('eduvideo_id', 'desc')->first();
  
return view('superadmin.editvide', ['admin' => $admin    ]); } }





public function editvideoidpost($id ,Request $request ){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
Session::set('nav', 'viewsvideos'); 

$admin = \DB::table('eduvideo') ->where('eduvideo_id', '=', $id)->orderBy('eduvideo_id', 'desc')->first();
 

$imageName=$admin->eduvideo_cover; 
 if( $request->hasFile('filei')){ 
        $image = $request->file('filei');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);    }

$updatee = \DB::table('eduvideo')->where('eduvideo_id', '=', $id)  ->update([    'eduvideo_name' => $request->name    , 'eduvideo_link' => $request->link  , 'eduvideo_show' => $request->show   , 'eduvideo_cover' => $imageName  ]); 
 
 $nametr = Session::flash('statust', ' ویدیو باموفقیت ویرایش شد.');
 $nametrt = Session::flash('sessurl', 'viewsvideos');

 return redirect('superadmin/viewsvideo/edit/'.$id); 
 
} }





	public function deletvideos($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin(); 


$admins = \DB::table('eduvideo') ->orderBy('eduvideo_id', 'desc')->first();

$imgpath=$admins->eduvideo_file; 

if($imgpath){
$path = public_path()."/eduvideo/".$imgpath;
unlink($path);
	
}


		  	$admins = \DB::table('eduvideo')->where('eduvideo_id', '=', $id)->delete(); 
		  	$nametr = Session::flash('statust', 'حذف ویدیو با موفقیت انجام شد.');
		  	$nametrt = Session::flash('sessurl', 'viewsvideos');
		  	
		  	
 return redirect('superadmin/viewsvideos'); 
	}	  }





	public function settingvideo(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
  Session::set('nav', 'settingvideo'); 
$admin = \DB::table('setting') ->where('setting_id', '=', 1)->orderBy('setting_id', 'desc')->first();
  
return view('superadmin.settingvideo', ['admin' => $admin    ]); } }







	public function settingvideopost(Request $request){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
  Session::set('nav', 'settingvideo'); 
$admin = \DB::table('setting') ->where('setting_id', '=', 1)->orderBy('setting_id', 'desc')->first();


$imageName=$admin->setting_covervideoteach; 
 if( $request->hasFile('filei')){ 
        $image = $request->file('filei');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);    }
  
  
$updatee = \DB::table('setting')->where('setting_id', '=', 1)  ->update([  'setting_covervideoteach' => $imageName   ]); 
 
 $nametr = Session::flash('statust', ' تنظیمات سایت با موفقیت ویرایش شد.');
 $nametrt = Session::flash('sessurl', 'settingvideo');

 return redirect('superadmin/settingvideo'); 
  
  
  
   } }





		

 public function addcatshop(){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
 Session::set('nav', 'addcatshop');  
$h = new SuperadminController();
$h->validatesuperadmin();
return view('sup.addcatshop');
	 }}
			





 public function viewsarticlessup(){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
Session::set('nav', 'viewsarticles');   
$admins = \DB::table('articles')  
->leftJoin('teacher', 'articles.art_idteacher', '=', 'teacher.id') 
->where('articles.art_id', '<>', 0)  ->orderBy('art_id', 'desc')->get(); 
return view('superadmin.viewsarticles', ['admins' => $admins]); 
 }}
 
 
 
		
	public function articlesstatid($stat , $id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){  
 
  
$updatee = \DB::table('articles')->where('art_id', '=', $id)  ->update(['art_active' => $stat ]); 

if($stat=='1'){
 $nametr = Session::flash('statust', 'مقاله باموفقیت تایید شد ');
} else {
 $nametr = Session::flash('statust', 'مقاله به تایید مدیریت نرسید ');
}

 $nametrt = Session::flash('sessurl', 'viewsarticles');			  	
 return redirect('superadmin/viewsarticles');  
 
}   }
		
 
		
	public function deletarticleidsup( $id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){  
 

 $admins = \DB::table('articles')->where([
    ['articles.art_id','=' , $id], 
    ['articles.art_id','<>' , 0], 
])->delete(); 
 
 $nametr = Session::flash('statust', 'مقاله باموفقیت حذف شد  ');  
 $nametrt = Session::flash('sessurl', 'viewsarticles');			  	 
 return redirect('superadmin/viewsarticles');  
 
}   }
		
			


 public function viewscoursessup(){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
Session::set('nav', 'viewscourses');   
$admins = \DB::table('course')  
->Join('teacher', 'course.course_teacherid', '=', 'teacher.id') 
->where('course.course_teacherid', '<>', 0)  ->orderBy('course_id', 'desc')->get(); 
return view('superadmin.viewscourses', ['admins' => $admins]); 
 }}
			




 public function viewscoursessupeditid($id){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
Session::set('nav', 'viewscourses');   
$admin = \DB::table('course')  
->Join('teacher', 'course.course_teacherid', '=', 'teacher.id') 
->where('course.course_id', '=', $id)  ->orderBy('course_id', 'desc')->first(); 


$langs = \DB::table('lang') ->where('lang.lang_id', '<>', 0)  ->orderBy('lang.lang_id', 'desc')->get();

$sens = \DB::table('sen') ->where('sen.sen_id', '<>', 0)  ->orderBy('sen.sen_id', 'asc')->get();
 

$levels = \DB::table('leveltadris') ->where('leveltadris.levelt_id', '<>', 0)  ->orderBy('leveltadris.levelt_id', 'asc')->get();
 

return view('superadmin.editcourse', ['admin' => $admin ,  'langs' => $langs  ,'sens' => $sens  ,'levels' => $levels   ] ); 
 }}
			
			



 public function viewscoursessupeditidpost($id , Request $request ){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){  
 
 
Session::set('nav', 'viewscourses'); 


$this->validate($request,[ 
    			'name' => 'required',   
    		],[ 
    			'name.required' => 'لطفا نام دوره را وارد نمایید',  
    			
    		]);

 
 $persian = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹']; 
 $english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
 
 
 $sis= str_replace( $english,$persian , $request->sis); 
 $dur= str_replace( $english,$persian , $request->dur);
 $kh= str_replace( $english,$persian , $request->kh);
 $des= str_replace( $english,$persian , $request->des);
 $cost= str_replace( $english,$persian , $request->cost);
 $startdate= str_replace( $english,$persian , $request->startdate);
 $enddate= str_replace( $english,$persian , $request->enddate);
 $pes= str_replace( $english,$persian , $request->pes);
 
 if($request->recvdoc){$recvdoc='1'; }else {$recvdoc='0'; }



$updatee = \DB::table('course')->where('course_id', '=', $id)  ->update( ['course_name' => $request->name , 'course_sis' => $sis , 'course_dur' => $dur , 'course_kh' => $kh , 'course_des' => $des , 'course_cost' => $request->cost , 'course_startdate' => $startdate  , 'course_enddate' => $enddate  , 'course_pes' => $pes  , 'course_operator' => $request->operator  , 'course_level' => $request->level  , 'course_lang' => $request->lang  , 'course_sen' => $request->sen , 'course_recvdoc' =>$recvdoc  , 'course_typ' => $request->typ  ]); 

 
 $nametr = Session::flash('statust', 'ویرایش دوره باموفقیت ثبت شد '); 
 $nametrt = Session::flash('sessurl', 'viewscourses/edit/'.$id.'');	
 		  	
 return redirect('superadmin/viewscourses/edit/'.$id.'');  

 }}
			


	
			
			
			


		
	public function viewscoursessupeditstatid($stat , $id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){  
 
  
$updatee = \DB::table('course')->where('course_id', '=', $id)  ->update(['course_active' => $stat ]); 

if($stat=='1'){
 $nametr = Session::flash('statust', 'دوره باموفقیت فعال شد ');
} else {
 $nametr = Session::flash('statust', 'دوره باموفقیت غیرفعال شد ');
}

 $nametrt = Session::flash('sessurl', 'viewscourses/edit/'.$id.'');			  	
 return redirect('superadmin/viewscourses/edit/'.$id.'');  
 
}   }
		






 public function addcatshopPost(Request $request){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
 Session::set('nav', 'adduser');  
$h = new SuperadminController();
$h->validatesuperadmin();

    	$this->validate($request,[
    			'name' => 'required', 
    		],[
    			'name.required' => 'لطفا نام دسته بندی را وارد نمایید', 
    		]);   
    	 
DB::table('catshop')->insert([
    [  'cat_name' => $request->name ,   'cat_createdatdate' =>  date('Y-m-d H:i:s')         ]
]);  
    		 
 $nametr = Session::flash('statust', 'ثبت دسته بندی با موفقیت انجام شد.');
 $nametrt = Session::flash('sessurl', 'viewscatshops');

 return redirect('superadmin/viewscatshops'); 


	 } }
			



public function viewscatshops(){  
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
Session::set('nav', 'viewscatshops'); 

$admins = \DB::table('catshop') ->orderBy('cat_id', 'desc')->get();
return view('sup.viewscatshops', ['admins' => $admins]);
 
} }




	public function editcatshopidpost(Request $request , $id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
	Session::set('nav', 'viewscatshops'); 

    	$this->validate($request,[
    	    	'name' => 'required', 
    		],[
    			'name.required' => 'لطفا نام دسته بندی را وارد نمایید', 
    			
    		]);    
    		  
$updatee = \DB::table('catshop')->where([
    ['catshop.cat_id','<>' , 0],
    ['catshop.cat_id','=' , $id], 
])->update(['cat_name' => $request->name       ]); 

$nametr = Session::flash('statust', 'دسته بندی باموفقیت ویرایش شد.');
$nametrt = Session::flash('sessurl', 'viewscatshops');

 return redirect('superadmin/viewscatshops');  
	
	} 
}




	public function editcatshopidacc($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
 
$updatee = \DB::table('catshop')->where('cat_id', '=', $id)  ->update(['cat_active' => 1   ]); 
 		
		  	$nametr = Session::flash('statust', 'دسته بندی باموفقیت فعال شد .');
		  	$nametrt = Session::flash('sessurl', 'viewscatshops');			  	
		  			  	 
  
 return redirect('superadmin/viewscatshops');  
 
}   }
		



	public function editcatshopidrej($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
 
$updatee = \DB::table('catshop')->where('cat_id', '=', $id)  ->update(['cat_active' => 0   ]); 
 		
		  	$nametr = Session::flash('statust', 'دسته بندی باموفقیت غیرفعال شد .');
		  	$nametrt = Session::flash('sessurl', 'viewscatshops');			  	
		  			  	 
  
 return redirect('superadmin/viewscatshops');  
 
}   }
		

		
	public function deletcatshop($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
	Session::set('nav', 'viewscatshops'); 
		  	$admins = \DB::table('catshop') ->where([
    ['catshop.cat_id','<>' , 0],
    ['catshop.cat_id','=' , $id], 
])->delete(); 

		  	$nametr = Session::flash('statust', 'حذف دسته بندی با موفقیت انجام شد.');
		  	$nametrt = Session::flash('sessurl', 'viewscatshops');
		  	
 return redirect('superadmin/viewscatshops');  
	}	 
				}				
		




	public function addeventsup(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
 Session::set('nav', 'addevent');   
 
 
$admins = \DB::table('country') ->orderBy('country_id', 'desc')->get();
  
return view('sup.addevent', ['admins' => $admins]);
}	 
}




	public function addeventsuppost(Request $request){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
 Session::set('nav', 'addevent');  
 
 
	    	$this->validate($request,[
    	    	'name' => 'required', 
    		],[
    			'name.required' => 'لطفا نام رویداد را وارد نمایید', 
    			
    		]);   
 
 
  $imageName='';  
  
  
 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }
		
    	
    		
 
 DB::table('events')->insert([
    ['event_name' => $request->name , 'event_des' => $request->des , 'event_time' => $request->time  , 'event_loc' => $request->loc ,  'event_linksoc' => $request->linksoc  ,  'event_mem' => $request->mem ,  'event_linkbuy' => $request->linkbuy ,  'event_pay' => $request->pay ,  'event_country' => $request->country ,  'event_state' => $request->state,  'event_city' => $request->city ,  'event_area' => $request->area , 'event_createdatdate' =>  date('Y-m-d H:i:s')   ,   'event_iduser' => 0  ,   'event_img' => $imageName   ,  'event_free' => $request->free   ]
]);   	
 
 
$nametr = Session::flash('statust', 'ثبت رویداد باموفقیت انجام شد.');
$nametrt = Session::flash('sessurl', 'viewsevents'); 	   
	
 	return  redirect('superadmin/viewsevents');
 
 
 
}	 
}




	public function viewseventssup(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
	Session::set('nav', 'viewsevents'); 
	 

$admins = 	 \DB::table('events') 
->leftJoin('user', 'events.event_iduser', '=', 'user.id') 
->where([
    ['events.event_id','<>' , 0], 
])->orderBy('events.event_id', 'desc')->get();

return view('sup.viewsevents', ['admins' => $admins]);
}	 
}


  

	public function eventsupid($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
	Session::set('nav', 'viewsevents'); 
	Session::put('idimg', $id);

 


$admins = 	 \DB::table('events') 
->leftJoin('user', 'events.event_iduser', '=', 'user.id') 
->where([
    ['events.event_id','<>' , 0], 
    ['events.event_id','=' , $id], 
])->orderBy('events.event_id', 'desc')->get();
 

return view('sup.editevent', ['admins' => $admins ]); } 
}





	public function eventsupidpost(Request $request , $id  ){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();

	Session::set('nav', 'viewsevents'); 


    	$this->validate($request,[
    	    	'name' => 'required', 
    		],[
    			'name.required' => 'لطفا نام رویداد را وارد نمایید', 
    			
    		]);   
  		   
$admins = 	 \DB::table('events') 
->leftJoin('user', 'events.event_iduser', '=', 'user.id') 
->where([
    ['events.event_id','<>' , 0],
    ['events.event_id','=' , $id], 
])->orderBy('events.event_id', 'desc')->first();
    		   
 $imageName=$admins->event_img;
 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }
		
    		   
$updatee = \DB::table('events')->where([
    ['events.event_id','<>' , 0],
    ['events.event_id','=' , $id], 
])->update(['event_name' => $request->name , 'event_des' => $request->des , 'event_time' => $request->time  , 'event_loc' => $request->loc ,  'event_linksoc' => $request->linksoc  ,  'event_mem' => $request->mem ,  'event_linkbuy' => $request->linkbuy ,  'event_pay' => $request->pay , 'event_createdatdate' =>  date('Y-m-d H:i:s')  , 'event_img' =>  $imageName  ,  'event_free' => $request->free ]); 

$nametr = Session::flash('statust', 'ویرایش اطلاعات باموفقیت انجام شد.');
$nametrt = Session::flash('sessurl', 'viewsevents/edit/'.$id.'');

 	return  redirect('superadmin/viewsevents/edit/'.$id.'');

} 
}



public function shopdropzone(Request $request )
    {
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);        
 

DB::table('file')->insert([
    ['file_name' =>  $imageName ,  'file_indexid' =>  Session::get('idimg') ,  'file_status' =>  1     ]
]);



        return response()->json(['success'=>$imageName]);
    }
		



	public function stateventssupidpost(Request $request , $status, $id ){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
	Session::set('nav', 'viewsevents'); 
if($status=='1'){
    		   
$updatee = \DB::table('events')->where([
    ['events.event_id','<>' , 0],
    ['events.event_id','=' , $id], 
])->update(['event_desacc' => $request->des ,   'event_active' => '1'     ]); 
$nametr = Session::flash('statust', 'رویداد باموفقیت به تایید مدیریت رسید.');
	
}elseif($status=='2'){
	
$updatee = \DB::table('events')->where([
    ['events.event_id','<>' , 0],
    ['events.event_id','=' , $id], 
])->update(['event_desrej' => $request->des ,   'event_active' => '2'     ]); 
$nametr = Session::flash('statust', 'رویداد به تایید مدیریت نرسید.');
	
}

$nametrt = Session::flash('sessurl', 'viewsevents/edit/'.$id.'');

 	return  redirect('superadmin/viewsevents/edit/'.$id.'');
	
	} 
}





	public function deleteventidsup($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
	Session::set('nav', 'viewsevents'); 
	
	
		  	$admins = \DB::table('events')->where([
    ['events.event_id','<>' , 0],
    ['events.event_id','=' , $id], 
])->delete(); 

		  	$nametr = Session::flash('statust', 'حذف رویداد با موفقیت انجام شد.');
		  	$nametrt = Session::flash('sessurl', 'viewsevents');
		  	
 	return  redirect('superadmin/viewsevents');
	}	 
				}				
		

 



	public function viewsshopssup(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
	Session::set('nav', 'viewsshops'); 
	
	   
	 
$admins = 	 \DB::table('shops') 
->leftJoin('user', 'shops.shop_iduser', '=', 'user.id') 
->where([
    ['shops.shop_id','<>' , 0], 
])->orderBy('shops.shop_id', 'desc')->get();

return view('sup.viewsshops', ['admins' => $admins]);
}	 
}


  
 



	public function addfaqsups(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();  
 
 Session::set('nav', 'addfaqs');
 
$admins = 	 \DB::table('shops') 
->leftJoin('user', 'shops.shop_iduser', '=', 'user.id') 
->where([
    ['shops.shop_id','<>' , 0], 
])->orderBy('shops.shop_id', 'desc')->get();



$faqs = 	 \DB::table('faqs') 
->leftJoin('shops', 'faqs.faq_indexid', '=', 'shops.shop_id') 
->where([
    ['faqs.faq_id','<>' , 0],  
    ['faqs.faq_status','=' , 1], 
])->orderBy('faqs.faq_id', 'desc')->get();



return view('sup.addfaqs', ['admins' => $admins , 'faqs' => $faqs]);
	 
	 
} }




	public function addfaqspostsup(Request $request){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();  
 
 Session::set('nav', 'addfaqs');
  
 DB::table('faqs')->insert([
    ['faq_qst' => $request->qst , 'faq_rep' => $request->rep , 'faq_status' => '1'  ,   'faq_indexid' => $request->shop     ]
]);   	
 
 
$nametr = Session::flash('statust', 'پرسش و پاسخ باموفقیت ایجاد شد.');
$nametrt = Session::flash('sessurl', 'addfaqs'); 	   
	
 	return  redirect('superadmin/addfaqs');
 
} }












	public function addshopsup(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
 Session::set('nav', 'addshop');   
 
  
$catshops = \DB::table('catshop')->where([
    ['catshop.cat_id','<>' , 0],
    ['catshop.cat_active','=' , 1], 
])->orderBy('cat_id', 'desc')->get();

$admins = \DB::table('country') ->orderBy('country_id', 'desc')->get();


return view('sup.addshop', ['catshops' => $catshops , 'admins' => $admins]);
	 
	 
}	 
}


  

	
	public function addshopsuppost(Request $request){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
 Session::set('nav', 'addshop');   

	    	$this->validate($request,[
    	    	'name' => 'required', 
    		],[
    			'name.required' => 'لطفا نام فروشگاه یا مشاغل را وارد نمایید', 
    			
    		]);   
 
 
    		
 
 DB::table('shops')->insert([
    ['shop_name' => $request->name , 'shop_adres' => $request->adres , 'shop_cat' => $request->cat  , 'shop_tell' => $request->tell ,  'shop_instagram' => $request->instagram  ,  'shop_facebook' => $request->faceebook ,  'shop_desservice' => $request->about ,  'shop_googlemap' => $request->googlemap ,  'shop_tell' => $request->tell ,    'shop_time' => $request->time ,    'shop_country' => $request->country ,    'shop_state' => $request->state ,    'shop_city' => $request->city ,    'shop_area' => $request->area   ,   'shop_createdatdate' =>  date('Y-m-d H:i:s')   ,   'shop_iduser' => 0   ]
]);   	
 
 
$nametr = Session::flash('statust', 'ثبت فروشگاه باموفقیت انجام شد.');
$nametrt = Session::flash('sessurl', 'viewsshops'); 	   
	
 	return  redirect('superadmin/viewsshops');
	 
}	 
}


  

	public function viewsshopssupid($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
	Session::set('nav', 'viewsshops'); 
	Session::put('idimg', $id);

	 
$admins = 	 \DB::table('shops') 
->leftJoin('user', 'shops.shop_iduser', '=', 'user.id') 
->where([
    ['shops.shop_id','<>' , 0],
    ['shops.shop_id','=' , $id], 
])->orderBy('shops.shop_id', 'desc')->get();



$catshops = \DB::table('catshop')->where([
    ['catshop.cat_id','<>' , 0],
    ['catshop.cat_active','=' , 1], 
])->orderBy('cat_id', 'desc')->get();
 

$files = \DB::table('shops')
->join('file', 'shops.shop_id', '=', 'file.file_indexid') ->where([
    ['shops.shop_id','<>' , 0],
    ['shops.shop_id','=' , $id],
    ['file.file_status','=' , 1], 
])->orderBy('shop_id', 'desc')->get();
 

return view('sup.edishop', ['admins' => $admins , 'catshops' => $catshops , 'files' => $files]); } 
}







	public function viewsshopssupidpost(Request $request , $id  ){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
	Session::set('nav', 'viewsshops'); 

    	$this->validate($request,[
    	    	'name' => 'required', 
    		],[
    			'name.required' => 'لطفا نام فروشگاه یا مشاغل را وارد نمایید', 
    			
    		]);   
 
    		   
$updatee = \DB::table('shops')->where([
    ['shops.shop_id','<>' , 0],
    ['shops.shop_id','=' , $id], 
])->update(['shop_name' => $request->name , 'shop_adres' => $request->adres , 'shop_cat' => $request->cat  , 'shop_tell' => $request->tell ,  'shop_instagram' => $request->instagram  ,  'shop_facebook' => $request->faceebook ,  'shop_desservice' => $request->about ,  'shop_googlemap' => $request->googlemap ,  'shop_tell' => $request->tell ,  'shop_time' => $request->time     ]); 

$nametr = Session::flash('statust', 'ویرایش اطلاعات باموفقیت انجام شد.');
$nametrt = Session::flash('sessurl', 'viewsshops/edit/'.$id.'');

 	return  redirect('superadmin/viewsshops/edit/'.$id.'');
	
	} 
}




	public function statshopssupidpost(Request $request , $status, $id ){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
	Session::set('nav', 'viewsshops'); 
if($status=='1'){
    		   
$updatee = \DB::table('shops')->where([
    ['shops.shop_id','<>' , 0],
    ['shops.shop_id','=' , $id], 
])->update(['shop_desacc' => $request->des ,   'shop_active' => '1'     ]); 
$nametr = Session::flash('statust', 'فروشگاه مشاغل باموفقیت به تایید مدیریت رسید.');
	
}elseif($status=='2'){
	
$updatee = \DB::table('shops')->where([
    ['shops.shop_id','<>' , 0],
    ['shops.shop_id','=' , $id], 
])->update(['shop_desrej' => $request->des ,   'shop_active' => '2'     ]); 
$nametr = Session::flash('statust', 'فروشگاه مشاغل به تایید مدیریت نرسید.');
	
}

$nametrt = Session::flash('sessurl', 'viewsshops/edit/'.$id.'');

 	return  redirect('superadmin/viewsshops/edit/'.$id.'');
	
	} 
}





	public function deletimgshopsidsup($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
	Session::set('nav', 'viewsshops'); 
  
$files = \DB::table('shops')
->join('file', 'shops.shop_id', '=', 'file.file_indexid') ->where([
    ['shops.shop_id','<>' , 0],
    ['file.file_id','=' , $id],
    ['file.file_status','=' , 1], 
])->orderBy('shop_id', 'desc')->first();

$filedelets = \DB::table('file') ->where([ 
    ['file.file_id','=' , $id],
    ['file.file_status','=' , 1], 
])->delete(); 
  
		  	$nametr = Session::flash('statust', 'حذف تصویر مربوطه از فروشگاه مشاغل با موفقیت انجام شد.');
		  	$nametrt = Session::flash('sessurl', 'viewsshops/edit/'.$files->shop_id);
		  	
 	return  redirect('superadmin/viewsshops/edit/'.$files->shop_id);
	}	  }				
		



	public function deletshopsidsup($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
	Session::set('nav', 'viewsshops'); 
		  	$admins = \DB::table('shops') ->where([
    ['shops.shop_id','<>' , 0],
    ['shops.shop_id','=' , $id], 
])->delete(); 

		  	$nametr = Session::flash('statust', 'حذف فروشگاه مشاغل با موفقیت انجام شد.');
		  	$nametrt = Session::flash('sessurl', 'viewsshops');
		  	
 	return  redirect('superadmin/viewsshops');
	}	  }				
		









	
	public function viewstexblogssup(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
	Session::set('nav', 'viewstexblogs');  
$admins = \DB::table('page')
->leftjoin('user', 'page.page_userid', '=', 'user.id') ->where([
    ['page.page_id','<>' , 0], 
])->orderBy('page.page_id', 'desc')->get();

return view('sup.viewstexblogs', ['admins' => $admins]);
}	 
}




	
	public function addtexblogsup(){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin(); 

Session::set('nav', 'addtexblog'); 
return view('sup.addtexblog'); 
}	 
}




 public function addtexblogsuppost(Request $request){ 
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
 Session::set('nav', 'addtexblog');  
$h = new SuperadminController();
$h->validatesuperadmin();

	    	$this->validate($request,[
    	    	'tit' => 'required|min:3',
    			'prides' => 'required|min:7',
    			'des' => 'required|min:10',
    		],[
    			'tit.required' => 'لطفا عنوان را وارد نمایید',
    			'tit.min' => 'عنوان کوتاه است',
    			'prides.required' => 'لطفا خلاصه متن را وارد نمایید',
    			'prides.min' => 'خلاصه متن کوتاه است',
    			'des.required' => 'لطفا متن را بصورت صحیح وارد نمایید',
    			'des.min' => 'متن کوتاه است',
    			
    		]);   
 
 
  $imageName='';  
  
  
 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }
		
    		
 
 DB::table('page')->insert([
    ['page_kh' => $request->prides , 'page_tit' => $request->tit , 'page_des' => $request->des ,   'page_createdatdate' =>  date('Y-m-d H:i:s')  ,  'page_active' => 0    ,   'page_img' => $imageName   ,   'page_userid' => 0   ]
]);   	
 
 
$nametr = Session::flash('statust', 'ثبت محتوا باموفقیت انجام شد.');
$nametrt = Session::flash('sessurl', 'viewstexblogs'); 	   
 
 return redirect('superadmin/viewstexblogs'); 


	 } }
			




	public function edittexblogsup($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
	Session::set('nav', 'viewstexblogs'); 
	Session::put('idimg', $id);
	
$admins = \DB::table('page')
->leftjoin('user', 'page.page_userid', '=', 'user.id') ->where([
    ['page.page_id','<>' , 0], 
    ['page.page_id','=' , $id], 
])->orderBy('page.page_id', 'desc')->get();

return view('sup.edittexblog', ['admins' => $admins]); } 
}






	public function acctexblogsup($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
$adminacc =  DB::table('page')->where('page_id', '=', $id) ->orderBy('page_id', 'desc')->first();	
  
$updatee = \DB::table('page')->where('page_id', '=', $id)  ->update(['page_active' => 1   ]); 
		  	$admins = \ DB::table('page')->where('page_id', $id)->get();				
		  	$nametr = Session::flash('statust', 'محتوا باموفقیت تایید شد .');
		  	$nametrt = Session::flash('sessurl', 'viewstexblogs');			  	
		  			  	
		  	$user = \DB::table('page')->where('page_id', '=', $id)  ->orderBy('page_id', 'desc')->first();
  
 return redirect('superadmin/viewstexblogs/edit/'.$id.'');  
		
	
 
}   }
		
		

	public function rejtexblogsup($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
$adminacc =  DB::table('page')->where('page_id', '=', $id) ->orderBy('page_id', 'desc')->first();	
  
$updatee = \DB::table('page')->where('page_id', '=', $id)  ->update(['page_active' => 0   ]); 
		  	$admins = \ DB::table('page')->where('page_id', $id)->get();				
		  	$nametr = Session::flash('statust', 'محتوا باموفقیت غیرفعال شد .');
		  	$nametrt = Session::flash('sessurl', 'viewstexblogs');			  	
		  			  	
		  	$user = \DB::table('page')->where('page_id', '=', $id)  ->orderBy('page_id', 'desc')->first();
  
 return redirect('superadmin/viewstexblogs/edit/'.$id.'');  
		
	
 
}   }
		
		
	public function deletpagesup($id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
	Session::set('nav', 'viewstexblogs'); 
		  	$admins = \DB::table('page') ->where([
    ['page.page_id','<>' , 0],
    ['page.page_id','=' , $id], 
])->delete(); 

		  	$nametr = Session::flash('statust', 'حذف محتوا با موفقیت انجام شد.');
		  	$nametrt = Session::flash('sessurl', 'viewstexblogs');
		  	
 return redirect('superadmin/viewstexblogs');  
	}	 
				}				
		




	public function edittexblogpostsup(Request $request , $id){
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
	Session::set('nav', 'viewstexblogs'); 

    	$this->validate($request,[
    	    	'tit' => 'required|min:3',
    			'kh' => 'required|min:3',
    			'des' => 'required|min:5',
    		],[
    			'tit.required' => 'لطفا عنوان را وارد نمایید',
    			'tit.min' => 'عنوان کوتاه است', 
    			'kh.required' => 'لطفا خلاصه را وارد نمایید',
    			'kh.min' => 'خلاصه کوتاه است',
    			'des.required' => 'لطفا توضیحات را بصورت صحیح وارد نمایید',
    			'des.min' => 'توضیحات کوتاه است',
    			
    		]);   
 
    		
$admins = \DB::table('page')->where([
    ['page.page_id','<>' , 0],
    ['page.page_id','=' , $id], 
])->orderBy('page.page_id', 'desc')->first();
  
  $imageName=$admins->page_img;  
  
  
 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }
		
    		  
$updatee = \DB::table('page')->where([
    ['page.page_id','<>' , 0],
    ['page.page_id','=' , $id], 
])->update(['page_kh' => $request->kh  , 'page_tit' => $request->tit , 'page_des' => $request->des  , 'page_img' => $imageName   , 'page_active' => '0'     ]); 
$admins = \DB::table('page')->where('page_id', '=', $id)  ->orderBy('page.page_id', 'desc')->get();
$nametr = Session::flash('statust', 'محتوا باموفقیت ویرایش شد.');
$nametrt = Session::flash('sessurl', 'viewstexblogs/edit/'.$id.'');

 return redirect('superadmin/viewstexblogs/edit/'.$id.'');  
	
	} 
}



public function testpanel(){     
$h = new SuperadminController();
$h->validatesuperadmin();
 
$admins = \DB::table('articles') 
->leftJoin('teacher', 'articles.art_idteacher', '=', 'teacher.id') 
->where('articles.art_active', '=', 1)  ->orderBy('art_id', 'desc')->get(); 

 return view('sup.testpanel'  , [ 'admins' => $admins     ]); 
  
 }
	
public function testpanel2(){    
if (empty(Session::has('signsuperadmin'))){   return redirect('superadmin/sign-in');  }
if (Session::has('signsuperadmin')){ 
$h = new SuperadminController();
$h->validatesuperadmin();
 
$admins = \DB::table('articles') 
->leftJoin('teacher', 'articles.art_idteacher', '=', 'teacher.id') 
->where('articles.art_active', '=', 1)  ->orderBy('art_id', 'desc')->get(); 

 return view('superadmin.testpanel2'  , [ 'admins' => $admins     ]); 
  
 } }
		
    


	
	
	}