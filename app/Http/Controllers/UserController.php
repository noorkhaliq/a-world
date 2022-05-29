<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;


class UserController extends Controller
{

    public function dash()
    {
        return view('dashboard');
    }

    public function index()
    {
        return view('user.index');
    }


    public function edit($id)
    {
        return view('user.edit' , ['user' => User::find($id)]);
    }

    public function update($id)
    {
        $data = request()->only(['name','email','password']);

        User::where('id', $id)->update($data);
        return redirect()->route('user.index');
    }


    public function create()
    {
        return view('user.create');
    }

    public function save(Request $request)
    {
        $data=request()->only(['name','email','password']);
        User::create($data);
        return redirect()->route('user.index');
    }


    public function delete($id)
    {
        User::destroy($id);
        return redirect()->route('user.index');
    }

    public function list()
    {
        return DataTables::of(User::query())
            ->addColumn('actions',function($q) {
                if ($q->id == auth()->user()->id)
                    return '<a class="btn btn-primary" href="' . route('user.edit', $q->id) . '">Edit</a>';
                else
                return '<a class="btn btn-primary" href="'.route('user.edit' , $q->id).'" >Edit</a>
                      | <a class="btn btn-danger deleteUser" href="'.route('user.delete', $q->id).'">Delete</a>';
            })
            ->rawColumns(['actions'])
            ->make(true);
    }


}
