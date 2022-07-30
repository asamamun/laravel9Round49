<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Database\Eloquent\Casts\Attribute;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
//old way
    public function getNameEmailAttribute()
    {
        return $this->name . " ( " . $this->email . " ) ";
    }
//new way
    protected function nameandemail(): Attribute
    {
        return Attribute::make(
            get: fn ($value, $attributes) => ($this->name . " ( " . $this->email . " ) "),
        );
    }

    protected function Name(): Attribute
    {
        return Attribute::make(
            get: fn ($value) => strtoupper($value),
            set: fn ($value) => strtolower($value),
        );
    }

    public function profile()
    {
    return $this->hasOne('App\Models\Profile');
    }
    public function comments()
    {
    return $this->morphMany('App\Models\Comment', 'commentable');
    }
}
