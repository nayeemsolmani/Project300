<?php

namespace App\Http\Controllers;
use App\Ticket;

use Illuminate\Http\Request;

class IndexController extends Controller
{
    public function getIndex()
    {
        $tickets = Ticket::where('title', 'Bus')->get();
        //echo $tickets;
        return view('user.bus',['tickets' => $tickets]);
    }
    public function getTrain()
    {
        $tickets = Ticket::where('title', 'Train')->get();
    	return view('user.train',['tickets' => $tickets]);
    }
    public function getFlight()
    {
        $tickets = Ticket::where('title', 'Flight')->get();
    	return view('user.flight',['tickets' => $tickets]);
    }

}
