@extends('layouts.dark')
@section('content')

@include("partial.error")
{{Form::open(['route' => 'todolist.store'])}}

@include('todolist.form')
<div class="form-group">
    {!! Form::submit('Create List', array('class'=>'btn btn-primary')) !!}
    </div>
{!! Form::close() !!}
    
@endsection