<?php

namespace App\Http\Controllers;

use App\Models\Services;
use App\Models\User;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Str;
use Yajra\DataTables\DataTables;

class Controller extends BaseController
{
 use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function dash()
    {
        return view('dashboard',['services'=>Services::count()]);
    }

    protected function uploads($file)
    {
        $extension = $file->getClientOriginalExtension();
        $imageName = time() . '.' . $extension;

        $file->storeAs('uploads', $imageName);

        return $imageName;
    }
}
