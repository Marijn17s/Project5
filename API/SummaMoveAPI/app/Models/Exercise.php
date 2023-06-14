<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Exercise extends Model
{
    use HasFactory;

    protected $fillable = ['username', 'firstname', 'lastname', 'email', 'password',
        'dateofbirth', 'remember_token', 'created_at', 'updated_at'];
}
