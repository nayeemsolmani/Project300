<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class UserInfoController extends Controller
{
	public function __construct()
    {
        $this->middleware('auth:admin');
    }
	public function allUsers()
    {
    	$users = User::all();
    	$users = User::orderBy('created_at')->paginate(10);
    	
        return view('Admin.posts.allUsers',compact('users'));
    }    
}
