@php
    $notificationTypes = ['success', 'error', 'info', 'warning'];
@endphp

@if ($errors->any())
    <script>
        @foreach($errors->all() as $error)
            toastr.error(@json($error));
        @endforeach
    </script>
@endif

<script>
    toastr.options = {
        closeButton: true,
        progressBar: true,
        newestOnTop: true,
        preventDuplicates: true,
        positionClass: "toast-top-right",
        timeOut: 5000,
        extendedTimeOut: 1500,
        showDuration: 300,
        hideDuration: 300,
        showMethod: "fadeIn",
        hideMethod: "fadeOut"
    };
</script>

@foreach($notificationTypes as $type)
    @if(Session($type) === true)
        @if(is_array(Session::get('message')))
            <script>
                @foreach(Session::get('message') as $item)
                    toastr.{{ $type }}(@json($item));
                @endforeach
            </script>
        @else
            <script>
                toastr.{{ $type }}(@json(Session('message')));
            </script>
        @endif
    @endif
@endforeach

<script>
    function ajax_response(response) {
        const notificationTypes = [
            'success',
            'error',
            'info',
            'warning'
        ];
        notificationTypes.forEach(function(type) {
            if(response[type]) {
                if(Array.isArray(response.message)) {
                    response.message.forEach(function(message){
                        toastr[type](message);
                    });
                } else {
                    toastr[type](response.message);
                }
            }
        });
    }

</script>