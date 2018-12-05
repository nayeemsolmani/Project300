@extends('layouts.adminMaster')

@section('content')
<div class="container-fluid">
   @if(count($orders)>0)
    <div class="col-md-11">
    <h2>All Bookings</h2>
    <div class="table-responsive"> 
    <table class="table table-hover">
        <thead>

        <tr class ="danger">
            <th>Booking ID</th>
            <th>User ID</th>
            <th>Title</th>
            <th>From</th>
            <th>To</th>
        </tr>
        </thead>
        @foreach($orders as $order)
    <tbody>

        <tr class = "active">
        <td>{{$order->id}}</td>
        <td>{{$order->user_id}}</td>
        <td>{{$order->title}}</td>
        <td>{{$order->from}}</td>
        <td>{{$order->to}}</td>
      </tr>
    @endforeach
    </tbody>
    
  </table>
</div>
</div>
@else
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-3">
            <h2>No Bookings</h2>
    </div>
</div>
@endif
</div>
</div>
@endsection
           