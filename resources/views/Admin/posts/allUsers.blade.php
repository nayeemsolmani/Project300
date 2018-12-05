@extends('layouts.adminMaster')

@section('content')
<div class="container">
  <h2>All Users</h2>
  <div class="table-responsive"> 
  <table class="table table-hover">
    <thead>

      <tr class ="danger">
        <th>ID</th>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
        <th>Account No</th>
      </tr>
    </thead>
    @foreach($users as $user)
    <tbody>

      <tr class = "active">
        <td>{{$user->id}}</td>
        <td>{{$user->name}}</td>
        <td>{{$user->lastname}}</td>
        <td>{{$user->email}}</td>
        <td>{{$user->accountNo}}</td>
      </tr>
    @endforeach
    </tbody>
    
  </table>
</div>
</div>
@endsection
