<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Casts\Attribute;
use Cviebrock\EloquentSluggable\Sluggable;

class Todolist extends Model
{
    use HasFactory;
    use Sluggable;
    protected $fillable = ['name', 'description', 'done'];
    public function getAllAttribute()
    {
        return $this->name . " ( " . $this->description . " ) [ " . $this->done . " ]) ";
    }

    /*         protected function Name(): Attribute
    {
        return Attribute::make(
            get: fn ($value) => substr($value,0,4),
        );
    } */

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
    public function tasks()
    {
    return $this->hasMany('App\Models\Task');
    }
    public function categories()
    {
    return $this->belongsToMany('App\Models\Category')->withTimestamps();
    }
    public function comments()
    {
    return $this->morphMany('App\Models\Comment', 'commentable');
    }
}
