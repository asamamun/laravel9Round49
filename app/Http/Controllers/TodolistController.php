<?php

namespace App\Http\Controllers;

use App\Models\Todolist;
use App\Http\Requests\StoreTodolistRequest;
use App\Http\Requests\UpdateTodolistRequest;
use \Cviebrock\EloquentSluggable\Services\SlugService;

class TodolistController extends Controller
{
    
    public function __construct()
    {
        // $this->middleware('auth'); 
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $alllist = Todolist::with(['tasks','categories','comments'])->paginate(10);
        // $alllist = Todolist::paginate(10);
        // dd($alllist);
        // $alllist = Todolist::orderBy('done','DESC')->paginate(10);
        // $alllist = Todolist::where('id',">",'50')->orderBy('done','DESC')->paginate(10);
        // $alllist = Todolist::all()->count();
        // $alllist = Todolist::where("done","1")->get();
        // $alllist = Todolist::where("done","0")->take(2)->skip(1)->get();
        return view("todolist.index")
        ->with('lists',$alllist)
        ->with("pagetitle","Testing")
        ->with('starr',[0=>['name'=>"A"],1=>['name'=>"BB"]])
        ->with('num',range(1,90,3));
        // return view("todolist.index",['lists'=>$alllist]);
        // dd($alllist);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {   
        //method 1   
  /*       $data = [
        'name' => "todo".rand(100,10000),
        'description' => "tododesc".rand(100,10000),
        'done'=> rand(0,1)
      ];
      $obj = Todolist::create($data);
      dd($obj); */
      //method 2
      $m = new Todolist();
      $m->name = "test name".time();
      $m->description = "test desc".time();
      $m->done = "0";
      dd($m->save());
      //echo $id;
        // return view("todolist.create");
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreTodolistRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreTodolistRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Todolist  $todolist
     * @return \Illuminate\Http\Response
     */
    public function show(Todolist $todolist)
    {
        // dd($todolist->id);
        //dd($todolist);
        echo $todolist->name . " : ". $todolist->done;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Todolist  $todolist
     * @return \Illuminate\Http\Response
     */
    public function edit(Todolist $todolist)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateTodolistRequest  $request
     * @param  \App\Models\Todolist  $todolist
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateTodolistRequest $request, Todolist $todolist)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Todolist  $todolist
     * @return \Illuminate\Http\Response
     */
    public function destroy(Todolist $todolist)
    {
        //
    }

    public function createslug(){
        
        $lists = Todolist::all();
        foreach ($lists as $list) {
            $slug = SlugService::createSlug(Todolist::class, 'slug', $list->name);            
        $list->save();
        }
    }
}
