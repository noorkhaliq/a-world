@extends('welcome')
@section('content')
    <div class="main-panel">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-md-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Edit Contact</h4>
                            <form  method="post" action="{{route('contact.update', $contact->id)}}" class="forms-sample">
                                @csrf
                                @method('put')
                                <div class="form-group">
                                    <label for="exampleInputUsername1">Name</label>
                                    <input type="text" name="name" class="form-control name" value="{{$contact->name}}" placeholder="Name">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputUsername1">E-mail</label>
                                    <input type="text" name="email" class="form-control name" value="{{$contact->email}}" placeholder="E-mail">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputUsername1">Phone Number</label>
                                    <input type="text" name="phone" class="form-control name" value="{{$contact->phone}}" placeholder="Phone Number">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputUsername1">Message</label>
                                    <input type="text" name="message" class="form-control name" value="{{$contact->message}}" placeholder="Message">
                                </div>
                                <button type="submit" class="btn btn-primary me-2">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
