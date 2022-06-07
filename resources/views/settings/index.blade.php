@extends('welcome')

@section('content')
    <div class="main-panel w-100">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title d-block" style="float:left;display: block">Settings List</h4>
                            <a href="{{route('settings.create')}}" class="btn btn-primary mb-5" style="float: right" >&plus;</a>

                            <div class="table-responsive" style="margin-top: 5rem;width: 100%;">
                                <table id="userDataTable" class="table table-striped">
                                    <thead>
                                    <tr>
                                        <th>
                                            title
                                        </th>
                                        <th>
                                            link
                                        </th>
                                        <th>
                                            image
                                        </th>
                                        <th>
                                            type
                                        </th>
                                        <th>
                                            Action
                                        </th>
                                    </tr>
                                    </thead>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </div>

    <script>
        var table=undefined;
        $(document).ready(function(){
            table=$('#userDataTable').DataTable({
                "ajax": "{{route('settings.list')}}",
                "processing": true,
                "serverSide": true,
                "columns": [
                    { data: "title",name:'title' },
                    { data: "link",name:'link' },
                    { data: 'file_image', name:'image', orderable: false, searchable: false, render: function(data) {
                            return `<img src="${data}" width="100" height="100">`;
                        }},
                    { data: "type",name:'type' },
                    { data: "actions",searchable: false, orderable:false },

                ]

            })

            $('body').on('click', '.deleteSettings', function (e) {
                e.preventDefault();
                var url = $(this).attr('href');
                if (confirm("Are you sure ?")) {
                    $.ajax({
                        url: url,
                        type: 'get',
                        success: function() {
                            table.ajax.reload();
                        }
                    })
                }
            });




        });
    </script>


@endsection
