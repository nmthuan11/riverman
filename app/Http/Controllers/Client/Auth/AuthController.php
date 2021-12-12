<?php

namespace App\Http\Controllers\Client\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function showLogin() {
        return view('client.auth.login');
    }

    public function showRegister() {
        return view('client.auth.register');
    }

    /**
     * Register account
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function register(Request $request)
    {
        if($request->password === $request->repassword) {
            User::create([
                'name' => $request->name,
                'email' => $request->email,
                'password' => Hash::make($request->password),
                'sex' => $request->sex,
                'phone' => $request->phone,
            ]);
            return redirect()->route('auth.show.login')->with('success','Đăng ký thành công');
        }else {
            return redirect()->back()->with('invalid', 'Mật khẩu không trùng khớp');
        }
    }

    /**
     * Login account
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function login(Request $request)
    {
        try {
            $result = Auth::attempt(['email' => $request->email, 'password' => $request->password], true);
            if ($result) {
                return redirect()->route('client.home');
            } else {
                $validator = \Validator::make([], []);
                $validator->errors()->add('email', 'Email/Mật khẩu không đúng');

                return redirect()->back()->withErrors($validator)->withInput();
            }
        } catch (\Throwable $e) {
            \Log::info($e->getMessage());
        }
    }

    /**
     * Logout
     *
     * @return \Illuminate\Http\Response
     */
    public function logout()
    {
        Auth::logout();
        return redirect()->route('auth.show.login');
    }
}
