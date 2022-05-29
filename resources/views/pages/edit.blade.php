
@extends('welcome')
@section('content')
    <div class="main-panel w-100">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-md-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Edit Page </h4>
                            <form  method="post" action="{{route('pages.update', $pages->id)}}" class="forms-sample" enctype="multipart/form-data">
                                @csrf
                                @method('put')
                                <div class="form-group">
                                    <label for="exampleInputUsername1">Title</label>
                                    <input type="text" name="title" class="form-control name" value="{{$pages->title}}" placeholder="Title">
                                </div>

                                <label>Select an Image</label>
                                <input type="file" class=" form-control" name="image" id="customFile" />
                                <br>
                                <br>

                                <div class="form-group">
                                    <label>Description</label>
                                    <textarea name="description" id="summernote" class="form-control">{{$pages->description}}</textarea>
                                </div>



                                <div class="form-group ">
                                    <label for="">Type</label>
                                    <select name="type" class="form-control" required>
                                        <option value="">Select Type</option>
                                        <option value="page" @if($pages->type == 'page') selected @endif>page</option>
                                        <option value="section" @if($pages->type == 'section') selected @endif>section</option>
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
