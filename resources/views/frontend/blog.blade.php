@extends('frontend.pages_master')
@section('other-pages')
    <div class="mt-5 blog_section w-100 h-auto float-left layout_padding ">
        <div class="container">
            <h1 class="blog_taital text-center w-100 float-left font-weight-bold text-center">{{$blog->title}}</h1>
            <p class="blog_text text-center w-75">{{$blog->description}}</p>
            <div class="play_icon_main">
                <div class="play_icon "><a href="#"><img src="{{asset('uploads/'.$blog->image)}}"></a></div>
            </div>
        </div>
    </div>

@endsection
