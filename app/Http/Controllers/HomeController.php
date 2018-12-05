<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\User;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function home()
    {
        return view('/home');
    }
    public function show($id)
    {

        if(Auth::User()->id == $id)
        {
            $user = new User;
            $user = User::find($id);
            return view('user.show')->with('user',$user);
        }
        return redirect('/home');   
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        if(Auth::User()->id == $id)
        {
            $user = User::find($id);
            return view('user.edit')->with('user',$user);
        }
        return redirect('/home');     
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
            
            
        $user = User::find($id);

        $user->name = $request->input('name');
        $user->lastname = $request->input('lastname');
        $user->email = $request->input('email');
        $user->accountNo = $request->input('accountNo');
        
        $user->save();
        
        return redirect('/home')->with('message','Profile Edited Successfully.');
    }


    public function store(Request $request)
    {
        $this->validate($request,[
            'id'=>'required',
            'name' =>'required',
            'title'=>'required',
            'from'=>'required',
            'to'=>'required',
            'price'=>'required'
           ]);
            
            
        $post = new Ticket;
        $post->id = $request->input('id');
        $post->title = $request->input('title');
        $post->from = $request->input('from');
        $post->to = $request->input('to');
        $post->price = $request->input('price');
        $post->save();


        return redirect('admin/home')->with('message','Ticket Created'); 

    }

}
