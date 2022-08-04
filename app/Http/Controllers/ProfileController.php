<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProfilePostRequest;
use App\Models\Profile;
use App\Models\User;
use App\Myclass\MyImage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
// use Intervention\Image\ImageManagerStatic as Image;


class ProfileController extends Controller
{
    public function index(){
        
 // dd(Auth::user());
        return view('profile.index')->with('user',Auth::user());
    }
    public function update(ProfilePostRequest $request){
// dd($request->file("image")->getFilename());
// dd($request->file("image")->getClientOriginalName());
/* $file = $request->file('image');
 
$name = $file->hashName(); // Generate a unique, random name...
$extension = $file->extension(); // Determine the file's extension based on the file's MIME type...
echo $name ." : ". $extension; */

//upload
$path = $request->file('image')->store('public/profiles');
$storagepath = Storage::path($path);

//resize, compress, watermark image
MyImage::image_resize_compress_watermark_store($storagepath);
//https://image.intervention.io/v2/api/resize


// dd($path);
        $u = User::find(Auth::id());
        $p = $u->profile? $u->profile :  new Profile();
        $p->fullname = $request->fullname;
        $p->phone = $request->phone;
        $p->bloodgroup = $request->bloodgroup;
        $p->image = $path;
        if($u->profile()->save($p)){
            return back()->with('message',"Your profile has been updated!!!");
        }
    }
}
