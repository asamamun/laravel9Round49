<?php

namespace App\Http\Controllers;

use App\Models\Todolist;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class TestController extends Controller
{
    public function index(){
        // echo "test controller index method called";
        return view("test");
    }
    public function hi(){
        //echo "test controller hi method called";
        
        Log::info('Just an informational message.');
        Log::warning('Something may be going wrong.');
        Log::error('Something is definitely going wrong.');
        Log::critical('Danger, Will Robinson! Danger!');
        return view("welcome");
    }
    public function sq($n){
        echo $n*$n;
    }
    public function postcomment($p,$c=null){
        echo "post id:" . $p . " and comment id:" . $c;
    }
    public function notfound(){
        // echo "You are lost";
        return view("errors.404");
    }
    public function querytest(){
        $l= Todolist::firstOrCreate(['name' => 'Tamia Carroll1'],['description' => "test desc", 'done' => '0']);
        dd($l);
    }
}
