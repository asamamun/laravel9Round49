<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    {{env('DB_USERNAME')}}
    <img src="{{asset("assets/images/logo.png")}}" alt="sadfsadf">
    <form action="" method="post">
        @csrf
    </form>
    <hr>
    {{ route("myhome") }}
    <br>
    {{Route("t")}}
    <br>
    {{ route("square",['number'=>6])}}
    <br>
    {{url("posts/5/comments/10")}}
    <br>
    <a href="{{ route("postcomment",['post'=>5,"comment"=>10])}}">{{ route("postcomment",['post'=>5,"comment"=>10])}}</a> 
    
</body>
</html>