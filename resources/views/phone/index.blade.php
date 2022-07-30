@extends('layouts.dark')

@section('content')

@foreach ($phones as $phone)
<li>{{$phone->name}} - {{$phone->phone}}</li>
    
@endforeach
<hr>
{{$phones->links();}}
    
@endsection