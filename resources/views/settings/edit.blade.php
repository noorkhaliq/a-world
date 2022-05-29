
@extends('welcome')
@section('content')
    <div class="main-panel w-100">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-md-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Edit Settings</h4>
                            <form  method="post" action="{{route('settings.update', $settings->id)}}" class="forms-sample" enctype="multipart/form-data">
                                @csrf
                                @method('put')
                                <div class="form-group">
                                    <label for="exampleInputUsername1">Title</label>
                                    <input type="text" name="title" class="form-control name" value="{{ $settings->title}}" placeholder="Title">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Link</label>
                                    <input type="text" name="link" class="form-control" value="{{ $settings->link}}"  placeholder="Link">
                                </div>

                                <label>Select an Image</label>
                                <input type="file" class=" form-control" name="image" id="customFile" />

                                <br>
                                <div class="form-group ">
                                    <label for="">Type</label>
                                    <select name="type" class="form-control" required>
                                        <option value="">Select Type</option>
                                        <option value="social" @if($settings->type == 'settings') selected @endif>Social</option>
                                        <option value="address" @if($settings->type == 'address') selected @endif>Address</option>
                                    </select>
                                </div>
                                <br>
                                <button type="submit" class="btn btn-primary me-2">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </div>

@endsection
