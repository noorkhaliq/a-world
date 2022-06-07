<?php

namespace App\Http\Controllers;

use App\Models\About;
use App\Models\Pages;
use App\Models\Contact;
use App\Models\Services;
use App\Models\Slider;
use App\Models\Settings;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class FrontendController extends Controller
{
    public function index()
    {
        return view('frontend.index', ['services' => Services::latest()->limit(3)->get(),
            'about'=> Pages::where('slug','about-us')->first(),
            'blogs'=> Pages::where('slug','blogs')->first()]);
    }

    public function slider()
    {
        return Slider::all();
    }


    public function about($slug)
    {
        $page = Pages::whereSlug($slug)->firstOrFail();

        return view('frontend.about', ['about' => $page]);
    }

    public function blogs($slug)
    {
        $page = Pages::whereSlug($slug)->firstOrFail();

        return view('frontend.blog', ['blog' => $page]);
    }

    public function services()
    {
        return view('frontend.services', ['services' => Services::paginate(6)]);
    }

    public function servicesDetail($slug)
    {
        $services =Services::whereSlug($slug)->firstOrFail();
        return view('frontend.services_detail',['services'=>$services]);
    }

    public function contact()
    {
        return view('frontend.contact');
    }

    public function blog()
    {
        return view('frontend.pages', ['blog' => Pages::all()]);
    }



    public function getAddress()
    {
        return Settings::where('type' , 'address')->get();
    }

    public function getSocial()
    {
        return Settings::where('type' , 'social')->get();
    }


    function subscribeSave(Request $request)
    {
        $validator = \Illuminate\Support\Facades\Validator::make($request->all(),[
            'email' => 'required'
        ]);

        if(!$validator->passes()){
            return response()->json(['status'=>0, 'error'=>$validator->errors()->toArray()]);
        }else{
            $values = [
                'email' => $request->email,
            ];
            $query = DB::table('contactus')->insert($values);
            if( $query ){
                return response()->json(['status'=>1, 'message'=>'Your subscription has been submitted']);
            }
        }
    }

    function save(Request $request)
    {
        $validator = \Illuminate\Support\Facades\Validator::make($request->all(),[
            'name'=>'required|min:3',
            'phone'=>'required|min:3',
            'message'=>'required',
            'email' => 'required'
        ]);

        if(!$validator->passes()){
            return response()->json(['status'=>0, 'error'=>$validator->errors()->toArray()]);
        }else{
            $values = [
                'name' => $request->name,
                'email' => $request->email,
                'phone' => $request->phone,
                'message' => $request->message,
            ];
            $query = DB::table('contactus')->insert($values);
            if( $query ){
                return response()->json(['status'=>1, 'msg'=>'New Contact has been successfully registered']);
            }
        }
    }



}
