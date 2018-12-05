@extends('layouts.adminMaster')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-primary">
                <div class="panel-heading">Add Ticket</div>

                <div class="panel-body">
                    <form class="form-horizontal" method="POST" action="/posts">
                        {{ csrf_field() }}

                        <div class="form-group">
                            <label for="id" class="col-md-4 control-label">ID</label>

                            <div class="col-md-6">
                                <input id="id" placeholder ="Give an ID" type="text" class="form-control" name="id" autofocus>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="title" class="col-md-4 control-label">Title</label>

                            <div class="col-md-6">
                                <input id="title" placeholder ="Bus/Train/Flight" type="text" class="form-control" name="title" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="from" class="col-md-4 control-label">From</label>

                            <div class="col-md-6">
                                <input id="from" placeholder ="From" type="text" class="form-control" name="from" required>
                                
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="to" class="col-md-4 control-label">To</label>

                            <div class="col-md-6">
                                <input id="to" placeholder ="To" type="text" class="form-control" name="to" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="price" class="col-md-4 control-label">Price</label>

                            <div class="col-md-6">
                                <input id="price" placeholder ="Price" type="text" class="form-control" name="price" required>
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
@endsection
