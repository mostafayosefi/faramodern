<?php

namespace App\Http\Controllers\Index;

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

class IndexController extends Controller
{

public function settingindex($idset){ 

 Session::set('idcategory', $idset);

if($idset!='0'){
$categorys = \DB::table('cat') ->where('cat_id', '=', $idset)->orderBy('cat_id', 'asc')->first(); 
 Session::set('cat_name', $categorys->cat_name);
}


$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first(); 

$cats = \DB::table('cat') ->where('cat_id', '<>', '0')->orderBy('cat_id', 'asc')->get(); 

$links = \DB::table('links') ->where('link_id', '<>', '0')->orderBy('link_id', 'asc')->get(); 
 
$elanats = \DB::table('elanats') ->where('elanat_id', '<>', '0')->orderBy('elanat_id', 'asc')->get(); 

	Session::set('mngindexs', $mngindexs);
	Session::set('cats', $cats);
	Session::set('elanats', $elanats);
	Session::set('links', $links);

 
 
 
 

}


public function demoprofile(){  
$admins = 0;  

$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();
	Session::set('mngindexs', $mngindexs); 
 return view('index.demoprofile'  , [  'admins' => $admins    ]);  
}




public function paneluser(){  
 
if (empty(Session::has('signuser'))){   return redirect('/login'); }	
 else if (Session::has('signuser')){  
$h = new IndexController();
$h->indexclick(); 
$admins = 0;   
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();
	Session::set('mngindexs', $mngindexs); 
 return view('index.panel'  , [  'admins' => $admins    ]);  
 
}}






public function profileuser(){  
 
if (empty(Session::has('signuser'))){   return redirect('/login'); }	
 else if (Session::has('signuser')){  
$h = new IndexController();
$h->indexclick();   
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();
	Session::set('mngindexs', $mngindexs); 
$users = \DB::table('user')  ->where([   
 ['id', '=',  Session::get('iduser')],  
  ])->orderBy('id', 'desc')->first();
 

 return view('index.profile'  , [  'users' => $users    ]);  
 
}}



public function myprofileuser(){  
 
if (empty(Session::has('signuser'))){   return redirect('/login'); }	
 else if (Session::has('signuser')){  
$h = new IndexController();
$h->indexclick();   
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();
	Session::set('mngindexs', $mngindexs); 
$user = \DB::table('user')  ->where([   
 ['id', '=',  Session::get('iduser')],  
  ])->orderBy('id', 'desc')->first();
 

 return view('index.myprofile'  , [  'user' => $user    ]);  
 
}}




public function editprofileuser(){  
 
if (empty(Session::has('signuser'))){   return redirect('/login'); }	
 else if (Session::has('signuser')){  
$h = new IndexController();
$h->indexclick();   
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();
	Session::set('mngindexs', $mngindexs); 
$user = \DB::table('user')  ->where([   
 ['id', '=',  Session::get('iduser')],  
  ])->orderBy('id', 'desc')->first(); 

 return view('index.editprofile'  , [  'user' => $user    ]);  
 
}}



public function defaultsetting(){  
 
if (empty(Session::has('signuser'))){   return redirect('/login'); }	
 else if (Session::has('signuser')){  
$h = new IndexController();
$h->indexclick(); 

$h = new IndexController();
$h->valueuserdefault();   

  
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();
	Session::set('mngindexs', $mngindexs); 
$user = \DB::table('user')  ->where([   
 ['id', '=',  Session::get('iduser')],  
  ])->orderBy('id', 'desc')->first(); 

 return view('index.defaultsetting'  , [  'user' => $user    ]);  
 
}}


 



public function secret(){  
 
if (empty(Session::has('signuser'))){   return redirect('/login'); }	
 else if (Session::has('signuser')){  
$h = new IndexController();
$h->indexclick();   
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();
	Session::set('mngindexs', $mngindexs); 
$user = \DB::table('user')  ->where([   
 ['id', '=',  Session::get('iduser')],  
  ])->orderBy('id', 'desc')->first(); 

 return view('index.secret'  , [  'user' => $user    ]);  
 
}}



public function secretpost(  Request $request){  
if (empty(Session::has('signuser'))){   return redirect('/login'); }	
 else if (Session::has('signuser')){  
$h = new IndexController();
$h->indexclick();     


    	$this->validate($request,[
    			'nowpass' => 'required',
    			'userpassword' => 'required|min:5|confirmed', 
    		],[
    			'nowpass.required' => 'لطفا رمزقدیمی را به صورت صحیح وارد نمایید',
    			'userpassword.required' => 'لطفا رمزعبور جدید را به صورت صحیح وارد نمایید',
    			'userpassword.min' => 'رمز کوتاه می باشد', 
    			'userpassword.confirmed' => 'متاسفانه رمزقدیم با رمز جدید مطابقت ندارد', 
    		]); 




$admins = \DB::table('user')->where('id', '=',  Session::get('iduser'))  ->orderBy('id', 'desc')->first();
 
$decryptedPasswordnow =  Crypt::decrypt($admins->user_password);


 if($request->nowpass!=$decryptedPasswordnow){
 	
 $nametr = Session::flash('flgstatus', 'error'); 
 
 	$nametr = Session::flash('statust', 'متاسفانه رمزقبلی اشتباه وارد شده است'); 
 return redirect('user/secret'); 
 }
 
 
$encryptedPassword =  Crypt::encrypt($request->userpassword);
$decryptedPassword =  Crypt::decrypt($encryptedPassword);

$updatee = \DB::table('user')->where('id', '=',  Session::get('iduser'))  ->update(['user_password' => $encryptedPassword   ]); 

  
$nametr = Session::flash('statust', 'رمزعبور باموفقیت تغییر پیدا کرد'); 
 

	
 
 $nametr = Session::flash('flgstatus', 'success'); 

 return redirect('user/myprofile'); 




}}








public function editprofileuserpost(  Request $request){  
if (empty(Session::has('signuser'))){   return redirect('/login'); }	
 else if (Session::has('signuser')){ 
 
  
  
  
  $user = \DB::table('user')  ->where([   
 ['id', '=',  Session::get('iduser')],  
  ])->orderBy('id', 'desc')->first();
 
$imageName=$user->user_img;

 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }




$updatee = \DB::table('user') ->where([   
 ['id', '=',  Session::get('iduser')],  
  ])->update([   'user_name' => $request->name ,    'user_email' => $request->email ,    'user_tell' => $request->tell ,    'user_adres' => $request->adres ,   'user_img' => $imageName    ]); 
  
  
  
   

 $nametr = Session::flash('statust', 'اطلاعات کاربری با موفقیت ویرایش شد');  
 $nametr = Session::flash('flgstatus', 'success'); 
 return redirect('/user/myprofile'); 	



}}











public function myrequest($stat){  
 
if (empty(Session::has('signuser'))){   return redirect('/login'); }	
 else if (Session::has('signuser')){  
$h = new IndexController();
$h->indexclick();

$admins = 0;  

$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();
	Session::set('mngindexs', $mngindexs); 
 return view('index.myrequest'  , [  'admins' => $admins , 'stat' => $stat    ]);  
 
}}



public function pagename($name){
	 
$h = new IndexController();
$h->indexclick();
  
$mypages = \DB::table('page') ->where('page_tit', '=', $name)->orderBy('id', 'desc')->first(); 
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();
	Session::set('mngindexs', $mngindexs); 

    if ($mypages) {
        
 return view('index.mypage'  , [  'mypages' => $mypages    ]);  
    }else{

        return view('mng.404'  );  
    }
	  
} 




public function addperson(){
if (empty(Session::has('signuser'))){   return redirect('/login'); }	
 else if (Session::has('signuser')){  
$h = new IndexController();
$h->indexclick(); 
$admins = 0;   
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();
	Session::set('mngindexs', $mngindexs);  
	
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


 return view('index.addperson'  , [  'admins' => $admins ,  'law' => $law   ,  'provinces' => $provinces  ,  'citys' => $citys   ,  'txtdes' => $txtdes  ,  'txtdesupload' => $txtdesupload    ]);  
} }


public function addcompany(){
if (empty(Session::has('signuser'))){   return redirect('/login'); }	
 else if (Session::has('signuser')){  
$h = new IndexController();
$h->indexclick(); 
$admins = 0;   
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();
	Session::set('mngindexs', $mngindexs);  
	
$law = \DB::table('law') ->where('law_id', '=', '1')->orderBy('law_id', 'desc')->first();


$provinces = \DB::table('province')  ->where([  
 ['id', '<>',  0],  
 ['flg', '=',  1],  
  ])->orderBy('id', 'asc')->get();
$citys = \DB::table('city') ->where('flg', '=', '1')->orderBy('flg', 'desc')->orderBy('id', 'asc')->get();


	
 $txtdes = \DB::table('txtdes')  ->where([ 
    ['txt_id', '<>', 0], 
    ['txt_id', '=', 2], ])
    ->orderBy('txt_id', 'asc')->first();
    
    
 $txtdesupload = \DB::table('txtdes')  ->where([ 
    ['txt_id', '<>', 0], 
    ['txt_id', '=', 6], ])
    ->orderBy('txt_id', 'asc')->first();

 return view('index.addcompany'  , [  'admins' => $admins ,  'law' => $law  ,  'provinces' => $provinces  ,  'citys' => $citys  ,  'txtdes' => $txtdes   ,  'txtdesupload' => $txtdesupload    ]);  
} }



public function addpersonpost( Request $request){  
if (empty(Session::has('signuser'))){   return redirect('/login'); }	
 else if (Session::has('signuser')){ 



$h = new IndexController();
$h->valueuserdefault();   


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
     
    return redirect('/user/addperson'); 	
}
 
 
 
 
$imageName='';
 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }

		 
DB::table('regperson')->insert([
    [ 'regp_name' => $request->name , 'regp_family' => $request->family , 'regp_father' => $request->father  ,'regp_nameeng' => $request->nameeng ,'regp_mobile' => $request->mobile , 'regp_tell' => $request->tell , 'regp_email' => $request->email , 'regp_birthday' => $request->birthday ,'regp_codmel' => $request->codmel , 'regp_shnum' => $request->shnum , 'regp_sodor' => $request->sodor  ,'regp_country' => $request->country ,'regp_ost' => $request->ost , 'regp_city' => $request->city , 'regp_codp' => $request->codp , 'regp_adres' => $request->adres  , 'regp_des' => $request->des  , 'regp_tellreq' => $request->tellreq  , 'regp_file' => $imageName ,   'regp_createdatdate' =>  date('Y-m-d H:i:s') ,   'regp_iduser' =>   Session::get('iduser'),   'regp_pernumber' =>   $request->pernumber         ]
]);

$admins = \DB::table('regperson') ->where([  
 ['regp_id', '<>',  0],  
 ['regp_iduser', '=',  Session::get('iduser')],  
  ])->orderBy('regp_id', 'desc')->first(); 

$id=$admins->regp_id;
$type=11;

$h = new IndexController();
$h->alertnotif($id , $type);


$role='person';
$h = new IndexController();
$h->valuerloedefsetting($role , $id);  



 $nametr = Session::flash('statust', 'پیش ثبت نام شما باموفقیت انجام شد');  
 $nametr = Session::flash('flgstatus', 'success'); 
	
    return redirect('/user/mngreqperson/user'); 	



}}




 public function addticketuser(){
if (empty(Session::has('signuser'))){   return redirect('/login'); }	
 else if (Session::has('signuser')){ 

 Session::set('nav', 'addticket'); 
 return view('index.addticket'); } }			   


public function addticketuserPost(Request $request){
if (empty(Session::has('signuser'))){   return redirect('/login'); }	
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




$link=$idtik; 
$typ='6';
$h = new IndexController();
$h->alertnotif($typ,$link);
 


 $nametr = Session::flash('flgstatus', 'success');  

 $nametr = Session::flash('statust', 'تیکت باموفقیت ثبت شد');
 $nametrt = Session::flash('sessurl', 'viewstickets');
 return redirect('user/viewstickets');
		  	  }	 }  


 






	public function viewsticketsuser(){
if (empty(Session::has('signuser'))){   return redirect('/login'); }	
 else if (Session::has('signuser')){ 

		 


$h = new IndexController();
$h->indexclick(); 
		
 Session::set('nav', 'viewstickets'); 
 
$admins = \DB::table('user') 
->join('ticket', 'user.id', '=', 'ticket.tik_fromid') 
->where([
    ['ticket.tik_fromarou', '=', 4],
    ['ticket.tik_toarou', '=', 2],
    ['ticket.tik_fromid', '=', Session::get('iduser')],
    ['ticket.tik_fromsh', '=', 1],])
    ->orderBy('ticket.tik_date', 'desc')->get();


    
    
return view('index.viewstickets', ['admins' => $admins  ]);
} }	





	public function ticketuser($id){
if (empty(Session::has('signuser'))){   return redirect('/login'); }	
 else if (Session::has('signuser')){ 

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
	
	
	
$typ='7';
$link=$id;
$req=0;
$h = new IndexController();
$h->showupdatealertuser($typ,$link,$req);
	
 
return view('index.ticket', ['tickets' => $tickets  ,  'messages' => $messages  ,  'id' => $id  ]); 

} }
	   
	   
	   
	   
	   


	public function ticketuserPost($id  , Request $request ){

if (empty(Session::has('signuser'))){   return redirect('/login'); }	
 else if (Session::has('signuser')){ 
 
$this->validate($request,[
    			'des' => 'required|min:2|max:666',
    		],[
    			'des.required' => 'لطفا پیام خود را وارد نمایید',
    			'des.min' => 'پیام شما نا معتبر است',
    			'des.max' => 'پیام شما نا معتبر است',
    			
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
    
    

$link=$id;    		 
$req=0;
$typ='14';
$h = new indexController();
$h->alertnotif($typ,$link,$req);
 

 $nametr = Session::flash('flgstatus', 'success');  

$nametr = Session::flash('statust', 'پیام شما با موفقیت ارسال شد.'); 
$nametrt = Session::flash('sessurl', 'viewstickets/ticket/'.$id.''); 
  return redirect('user/viewstickets/ticket/'.$id.'');
} }






public function showupdatealertuser($typ,$link,$req){ 
 

$updatee = \DB::table('alert')
->join('user', 'alert.iduser', '=', 'user.id')  ->where([
    ['user.id', '=',  Session::get('iduser')], 
    ['alert.type', '=', $typ],
    ['alert.link', '=', $link],
    ['alert.req', '=', $req],
    ['alert.alert_id', '<>', 0], ])  ->update(['show' => 1   ]); 


$h = new IndexController();
$h->viewalertnotuser();

}
   

public function viewalertnotuser(){ 
 
$admins  = \DB::table('alert')
->join('user', 'alert.iduser', '=', 'user.id')  ->where([
    ['user.id', '<>',  0], 
    ['user.id', '=',  Session::get('iduser')], 
    ['alert.show', '=',  0],  ])
    ->orderBy('alert_id', 'desc')->limit(5)->get(); 
    
    
$countalert  = \DB::table('alert')
->join('user', 'alert.iduser', '=', 'user.id')  ->where([
    ['user.id', '<>',  0], 
    ['user.id', '=',  Session::get('iduser')], 
    ['alert.show', '=',  0],  ])
    ->orderBy('alert_id', 'desc')->count(); 
 
 Session::set('countalertuser', $countalert);  
 Session::set('alertnotfuser', $admins);  
 
 }

public function addcompanypost( Request $request){  
if (empty(Session::has('signuser'))){   return redirect('/login'); }	
 else if (Session::has('signuser')){ 


$h = new IndexController();
$h->valueuserdefault();   

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
     
    return redirect('/user/addcompany'); 	
}
 
 
 
 
$imageName='';
 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }

		 
DB::table('regcompany')->insert([
    [ 'regc_namecompany' => $request->namecompany , 'regc_namecompanyeng' => $request->namecompanyeng , 'regc_numsabt' => $request->numsabt  ,'regc_datesabt' => $request->datesabt ,'regc_locsabt' => $request->locsabt , 'regc_codfin' => $request->codfin , 'regc_shemel' => $request->shemel , 'regc_tell' => $request->tell ,'regc_email' => $request->email , 'regc_country' => $request->country , 'regc_ost' => $request->ost  ,'regc_city' => $request->city , 'regc_codp' => $request->codp , 'regc_adres' => $request->adres  , 'regc_des' => $request->des  , 'regc_tellreq' => $request->tellreq   , 'regc_namemodir' => $request->namemodir ,'regc_desactive' => $request->desactive , 'regc_namerabet' => $request->namerabet , 'regc_familyrabet' => $request->familyrabet  ,'regc_namerabeteng' => $request->namerabeteng , 'regc_fatherrabet' => $request->fatherrabet , 'regc_semat' => $request->semat  , 'regc_mobile' => $request->mobile  , 'regc_birthday' => $request->birthday  , 'regc_countryrabet' => $request->countryrabet ,'regc_codmel' => $request->codmel , 'regc_shosherabet' => $request->shosherabet   , 'regc_file' => $imageName ,   'regc_createdatdate' =>  date('Y-m-d H:i:s')  ,   'regc_iduser' =>   Session::get('iduser')  ,   'regc_pernumber' =>   $request->pernumber       ]
]);


$admins = \DB::table('regcompany') ->where([  
 ['regc_id', '<>',  0],  
 ['regc_iduser', '=',  Session::get('iduser')],  
  ])->orderBy('regc_id', 'desc')->first(); 

$id=$admins->regc_id;
$type=12;

$h = new IndexController();
$h->alertnotif($id , $type);


$role='company';
$h = new IndexController();
$h->valuerloedefsetting($role , $id);  



 $nametr = Session::flash('statust', 'پیش ثبت نام شما باموفقیت انجام شد');  
 $nametr = Session::flash('flgstatus', 'success'); 
	
    return redirect('/user/mngreqperson/company'); 	



}}








public function editreqpersonidpost( $id , Request $request){  
if (empty(Session::has('signuser'))){   return redirect('/login'); }	
 else if (Session::has('signuser')){ 

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
     
    return redirect('/user/mngreqperson/edit/'.$id); 	
}
 
 
 $requests = \DB::table('regperson') 
 ->where([  
 ['regp_id', '=',  $id], 
 ['regp_iduser', '=',  Session::get('iduser')],  
  ])->orderBy('regp_id', 'desc')->first(); 
 
$imageName=$requests->regp_file;

 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }




$updatee = \DB::table('regperson')->where([  
 ['regp_id', '<>',  0],  
 ['regp_iduser', '=',  Session::get('iduser')],
 ['regp_id', '=',  $id],  
  ])->update([   'regp_name' => $request->name , 'regp_family' => $request->family , 'regp_father' => $request->father  ,'regp_nameeng' => $request->nameeng ,'regp_mobile' => $request->mobile , 'regp_tell' => $request->tell , 'regp_email' => $request->email , 'regp_birthday' => $request->birthday ,'regp_codmel' => $request->codmel , 'regp_shnum' => $request->shnum , 'regp_sodor' => $request->sodor  ,'regp_country' => $request->country ,'regp_ost' => $request->ost , 'regp_city' => $request->city , 'regp_codp' => $request->codp , 'regp_adres' => $request->adres  , 'regp_des' => $request->des  , 'regp_tellreq' => $request->tellreq  , 'regp_file' => $imageName ,   'regp_pernumber' =>   $request->pernumber    ]); 
  
  
  
   

$role='person';
$h = new IndexController();
$h->valuerloedefsetting($role , $id);  


 $nametr = Session::flash('statust', 'اطلاعات ثبت شده شما با موفقیت ویرایش شد');  
 $nametr = Session::flash('flgstatus', 'success'); 
 return redirect('/user/mngreqperson/edit/'.$id); 	



}}





public function deletquerycapcha(){  

 
$capcha = \DB::table('capcha')   ->where([
    ['id','<>' , 0],  
])-> orderBy('id', 'desc')->first();

$id = $capcha->id;

$id = $id-100;


 $delet = \DB::table('capcha')->where('id', '<', $id)->delete(); 

 

}

public function indexclick(){   
$allblogs = \DB::table('page') ->where('id', '<>', '0')->orderBy('id', 'desc')->get();    
	Session::set('allpages', $allblogs);   
	
	
	
$tickread = DB::table('user') 
->join('ticket', 'user.id', '=', 'ticket.tik_fromid')->where([
    ['ticket.tik_fromarou', '=', 4],
    ['ticket.tik_toarou', '=', 2],
    ['ticket.tik_fromid', '=', Session::get('iduser')],
    ['ticket.tik_fromsh', '=', 1],
    ['ticket.tik_fromread', '=', 0],])
    ->orderBy('ticket.id', 'desc')->count();
 
	Session::set('tickreaduser', $tickread); 
	
	
	
	
	  
}

public function valueuserdefault(){   

$userdefault = DB::table('userdefault')  ->where([ 
    ['def_iduser', '=', Session::get('iduser')], ])
    ->orderBy('def_id', 'desc')->first();
    

if($userdefault){

}else{ 
	
DB::table('userdefault')->insert([
    [ 'def_iduser' => Session::get('iduser') ,   'def_createdatdate' =>  date('Y-m-d H:i:s')    ]
]);

}
	 

}

public function valuerloedefsetting($role , $id){   
 
    
    
    

if($role=='person'){
	
$userdefault = DB::table('regperson')  ->where([ 
    ['regp_iduser', '=', Session::get('iduser')], 
    ['regp_id', '=', $id], ])
    ->orderBy('regp_id', 'desc')->first();

 $updatee = \DB::table('userdefault')->where([    
 ['def_iduser', '=',  Session::get('iduser')],  
  ])->update([   'regp_name' => $userdefault->regp_name , 'regp_family' => $userdefault->regp_family , 'regp_father' => $userdefault->regp_father  ,'regp_nameeng' => $userdefault->regp_nameeng ,'regp_mobile' => $userdefault->regp_mobile , 'regp_tell' => $userdefault->regp_tell , 'regp_email' => $userdefault->regp_email , 'regp_birthday' => $userdefault->regp_birthday ,'regp_codmel' => $userdefault->regp_codmel , 'regp_shnum' => $userdefault->regp_shnum , 'regp_sodor' => $userdefault->regp_sodor   , 'regp_codp' => $userdefault->regp_codp , 'regp_adres' => $userdefault->regp_adres     ]); 
	
  
}elseif($role=='company'){ 

	 
$userdefault = DB::table('regcompany')  ->where([ 
    ['regc_iduser', '=', Session::get('iduser')], 
    ['regc_id', '=', $id], ])
    ->orderBy('regc_id', 'desc')->first();

 $updatee = \DB::table('userdefault')->where([    
 ['def_iduser', '=',  Session::get('iduser')],  
  ])->update([  'regc_namecompany' => $userdefault->regc_namecompany , 'regc_namecompanyeng' => $userdefault->regc_namecompanyeng , 'regc_numsabt' => $userdefault->regc_numsabt  ,'regc_datesabt' => $userdefault->regc_datesabt ,'regc_locsabt' => $userdefault->regc_locsabt , 'regc_codfin' => $userdefault->regc_codfin , 'regc_shemel' => $userdefault->regc_shemel , 'regc_tell' => $userdefault->regc_tell ,'regc_email' => $userdefault->regc_email ,  'regc_codp' => $userdefault->regc_codp , 'regc_adres' => $userdefault->regc_adres  ,'regc_desactive' => $userdefault->regc_desactive ,    'regc_namemodir' => $userdefault->regc_namemodir ,  'regc_namerabet' => $userdefault->regc_namerabet , 'regc_familyrabet' => $userdefault->regc_familyrabet  ,'regc_namerabeteng' => $userdefault->regc_namerabeteng , 'regc_fatherrabet' => $userdefault->regc_fatherrabet , 'regc_semat' => $userdefault->regc_semat  , 'regc_mobile' => $userdefault->regc_mobile  , 'regc_birthday' => $userdefault->regc_birthday  , 'regc_countryrabet' => $userdefault->regc_countryrabet ,'regc_codmel' => $userdefault->regc_codmel , 'regc_shosherabet' => $userdefault->regc_shosherabet     ]); 
  
}
	 

}






public function defaultroliid($role  , Request $request){   
 
    
    
    

if($role=='person'){
	 

 $updatee = \DB::table('userdefault')->where([    
 ['def_iduser', '=',  Session::get('iduser')],  
  ])->update([   'regp_name' => $request->name , 'regp_family' => $request->family , 'regp_father' => $request->father  ,'regp_nameeng' => $request->nameeng ,'regp_mobile' => $request->mobile , 'regp_tell' => $request->tell , 'regp_email' => $request->email , 'regp_birthday' => $request->birthday ,'regp_codmel' => $request->codmel , 'regp_shnum' => $request->shnum , 'regp_sodor' => $request->sodor   , 'regp_codp' => $request->codp , 'regp_adres' => $request->adres       ]); 
	
	

 $nametr = Session::flash('statust', 'تنظیمات پیش فرض فرم حقیقی با موفقیت ویرایش شد');  
 $nametr = Session::flash('flgstatus', 'success'); 
 return redirect('/user/defaultperson'); 	
  
}elseif($role=='company'){ 

	  

 $updatee = \DB::table('userdefault')->where([    
 ['def_iduser', '=',  Session::get('iduser')],  
  ])->update([   'regc_namecompany' => $request->namecompany , 'regc_namecompanyeng' => $request->namecompanyeng , 'regc_numsabt' => $request->numsabt  ,'regc_datesabt' => $request->datesabt ,'regc_locsabt' => $request->locsabt , 'regc_codfin' => $request->codfin , 'regc_shemel' => $request->shemel , 'regc_tell' => $request->tell ,'regc_email' => $request->email ,   'regc_codp' => $request->codp , 'regc_adres' => $request->adres    , 'regc_namemodir' => $request->namemodir ,'regc_desactive' => $request->desactive , 'regc_namerabet' => $request->namerabet , 'regc_familyrabet' => $request->familyrabet  ,'regc_namerabeteng' => $request->namerabeteng , 'regc_fatherrabet' => $request->fatherrabet , 'regc_semat' => $request->semat  , 'regc_mobile' => $request->mobile  , 'regc_birthday' => $request->birthday  , 'regc_countryrabet' => $request->countryrabet ,'regc_codmel' => $request->codmel , 'regc_shosherabet' => $request->shosherabet      ]); 
  
  
 $nametr = Session::flash('statust', 'تنظیمات پیش فرض فرم حقوقی با موفقیت ویرایش شد');  
 $nametr = Session::flash('flgstatus', 'success'); 
 return redirect('/user/defaultcompany'); 	
  
}
	 

}






public function mngreqperson($stat){
if (empty(Session::has('signuser'))){   return redirect('/login'); }	
 else if (Session::has('signuser')){   
$h = new IndexController();
$h->indexclick();


$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();
	Session::set('mngindexs', $mngindexs);
	
	
if($stat=='user'){ 
$admins = \DB::table('regperson') ->where([  
 ['regp_id', '<>',  0],  
 ['regp_iduser', '=',  Session::get('iduser')],  
  ])->orderBy('regp_id', 'desc')->get(); 
  
  
 $txtdes = \DB::table('txtdes')  ->where([ 
    ['txt_id', '<>', 0], 
    ['txt_id', '=', 3], ])
    ->orderBy('txt_id', 'asc')->first();

 return view('index.mngreqperson'  , [  'admins' => $admins ,  'stat' => $stat  ,  'txtdes' => $txtdes   ]);
}elseif($stat=='company'){

$admins = \DB::table('regcompany') ->where([  
 ['regc_id', '<>',  0],  
 ['regc_iduser', '=',  Session::get('iduser')],  
  ])->orderBy('regc_id', 'desc')->get(); 
  
  
 $txtdes = \DB::table('txtdes')  ->where([ 
    ['txt_id', '<>', 0], 
    ['txt_id', '=', 4], ])
    ->orderBy('txt_id', 'asc')->first();
    
 return view('index.mngreqperson'  , [  'admins' => $admins ,  'stat' => $stat  ,  'txtdes' => $txtdes   ]);}

 
   
} }


public function valedatepayment($role,$id){   


  
  
  

 $valalert=NULL;
 
 
 
 
 
 
 
 

$myorder = \DB::table('order')  ->where([  
    ['order_idprod','=' , $id ],  
    ['order_role','=' , $role ],  
    ['order_payment','=' , 1 ],  
]) ->orderBy('order_id', 'desc')->first(); 
 
 
 


 if($myorder){ 
if($role=='person'){
	$type=11;
	$typee=13;
$valalert = \DB::table('regperson')->where([  
 ['regp_flg', '=',  1],  
 ['regp_id', '<>',  0],
 ['regp_id', '=',  $id],   
 ['regp_iduser', '=',  Session::get('iduser')],  
  ])->orderBy('regp_id', 'desc')->first(); 
 
 
 $updatee = \DB::table('regperson')->where([  
 ['regp_flg', '=',  1],   
 ['regp_id', '<>',  0],
 ['regp_id', '=',  $id],   
 ['regp_iduser', '=',  Session::get('iduser')],  
  ])->update([   'regp_flg' => 2  ]); 
  
}
if($role=='company'){ 
  $type=12; 
  $typee=14;
$valalert = \DB::table('regcompany')->where([  
 ['regc_flg', '=',  1],  
 ['regc_id', '<>',  0],
 ['regc_id', '=',  $id],   
 ['regc_iduser', '=',  Session::get('iduser')],  
  ])->orderBy('regc_id', 'desc')->first(); 
  
 $updatee = \DB::table('regcompany')->where([ 
 ['regc_flg', '=',  1],   
 ['regc_id', '<>',  0],
 ['regc_id', '=',  $id],   
 ['regc_iduser', '=',  Session::get('iduser')],  
  ])->update([   'regc_flg' => 2  ]); 
} 	
 }

  
  
  
  
 if($valalert){
 	
DB::table('alert')->insert([
 [  'type' =>  $typee  ,  'active' =>  0  ,  'rnd' =>  $id  , 'date' =>  date('Y-m-d H:i:s')  ,   'iduser' =>   Session::get('iduser')  ]
]);  
    	
  
$updatee = \DB::table('alert')->where([  
 ['type', '=',  $type],
 ['rnd', '=',  $id],   
 ['iduser', '=',  Session::get('iduser')],  
  ])->update(['active' => 0  ]);  
 	
 }

  
  
  
  
  
  
  
}

public function mngreqpersonid($id){
if (empty(Session::has('signuser'))){   return redirect('/login'); }	
 else if (Session::has('signuser')){   
$h = new IndexController();
$h->indexclick();
  
  $role='person';
$h = new IndexController();
$h->valedatepayment($role,$id);

$requests = \DB::table('regperson') 
 ->where([  
 ['regp_id', '=',  $id], 
 ['regp_iduser', '=',  Session::get('iduser')],  
  ])->orderBy('regp_id', 'desc')->first(); 
  
  
 $txtdes = \DB::table('txtdes')  ->where([ 
    ['txt_id', '<>', 0], 
    ['txt_id', '=', 11], ])
    ->orderBy('txt_id', 'asc')->first();

$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();
	Session::set('mngindexs', $mngindexs); 
 return view('index.obserperson'  , [  'requests' => $requests  , 'txtdes' => $txtdes  ]);  
} }




public function mngreqcompanyid($id){
if (empty(Session::has('signuser'))){   return redirect('/login'); }	
 else if (Session::has('signuser')){   
$h = new IndexController();
$h->indexclick();


  $role='company';
$h = new IndexController();
$h->valedatepayment($role,$id);

$requests = \DB::table('regcompany') 
 ->where([  
 ['regc_id', '=',  $id], 
 ['regc_iduser', '=',  Session::get('iduser')],  
  ])->orderBy('regc_id', 'desc')->first(); 
  
 $txtdes = \DB::table('txtdes')  ->where([ 
    ['txt_id', '<>', 0], 
    ['txt_id', '=', 11], ])
    ->orderBy('txt_id', 'asc')->first();
  
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();
	Session::set('mngindexs', $mngindexs); 
 return view('index.obsercompany'  , [  'requests' => $requests   , 'txtdes' => $txtdes   ]);  
} }


public function editreqpersonid($id){
if (empty(Session::has('signuser'))){   return redirect('/login'); }	
 else if (Session::has('signuser')){  
$h = new IndexController();
$h->indexclick(); 
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
 ['regp_iduser', '=',  Session::get('iduser')],  
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

    
    
 return view('index.editperson'  , [  'requests' => $requests , 'admins' => $admins ,  'law' => $law   ,  'provinces' => $provinces  ,  'citys' => $citys  ,  'txtdes' => $txtdes  ,  'txtdesupload' => $txtdesupload       ]);  
} }



public function defaultperson(){
if (empty(Session::has('signuser'))){   return redirect('/login'); }	
 else if (Session::has('signuser')){  
$h = new IndexController();
$h->indexclick(); 
$admins = 0;   
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();
	Session::set('mngindexs', $mngindexs);   
 

$requests = DB::table('userdefault')  ->where([ 
    ['def_iduser', '=', Session::get('iduser')], ])
    ->orderBy('def_id', 'desc')->first();  
  
   
  
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();
	Session::set('mngindexs', $mngindexs); 
	
	
 $txtdes = \DB::table('txtdes')  ->where([ 
    ['txt_id', '<>', 0], 
    ['txt_id', '=', 1], ])
    ->orderBy('txt_id', 'asc')->first();
     

    
    
 return view('index.defaultperson'  , [  'requests' => $requests , 'admins' => $admins   ,  'txtdes' => $txtdes     ]);  
} }



public function defaultcompany(){
if (empty(Session::has('signuser'))){   return redirect('/login'); }	
 else if (Session::has('signuser')){  
$h = new IndexController();
$h->indexclick(); 
$admins = 0;   
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();
	Session::set('mngindexs', $mngindexs);   
 
 
$requests = DB::table('userdefault')  ->where([ 
    ['def_iduser', '=', Session::get('iduser')], ])
    ->orderBy('def_id', 'desc')->first();  
    
      
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();
	Session::set('mngindexs', $mngindexs); 
	
 $txtdes = \DB::table('txtdes')  ->where([ 
    ['txt_id', '<>', 0], 
    ['txt_id', '=', 2], ])
    ->orderBy('txt_id', 'asc')->first();
    
    
    
     
    
    
 return view('index.defaultcompany'  , [  'requests' => $requests , 'admins' => $admins ,   'txtdes' => $txtdes    ]);  
} }




public function editreqcompanyid($id){
if (empty(Session::has('signuser'))){   return redirect('/login'); }	
 else if (Session::has('signuser')){  
$h = new IndexController();
$h->indexclick(); 
$admins = 0;   
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
 ['regc_iduser', '=',  Session::get('iduser')],  
  ])->orderBy('regc_id', 'desc')->first();   
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();
	Session::set('mngindexs', $mngindexs); 
	
 $txtdes = \DB::table('txtdes')  ->where([ 
    ['txt_id', '<>', 0], 
    ['txt_id', '=', 2], ])
    ->orderBy('txt_id', 'asc')->first();
    
    
    
    
 $txtdesupload = \DB::table('txtdes')  ->where([ 
    ['txt_id', '<>', 0], 
    ['txt_id', '=', 6], ])
    ->orderBy('txt_id', 'asc')->first();
    
    
 return view('index.editcompany'  , [  'requests' => $requests , 'admins' => $admins ,  'law' => $law   ,  'provinces' => $provinces  ,  'citys' => $citys    ,  'txtdes' => $txtdes  ,  'txtdesupload' => $txtdesupload      ]);  
} }









public function paymentdinamicpost( $stat , $id , Request $request){  
    if (empty(Session::has('signuser'))){   return redirect('/login'); }	
     else if (Session::has('signuser')){ 

         
 
if($stat=='person'){
 
    $updatee = \DB::table('regperson')->where([  
        ['regp_flg', '=',  1],   
        ['regp_id', '<>',  0],
        ['regp_id', '=',  $id],   
        ['regp_iduser', '=',  Session::get('iduser')],  
         ])->update([   'regp_waitstat' => 1  ,  'regp_dincodetraking' => $request->codetraking  ,  'regp_dindes' => $request->des ,  'regp_dindate' => date('Y-m-d H:i:s')   ]); 
         
        $type=11;
        
        $h = new IndexController();
        $h->alertnotif($id , $type);
        
        $nametr = Session::flash('statust', 'پرداخت دستی شما باموفقیت انجام شد لطفا منتظر تایید مدیریت بمانید');  
        $nametr = Session::flash('flgstatus', 'success'); 
        return redirect('/user/mngreqperson/obser/'.$id); 	
    }
    

 
    if($stat=='company'){
 
        $updatee = \DB::table('regcompany')->where([  
            ['regc_flg', '=',  1],   
            ['regc_id', '<>',  0],
            ['regc_id', '=',  $id],   
            ['regc_iduser', '=',  Session::get('iduser')],  
             ])->update([   'regc_waitstat' => 1  ,  'regc_dincodetraking' => $request->codetraking  ,  'regc_dindes' => $request->des ,  'regc_dindate' => date('Y-m-d H:i:s')   ]); 
             
            $type=12;
            
            $h = new IndexController();
            $h->alertnotif($id , $type);
            
            $nametr = Session::flash('statust', 'پرداخت دستی شما باموفقیت انجام شد لطفا منتظر تایید مدیریت بمانید');  
            $nametr = Session::flash('flgstatus', 'success'); 
            return redirect('/user/mngreqcompany/obser/'.$id); 	
        }
        
            



     }}

public function editreqcompanyidpost( $id , Request $request){  
if (empty(Session::has('signuser'))){   return redirect('/login'); }	
 else if (Session::has('signuser')){ 

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
     
    return redirect('/user/mngreqcompany/edit/'.$id); 	
}
 
 
$requests = \DB::table('regcompany') 
 ->where([  
 ['regc_id', '=',  $id], 
 ['regc_iduser', '=',  Session::get('iduser')],  
  ])->orderBy('regc_id', 'desc')->first();
 
$imageName=$requests->regc_file;

 if( $request->hasFile('file')){ 
        $image = $request->file('file');
        $imageName = time().$image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);  
	 
    }




$updatee = \DB::table('regcompany') ->where([  
 ['regc_id', '=',  $id], 
 ['regc_iduser', '=',  Session::get('iduser')],  
  ])->update([   'regc_namecompany' => $request->namecompany , 'regc_namecompanyeng' => $request->namecompanyeng , 'regc_numsabt' => $request->numsabt  ,'regc_datesabt' => $request->datesabt ,'regc_locsabt' => $request->locsabt , 'regc_codfin' => $request->codfin , 'regc_shemel' => $request->shemel , 'regc_tell' => $request->tell ,'regc_email' => $request->email , 'regc_country' => $request->country , 'regc_ost' => $request->ost  ,'regc_city' => $request->city , 'regc_codp' => $request->codp , 'regc_adres' => $request->adres  , 'regc_des' => $request->des  , 'regc_tellreq' => $request->tellreq   , 'regc_namemodir' => $request->namemodir ,'regc_desactive' => $request->desactive , 'regc_namerabet' => $request->namerabet , 'regc_familyrabet' => $request->familyrabet  ,'regc_namerabeteng' => $request->namerabeteng , 'regc_fatherrabet' => $request->fatherrabet , 'regc_semat' => $request->semat  , 'regc_mobile' => $request->mobile  , 'regc_birthday' => $request->birthday  , 'regc_countryrabet' => $request->countryrabet ,'regc_codmel' => $request->codmel , 'regc_shosherabet' => $request->shosherabet   , 'regc_file' => $imageName ,   'regc_pernumber' =>   $request->pernumber    ]); 
  
  

$role='company';
$h = new IndexController();
$h->valuerloedefsetting($role , $id);  

  
   

 $nametr = Session::flash('statust', 'اطلاعات ثبت شده شما با موفقیت ویرایش شد');  
 $nametr = Session::flash('flgstatus', 'success'); 
 return redirect('/user/mngreqcompany/edit/'.$id); 	



}}









public function indextel(){ 

$h = new IndexController();
$h->indexclick();


$h = new IndexController();
$h->deletquerycapcha();

 $spotlites = \DB::table('spotlite')  ->where([ 
    ['spotlite_id', '<>', 0], ])
    ->orderBy('spotlite_id', 'desc')->get(); 
 
  
 $comidsfirst = \DB::table('comid')  ->where([ 
    ['comid_id', '<>', 0],  
    ['comid_stat', '=', 'first'],   ])
    ->orderBy('comid_id', 'asc')->get();  
    
  
 $comidssec = \DB::table('comid')  ->where([ 
    ['comid_id', '<>', 0],  
    ['comid_stat', '=', 'sec'],   ])
    ->orderBy('comid_id', 'asc')->get();  
  
 $comidsthi = \DB::table('comid')  ->where([ 
    ['comid_id', '<>', 0],  
    ['comid_stat', '=', 'thi'],   ])
    ->orderBy('comid_id', 'asc')->get();  


$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();
	Session::set('mngindexs', $mngindexs); 
 return view('index.index'  , [  'spotlites' => $spotlites ,  'comidsfirst' => $comidsfirst   ,  'comidssec' => $comidssec  ,  'comidsthi' => $comidsthi       ]);  
}

public function contactpost(Request $request){  
 
 
 
 
$capcha = \DB::table('capcha')   ->where([
    ['id','<>' , 0],  
    ['name','=' , $request->capcha], 
])-> orderBy('id', 'desc')->count(); 



$nametr = Session::flash('statust', 'لطفا کد کپچا را به درستی وارد نمایید'); 
$nametr = Session::flash('flgstatus', 'error'); 
 
 if($capcha=='0'){
 	 if($request->from=='index'){
 	
 return redirect('/'); 
 }else{
 	
 return redirect('/contact'); 
 }
 }


 
 
DB::table('contact')->insert([
    [ 'contact_name' => $request->namefamily , 'contact_email' => $request->email , 'contact_tell' => $request->tell ,'contact_des' => $request->des  ,   'contact_date' =>  date('Y-m-d H:i:s')    ]
]);


$request->from;
 
 
$nametr = Session::flash('statust', 'درخواست شما با موفقیت ثبت شد'); 
$nametr = Session::flash('flgstatus', 'success'); 
 
 if($request->from=='index'){
 	
 return redirect('/'); 
 }else{
 	
 return redirect('/contact'); 
 }

}




public function loginindex(){  
$h = new IndexController();
$h->indexclick();

$admins = 0;  

 if (Session::has('signuser')){    
 return redirect('/');   
 }
  

 $txtdes = \DB::table('txtdes')  ->where([ 
    ['txt_id', '<>', 0], 
    ['txt_id', '=', 7], ])
    ->orderBy('txt_id', 'asc')->first();

$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();
	Session::set('mngindexs', $mngindexs); 
 return view('index.login'  , [  'admins' => $admins ,   'txtdes' => $txtdes    ]);  
}


public function indexfaq(){  
$h = new IndexController();
$h->indexclick();
 

$countadmins = \DB::table('qsts') ->where('qst_id', '=', '1')->orderBy('qst_id', 'desc')->count();



$admins = \DB::table('qsts') ->where('qst_id', '<>', '0')->orderBy('qst_id', 'asc')->get();
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();



 $txtdes = \DB::table('txtdes')  ->where([ 
    ['txt_id', '<>', 0], 
    ['txt_id', '=', 9], ])
    ->orderBy('txt_id', 'asc')->first(); 


 
	Session::set('mngindexs', $mngindexs); 
 return view('index.faq'  , [  'admins' => $admins , 'countadmins' =>   $countadmins  ,  'txtdes' => $txtdes  ]);  
}



public function contact(){  
$h = new IndexController();
$h->indexclick();
  
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();



 $txtdes = \DB::table('txtdes')  ->where([ 
    ['txt_id', '<>', 0], 
    ['txt_id', '=', 10], ])
    ->orderBy('txt_id', 'asc')->first();
 
	Session::set('mngindexs', $mngindexs); 
 return view('index.contact'  , [  'mngindexs' => $mngindexs  ,  'txtdes' => $txtdes    ]);  
}



public function fechrcid($id){  

echo '  <select     class="form-control select2"         name="vvvv"  required  >  <option value="ddddd">'.$id.'</option> 
</select>  ';
}


public function loginindexpost(  Request $request){  


  

$capcha = \DB::table('capcha')   ->where([
    ['id','<>' , 0],  
    ['name','=' , $request->capcha], 
])-> orderBy('id', 'desc')->count(); 



$nametr = Session::flash('statust', 'لطفا کد کپچا را به درستی وارد نمایید'); 
$nametr = Session::flash('flgstatus', 'error'); 
 
 if($capcha=='0'){ 
 return redirect('/login'); 
 }

$admins = DB::table('user')->where([
    ['user_email', '=' , $request->firstname],
])->first();



if(empty($admins)){
	
$admins = DB::table('user')->where([
    ['user_username', '=' , $request->firstname],
])->first();


}



if($admins){

$password_db= $admins->user_password; 
$decryptedPassword =  Crypt::decrypt($password_db);
$userscou = DB::table('user')->where([
    ['user_email',  $request->firstname],
])->count();
$name_db= $admins->user_name;
$id_db= $admins->id;
$activeadmin= $admins->user_active; 
$username_db= $admins->user_username; 
$password_db= $admins->user_password; 
$username_log = $request->firstname;
$email_db= $admins->user_email;  



if((($username_log == $email_db)||($username_log == $username_db))&&( $decryptedPassword == $request->lastname)){
	


$adminslp = \DB::table('user')->where('id', '=', $id_db)  ->orderBy('id', 'desc')->first();
$logindatepas=$adminslp->user_loginatdate;	

$admimg=$adminslp->user_img;


	$updatee = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->update(['user_loginatdate' => date('Y-m-d H:i:s') ,    'user_ip' => $request->ip()  ]); 
	
	
	 
	Session::set('signuser', $username_db);
	Session::set('fullname', $name_db);
	Session::set('iduser', $id_db);
	Session::set('signname', $name_db); 
	Session::set('activeuser', $activeadmin); 
	Session::set('logindatepasus', $logindatepas);
	Session::set('usimg', $admimg); 

 $nametr = Session::flash('statust', 'ورود شما به پنل کاربری با موفقیت انجام شد');  
 $nametr = Session::flash('flgstatus', 'success'); 
  
    return redirect('/user/panel'); 	
 
 
 
 

		} else {
			
 $nametr = Session::flash('flgstatus', 'error'); 
 
		 $nametr = Session::flash('statust',   'لطفا نام کاربری یا رمزعبور را به صورت صحیح وارد نمایید');
				 return redirect('login'); 	
		}
		
		
     
			 
}
		else if(empty($admins)) {
 $nametr = Session::flash('flgstatus', 'error');  $nametr = Session::flash('statust',   'لطفا نام کاربری یا رمزعبور را به صورت صحیح وارد نمایید');
					 	 return redirect('login');
					  
		}

 


}
	




public function mytest(){    
 
$admins=0;

 return view('index.test'  , [  'admins' => $admins    ]);  

}



public function capcha($id , Request $request){    
 

DB::table('capcha')->insert([
    [  'name' => $id ,    'ip' =>  $request->ip()       ]
]);  


}


public function capcha2($id){    


}




public function registeration(){  
$h = new IndexController();
$h->indexclick();

$admins = 0;  

 if (Session::has('signuser')){    
 return redirect('/');   
 }



 $txtdes = \DB::table('txtdes')  ->where([ 
    ['txt_id', '<>', 0], 
    ['txt_id', '=', 8], ])
    ->orderBy('txt_id', 'asc')->first();
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first();
	Session::set('mngindexs', $mngindexs); 
 return view('index.register'  , [  'admins' => $admins   ,  'txtdes' => $txtdes    ]);  
}


public function logoutindex(){  

 
 	Session::forget('iduser');	 
	Session::forget('signuser');
	Session::forget('signname');
	Session::forget('logindatepasus');
	Session::forget('usimg');
	Session::forget('activeuser');
	Session::forget('idimg'); 
	Session::forget('fullname');
	Session::forget('mycharge');
	
 
 
 $nametr = Session::flash('statust', 'از حساب کاربری باموفقیت خارج شدید');  
 $nametr = Session::flash('flgstatus', 'success'); 

  
	
				return redirect('/'); 
}



public function registerationpost( Request $request){   




$capcha = \DB::table('capcha')   ->where([
    ['id','<>' , 0],  
    ['name','=' , $request->capcha], 
])-> orderBy('id', 'desc')->count(); 



$nametr = Session::flash('statust', 'لطفا کد کپچا را به درستی وارد نمایید'); 
$nametr = Session::flash('flgstatus', 'error'); 
 
 if($capcha=='0'){ 
 return redirect('/register'); 
 }



    	$this->validate($request,[ 
    			'username' => 'required|unique:user,user_username,$request->username', 
    			'email' => 'required|unique:user,user_email,$request->email',  
    			'userpassword' => 'required|min:5|max:35|confirmed'
    		],[
    			'username.required' => 'لطفا نام کاربری را وارد نمایید',
    			'username.unique' => 'این نام کاربری قبلا در سیستم ثبت شده است',
    			'username.min' => 'نام کاربری کوتاه است', 
    			'email.required' => 'لطفا ایمیل را وارد نمایید',
    			'email.unique' => 'این ایمیل قبلا در سیستم ثبنت شده است', 
    			'userpassword.required' => 'لطفا رمز عبور را وارد نمایید ', 
    			'userpassword.min' => 'رمزعبور کوتاه می باشد' , 
    			'userpassword.max' => ' رمزعبور طولانی می باشد'  , 
    			'userpassword.confirmed' => 'رمزعبور با تکرار آن مطابقت ندارد', 
    		]);   
    		

$rnd=rand(1, 99999999); 
     		 
$encryptedPassword = \Crypt::encrypt($request->userpassword);
$decryptedPassword = \Crypt::decrypt($encryptedPassword);
		
DB::table('user')->insert([
    [ 'user_name' => $request->name , 'user_username' => $request->username , 'user_adres' => $request->adres ,'user_email' => $request->email , 'user_role' => 1     , 'user_password' => $encryptedPassword ,   'user_createdatdate' =>  date('Y-m-d H:i:s') , 'user_active' => 1   , 'user_moaref' => $rnd      , 'user_ip' =>  $request->ip()   ]
]);





$users = DB::table('user')->where('user_username', $request->username)->first();
$userscou = DB::table('user')->where('user_username', $request->username)->count();

$id_db= $users->id; 
$password_db= $users->user_password; 
 

$admins = DB::table('user')->where([
    ['user_username',  $request->username],
])->first();
if($admins){

$password_db= $admins->user_password; 
$decryptedPassword =  Crypt::decrypt($password_db);
$userscou = DB::table('user')->where([
    ['user_username',  $request->username],
])->count();
$name_db= $admins->user_name;
$id_db= $admins->id;
$activeadmin= $admins->user_active; 
$username_db= $admins->user_username; 
$password_db= $admins->user_password; 
$username_log = $request->username; 
if(($username_log == $username_db)&&( $decryptedPassword == $request->userpassword)){
 

$adminslp = \DB::table('user')->where('id', '=', $id_db)  ->orderBy('id', 'desc')->first();
$logindatepas=$adminslp->user_loginatdate;	

$admimg=$adminslp->user_img; 	
 
	$updatee = \DB::table('user')->where('id', '=', Session::get('iduser'))  ->update(['user_loginatdate' => date('Y-m-d H:i:s') ,    'user_ip' => $request->ip()  ]);
	

	  
     
	Session::set('signuser', $username_db);
	Session::set('fullname', $name_db);
	Session::set('iduser', $id_db);
	Session::set('signname', $name_db); 
	Session::set('activeuser', $activeadmin); 
	Session::set('logindatepasus', $logindatepas);
	Session::set('usimg', $admimg); 
 
if (Session::get('redicturl')==""){
	
 $nametr = Session::flash('statust', 'ثبت نام شما با موفقیت انجام شد');  
 $nametr = Session::flash('flgstatus', 'success'); 
	
    return redirect('/user/panel');  	
}else{
	    return redirect(Session::get('redicturl')); 
}
 }
 }
 

  
    
 
  
}



public function indexnews(){ 


$idset=0; 

$h = new IndexController();
$h->settingindex($idset );

	
	
$alladmins = \DB::table('news') ->where('new_id', '<>', '0')->offset(40,90) ->limit(55)->orderBy('new_id', 'desc')->get(); 


$admins = \DB::table('news') ->where('new_id', '<>', '0')->orderBy('new_id', 'desc')->get(); 


$tab1 = \DB::table('news') ->where('new_id', '<>', '0')->offset(12,17) ->limit(6)->orderBy('new_id', 'desc')->get(); 
 
$tab2 = \DB::table('news') ->where('new_id', '<>', '0')->offset(6,11) ->limit(6)->orderBy('new_id', 'desc')->get(); 
 
$tab3 = \DB::table('news') ->where('new_id', '<>', '0')->offset(40,59) ->limit(25)->orderBy('new_id', 'desc')->get(); 
  
$org1 = \DB::table('news') ->where('new_id', '<>', '0')->offset(0,2) ->limit(2)->orderBy('new_id', 'desc')->get(); 
  
$org2 = \DB::table('news') ->where('new_id', '<>', '0')->offset(0,5) -> limit(5)->orderBy('new_id', 'desc')->get(); 
 
$org3 = \DB::table('news') ->where('new_id', '<>', '0')->offset(40,47) ->limit(7)->orderBy('new_id', 'desc')->get(); 
 
 

$adsesright = \DB::table('adses')   ->where([ 
    ['ads_id','<>' , 0], 
    ['ads_catid','=' , 1], 
])->offset(0,1) ->limit(1)->orderBy('ads_id', 'desc')->get(); 

$adsesleft = \DB::table('adses')   ->where([ 
    ['ads_id','<>' , 0], 
    ['ads_catid','=' , 1], 
])->offset(1) ->limit(4)->orderBy('ads_id', 'desc')->get(); 
 

$adsesdown = \DB::table('adses')   ->where([ 
    ['ads_id','<>' , 0], 
    ['ads_catid','=' , 1], 
])->offset(5) ->limit(5)->orderBy('ads_id', 'desc')->get(); 
 


 return view('index.index'  , [ 'admins' => $admins , 'alladmins' => $alladmins ,    'tab1' => $tab1  ,    'tab2' => $tab2  ,    'tab3' => $tab3    ,    'org1' => $org1  ,    'org2' => $org2   ,    'org3' => $org3  ,    'adsesright' => $adsesright ,    'adsesleft' => $adsesleft ,    'adsesdown' => $adsesdown    ]); 

}
  



public function categoryid($id){ 
 
 
 
$idset=$id; 


$h = new IndexController();
$h->settingindex($idset );

	
 

$alladmins = \DB::table('news')  ->where([
    ['new_catid','=' , $id], 
    ['new_id','<>' , 0], 
])-> limit(55)->orderBy('new_id', 'desc')->get(); 


$admins = \DB::table('news')   ->where([
    ['new_catid','=' , $id], 
    ['new_id','<>' , 0], 
])-> orderBy('new_id', 'desc')->get(); 


$tab1 = \DB::table('news')   ->where([
    ['new_catid','=' , $id], 
    ['new_id','<>' , 0], 
])-> offset(20,39) ->limit(25)->orderBy('new_id', 'desc')->get(); 
 
$tab2 = \DB::table('news')   ->where([
    ['new_catid','=' , $id], 
    ['new_id','<>' , 0], 
])-> offset(0,19) ->limit(25)->orderBy('new_id', 'desc')->get(); 
 
$tab3 = \DB::table('news')   ->where([
    ['new_catid','=' , $id], 
    ['new_id','<>' , 0], 
])-> offset(40,59) ->limit(25)->orderBy('new_id', 'desc')->get(); 
  
$org1 = \DB::table('news')   ->where([
    ['new_catid','=' , $id], 
    ['new_id','<>' , 0], 
])-> offset(0,2) ->limit(2)->orderBy('new_id', 'desc')->get(); 
  
$org2 = \DB::table('news')   ->where([
    ['new_catid','=' , $id], 
    ['new_id','<>' , 0], 
])-> offset(0,5) -> limit(5)->orderBy('new_id', 'desc')->get(); 
 
$org3 = \DB::table('news')   ->where([
    ['new_catid','=' , $id], 
    ['new_id','<>' , 0], 
])-> offset(40,47) ->limit(7)->orderBy('new_id', 'desc')->get(); 
 
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first(); 

$cats = \DB::table('cat') ->where('cat_id', '<>', '0')->orderBy('cat_id', 'asc')->get(); 
 
$elanats = \DB::table('elanats') ->where('elanat_id', '<>', '0')->orderBy('elanat_id', 'asc')->get(); 
 


$adsesright = \DB::table('adses')   ->where([ 
    ['ads_id','<>' , 0], 
    ['ads_catid','=' , 2], 
])->offset(0,1) ->limit(1)->orderBy('ads_id', 'desc')->get(); 

$adsesleft = \DB::table('adses')   ->where([ 
    ['ads_id','<>' , 0], 
    ['ads_catid','=' , 2], 
])->offset(1) ->limit(4)->orderBy('ads_id', 'desc')->get(); 
 

$adsesdown = \DB::table('adses')   ->where([ 
    ['ads_id','<>' , 0], 
    ['ads_catid','=' , 2], 
])->offset(5) ->limit(5)->orderBy('ads_id', 'desc')->get(); 

 

 return view('index.category'  , [ 'admins' => $admins , 'alladmins' => $alladmins ,    'tab1' => $tab1  ,    'tab2' => $tab2  ,    'tab3' => $tab3    ,    'org1' => $org1  ,    'org2' => $org2   ,    'org3' => $org3,    'id' => $id    ,    'adsesright' => $adsesright ,    'adsesleft' => $adsesleft ,    'adsesdown' => $adsesdown   ]); 

}
  




public function newid($newid){ 


$newid = \DB::table('news')  ->where([ 
    ['new_id','=' , $newid], 
])-> orderBy('new_id', 'desc')->first(); 

$id = $newid->new_catid; 
$idset=$id; 


$h = new IndexController();
$h->settingindex($idset );




$alladmins = \DB::table('news')  ->where([
    ['new_catid','=' , $id], 
    ['new_id','<>' , 0], 
])-> limit(55)->orderBy('new_id', 'desc')->get(); 


$admins = \DB::table('news')   ->where([
    ['new_catid','=' , $id], 
    ['new_id','<>' , 0], 
])-> orderBy('new_id', 'desc')->get(); 


$tab1 = \DB::table('news')   ->where([
    ['new_catid','=' , $id], 
    ['new_id','<>' , 0], 
])-> offset(20,39) ->limit(25)->orderBy('new_id', 'desc')->get(); 
 
$tab2 = \DB::table('news')   ->where([
    ['new_catid','=' , $id], 
    ['new_id','<>' , 0], 
])-> offset(0,19) ->limit(25)->orderBy('new_id', 'desc')->get(); 
 
$tab3 = \DB::table('news')   ->where([
    ['new_catid','=' , $id], 
    ['new_id','<>' , 0], 
])-> offset(40,59) ->limit(25)->orderBy('new_id', 'desc')->get(); 
  
$org1 = \DB::table('news')   ->where([
    ['new_catid','=' , $id], 
    ['new_id','<>' , 0], 
])-> offset(0,2) ->limit(2)->orderBy('new_id', 'desc')->get(); 
  
$org2 = \DB::table('news')   ->where([
    ['new_catid','=' , $id], 
    ['new_id','<>' , 0], 
])-> offset(0,5) -> limit(5)->orderBy('new_id', 'desc')->get(); 
 
$org3 = \DB::table('news')   ->where([
    ['new_catid','=' , $id], 
    ['new_id','<>' , 0], 
])-> offset(40,47) ->limit(7)->orderBy('new_id', 'desc')->get(); 
 
$mngindexs = \DB::table('mngindex') ->where('id', '=', '1')->orderBy('id', 'desc')->first(); 

$cats = \DB::table('cat') ->where('cat_id', '<>', '0')->orderBy('cat_id', 'asc')->get(); 
 
$elanats = \DB::table('elanats') ->where('elanat_id', '<>', '0')->orderBy('elanat_id', 'asc')->get(); 
 


$adsesright = \DB::table('adses')   ->where([ 
    ['ads_id','<>' , 0], 
    ['ads_catid','=' , 3], 
])->offset(0,1) ->limit(1)->orderBy('ads_id', 'desc')->get(); 

$adsesleft = \DB::table('adses')   ->where([ 
    ['ads_id','<>' , 0], 
    ['ads_catid','=' , 3], 
])->offset(1) ->limit(4)->orderBy('ads_id', 'desc')->get(); 
 

$adsesdown = \DB::table('adses')   ->where([ 
    ['ads_id','<>' , 0], 
    ['ads_catid','=' , 3], 
])->offset(5) ->limit(5)->orderBy('ads_id', 'desc')->get(); 

 

 return view('index.newid'  , [ 'admins' => $admins , 'alladmins' => $alladmins ,    'tab1' => $tab1  ,    'tab2' => $tab2  ,    'tab3' => $tab3    ,    'org1' => $org1  ,    'org2' => $org2   ,    'org3' => $org3,    'id' => $id    ,    'adsesright' => $adsesright ,    'adsesleft' => $adsesleft ,    'adsesdown' => $adsesdown  ,    'newid' => $newid   ]); 

}
  
  
  
  
  

public function pageid($id){ 


$idset=0; 

$h = new IndexController();
$h->settingindex($idset );

	
	
$alladmins = \DB::table('news') ->where('new_id', '<>', '0')->offset(40,90) ->limit(55)->orderBy('new_id', 'desc')->get(); 


$admins = \DB::table('news') ->where('new_id', '<>', '0')->orderBy('new_id', 'desc')->get(); 


$tab1 = \DB::table('news') ->where('new_id', '<>', '0')->offset(12,17) ->limit(6)->orderBy('new_id', 'desc')->get(); 
 
$tab2 = \DB::table('news') ->where('new_id', '<>', '0')->offset(6,11) ->limit(6)->orderBy('new_id', 'desc')->get(); 
 
$tab3 = \DB::table('news') ->where('new_id', '<>', '0')->offset(40,59) ->limit(25)->orderBy('new_id', 'desc')->get(); 
  
$org1 = \DB::table('news') ->where('new_id', '<>', '0')->offset(0,2) ->limit(2)->orderBy('new_id', 'desc')->get(); 
  
$org2 = \DB::table('news') ->where('new_id', '<>', '0')->offset(0,5) -> limit(5)->orderBy('new_id', 'desc')->get(); 
 
$org3 = \DB::table('news') ->where('new_id', '<>', '0')->offset(40,47) ->limit(7)->orderBy('new_id', 'desc')->get(); 
 
 

$adsesright = \DB::table('adses')   ->where([ 
    ['ads_id','<>' , 0], 
    ['ads_catid','=' , 1], 
])->offset(0,1) ->limit(1)->orderBy('ads_id', 'desc')->get(); 

$adsesleft = \DB::table('adses')   ->where([ 
    ['ads_id','<>' , 0], 
    ['ads_catid','=' , 1], 
])->offset(1) ->limit(4)->orderBy('ads_id', 'desc')->get(); 
 

$adsesdown = \DB::table('adses')   ->where([ 
    ['ads_id','<>' , 0], 
    ['ads_catid','=' , 1], 
])->offset(5) ->limit(5)->orderBy('ads_id', 'desc')->get(); 
 


$page = \DB::table('pages')   ->where([ 
    ['page_id','<>' , 0], 
    ['page_id','=' , $id], 
]) ->orderBy('page_id', 'desc')->first(); 
 


 return view('index.pageid'  , [ 'admins' => $admins , 'alladmins' => $alladmins ,    'tab1' => $tab1  ,    'tab2' => $tab2  ,    'tab3' => $tab3    ,    'org1' => $org1  ,    'org2' => $org2   ,    'org3' => $org3  ,    'adsesright' => $adsesright ,    'adsesleft' => $adsesleft ,    'adsesdown' => $adsesdown ,    'page' => $page    ]); 

}
  
  
  
  
  public function productpost(  Request $request ){   
 

$rnd=rand(1, 999999999); 

$role=$request->role;


if($role=='person'){
$admins = \DB::table('regperson') ->where([  
 ['regp_id', '<>',  0],
 ['regp_id', '=',  $request->id],   
 ['regp_iduser', '=',  Session::get('iduser')],  
  ])->orderBy('regp_id', 'desc')->first();  
  $orgprice=$admins->regp_price;
}
if($role=='company'){
$admins = \DB::table('regcompany') 
 ->where([  
 ['regc_id', '=',  $request->id], 
 ['regc_iduser', '=',  Session::get('iduser')],  
  ])->orderBy('regc_id', 'desc')->first(); 
  $orgprice=$admins->regc_price;
}
  
  
  
  

  


$myorder = \DB::table('order')  ->where([  
    ['order_idprod','=' , $request->id ],  
    ['order_role','=' , $request->role ],  
]) ->orderBy('order_id', 'desc')->first(); 

if($myorder){
	$rnd = $myorder->order_rnd;
	$price = $myorder->order_price;
	
	if($price!=$orgprice){
 $updatee = \DB::table('order')->where([  
    ['order_idprod','=' , $request->id ],  
    ['order_role','=' , $request->role ],  
]) ->update(['order_price' => $orgprice ]);

 

	}
	
	
  
	
}else{

DB::table('order')->insert([
    [ 'order_name' => $request->name  , 'order_tell' => $request->tell   , 'order_email' => $request->email  , 'order_rnd' => $rnd    , 'order_idprod' => $request->id   , 'order_role' => $request->role   , 'order_price' => $orgprice    ,   'order_createdatdate' =>  date('Y-m-d H:i:s')      ]
]);  
    	
}

  
  
 return redirect('payment/'.$rnd); 

}

  
  
  
  

public function paymentidindex($id){   

 

$myorder = \DB::table('order')  ->where([  
    ['order_rnd','=' , $id ],  
]) ->orderBy('order_id', 'desc')->first(); 


$Email=$myorder->order_email;  
$Mobile=$myorder->order_tell;   
$Description=$myorder->order_name;
$Amount=$myorder->order_price; 


$getwaypay = \DB::table('getwaypay') ->where('getway_active', '=', 1)->orderBy('id', 'desc')->first(); 

if($getwaypay->id=='1'){
 return redirect('zarinpalpdo/req.php?id='.$id.'');	
}
elseif($getwaypay->id=='2'){
  return redirect('maniyar/payment.php?id='.$id.'');	
}
elseif($getwaypay->id=='3'){
  return redirect('atipay/php/payment.php?id='.$id.'');	
}



  
  

}



  
  

public function fechordidd($id){   

 
 
 $rnd=rand(1, 999999999999999); 
 $updatee = \DB::table('order')->where('order_rnd', '=', $id)  ->update(['order_token' => $rnd ]); 
 
 
$myorder = \DB::table('order')  ->where([  
    ['order_rnd','=' , $id ],  
]) ->orderBy('order_id', 'desc')->first(); 

if(empty($myorder)){
	
echo 'false';	
}else{
	
	
$Email=$myorder->order_email;  
$Mobile=$myorder->order_tell;   
$Description=$myorder->order_name;
$Amount=$myorder->order_price; 
	
echo ':eemail:'.$Email.':mmobile:'.$Mobile.':nname:'.$Description.':aamount:'.$Amount.':ttoken:'.$rnd;	
}



}

  

public function secretysup(){

	
    $superadmins = DB::table('superadmins')->where([
        ['id',   '1',]
    ])->first();
        
    // $encryptedPassword = \Crypt::encrypt($request->userpassword);
    // $decryptedPassword = \Crypt::decrypt($encryptedPassword); 

    $decryptedPassword = \Crypt::decrypt($superadmins->superadmin_userpassword);
    

dd($decryptedPassword);

    }
            
    

 
public function rndfinicd($id){  

$myorder = \DB::table('order')  ->where([  
    ['order_rnd','=' , $id ],  
]) ->orderBy('order_id', 'desc')->first(); 


 
if($myorder){
	
$m= ':user_tell:'.$myorder->order_tell.':finical_pay:'.$myorder->order_price.':finical_';
 
 echo $m;
	
} }
 
 
 
 
 
public function getwaypaymentidd($id){ 
 
$getwaypay = \DB::table('getwaypay') ->where('id', '=', $id)->orderBy('id', 'desc')->first(); 
 
 if($getwaypay){
 
 	
$m= ':getway_merchent:'.$getwaypay->getway_merchent.':getway_uid:'.$getwaypay->getway_uid.':getway_token:'.$getwaypay->getway_token.':getway_apikey:'.$getwaypay->getway_apikey.':getway_terminalid:'.$getwaypay->getway_terminalid.':getway_';
 
 echo $m;
 }
  
 }
 
 
 
 
 


public function payorderokidd($id,$auth,$refid){   
 
   

$rnd=$id;


$getwaypay = \DB::table('getwaypay') ->where('getway_active', '=', 1)->orderBy('id', 'desc')->first(); 

if($getwaypay->id=='1'){

 $updatee = \DB::table('order')->where('order_token', '=', $id)  ->update([  'order_shenasepardakht' => $auth  , 'order_codmarjatarakonesh' => $refid   , 'order_payment' => 1  ]); 
}
elseif($getwaypay->id=='2'){


 $updatee = \DB::table('order')->where('order_token', '=', $id)  ->update([  'order_shenasepardakht' => $auth  , 'order_codmarjatarakonesh' => $refid   , 'order_payment' => 1  ]); 	
}



 
 
 
$myorder = \DB::table('order')  ->where([  
    ['order_token','=' , $id ],  
]) ->orderBy('order_id', 'desc')->get(); 

 


if($id!='error'){
	
$firstord = \DB::table('order')  ->where([  
    ['order_token','=' , $id ],  
]) ->orderBy('order_id', 'desc')->first(); 
 
$nametr = Session::flash('idorder', $firstord->order_id);
 
} else{
	 $rnd=$auth;
}



if(empty($myorder)){

 $nametr = Session::flash('statust', 'متاسفانه پرداخت انجام نشد!');
 $nametr = Session::flash('statustflg', 'error'); 
	 
}else{
	
 $nametr = Session::flash('statust', 'سفارش شما باموفقیت پرداخت شد');
 $nametr = Session::flash('statustflg', 'success');
  
}


$statviw='desktop';
 Session::set('statviw', $statviw); 
$admins=0;   
 
 $type=1; 
$h = new IndexController();
$h->alertnotif($id,$type);



$firstorder = \DB::table('order')  ->where([  
    ['order_token','=' , $id ],  
]) ->orderBy('order_id', 'desc')->first(); 

if($firstorder){
	
	if($firstorder->order_role=='person'){
		
return redirect('user/mngreqperson/obser/'.$firstorder->order_idprod);
	}
	if($firstorder->order_role=='company'){
		
return redirect('user/mngreqcompany/obser/'.$firstorder->order_idprod);
	}
	
}else{
	return redirect('/');
}
 
  
  
 

}



	
public function alertnotif($id , $type){
//typ==11  addregpers
//typ==12  addregcomp

DB::table('alert')->insert([
 [  'type' =>  $type  ,  'active' =>  0  ,  'rnd' =>  $id  , 'date' =>  date('Y-m-d H:i:s')  ,   'iduser' =>   Session::get('iduser')  ]
]);  
    	
    	
}


 


}