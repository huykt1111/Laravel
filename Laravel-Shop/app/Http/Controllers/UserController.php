<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Services\Product\ProductService;
use App\Models\User;
use Auth;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    
    protected $product;

    public function __construct(ProductService $product)
    {
        $this->product = $product;
    }

    public function register()
    {
        return view('user/register',[
            'title' => 'Register',
            'products' => $this->product->get()
         ]);
    }

    public function register_action(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|unique:users',
            'password' => 'required',
            'password_confirmation' => 'required|same:password',
        ]);

        $user = new User([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);

        $user->save();
        return redirect()->route('login')->with('success', 'Registration Success. Please Login!');
    }

    public function login()
    {
        return view('user/login',[
            'title' => 'Login',
            'products' => $this->product->get()
         ]);
    }

    public function login_action(Request $request)
    {
        $request->validate([
            'email' => 'required',
            'password' => 'required',
        ]);

        if (Auth::attempt(['email' => $request->email, 'password' => $request->password])){
            $request->session()->regenerate();
            if (!Auth::user()) {
                return redirect()->route('login');
            }
            if (Auth::user()->userType === 'ADM') {
                return redirect()->route('admin');
            }
            if (Auth::user()->userType === 'USR') {
                return redirect()->intended('/');
            }
        }
        return redirect()->route('login')->withErrors(['error' => 'Wrong email or password']);
    }

    public function password()
    {
        return view('user/password',[
            'title' => 'Change Password',
            'products' => $this->product->get()
         ]);
    }

    public function passwordadm()
    {
        return view('admin.users.infoadmin',[
            'title' => 'Change Password'
        ]);
    }

    public function password_action(Request $request)
    {
        $request->validate([
            'old_password' => 'required|current_password',
            'new_password' => 'required|confirmed',
        ]);

        $user = User::find(Auth::id());
        $user->password = Hash::make($request->new_password);
        $user->save();
        $request->session()->regenerate();
        return back()->with('success', 'Password Change');
    }

    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect('/');
    }

    public function logout1(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect('/login');
    }

}
