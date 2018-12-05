<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Booking;
use App\Admin;
use App\User;
use Auth;

class AdminController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::all();
        $users = User::orderBy('created_at')->paginate(10);
        
        return view('/admin.home', ['users'=> $users]);
    }
    public function getAllBookings()
    {   
        $orders = Booking::all();
        return view('/Admin.posts.allUsersBookings', ['orders'=> $orders]);
    }

    public function show($id)
    {

        if(Auth::user()->id == $id)
        {
        $admin = new Admin;
        $admin = Admin::find($id);
        return view('admin.show')->with('admin',$admin);
        }   
        return redirect('/admin/home');
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        if(Auth::user()->id == $id)
        {
            $admin = Admin::find($id);
            return view('admin.edit')->with('admin',$admin);
        } 
        return redirect('/admin/home');  
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request,[
            'name'=> 'required',
            'lastname' => 'required',
            'email' => 'required',
            'accountNo' => 'required'
            ]);
            
            
        $admin = Admin::find($id);

        $admin->name = $request->input('name');
        $admin->lastname = $request->input('lastname');
        $admin->email = $request->input('email');
        $admin->accountNo = $request->input('accountNo');
        
        $admin->save();
        
        return redirect('admin/home')->with('message','Profile Edited Successfully.');
    }
    public function destroy($id)
    {
        $order = Booking::find($id);
        $order->delete();
        return redirect('admin/home');
    }

    
}
