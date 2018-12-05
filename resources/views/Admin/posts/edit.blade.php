@extends('layouts.adminMaster')

@section('Title')
Edit
@endsection

@section('content')
  <div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-primary">
                <div class="panel-heading">Edit Ticket</div>

                <div class="panel-body">
                    <form class="form-horizontal" method="POST" action="{{'/posts/'.$post->id}}">
                        {{ csrf_field() }}
                        {{method_field('PUT')}}

                        <div class="form-group">
                            <label for="title" class="col-md-4 control-label">Title</label>

                            <div class="col-md-6">
                                <input id="title" type="text" value ="{{$post->title}}" class="form-control" name="title" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="from" class="col-md-4 control-label">From</label>

                            <div class="col-md-6">
                                <input id="from" type="text" class="form-control" name="from" value ="{{$post->from}}" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="to" class="col-md-4 control-label">To</label>

                            <div class="col-md-6">
                                <input id="to" type="text" class="form-control" name="to" value ="{{$post->to}}" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="price" class="col-md-4 control-label">Price</label>

                            <div class="col-md-6">
                                <input id="price" type="text" class="form-control" name="price" value ="{{$post->price}}" required>
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
  
