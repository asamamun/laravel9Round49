@extends('layouts.dark')

@section('content')
<h1>Edit Form</h1>
{!! Form::model($todolist, ['method' => 'put','route' => ['todolist.update', $todolist->slug]]) !!}

@include('todolist.form')

    <div class="form-group">
        {!! Form::submit('Update List', array('class'=>'btn btn-primary')) !!}
        </div>

{!! Form::close() !!}
    
@endsection