<?php

namespace App\Models;

use App\Http\Controllers\ServicesController;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
    use HasFactory;

    protected $table = 'slider';
    protected $guarded = ['id'];


}
