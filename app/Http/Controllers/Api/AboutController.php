<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\AboutResources;
use App\Models\About;
use Illuminate\Http\Request;

class AboutController extends Controller
{
    public function about()
    {
        $about = About::all();
        return ['status' => true , 'data' =>AboutResources::collection($about)];
    }
}
