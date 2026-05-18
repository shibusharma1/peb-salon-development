@extends('themes.default.common.master')

@section('content')
<!-- start section -->
<section class="uk-section uk-booking bg-white uk-position-relative" style="background: #f2f2f2;">
    <div class="uk-container uk-container-small"
         uk-scrollspy="target:[uk-scrollspy-class], img, h1, h2, h3, h4, h5, h6, hr, .uk-button, li, p; cls: uk-animation-slide-top-small; delay: 50; repeat: false;"
         style="padding-top: 4rem; padding-bottom: 4rem;">
        
        <div class="uk-card uk-card-default uk-card-body uk-border-rounded uk-box-shadow-medium uk-text-center" style="background: #fff;">
            <div class="uk-margin-bottom">
                <span class="uk-icon-button uk-button-success" uk-icon="icon: check; ratio: 2"></span>
            </div>

            <h2 class="uk-text-bold uk-text-success uk-margin-small-bottom">Sent Successfully!</h2>

            <p class="uk-text-lead uk-margin-remove-top">
                Dear <b>{{ $name }}</b>,
            </p>

            <p class="uk-margin-small-top">
                {!! $message !!}
            </p>

            <hr class="uk-divider-icon">

            <p class="uk-text-muted">
                <b>Best Wishes</b><br>
                {{ $setting->site_name }}
            </p>

            <div class="uk-margin-top">
                <a href="{{ url('/') }}" class="uk-button uk-button-primary uk-border-rounded">Return to Home</a>
            </div>
        </div>

    </div>
</section>
<!-- end section -->
@stop
