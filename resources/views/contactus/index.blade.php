@extends('welcome')
@section('content')
    <div class="main-panel w-100">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title d-block" style="float:left;display: block">Contact List</h4>
                            <div class="table-responsive " style="margin-top: 5rem;width: 100%;">
                                <table id="userDataTable" class="table table-striped">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Name</th>
                                        <th>E-mail</th>
                                        <th>Phone Number</th>
                                        <th>Message</th>
                                        <th>Is Replied</th>
                                        <th>Action</th>
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
        var table = undefined;
        $(document).ready(function () {
            table = $('#userDataTable').DataTable({
                "ajax": "{{route('contactus.list')}}",
                "processing": true,
                "serverSide": true,
                "columns": [
                    {"data": "id", name: 'id'},
                    {"data": "name", name: 'name'},
                    {"data": "email", name: 'email'},
                    {"data": "phone", name: 'phone'},
                    {"data": "message", name: 'message'},
                    {"data": "replied", name: 'is_replied'},
                    {"data": "actions", searchable: false, orderable: false},
                ]
            })


            $('body').on('click', '.deleteContact', function (e) {
                e.preventDefault();
                var url = $(this).attr('href');
                if (confirm("Are you sure?")) {
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
