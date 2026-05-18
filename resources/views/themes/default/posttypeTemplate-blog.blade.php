@extends('themes.default.common.master')
@section('meta_keyword',$data->meta_keyword)
@section('meta_description',$data->meta_description)
@section('content')

<!--------------------------- banner section start ------------------------------------->
<div class="uk-inline uk-inner-banner">
    <img src="{{ asset('themes-assets/img/vision.jpg') }}" loading="lazy" alt="{{ $data->post_type }}">
    <div class="uk-overlay uk-overlay-primary uk-position-cover uk-banner-overlay uk-flex uk-flex-column uk-flex-center">
        <div class=" uk-width-1-1 uk-text-center" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target: h3, h1;  delay: 400; repeat: false;">
            <h3 class="uk-margin-remove">
                <a href="{{ url('/') }}">HOME</a> / {{ $data->post_type }}
            </h3>
            <h1 class="uk-margin-small-bottom-top">{{ $data->uid }}</h1>
        </div>
    </div>
</div>
<!--------------------------- banner section end ------------------------------------->
<!---------------------------  blog list section start ------------------------------------->
<section class="uk-section">
    <div class="uk-container uk-container-large">
        <div class="uk-child-width-1-2@m" uk-grid  uk-height-match=".uk-bg-light" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target: .block;  delay: 400; repeat: false;">
            <!-- blog card -->
			@foreach($posts as $post)
				<div class="block">
					<div>
						<a href="{{url(geturl($post['uri'],$post['page_key']))}}" class="uk-blog-section uk-inline-clip uk-transition-toggle" tabindex="0">
							<img src="{{$post->page_thumbnail ? asset('uploads/medium/'.$post->page_thumbnail) : asset('themes-assets/img/blog1.png')}}" class="uk-blog-section-img uk-transition-scale-up uk-transition-opaque" loading="lazy" alt="">
						</a>
					</div>
					<div class="uk-bg-light uk-padding-small uk-margin-top uk-border-bottom">
						<div class="uk-flex" style="gap:15px;">
							@if ($post->associated_title)
								<div class="uk-text-uppercase">
									<i class="fa-solid fa-user uk-text-secondary uk-margin-small-right"></i>
									{{ $post->associated_title }}
								</div>
							@endif
							<div class="uk-text-uppercase">
								<i class="fa-solid fa-calendar uk-text-secondary uk-margin-small-right"></i>
								{{ $post->created_at->format('d F, Y') }}
							</div>
						</div>
						<a href="{{url(geturl($post['uri'],$post['page_key']))}}" class="uk-blog-text">
							<h2 class="f-20 uk-margin-remove two-line">{{ $post->post_title }}</h2>
						</a>
						<p class="uk-margin-remove two-line">
							{{ $post->post_excerpt }}
						</p>
						<a href="{{url(geturl($post['uri'],$post['page_key']))}}" class="uk-button uk-primary-btn uk-border-pill uk-margin-top">
							<div class="uk-flex uk-flex-middle uk-flex-center" style="gap:10px;">
								<span class="uk-btn-text">EXPLORE MORE</span>
								<span class="uk-btn-icon">
									<i class="fa-solid fa-paw"></i>
								</span>
							</div>
						</a>
					</div>
				</div>
			@endforeach
        </div>
        <div class="uk-margin-large-top">
			{!! $posts->links('themes.default.common.pagination') !!}
        </div>
    </div>
</section>
<!--------------------------- blog list section end ------------------------------------->

@endsection