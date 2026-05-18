@extends('themes.default.common.master')
@section('meta_keyword',$data->meta_keyword)
@section('meta_description',$data->meta_description)
@section('content')

<!--------------------------- banner section start ------------------------------------->
<div class="uk-inline uk-inner-banner">
    <img src="{{ $data->banner ? asset('uploads/medium/'.$data->banner) : asset('themes-assets/img/company.jpg') }}" loading="lazy" alt="{{ $data->post_type }}">
    <div class="uk-overlay uk-overlay-primary uk-position-cover uk-banner-overlay uk-flex uk-flex-column uk-flex-center">
        <div class=" uk-width-1-1 uk-text-center" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target: h3,h1;  delay: 400; repeat: false;">
            <h3 class="uk-margin-remove">
                <a href=" {{ url('/') }} ">HOME</a> / {{ $data->post_type }}
            </h3>
            <h1 class="uk-margin-small-top">{{ $data->uid }}</h1>
        </div>
    </div>
</div>
<!--------------------------- banner section end ------------------------------------->

<!---------------------------  grid section start ------------------------------------->

@if($posts)
	<section class="uk-section uk-padding-remove-top">
		<div class="uk-container uk-container-large" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target: div;  delay: 200; repeat: false;">
			@foreach ( $posts as $post )
				@if ($loop->iteration % 2 != 0)
					<div class="uk-child-width-1-2@m uk-grid uk-grid-small uk-flex uk-flex-center uk-flex-middle">
						<div class="uk-flex-last uk-flex-first@m uk-margin-bottom">
							<div class="uk-bg-light border-rounded uk-padding">
								<h4 class="uk-margin-remove-bottom uk-margin-small-top uk-text-bold uk-text-primary">{{$post->post_title}}</h4>
								<p class="uk-margin-remove">
									{!! $post->post_content !!}
								</p>
							</div>
						</div>
						<div class="uk-flex-first uk-flex-last@m uk-margin-bottom">
							<div class="uk-inline-clip uk-transition-toggle uk-grid-img border-rounded" tabindex="0">
								<img class="uk-transition-scale-up uk-transition-opaque" src="{{ $post->banner ? asset('uploads/medium/'.$post->banner) : asset('themes-assets/img/commit.jpg') }}" width="1800" height="1200" alt="{{$post->post_title}}">
							</div>
						</div>
					</div>
				@else
					<div class="uk-child-width-1-2@m uk-grid uk-grid-small uk-flex uk-flex-center uk-flex-middle">
						<div class=" uk-margin-bottom">
							<div class="uk-inline-clip uk-transition-toggle uk-grid-img border-rounded" tabindex="0">
								<img class="uk-transition-scale-up uk-transition-opaque" src="{{ $post->banner ? asset('uploads/medium/'.$post->banner) : asset('themes-assets/img/blog2.webp') }}" width="1800" height="1200" alt="{{$post->post_title}}">
							</div>
						</div>
						<div class=" uk-margin-bottom">
							<div class="uk-bg-light border-rounded uk-padding">
								<h4 class="uk-margin-remove-bottom uk-margin-small-top uk-text-bold uk-text-primary">{{$post->post_title}}</h4>
								<p class="uk-margin-remove">
									{!! $post->post_content !!}
								</p>
							</div>
						</div>
					</div>
				@endif
			@endforeach
		</div>
	</section>
@endif
<!---------------------------  grid section end ------------------------------------->

@endsection