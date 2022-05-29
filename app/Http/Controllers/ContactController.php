<?php

namespace App\Http\Controllers;

use App\Models\Contact;
use App\Models\Slider;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class ContactController extends Controller
{


    public function index()
    {
        return view('contact.index');
    }


    public function create()
    {
        return view('contact.create');
    }

    public function save(Request $request)
    {
        $data = $request->only(['name','email','phone','message']);
        Contact::create($data);
        return redirect()->route('contact.index');
    }

    public function edit($id)
    {
        return view('contact.edit', ['contact'=>Contact::find($id)]);
    }

    public function update($id)
    {
        $date =request()->only(['name','email','phone','message']);
        Contact::where('id',$id)->update($date);
        return redirect()->route('contact.index');
    }


    public function delete($id)
    {
        Contact::destroy($id);
        return redirect()->route('contact.index');
    }

    public function list()
    {
        return DataTables::of(Contact::query())
            ->addColumn('actions', function ($q) {
                return '<a class="btn btn-github" href="'.route('contact.edit',$q->id).'">Edit</a>
                         <a class="btn btn-reddit deleteContact" href="'.route('contact.delete',$q->id).'">Delete</a> ';
            })
            ->rawColumns(['actions'])
            ->make(true);
    }
}
