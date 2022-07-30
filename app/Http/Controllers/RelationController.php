<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class RelationController extends Controller
{
    public function onetoone(){
        $u = User::with('profile')->find(13);
        dd($u);
        echo $u->name;
        echo "<br>";
        echo $u->profile->phone;
    }
}
