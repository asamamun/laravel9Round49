<?php

namespace App\Http\Controllers;

use App\Models\Todolist;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Faker;

class QueryController extends Controller
{
    public function index(){
        //using model
        // $lists = Todolist::all();
        //using query builder
        // $lists = DB::table('todolists')->get();
        $lists = DB::select('SELECT * from todolists');
        // $lists = DB::table('todolists')->select('name')->get();
        
        dd($lists);
    }
    public function find($id){
        // $todolist = DB::table("todolists")->find($id);
        $todolist = DB::select('select * from todolists where id = ?', [$id]);
        dd($todolist);
    }
    public function randominsert(){
        $f = Faker\Factory::create();
        dd(DB::insert("insert into todolists(name,description,done) values(?,?,?)",[$f->name(),$f->sentence(),$f->boolean()]));
    }
    public function update($id){
        dd(DB::update('update todolists set name = "t" where id = ?', [$id]));
    }
    public function delete($id){
        dd(DB::delete('delete from todolists where id = '.$id));
    }
}
