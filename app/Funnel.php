<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Funnel extends Model
{
    protected $guarded=[];


    public function files()
    {
        return $this->morphMany(File::class, 'fileable');
    }
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
}
