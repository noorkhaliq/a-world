@extends('frontend.pages_master')
@section('other-pages')
    <div class="services_section w-100 float-left layout_padding">
        <div class="container">

            <div class="inner_about">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="title">
                                <h2><a href="{{route('front.services')}}" class="text-danger">Services</a> | {{$services->title}}</h2>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="services_section_2 w-100 float-left">
                <div class="row">
                    <div class="gallery">
                        <div class="container">
                            <div class="row mt-3">
                                <div class="col-md-12 col-sm-12">
                                    <div class="gallery_img  d-block float-left me-4">
                                        <figure><img src="{{asset('uploads/'.$services->image)}}" alt="#"/></figure>
                                    </div>
                                    <h1>{{$services->title}}</h1>
                                    <p class="">{{$services->description}}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



@endsection
