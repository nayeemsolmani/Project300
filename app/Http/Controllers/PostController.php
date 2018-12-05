<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Booking;
use App\Ticket;

class PostController extends Controller
{
  	public function __construct()
    {
        $this->middleware('auth:admin');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function allTickets()
    {
    	$posts = Ticket::all();
        $posts = Ticket::orderBy('created_at')->paginate(10);
        
        return view('Admin.posts.allTickets',compact('posts'));
    }

    public function allBookings()
    {
        $orders = Booking::all();
        $orders = Booking::orderBy('created_at')->paginate(10);
        
        return view('Admin.posts.allUsersBookings',compact('orders'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('Admin.posts.addTicket');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'id'=>'required',
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

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $post = Ticket::find($id);
        return view('Admin.posts.edit')->with('post',$post);   
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
            'id'=>'required',
            'title'=>'required',
            'from'=>'required',
            'to'=>'required',
            'price'=>'required'
           ]);
            
            
        $post = Ticket::find($id);

        $post->id = $request->input('id');
        $post->title = $request->input('title');
        $post->from = $request->input('from');
        $post->to = $request->input('to');
        $post->price = $request->input('price');
        
        $post->save();
        
        return redirect('admin/home')->with('message','Post Updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post = Ticket::find($id);
        $post->delete();
        return redirect('admin/home')->with('message','Post Deleted');
    }

}
