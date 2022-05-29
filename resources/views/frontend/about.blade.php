@extends('frontend.pages_master')
@section('other-pages')
    <div class="about_section w-100 float-left mt-5">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="about_taital_main ">
                        <h1 class="about_taital about_title  w-100 font-weight-bold float-left mb-5">{{$about->title}}</h1>
                        <p class="about_text w-100 float-left m-0">{{$about->description}}</p>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 ">
                    <div class="a_imag"><img src="{{asset('uploads/'.$about->image)}}" class="w-100 float-left"></div>
                </div>
            </div>
        </div>
    </div>

@endsection
