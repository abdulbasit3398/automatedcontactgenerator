<?php

namespace App;

use App\User;
use Illuminate\Database\Eloquent\Model;

class BulkSmsEmail extends Model
{
    protected $table = 'bulk_sms_email';

    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }
}
