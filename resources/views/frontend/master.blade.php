<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- site metas -->
    <title>A World</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- bootstrap css -->
    <link rel="stylesheet" type="text/css" href="{{ asset('front')}}/css/bootstrap.min.css">
    <!-- style css -->
    <link rel="stylesheet" type="text/css" href="{{ asset('front')}}/css/style.css">
    <!--       Responsive-->
    <link rel="stylesheet" href="{{ asset('front')}}/css/responsive.css">
    <!--       fevicon-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <!-- fonts -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,700|Righteous&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css"
          media="screen">

</head>
<body>
@inject('frontControllerObject' ,'\App\Http\Controllers\FrontendController' )

<!-- header section start -->
<div class="header_section w-100 float-left p-2">
    <div class="w-100">
        <div class="container">
            <div class="logo  text-center float-left">
                <a href="{{route('front.index')}}">
                    <img src="{{asset('front')}}/images/logo.png">
                </a>
            </div>
            <nav class=" navigation navbar navbar-expand-lg navbar-dark ">
                <button class=" navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample04" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon "></span>
                </button>
                <div class="menu_main row mb-5 collapse navbar-collapse" id="navbarsExample04">
                    <ul class="justify-content-center navbar-nav ">
                        <li class="active"><a href="{{route('front.index')}}">Home</a></li>
                        <li><a href="{{route('front.about','about-us')}}">About</a></li>
                        <li><a href="{{route('front.services')}}">Services</a></li>
                        <li><a href="{{route('front.blogs','blogs')}}">Blog</a></li>
                        <li><a href="{{route('front.contact')}}">Contact us</a></li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>

    <!-- header carousel-->

    <div id="carouselExampleSlidesOnly" class="carousel slide mt-5" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="container ">
                    <h1 class="banner_taital w-100 float-left font-weight-bold text-center text-uppercase ">Adventure</h1>
                    <p class="banner_text text-center">There are many variations of passages of Lorem Ipsum available, but the majority
                        have sufferedThere are ma available, but the majority have suffered</p>
                    <div class="read_bt text-center"><a href="javascript:void(0)" class="w-100 float-left text-center mb-5">Get A Quote</a></div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container ">
                    <h1 class="banner_taital w-100 float-left font-weight-bold text-center text-uppercase ">Adventure</h1>
                    <p class="banner_text text-center">There are many variations of passages of Lorem Ipsum available, but the majority
                        have sufferedThere are ma available, but the majority have suffered</p>
                    <div class="read_bt text-center"><a href="javascript:void(0)" class="w-100 float-left text-center mb-5">Get A Quote</a></div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container ">
                    <h1 class="banner_taital w-100 float-left font-weight-bold text-center text-uppercase ">Adventure</h1>
                    <p class="banner_text text-center">There are many variations of passages of Lorem Ipsum available, but the majority
                        have sufferedThere are ma available, but the majority have suffered</p>
                    <div class="read_bt text-center"><a href="javascript:void(0)" class="w-100 float-left text-center mb-5">Get A Quote</a></div>
                </div>
            </div>
        </div>
    </div></div>
<!-- header section end -->
@yield('content')
<!-- footer section start -->
<div class="footer_section w-100 float-left h-auto layout_padding">
    <div class="container">
        <div class=" input_btn_main m-auto  ">
            <input type="text" class=" mail_text w-100 float-left h-auto " placeholder="Enter your email" name="Enter your email">
            <div class="subscribe_bt  "><a href="javascript:void(0)" class="float-left text-center text-uppercase col-lg-3">Subscribe</a></div>
        </div>
        <div class="location_main w-100 text-center">
            @php
                $socials = $frontControllerObject->getAddress();
            @endphp
            @foreach($socials as $address)
                <div class="call_text"><img src="{{asset('uploads/'.$address->image) }}"></div>

                <div class="call_text"><a href="{{$address->link}}">{{$address->title}}</a></div>
            @endforeach
        </div>
        <div class="social_icon w-100 text-center">
            <ul class="m-0 p-0 d-inline-block text-center">
                @php
                    $social =$frontControllerObject->getSocial()
                @endphp
                @foreach($social as $socials)
                    <li><a href="{{$socials->link}}"><img src="{{asset('uploads/'.$socials->image)}}"></a></li>
                @endforeach
            </ul>
        </div>
    </div>
</div>
<!-- footer section end -->

<!-- copyright section start -->
<div class="copyright_section">
    <div class="container">
        <p class="copyright_text pt-4">2022 All Rights Reserved. Design by Free Noor html Templates</p>
    </div>
</div>
<!-- copyright section end -->
</body>
</html>
