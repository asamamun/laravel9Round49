<?php

namespace App\Http\Controllers;

use App\Models\Phone;
use App\Http\Requests\StorePhoneRequest;
use App\Http\Requests\UpdatePhoneRequest;
use Faker;
use \Cviebrock\EloquentSluggable\Services\SlugService;

class PhoneController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $phones = Phone::paginate(15);
        return view("phone.index")->with("phones",$phones);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $f = Faker\Factory::create();
        $p = new Phone();
        $p->name = "Adnan";
        $p->phone = "0123456789";
        $p->save();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StorePhoneRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StorePhoneRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Phone  $phone
     * @return \Illuminate\Http\Response
     */
    public function show(Phone $phone)
    {
        echo "<h3>".$phone->name. ":" .$phone->phone."</h3>";
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Phone  $phone
     * @return \Illuminate\Http\Response
     */
    public function edit(Phone $phone)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdatePhoneRequest  $request
     * @param  \App\Models\Phone  $phone
     * @return \Illuminate\Http\Response
     */
    public function update(UpdatePhoneRequest $request, Phone $phone)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Phone  $phone
     * @return \Illuminate\Http\Response
     */
    public function destroy(Phone $phone)
    {
        //
    }

    public function slugall(){
        $phones = Phone::all();
        foreach ($phones as $phone) {
           $slug = SlugService::createSlug(Phone::class, 'slug', $phone->name);
           $phone->save();
        }
    }
}
