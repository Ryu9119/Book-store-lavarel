<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Arr;

class PageStatic extends Model
{
    protected $table = 'statics';
    protected $guarded = [''];

    protected $type = [
        1 => 'Shopping guide',
        2 => 'Return Policy',
        3 => 'Customer care'
    ];

    public function getType() 
    {
        return Arr::get($this->type, $this->s_type,"[N\A]");
    }
}
