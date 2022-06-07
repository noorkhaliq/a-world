@extends('frontend.pages_master')
@section('other-pages')
    <div class="contact ">
        <div class="container">
            <div class="row ">
                <div class="col-md-12">
                    <div class="titlepage text-center mb-5">
                        <h2 class="contactus_header">Request A Call Back</h2>
                    </div>
                </div>
                <div class="col-lg-8 col-md-8 offset-md-2">
                    <form method="post" action="{{route('front.save')}}" id="main_form" class="main_form">
                        @csrf
                        <div class="row">
                            <div class="col-md-12 ">
                                <input class="contactus fw-normal w-100 h-75 mb-5" placeholder="Name" type="text" name="name" required="required">
                            </div>
                            <div class="col-md-12">
                                <input class="contactus fw-normal w-100 h-75 mb-5 " placeholder="Phone Number" type="number" name="phone"  required="required">
                            </div>
                            <div class="col-md-12">
                                <input class="contactus fw-normal w-100 h-75 mb-5" placeholder="Email Address" type="email" name="email"  required="required">
                            </div>
                            <div class="col-md-12">
                                <textarea class="textarea w-100 mb-4 fw-normal" placeholder="Message" type="text" name="message"  required="required"></textarea>
                            </div>
                            <div class="col-md-12 ">
                                <button  type="submit" class="send_btn button btn bg-dark text-light text-center ">
                                    <i class=" loading-icon fa fa-spinner fa-spin hide " style="margin-right: 11px;"></i>
                                    <span class="btn-txt">Send</span></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <style>
        .button:disabled {
            opacity: 0.9;
        }
        .hide {
            display: none;
        }
    </style>

@endsection
