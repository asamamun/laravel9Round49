@extends('layouts.dark')

@section('content')
{{-- @forelse ($collection as $item)
        
    @empty
        
    @endforelse --}}

    {{ "<mark>mark this</mark>" }}
    {!! "<mark>mark this</mark>" !!}
    {{ "<script>alert(5)</script>" }}
    {!! "<script>console.log(5)</script>" !!}


    {{-- <h1>{{$pagetitle??"TodoLIsts Page"}}</h1> --}}
    <h1>{{$pagetitle??"TodoLIsts Page"}}</h1>
    <h1>Total Record : {{$lists->count()}}</h1>
    <ul>
    @foreach ($lists as $list)
    {{--  --}}
    <div class="card mb-5">
        <div class="card-header">
            {{$list->id}} - {{ $list->name}} - {{$list->description}}- {{$list->done}}
        </div>
        <div class="card-body">
          <h5 class="card-title">Tasks</h5>
          <p class="card-text">
            <ol> 
                @forelse ($list->tasks as $task)
                    <li>{{$task->name}} - {{$task->done}}</li>
                @empty
                    <li class="bg-warning"> No task available  </li>
                @endforelse  
                 </ol>
          </p>
          
        </div>
        <div class="card-body">
            <h5 class="card-title">Categories</h5>
            <p class="card-text">
                <ol> 
                    @forelse ($list->categories as $cat)
                        <li>{{$cat->name}}</li>
                    @empty
                        <li class="bg-warning"> No category available  </li>
                    @endforelse  
                     </ol>
            </p>
            
          </div>
          <div class="card-body">
            <h5 class="card-title">Comments</h5>
            <p class="card-text">
                <ol> 
                    @forelse ($list->comments as $c)
                        <li>{{$c->body}}</li>
                    @empty
                        <li class="bg-warning"> No comments available  </li>
                    @endforelse  
                     </ol>
            </p>
            
          </div>
          <div class="card-footer">
            <a href="{{ url('test/todolist/'.$list->slug)}}">Details</a>
          </div>
      </div>
    {{--  --}}
        
    @endforeach
    {{$lists->onEachSide(1)->links()}}
    {{-- {{$lists->links()}} --}}

    @foreach ($num as $n)
        <li>{{$n}}</li>
    @endforeach
</ul>
    <hr>
    <?php
    foreach ($num as $n) {
        echo $n . " | ";
    }
    ?>
    <hr>
    @forelse ($starr as $st)
       <li>{{$st['name']}}</li> 
    @empty
       <h2>No data found</h2> 
    @endforelse

    <hr>
    @if (1==1)
        <h2>equal</h2>
@else
<h2>not equal</h2>

    @endif

    hello @{{"world"}}
    
@endsection

    
