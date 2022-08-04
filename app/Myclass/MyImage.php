<?php

namespace App\Myclass;

use Intervention\Image\Facades\Image;

class MyImage
{
    public static function image_resize_compress_watermark_store($path)
    {
        $img = Image::make($path);

        // resize image instance
        $img->resize(640, null, function ($constraint) {
            $constraint->aspectRatio();
        });
        /* $img->resize(400, 400, function ($constraint) {
            $constraint->aspectRatio();
        $constraint->upsize();
        }); */
        // $img->resize(800, 600);

        // insert a watermark
        $img->insert('assets/images/logo.png', 'center');

        // save image in desired format
        $img->save($path);
        //use image intervention, load the path  and resize it
    }
}
