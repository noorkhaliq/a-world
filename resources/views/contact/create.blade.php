@extends('welcome')
@section('content')
    <div class="main-panel">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-md-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Create New Contact</h4>
                            <form  method="post" action="{{route('contact.save')}}" class="forms-sample">
                                @csrf
                                <div class="form-group">
                                    <label>Name</label>
                                    <input type="text" name="name" class="form-control" value="{{ old('name') }}" placeholder="Name">
                                </div>
                                <div class="form-group">
                                    <label>E-mail</label>
                                    <input type="text" name="email" class="form-control" value="{{ old('email') }}" placeholder="E-mail">
                                </div>
                                <div class="form-group">
                                    <label>Phone Number</label>
                                    <input type="text" name="phone" class="form-control" value="{{ old('phone') }}" placeholder="Phone Number">
                                </div>
                                <div class="form-group">
                                    <label>Message</label>
                                    <input type="text" name="message" class="form-control" value="{{ old('message') }}" placeholder="Message">
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
