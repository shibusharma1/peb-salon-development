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

<!--------------------------- introduction section start ------------------------------------->
<section class="uk-section">
    <div class="uk-container uk-container-large" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target: div;  delay: 200; repeat: false;">
        <div class="uk-grid uk-grid-small">
            <div class="uk-width-1-4@m uk-visible@m">
                <div>
                    <img src="{{ $data->banner ? asset('uploads/medium/'.$data->banner) : asset('themes-assets/img/about.webp')}}" class="uk-detail-img" loading="lazy" alt="{{ $data->post_type }}">
				</div>
			</div>
			<div class="uk-width-3-4@m">
				<div>
					<h3 class=" uk-margin-small-bottom uk-text-secondary uk-border-secondary">About us</h3>
					<h2 class="uk-margin-remove-top uk-text-primary">{!! $data->caption !!}</h2>
					<div class="uk-bg-light border-rounded uk-padding-small p-26">
						<p class="uk-text-justify">
							{!! $data->content !!}
						</p>
					</div>
				</div>
			</div>
		</div>

		@php
			$icons = [
				'themes-assets/img/icon/mission.png',
				'themes-assets/img/icon/goal.png',
				'themes-assets/img/icon/vision.png',
			];
			$animals =[
				'themes-assets/img/icon/cow.png',
				'themes-assets/img/icon/buffalo.png',
				'themes-assets/img/icon/pig.png',
			];
		@endphp
		<div class="uk-child-width-1-3@l uk-child-width-1-2@m uk-child-width-1-1 uk-grid uk-grid-small uk-grid-match uk-margin-large-top">
			@if($posts)
				@foreach($posts as $index => $post)
					@php
						$position = ($loop->iteration - 1) % 3;
						$icon = $icons[$index] ?? $icons[0];
						$animal = $animals[$index] ?? $animals[0];
					@endphp
					<div>
						@if($position == 0 || $position == 1)
							<div class="border-rounded border-full uk-padding-small h-300 uk-flex uk-flex-middle uk-flex-center">
								<div class="uk-text-center">
									<img src="{{ asset($icon) }}" loading="lazy" width="60" height="60" alt="">
									<h3 class="uk-text-primary uk-text-bold uk-margin-remove-bottom uk-margin-small-top" style="font-size:20px;">{{ $post->post_title }} </h3>
									<p class="uk-text-center uk-margin-remove">
										{!! $post->post_content !!}
									</p>
								</div>
							</div>
							<div class=" uk-flex uk-flex-middle uk-flex-center">
								<div class="primary-circle">
									<img src="{{ asset($animal) }}" height="50" width="50" alt="">
								</div>
							</div>
						@else
							<div class="uk-margin-small-bottom">
								<div class=" uk-flex uk-flex-middle uk-flex-center uk-visible@l">
									<div class="secondary-circle">
										<img src="{{asset($animal)}}" height="50" width="50" alt="">
									</div>
								</div>
								<div class="border-rounded border-full uk-padding-small h-300 border-rounded border-full uk-padding-small h-300 uk-flex uk-flex-middle uk-flex-center">
									<div class="uk-text-center">
										<img src="{{ asset($icon) }}" loading="lazy" width="60" height="60" alt="">
										<h3 class="uk-text-primary uk-text-bold uk-margin-remove-bottom uk-margin-small-top" style="font-size:20px;">
											{{ $post->post_title }}
										</h3>
										<p class="uk-text-center uk-margin-remove">
											{!! $post->post_content !!}
										</p>
									</div>
								</div>
							</div>
						@endif
					</div>
					<div>
						<div class="border-rounded uk-inline-clip uk-transition-toggle h-300" tabindex="0">
							<img src="{{$post->banner ? asset('uploads/medium/'.$post->banner) : asset('themes-assets/img/commit/img1.jpg')}}" class="border-rounded uk-transition-scale-up uk-transition-opaque" style="height:100%; width:100%; object-fit:cover;">
						</div>
					</div>
				@endforeach
			@endif
    	</div>
    </div>
</section>
<!--------------------------- introduction section end ------------------------------------->

@endsection