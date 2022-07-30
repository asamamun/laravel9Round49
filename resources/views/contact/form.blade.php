@extends('layouts.dark')

@section('pagetitle')
    Contact Form-contact us
@endsection

@section('content')
@guest
    <h1>Please login to contact us <a href="{{url('login')}}">Login</a></h1>
@endguest

@auth
@php
    $e = Auth::user()

@endphp
{!! Form::open(['url' => 'contact']) !!}
{!! Form::label('name', 'Your Name',['class'=>'form-label']) !!} 
{!! Form::text('name',$e->name,['class'=>'form-control']) !!}

{!! Form::label('email', 'E-Mail Address',['class'=>'form-label']) !!} 
{!! Form::email('email',$e->email,['class'=>'form-control']) !!}

{!! Form::label('message', 'Your Message',['class'=>'form-label']) !!}
{!! Form::textarea('message','',['class'=>'form-control']) !!}

{!! Form::submit('Contact Us!',array('class'=>'btn btn-primary')) !!}
{!! Form::close() !!}  
@endauth


@endsection