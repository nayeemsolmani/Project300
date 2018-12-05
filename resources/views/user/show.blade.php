@extends('layouts.master')

@section('title')
	Travel
@endsection
@section('content')
  <div class="container">
    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 " >
      <div class="panel panel-info">
        <div class="panel-heading">
           <h3 class="panel-title">{{ $user->name.' '.$user->lastname }} </h3>
            </div>
             <div class="panel-body">
              <div class="row">
                <div class="col-md-9 col-lg-9 table-responsive"> 
                  <table class="table ">
                    <tbody>
                      <tr>
                        <td>User ID:</td>
                        <td>{{$user->id}}</td>
                      </tr>
                      <tr>
                        <td>Name:</td>
                        <td>{{$user->name}}</td>
                      </tr>
                      <tr>
                        <td>Last Name: </td>
                        <td>{{$user->lastname}}</td>
                      </tr>
                   
                      <tr>
                        <td>Email: </td>
                        <td>{{$user->email}}</td>
                      </tr>
                        <tr>
                        <td>Account No</td>
                        <td>{{$user->accountNo}}</td>                
                      </tr>
                      
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <div class ="panel-footer">
                <a href="{{ '/user/'.$user->id.'/edit' }}" type ="button" class = "btn btn-primary">Edit</a>
            </div>

          </div>
        </div>
    </div>
@endsection
         