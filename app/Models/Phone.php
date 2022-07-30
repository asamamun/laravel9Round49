<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;

class Phone extends Model
{
    use HasFactory;
    use Sluggable;
    protected $fillable = ['name', 'phone'];
    /**
     * Return the sluggable configuration array for this model.
     *
     * @return array
     */
    public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'name'
            ]
        ];
    }
    //search by slug
    public function getRouteKeyName()
    {
        return 'slug';
    }
}
