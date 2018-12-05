@extends('layouts.adminMaster')

@section('Title','Edit')

@section('content')
  <div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-info">
                <div class="panel-heading">Edit My Profile</div>

                <div class="panel-body">
                    <form class="form-horizontal" method="POST" action="{{'/admin/'.$admin->id}}">
                        {{ csrf_field() }}
                        {{method_field('PUT')}}

                        <div class="form-group">
                            <label for="title" class="col-md-4 control-label">Name</label>

                            <div class="col-md-6">
                                <input id="name" type="text" value ="{{$admin->name}}" class="form-control" name="name" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="lastname" class="col-md-4 control-label">Last Name</label>

                            <div class="col-md-6">
                                <input id="lastname" type="text" value ="{{$admin->lastname}}" class="form-control" name="lastname" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="email" class="col-md-4 control-label">Email</label>

                            <div class="col-md-6">
                                <input id="email" type="text" class="form-control" name="email" value ="{{$admin->email}}" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="accountNo" class="col-md-4 control-label">Account No</label>

                            <div class="col-md-6">
                                <input id="accountNo" type="text" class="form-control" name="accountNo" value ="{{$admin->accountNo}}" required>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <div class="col-md-8 col-md-offset-4">
                                <button type="submit" class="btn btn-primary">
                                    Submit
                                </button>
                            </div>
                        </div>


                    </form>
                </div>
            </div>
        </div>
    </div>
  </div>
</div>
@endsection
  
