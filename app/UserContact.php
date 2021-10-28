<?php

namespace App;

use App\UserSmsHistory;
use Illuminate\Database\Eloquent\Model;

class UserContact extends Model
{
    protected $table = 'user_contacts';

    public function sms_history()
    {
        return $this->hasMany(UserSmsHistory::class,'contact_id');
    }
}
