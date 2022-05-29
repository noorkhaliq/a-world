@extends('frontend.pages_master')
@section('other-pages')
    <div class="services_section w-100 float-left layout_padding">
        <div class="container">
            <h1 class="services_taital title mt-5 w-100 float-left font-weight-bold">Services </h1>
            <p class="services_text w-100 float-left m-0">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration</p>
            <div class="services_section_2 w-100 float-left">
                <div class="row">
                    @foreach($services as $service)
                    <div class="col-md-4">
                        <div><img src="{{asset('uploads/'.$service->image)}}" class="w-100 float-left text-center"></div>
                        <div class="btn_main text-center  w-50"><a href="{{route('front.services.detail',$service->slug)}}">{{$service->title}}</a></div>
                    </div>
                    @endforeach
                </div>
                    {{$services->links()}}
            </div>
        </div>
    </div>

@endsection
