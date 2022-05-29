@extends('frontend.master')
@section('content')

    <!-- services section start -->
    <div class="services_section w-100 float-left layout_padding">
        <div class="container">
            <h1 class="services_taital w-100 float-left font-weight-bold">Services </h1>
            <p class="services_text w-100 float-left m-0">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration</p>
            <div class="services_section_2 w-100 float-left">
                <div class="row">
                    @foreach($services as $service)
                    <div class="col-md-4">
                        <div><img src="{{asset('uploads/'.$service->image) }}" class="w-100 float-left text-center"></div>
                        <div class="btn_main text-center  w-50"><a href="{{route('front.services.detail',$service->slug)}}">{{$service->title}}</a></div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
    <!-- services section end -->

    <!-- about section start -->
    <div class="about_section w-100 float-left mt-5">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="about_taital_main ">
                        <h1 class="about_taital w-100 font-weight-bold float-left mb-5">{{$about->title}}</h1>
                        <p class="about_text w-100 float-left m-0">{!! \Illuminate\Support\Str::words(strip_tags($about->description),60) !!}</p>
                        <div class="readmore_bt">
                            <a href="{{route('front.about','about-us')}}" class=" float-left text-center font-weight-bold text-uppercase mt-5">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 ">
                    <div class="a_image"><img src="{{asset('uploads/'.$about->image)}}" class="w-100 float-left"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- about section end -->

    <!-- pages section start -->
    <div class="blog_section w-100 h-auto float-left layout_padding ">
        <div class="container">
            <h1 class="blog_taital text-center w-100 float-left font-weight-bold text-center">{{$blogs->title}}</h1>
            <p class="blog_text text-center w-75">{{$blogs->description}}</p>
                <div class="play_icon_main">
                <div class="play_icon "><a href="{{route('front.blogs','blogs')}}"><img src="{{asset('uploads/'.$blogs->image)}}"></a></div>
            </div>
        </div>
    </div>
    <!-- pages section end -->

    <!-- choose section start -->
    <div class="w-100 float-left pb-5 layout_padding mt-5 pt-5">
        <div class="container">
            <h1 class="choose_taital w-100 font-weight-bold text-center">Why Choose Us</h1>
            <p class="choose_text pt-4  ">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All </p>
            <div class="row container newsletter_box float-left ml-0">
                <div class="col-lg-9 col-md-8 col-sm-12">
                    <h1 class="let_text  font-weight-bold  ">Let Start Talk with Us</h1>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-12 getquote_bt pt-3 ">
                    <a href="{{route('front.contact')}}" class=" text-center font-weight-bold">Get A Contact</a></div>
            </div>
        </div>
    </div>
    <!-- choose section end -->

@endsection
