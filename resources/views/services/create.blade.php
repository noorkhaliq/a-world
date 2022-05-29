@extends('welcome')
@section('content')
    <div class="main-panel w-100">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-md-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Create New Services</h4>
                            <form  method="post" action="{{route('services.save')}}" class="forms-sample" enctype="multipart/form-data">
                                @csrf
                                <div class="form-group">
                                    <label>Title</label>
                                    <input type="text" name="title" class="form-control" value="{{ old('title') }}" placeholder="Title">
                                </div>
                                <div class="form-group">
                                    <label>Description</label>
                                    <textarea name="description" id="summernote" class="form-control">{{ old('description') }}</textarea>
                                </div>
                                <label class="form-label" for="customFile">Select an Image</label>
                                <div class="col-md-9">
                                    <div class="col-md-8">
                                        <input type="file" value="{{ old('image') }}" class="form-control" name="image" id="customFile" />
                                    </div>
                                </div>
                                <br>
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
