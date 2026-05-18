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

<!---------------------------  introduction section start ------------------------------------->
<section class="uk-section">
    <div class="uk-container-large uk-container" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target: div;  delay: 200; repeat: false;">
        <div class="uk-bg-light border-rounded uk-text-center uk-padding">
            <div class="uk-flex uk-flex-column uk-flex-middle uk-margin-bottom">
                <h3 class=" uk-margin-small-bottom uk-text-secondary uk-border-secondary">Founding Background</h3>
                <h2 class="uk-margin-remove uk-text-primary">{!! $data->caption !!}</h2>
            </div>
            <p class="uk-margin-remove-top">
				{!! $data->content !!}
            </p>
        </div>

		@php
			$firstPost = $posts->first();
			$icons = [
				'themes-assets/img/icon/service.png',
				'themes-assets/img/icon/customer.png',
				'themes-assets/img/icon/team.png',
				'themes-assets/img/icon/networking.png',
			];
		@endphp

		@if ($firstPost && $firstPost->associatePosts->count())
			<div class="uk-grid-divider uk-child-width-1-1 uk-child-width-1-2@m uk-child-width-1-4@l uk-margin-large-top uk-margin-bottom" uk-grid>
				@foreach ($firstPost->associatePosts as $index => $assoc)
					@php
						$icon = $icons[$index] ?? $icons[0];
					@endphp
					<div class="uk-text-center uk-text-left@m">
						<img src="{{ asset($icon) }}" height="70" width="70" loading="lazy" alt="{{ $assoc->title }}">
						<div>
							<h4 class="uk-margin-remove-bottom uk-margin-small-top uk-text-bold uk-text-primary">{{ $assoc->title }}</h4>
							<p class="uk-margin-remove">{!! $assoc->brief !!}</p>
						</div>
					</div>
				@endforeach
			</div>
		@endif
    </div>
</section>
<!---------------------------  introduction section end ------------------------------------->

<!---------------------------  grid section start ------------------------------------->

@if($posts)
	<section class="uk-section uk-padding-remove-top">
		<div class="uk-container uk-container-large" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target: div;  delay: 200; repeat: false;">
			@foreach ( $posts as $post )
				@if ($loop->first)
					@continue
				@endif
				@if ($loop->iteration % 2 == 0)
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