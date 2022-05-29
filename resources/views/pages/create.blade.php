@extends('welcome')
@section('content')
    <div class="main-panel w-100">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-md-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Create New Pages</h4>
                            <form  method="post" action="{{route('pages.save')}}" class="forms-sample" enctype="multipart/form-data">
                                @csrf
                                <div class="form-group">
                                    <label>Title</label>
                                    <input type="text" name="title" class="form-control" value="{{ old('title') }}" placeholder="Title">
                                </div>

                                <label class="form-label" for="customFile">Select an Image</label>
                                <div class="col-md-9">
                                    <div class="col-md-8">
                                        <input type="file" value="{{ old('image') }}" class="form-control" name="image" id="customFile" />
                                    </div>
                                </div><br><br>
                                <div class="form-group">
                                    <label>Description</label>
                                    <textarea name="description" id="summernote" class="form-control">{{ old('description') }}</textarea>
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1 ">Type</label>
                                    <select name="type" class="form-control" required>
                                        <option value="" selected>Select Type</option>
                                        <option value="page">page</option>
                                        <option value="section">section</option>
                                    </select>
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
