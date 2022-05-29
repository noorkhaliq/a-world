<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class About extends Model
{
    use HasFactory;
    protected $table ='about';
    protected $guarded =['id'];



//    public function slider()
//    {
//        return $this->belongsTo(Slider::class,'category_id','id');
//    }
}
