@extends('admin.master')
@section('title', 'Contact Us')
@section('breadcrumb')
@endsection
@section('content')
    <div class="tray tray-center" style="height: 647px;">
        <div class="panel">
            <div class="panel-body ph20">
                <div class="tab-content">
                    <div id="users" class="tab-pane active">
                        <div class="table-responsive mhn20 mvn15">
                            <table class="table admin-form table-striped dataTable" id="datatable3">
                                <thead>
                                    <tr class="bg-light">
                                        <th>SN</th>
                                        <th>Customer</th>
                                        <th>Contact</th>
                                        <th>Service</th>
                                        <th>Appointment</th>
                                        <th>Status</th>
                                        <th>Notes</th>
                                        <th class="text-center">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @if ($inquiry->count())
                                        @foreach ($inquiry as $key => $row)
                                            <tr>
                                                <td>{{ $key + 1 }}</td>
                                                <td>
                                                    <strong>{{ $row->full_name }}</strong>
                                                    <br>
                                                    <small class="text-muted">
                                                        {{ $row->created_at->format('d M Y h:i A') }}
                                                    </small>
                                                </td>
                                                <td>
                                                    <strong>{{ $row->email }}</strong>
                                                    <br>
                                                    {{ $row->phone }}
                                                </td>
                                                <td>
                                                    {{ $row->service }}
                                                </td>
                                                <td>
                                                    <strong>{{ \Carbon\Carbon::parse($row->appointment_date)->format('d M Y') }}</strong>
                                                    <br>
                                                    {{ \Carbon\Carbon::parse($row->appointment_time)->format('h:i A') }}
                                                </td>
                                                <td>
                                                    @if ($row->status == 'Pending')
                                                        <span class="label label-warning">
                                                            Pending
                                                        </span>
                                                    @elseif($row->status == 'Confirmed')
                                                        <span class="label label-success">
                                                            Confirmed
                                                        </span>
                                                    @elseif($row->status == 'Cancelled')
                                                        <span class="label label-danger">
                                                            Cancelled
                                                        </span>
                                                    @else
                                                        <span class="label label-info">
                                                            {{ $row->status }}
                                                        </span>
                                                    @endif
                                                </td>
                                                <td>
                                                    <textarea readonly rows="3" style="width:100%;resize:none;">{{ $row->message }}</textarea>
                                                </td>
                                                <td class="text-center">
                                                    <form action="{{ route('inquiry.delete', $row->id) }}" method="POST"
                                                        onsubmit="return confirm('Are you sure you want to delete this appointment?');">
                                                        @csrf
                                                        @method('DELETE')
                                                        <button type="submit" class="btn btn-danger btn-xs">
                                                            <i class="fa fa-trash"></i>
                                                        </button>
                                                    </form>
                                                </td>
                                            </tr>
                                        @endforeach
                                    @endif
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection


@section('libraries')
    <script src="{{ asset('vendor/plugins/datatables/media/js/jquery.dataTables.js') }}"></script>

    <!-- Datatables Tabletools addon -->
    <script src="{{ asset('vendor/plugins/datatables/extensions/TableTools/js/dataTables.tableTools.min.js') }}"></script>

    <!-- Datatables ColReorder addon -->
    <script src="{{ asset('vendor/plugins/datatables/extensions/ColReorder/js/dataTables.colReorder.min.js') }}"></script>

    <!-- Datatables Bootstrap Modifications  -->
    <script src="{{ asset('vendor/plugins/datatables/media/js/dataTables.bootstrap.js') }}"></script>
    <script type="text/javascript">
        /********/
        $('document').ready(function() {
            $('#checkAll').on('click', function(e) {
                if ($(this).is(':checked', true)) {
                    $('.check_box').prop('checked', true);
                } else {
                    $('.check_box').prop('checked', false);
                }
            });
            $('.deleteAll').on(function() {

            });
        });


        /************/
        $('#datatable3').dataTable({
            "aoColumnDefs": [{
                'bSortable': true,
                'aTargets': [-1]

            }],
            "oLanguage": {
                "oPaginate": {
                    "sPrevious": "Previous",
                    "sNext": "Next"
                }
            },
            "iDisplayLength": 10,
            "aLengthMenu": [
                [5, 10, 25, 50, -1],
                [5, 10, 25, 50, "All"]
            ],
            "sDom": '<"dt-panelmenu clearfix"Tfr>t<"dt-panelfooter clearfix"ip>',
            "oTableTools": {
                "sSwfPath": "{{ asset('vendor/plugins/datatables/extensions/TableTools/swf/copy_csv_xls_pdf.swf') }}"
            }
        });
    </script>

@endsection
