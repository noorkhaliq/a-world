<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\ServicesResources;
use App\Models\Services;
use Illuminate\Http\Request;

class ServiceController extends Controller
{
    public function services()
    {
        $service = Services::all();
        return ['status' => true , 'data' => ServicesResources::collection($service)];
    }
}
