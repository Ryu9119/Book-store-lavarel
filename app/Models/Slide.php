<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Slide extends Model
{
    protected $guarded = [''];

    const TARGET = [
        1 => 'blank',
        2 => 'self',
        3 => 'parent',
        4 => 'top',
    ];
}
