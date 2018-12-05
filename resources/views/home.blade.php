@extends('layouts.master')

@section('content')
@include('partial.userSidebar')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-1">
            <div class="panel panel-info">
                <div class="panel-heading"><CENTER style="color:black">User Panel</CENTER></div>
            </div>
        </div>
    </div>
</div>
<div class="container">
<div class="row">
            <div class="col-md-5 col-md-offset-4">
                    @if(session()->has('message'))
                <div class="alert alert-success"> 
                    <CENTER>{{ session()->get('message') }}</CENTER>
                </div>
                    @endif
            </div>
    </div>

</div>
@endsection
