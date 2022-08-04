@extends('layouts.dark')

@section('pagetitle')
    Profile
@endsection
@section('content')
    <h1>Your Profile</h1>    
    @include('partial.flash')
    @include('partial.error')
    <form class="row g-3" action="{{route('updateprofile')}}" method="POST" enctype="multipart/form-data">
        @csrf
        {{-- <div class="col-md-6">
          <label for="inputEmail4" class="form-label">Email</label>
          <input type="email" class="form-control" id="inputEmail4">
        </div>
        <div class="col-md-6">
          <label for="inputPassword4" class="form-label">Password</label>
          <input type="password" class="form-control" id="inputPassword4">
        </div> --}}
        <div class="col-12">
          <label for="fullname" class="form-label">Full Name</label>
          <input type="text" class="form-control" id="fullname" name="fullname" placeholder="Full Name" value="{{$user->profile?->fullname}}">
        </div>
        <div class="col-12">
          <label for="phone" class="form-label">Phone</label>
          <input type="text" class="form-control" name="phone" id="phone" placeholder="01XXXXXXXXX" value="{{$user->profile?->phone}}">
        </div>
        <div class="col-md-6">
          <label for="image" class="form-label">Image</label>
          <input type="file" name="image" class="form-control" id="image">
        </div>
        @if ($user->profile)
        <p>{{Storage::path($user->profile->image)}}</p>
        <p>{{Storage::url($user->profile->image)}}</p>
        <p>{{url(Storage::url($user->profile->image))}}</p>
        <img src="{{url(Storage::url($user->profile->image))}}" alt="sdfsdf">        
        @else            
        @endif
        <div class="col-md-12">
          <label for="bloodgroup" class="form-label">Blood Group</label>
          <select name="bloodgroup" id="bloodgroup" class="form-control">
            <option selected value="-1">Choose...</option>
            <option value="B+">B+</option>
            <option value="B-">B-</option>
            <option value="A+">A+</option>
            <option value="A-">A-</option>
            <option value="AB+">AB+</option>
            <option value="AB-">AB-</option>
            <option value="O+">O+</option>
            <option value="O-">O-</option>
          </select>
        </div>
        {{-- <div class="col-md-2">
          <label for="inputZip" class="form-label">Zip</label>
          <input type="text" class="form-control" id="inputZip">
        </div> --}}
{{--         <div class="col-12">
          <div class="form-check">
            <input class="form-check-input" type="checkbox" id="gridCheck">
            <label class="form-check-label" for="gridCheck">
              Check me out
            </label>
          </div>
        </div> --}}
        <div class="col-12">
          <button type="submit" class="btn btn-primary">Update</button>
        </div>
      </form>
@endsection