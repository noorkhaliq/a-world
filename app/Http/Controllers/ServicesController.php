<?php

namespace App\Http\Controllers;

use App\Models\About;
use App\Models\Slider;
use App\Models\Services;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Yajra\DataTables\Facades\DataTables;

class ServicesController extends Controller
{
    public function index()
    {
        return view('services.index');
    }


    public function create()
    {
        return view('services.create');
    }


    public function save(Request $request)
    {
        $data =$request->only(['title','description']);
        if ($request->hasFile('image')) {
            $data['image'] = $this->uploads(request()->file('image'));
        }
        $services = Services::create($data);
        $services->update(['slug'=>Str::slug($request->title).'-'.$services->id]);
        return redirect()->route('services.index');
    }

    public function edit($id)
    {
        return view('services.edit', ['services' => Services::find($id)]);
    }

    public function update($id)
    {
        $data =request()->only(['title','description']);

        if (request()->hasFile('image')  and request()->file('image')){
            $data['image'] = $this->uploads(request()->file('image'));
        }

        Services::where('id',$id)->update($data);

        return redirect()->route('services.index');
    }



    public function delete($id)
    {
        Services::destroy($id);
        return redirect()->route('services.index');
    }

    public function list()
    {
        return DataTables::of(Services::query())
            ->addColumn('file_image', function ($row) {
                return asset('uploads/'.$row->image);
            })
            ->addColumn('short_description', function ($q){
                return Str::words(strip_tags($q->description),5);
            })
            ->addColumn('actions', function ($q){
               return '  <a class="btn btn-primary" href="'.route('services.edit',$q->id).'">Edit</a>
                       | <a class="btn btn-danger deleteServices" href="'.route('services.delete',$q->id).'" >Delete</a>';
            })
            ->rawColumns(['actions'])
            ->make(true);

            }


}
