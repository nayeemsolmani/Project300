@extends('layouts.adminMaster')

@section('content')
<div class="container">
  <h2>All Tickets</h2>
  <div class="table-responsive"> 
  <table class="table table-hover">
    <thead>

      <tr class = "warning">
        <th>Ticket ID</th>
        <th>Title</th>
        <th>From</th>
        <th>To</th>
        <th>Price</th>
        <th></th>
        <th></th>
      </tr>
    </thead>
    @foreach($posts as $post)
    <tbody>

      <tr class = "info">
        <td>{{$post->id}}</td>
        <td>{{$post->title}}</td>
        <td>{{$post->from}}</td>
        <td>{{$post->to}}</td>
        <td>{{$post->price}}</td>
        <td><a href="{{'/posts/'.$post->id.'/edit'}}" class ="btn btn-primary">Edit</a></td>
        <td>
            <form action = "{{'/posts/'.$post->id}}" method = "POST">
              {{csrf_field()}}
              {{method_field('DELETE')}}
              <button type ="submit" class = "btn btn-danger">Detele</button>
            </form>
        </td>
        
      </tr>

    @endforeach

    </tbody>
    
  </table>
</div>
</div>
@endsection