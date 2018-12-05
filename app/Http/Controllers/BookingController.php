<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Booking;
use App\Ticket;

class BookingController extends Controller
{
	
	public function __construct()
    {
        $this->middleware('auth');
    }

    public function store(Request $request)
    {
        //dd($request->input('name'), Auth::user()->id, $request->input('title'),$request->input('from'), $request->input('to'),$request->input('doj'),$request->input('dor'));
        $this->validate($request,[
            'name'=>'required|alpha',
        	'title'=>'required',
        	'from'=>'required',
        	'to'=>'required',
            'doj'=>'required',
            'dor'=>'required'
           ]);	
        $post = new Booking;
        $post->name = $request->input('name');
        $post->user_id = Auth::user()->id;
        $post->title = $request->input('title');
        $post->from = $request->input('from');
        $post->to = $request->input('to');
        $post->doj = $request->input('doj');
        $post->dor = $request->input('dor');
        
        if($post->doj <=  $post->dor)
        {
            $post->save();
            return redirect('/home')->with('message','Thank you For Booking...'); 
        }
        else
        {
            return back()->with('message','Give a Valid Date');   
        } 

    }

}
