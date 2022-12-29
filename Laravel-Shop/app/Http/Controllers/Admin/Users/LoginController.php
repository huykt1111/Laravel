<?php

namespace App\Http\Controllers\Admin\Users;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use Session;
class LoginController extends Controller
{
    public function index()
    {   
        if (!Auth::user()) {
            return redirect()->route('login');
        }
        if (Auth::user()->userType === 'ADM') {
            return view('admin.users.login',[
                'title' => 'Đăng nhập hệ thống'
            ]);
        }
        if (Auth::user()->userType === 'USR') {
            return redirect()->route('user');
        }
        
    }

    public function store(Request $request)
    {
        $this->validate($request,[
            'email' => 'required|email:filter',
            'password' => 'required'
        ]);

        if (Auth::attempt([
            'email' => $request->input('email'),
            'password' => $request->input('password')
        ],$request->input('remember'))){
            return redirect()->route('admin');
        }
        Session::flash('error','Email or Password is incorrect');
        return redirect()->back();
    }

}
