<?php

namespace App\Http\Controllers;

use App\Models\Settings;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Yajra\DataTables\Facades\DataTables;

class SettingsController extends Controller
{
    public function index()
    {
        return view('settings.index');
    }


    public function create()
    {
        return view('settings.create');
    }


    public function save(Request $request)
    {
        $data = $request->only(['title', 'link', 'type']);
        if ($request->hasFile('image')) {
            $data['image'] = $this->uploads(request()->file('image'));
        }
       Settings::create($data);

        return redirect()->route('settings.index');
    }




    public function edit($id)
    {
        return view('settings.edit', ['settings' => Settings::find($id)]);
    }

    public function update($id)
    {
        $data = request()->only(['title', 'link', 'type']);

        if (request()->hasFile('image') and request()->file('image')) {
            $data['image'] = $this->uploads(request()->file('image'));
        }

        Settings::where('id', $id)->update($data);

        return redirect()->route('settings.index');
    }


    public function delete($id)
    {
        Settings::destroy($id);
        return redirect()->route('settings.index');
    }


    public function list()
    {

        return DataTables::of(Settings::query())
            ->addColumn('file_image', function ($row) {
                return asset('uploads/' . $row->image);
            })
            ->addColumn('actions', function ($q) {
                return '  <a class="btn btn-primary" href="' . route('settings.edit', $q->id) . '">Edit</a>
                       | <a class="btn btn-danger deleteSettings" href="' . route('settings.delete', $q->id) . '" >Delete</a>';
            })
            ->rawColumns(['actions'])
            ->make(true);


    }

}


