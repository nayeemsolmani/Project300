@extends('layouts.adminMaster')

@section('content')
@include('partial.adminSidebar')
        <div class="col-md-9">
            <div class="alert alert-info"><strong><CENTER>Admin Panel</CENTER></strong></div>
        </div>

        @if(session()->has('message'))
        <div class="col-md-5 col-md-offset-2">
            <div class="alert alert-success"> 
                <CENTER>{{ session()->get('message') }}</CENTER>
            </div>
        </div>
        @endif

        <div class="container">
            <div class="row">
            <div class="col-md-9">
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
    </div>
</div>   
@endsection
