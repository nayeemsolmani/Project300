@extends('layouts.master')

@section('content')
<div class ="container-fluid" id="train">
<div class="container image">
    @if(session()->has('message'))
        <div>
            <div class="alert alert-success"> 
                <CENTER>{{ session()->get('message') }}</CENTER>
            </div>
        </div>
    @endif
    <div class="col-md-3">
            <div class="panel panel-primary">
                @foreach($tickets->unique('to') as $ticket)
                <div class="panel-heading">Price of {{$ticket->from}} To {{ $ticket->to }}:</div>
                <div class="panel-body">{{$ticket->price}} TK</div>
                @endforeach
            </div>
    </div>
        <div class="col-md-7 col-md-offset-2">
            <div class="panel panel-primary">
                <div class="panel-heading">Train Ticket Booking</div>

                <div class="panel-body">
                    <form class="form-horizontal" method="POST" action="/bookings">
                        {{ csrf_field() }}

                        <div class="form-group">
                            <label for="name" class="col-md-4 control-label">Name</label>

                            <div class="col-md-6">
                                <input id="name" placeholder ="Give a Name" type="text" class="form-control" name="name" autofocus>
                            </div>
                        </div>

                        <div class="form-group">
                            
                            <div class="col-md-6">
                                <input id="user_id" type="hidden" class="form-control" name="user_id">
                            </div>
                        </div>
    
                        <div class="form-group">
                            <div class="col-md-6">
                                <input id="title" type="hidden" class="form-control" name="title" value="Train">
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="from" class="col-md-4 control-label">From</label>

                            <div class="col-md-6">
                                <input id="journey" type="hidden" name="from" class="form-control" value="">
                                <select id="from" class="form-control" onclick="fromFunction()">
                                    @foreach($tickets->unique('to') as $ticket)
                                        <option value="{{ $ticket->to }}" >{{ $ticket->to }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="to" class="col-md-4 control-label">To</label>
                            <div class="col-md-6">
                                <input id="return" type="hidden" name="to" class="form-control" value="">
                                <select id="to" class="form-control" onclick="toFunction()">
                                    @foreach($tickets->unique('to') as $ticket)
                                        <option value="{{ $ticket->to }}" >{{ $ticket->to }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="doj" class="col-md-4 control-label">Date of Journey</label>

                            <div class="col-md-6">
                                <input id="doj" type="date" class="form-control" name="doj" required>
                            </div>
                        </div>
                        

                        <div class="form-group">
                            <label for="dor" class="col-md-4 control-label">Date of Return</label>

                            <div class="col-md-6">
                                <input id="dor" type="date" class="form-control" name="dor" required>
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
@section('script')
<script>
    function fromFunction()
    {
        var val = document.getElementById("from");
        var journey = document.getElementById("journey");
        journey.value = val.options[val.selectedIndex].value;
        //console.log(val.options[val.selectedIndex].value);

    }
    function toFunction()
    {
        var val = document.getElementById("to");
        var ret = document.getElementById("return");
        ret.value = val.options[val.selectedIndex].value;
        //console.log(val.options[val.selectedIndex].value);
    }
</script>
@endsection