@extends('themes.default.common.master')
@section('content')

<!--------------------------- banner section end ------------------------------------->
<section class="uk-homepage-banner" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target:  h3,h1;  delay: 400; repeat: false;">
    <div class="uk-position-relative" id="ytbg3" data-youtube="{{ $banners->link }}" data-ytbg-mute-button="true" data-ytbg-autoplay="true" data-ytbg-muted="true" data-ytbg-loop="true"></div>
    <div class="uk-overlay uk-overlay-primary uk-position-cover uk-banner-overlay uk-flex uk-flex-column uk-flex-right">
        <div class=" uk-width-1-1 uk-width-2-3@l  uk-margin-large-top">
            <h3 class="uk-margin-remove uk-border-white">{{ $banners->title }}</h3>
            <h1 class="uk-margin-small-top uk-margin-large-bottom">{{ $banners->content }}</h1>
        </div>
    </div>
</section>
<!--------------------------- banner section end ------------------------------------->

<!--------------------------- about section start ------------------------------------->
<section class="uk-homepage-about uk-section">
    <div class="uk-container uk-container-large">
        <div class="uk-grid">
            <div class="uk-width-1-3@m" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target:  div;  delay: 400; repeat: false;">
                <div>
                    <img src="{{$about->banner ? asset('uploads/medium/'.$about->banner) : asset('themes-assets/img/about.webp')}}" class="uk-about-img" loading="lazy" alt="about">
                    <div class="uk-circle-section">
                        <div class="uk-circle-inner-section">
                            <p>12+ <br> Years</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="uk-width-2-3@m" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target:  div;  delay: 200; repeat: false;">
                <div>
                    <h3 class=" uk-margin-small-bottom uk-text-secondary uk-border-secondary">About us</h3>
                    <h2 class="uk-margin-remove-top uk-text-primary">{!! $about->caption !!}</h2>
                    <div class="uk-bg-light border-rounded uk-padding-small p-26">
                        {!! $about->content !!}
                        <a href="{{ url('page/' . posttype_url($about->uri)) }}" class="uk-button uk-primary-btn uk-border-pill">
                            <div class="uk-flex uk-flex-middle uk-flex-center" style="gap:10px;">
                                <span class="uk-btn-text">EXPLORE MORE</span>
                                <span class="uk-btn-icon">
                                    <i class="fa-solid fa-paw"></i>
                                </span>
                            </div>
                        </a>
                    </div>
                    <div class="uk-child-width-1-3@m uk-grid-small uk-grid uk-margin-top ">
                        <div class="uk-grid uk-grid-collapse uk-padding-small uk-padding-remove-top uk-padding-remove-bottom uk-margin-bottom">
                            <div class="uk-width-1-6 uk-width-1-4@m"><img src="{{asset('themes-assets/img/icon/mission.png')}}" loading="lazy" height="60" width="60" alt=""></div>
                            <div class="uk-width-5-6 uk-width-3-4@m">
                                <h3 class="uk-text-primary uk-text-bold uk-margin-remove">{{ $mission->post_title }}</h3>
                                <p class="uk-margin-remove-top uk-margin-small-bottom four-line" style="font-size:14px;">
                                    {{ $mission->post_excerpt }}
                                </p>
                                <a href="{{ url('page/' . posttype_url($missions->uri)) }}" class="uk-know-btn"> Know More <span uk-icon="icon:  triangle-right"></span></a>
                            </div>
                        </div>

                        <div class="uk-grid uk-grid-collapse border-left uk-padding-small uk-padding-remove-top uk-padding-remove-bottom uk-margin-bottom">
                            <div class="uk-width-1-6 uk-width-1-4@m"><img src="{{asset('themes-assets/img/icon/vision.png')}}" loading="lazy" height="60" width="60" alt=""></div>
                            <div class="uk-width-5-6 uk-width-3-4@m">
                                <h3 class="uk-text-primary uk-text-bold uk-margin-remove">{{ $vision->post_title }}</h3>
                                <p class="uk-margin-remove-top uk-margin-small-bottom four-line" style="font-size:14px;">
                                    {{ $vision->post_excerpt }}
                                </p>
                                <a href="{{ url('page/' . posttype_url($missions->uri)) }}" class="uk-know-btn"> Know More <span uk-icon="icon:  triangle-right"></span></a>
                            </div>
                        </div>

                        <div class="uk-grid uk-grid-collapse border-left uk-padding-small uk-padding-remove-top uk-padding-remove-bottom uk-margin-bottom">
                            <div class="uk-width-1-6 uk-width-1-4@m"><img src="{{asset('themes-assets/img/icon/goal.png')}}" loading="lazy" height="60" width="60" alt=""></div>
                            <div class="uk-width-5-6 uk-width-3-4@m">
                                <h3 class="uk-text-primary uk-text-bold uk-margin-remove">{{ $goal->post_title }}</h3>
                                <p class="uk-margin-remove-top uk-margin-small-bottom four-line" style="font-size:14px;">
                                    {{ $goal->post_excerpt }}
                                </p>
                                <a href="{{ url('page/' . posttype_url($missions->uri)) }}" class="uk-know-btn"> Know More <span uk-icon="icon:  triangle-right"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--------------------------- about section end ------------------------------------->

<!--------------------------- commitment section start ------------------------------------->
@if($commitment && $commitment->images && $commitment->images->count())
    <section class="uk-commitment-about uk-bg-light uk-section">
        <div class="uk-container">
            <div class="uk-flex uk-flex-column uk-flex-middle uk-margin-bottom" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target:  h3,h2;  delay: 400; repeat: false;">
                <h3 class=" uk-margin-small-bottom uk-text-secondary uk-border-secondary">{{ $commitment->post_title }}</h3>
                <h2 class="uk-margin-remove-top uk-text-primary">{{ $commitment->post_excerpt }}</h2>
            </div>
            <div uk-slider="autoplay: true; autoplay-interval: 2000">
                <div class="uk-position-relative uk-visible-toggle " tabindex="-1">
                    <div class="uk-slider-items uk-child-width-1-2 uk-child-width-1-4@m uk-child-width-1-5@l uk-grid uk-grid-collapse" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target:  div;  delay: 100; repeat: false;">
                        <!--  -->
                        @foreach($commitment->images as $row)
                            <div>
                                <div class="uk-commit-img uk-flex uk-flex-center uk-margin-small-bottom uk-inline-clip uk-transition-toggle" tabindex="0">
                                    <img src="{{ $row->file_name ? asset('uploads/medium/'.$row->file_name) : asset('themes-assets/img/commit/img1.jpg')}}" class="uk-transition-scale-up uk-transition-opaque" loading="lazy" width="400" height="600" alt="">
                                </div>
                                <div class="uk-text-center uk-commit-text">
                                    <h3 class="uk-text-bold uk-text-primary ">{{ $row->title }}</h3>
                                </div>
                            </div>
                        @endforeach
                    </div>
                    <a class="uk-position-center-left uk-position-small uk-prev-btn" href uk-slidenav-previous uk-slider-item="previous" style=" left: -15px;"></a>
                    <a class="uk-position-center-right uk-position-small uk-next-btn " href uk-slidenav-next uk-slider-item="next" style=" right: -15px;"></a>
                </div>
                <ul class="uk-slider-nav uk-dotnav uk-flex-center uk-margin"></ul>
            </div>
        </div>
    </section>
@endif
<!--------------------------- commitment section end ------------------------------------->

<!--------------------------- quality section start ------------------------------------->
@if($research)
    <section class="uk-quality-section uk-section">
        <div class="uk-container uk-container-large">
            <div class="uk-grid">
                <div class="uk-width-1-3@m">
                    <div class="uk-margin-bottom" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target:  h3,h2, img;  delay: 400; repeat: false;">
                        <h3 class=" uk-margin-small-bottom uk-text-secondary uk-border-secondary">{{ $research->post_title }}</h3>
                        <h2 class="uk-margin-remove-top uk-text-primary">{{ $research->post_excerpt }}</h2>

                        <div class="uk-270 uk-inline-clip uk-transition-toggle border-rounded" tabindex="0">
                            <img src="{{$research->banner ? asset('uploads/medium/'.$research->banner) : asset('themes-assets/img/commit.jpg')}}" class="border-rounded uk-transition-scale-up uk-transition-opaque" loading="lazy" height="500" width="500" alt="{{ $research->post_title }}">
                        </div>
                    </div>
                </div>
                @php
                    $icons=[
                        'themes-assets/img/icon/hen.png',
                        'themes-assets/img/icon/cow.png',
                        'themes-assets/img/icon/buffalo.png',
                        'themes-assets/img/icon/pig.png',
                        'themes-assets/img/icon/dog.png'
                    ];
                @endphp
                @if($research->associatePosts && $research->associatePosts->count())
                    <div class="uk-width-2-3@m" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target: div;  delay: 100; repeat: false;">
                        <div class="uk-container timeline">
                            @foreach ($research->associatePosts as $index => $row)
                                @php
                                    $icon = $icons[$index] ?? $icons[0];
                                @endphp
                                <div class="timeline-item">
                                    <div class="timeline-icon icon-blue">
                                        <img src="{{ asset($icon)}}" height="30" width="30" alt="{{ $row->title }}">
                                    </div>
                                    <div class="timeline-content">
                                        <span class="timeline-number">{{ str_pad($index + 1, 2, '0', STR_PAD_LEFT) }}</span>
                                        {{ $row->title }}
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                @endif
            </div>
        </div>
    </section>
@endif
<!--------------------------- quality section end ------------------------------------->

<!--------------------------- strenght section start ------------------------------------->
@if($strength)
    <section class=" uk-strenght-section ">
        <div class="uk-container uk-container-large">
            <div class="uk-grid" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target:  div;  delay: 400; repeat: false;">
                <div class="uk-width-2-3@m uk-same-height uk-margin-bottom">
                    <h3 class=" uk-margin-small-bottom uk-text-secondary uk-border-secondary">{{ $strength->post_title }}</h3>
                    <h2 class="uk-margin-remove-top uk-text-primary">{{ $strength->post_excerpt }}</h2>
                    <div class="uk-bg-light border-rounded uk-padding-small p-26">
                        {!! $strength->post_content !!}
                    </div>
                </div>
                <div class="uk-width-1-3@m">
                    <div>
                        <img src="{{ $strength->banner ? asset('uploads/medium/'.$strength->banner) : asset('themes-assets/img/strenght.jpg')}}" class="uk-strenght-img" loading="lazy" alt="strenght">
                        <div class="uk-circle-section1">
                            <div class="uk-circle-inner-section1">
                                <p>ALL OVER <br> NEPAL</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endif
<!--------------------------- strenght section end ------------------------------------->

<!--------------------------- video section start ------------------------------------->
@if($setting->website)
    <div class="uk-container uk-container-large uk-video-section  uk-margin-large-bottom" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target:  iframe;  delay: 400; repeat: false;">
        {!! $setting->website !!}
        <!-- <iframe
            src=""
            title="YouTube video player"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
            class="border-rounded"
            allowfullscreen>
        </iframe> -->
    </div>
@endif
<!--------------------------- video section end ------------------------------------->

<!--------------------------- vision section start ------------------------------------->
@if($team)
    <section class="uk-vision-section uk-section ">
        <div class="uk-container uk-container-large">
            <div class="uk-flex uk-flex-column uk-flex-middle uk-margin-bottom" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target: h3,h2;  delay: 400; repeat: false;">
                <h3 class=" uk-margin-small-bottom uk-text-white uk-border-secondary">{{ $team->post_title }}</h3>
                <h2 class="uk-margin-remove-top uk-text-white">{{ $team->post_excerpt }}</h2>
            </div>
            <div class="uk-child-width-1-2@m" uk-grid uk-height-match=".same-height" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target:  div;  delay: 400; repeat: false;">
                <div class="uk-inline-clip uk-transition-toggle border-rounded" tabindex="0">
                    <img src="{{ $team->banner ? asset('uploads/medium/'.$team->banner) : asset('themes-assets/img/tedam.png')}}" class="uk-transition-scale-up uk-transition-opaque border-rounded same-height uk-img-cover" alt="" loading="lazy">
                </div>
                <div class="same-height">
                    <h2 class="f-20 uk-margin-remove uk-text-white">{!! $team->post_content !!}</h2>
                </div>
            </div>
            <div class="uk-margin-top uk-flex uk-flex-center" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target:  a;  delay: 400; repeat: false;">
                <a href="{{ url('page/' . posttype_url($missions->uri)) }}" class="uk-button uk-white-btn uk-border-pill">
                    <div class="uk-flex uk-flex-middle uk-flex-center" style="gap:10px;">
                        <span class="uk-btn-text">EXPLORE MORE</span>
                        <span class="uk-btn-icon">
                            <i class="fa-solid fa-paw"></i>
                        </span>
                    </div>
                </a>
            </div>
        </div>
    </section>
@endif
<!--------------------------- vision section end ------------------------------------->

<!--------------------------- blog section start ------------------------------------->
<section class="uk-blog-section uk-section">
    <div class="uk-container uk-container-large">
        <div class="uk-grid">
            <div class="uk-width-2-3@m" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target:  h3,h2;  delay: 400; repeat: false;">
                <h3 class=" uk-margin-small-bottom uk-text-secondary uk-border-secondary">our blogs</h3>
                <h2 class="uk-margin-remove-top uk-text-primary">{{ $blog->uid }}</h2>
            </div>
            <div class="uk-width-1-3@m  uk-text-left uk-text-right@m uk-visible@m">
                <a href="{{ url('page/' . posttype_url($blog->uri)) }}" class="uk-button uk-primary-btn uk-border-pill uk-margin-top">
                    <div class="uk-flex uk-flex-middle uk-flex-center" style="gap:10px;">
                        <span class="uk-btn-text">EXPLORE MORE</span>
                        <span class="uk-btn-icon">
                            <i class="fa-solid fa-paw"></i>
                        </span>
                    </div>
                </a>
            </div>
        </div>
        <div class="uk-child-width-1-2@m" uk-grid uk-scrollspy=" cls: uk-animation-slide-bottom-small; target: .block;  delay: 400; repeat: false;">
            @foreach($blogs as $row)
                @if($loop->first)
                    <div class="block">
                        <div>
                            <a href="{{url(geturl($row['uri'],$row['page_key']))}}" class="uk-blog-section uk-inline-clip uk-transition-toggle" tabindex="0">
                                <img src="{{$row->page_thumbnail ? asset('uploads/medium/'.$row->page_thumbnail) : asset('themes-assets/img/blog1.png')}}" class="uk-blog-section-img uk-transition-scale-up uk-transition-opaque" loading="lazy" alt="{{ $row->post_title }}">
                            </a>
                        </div>
                        <div class="uk-bg-light uk-padding-small uk-margin-top uk-border-bottom">
                            <div class="uk-flex" style="gap:15px;">
                                @if ($row->associated_title)
                                    <div class="uk-text-uppercase">
                                        <i class="fa-solid fa-user uk-text-secondary uk-margin-small-right"></i>
                                        {{ $row->associated_title }}
                                    </div>
                                @endif
                                <div class="uk-text-uppercase">
                                    <i class="fa-solid fa-calendar uk-text-secondary uk-margin-small-right"></i>
                                    {{ $row->created_at->format('d F, Y') }}
                                </div>
                            </div>
                            <a href="{{url(geturl($row['uri'],$row['page_key']))}}" class="uk-blog-text">
                                <h2 class="f-20 uk-margin-remove two-line">{{ $row->post_title }}</h2>
                            </a>
                            <p class="uk-margin-remove two-line">
                                {{ $row->post_excerpt }}
                            </p>
                            <a href="{{url(geturl($row['uri'],$row['page_key']))}}" class="uk-button uk-primary-btn uk-border-pill uk-margin-top">
                                <div class="uk-flex uk-flex-middle uk-flex-center" style="gap:10px;">
                                    <span class="uk-btn-text">EXPLORE MORE</span>
                                    <span class="uk-btn-icon">
                                        <i class="fa-solid fa-paw"></i>
                                    </span>
                                </div>
                            </a>
                        </div>
                    </div>
                @else
                    @if ($loop->iteration == 2)
                        <div class="block">
                    @endif
                        <div class="uk-bg-light border-rounded uk-margin-bottom">
                            <div class="uk-grid uk-grid-small ">
                                <div class="uk-width-1-3@s">
                                    <a href="{{url(geturl($row['uri'],$row['page_key']))}}" class="uk-width-1-1  uk-inline-clip uk-transition-toggle" tabindex="0">
                                        <img src="{{$row->page_thumbnail ? asset('uploads/medium/'.$row->page_thumbnail) : asset('themes-assets/img/blog2.webp')}}" class="uk-blog-small-img uk-transition-scale-up uk-transition-opaque" loading="lazy" alt="{{ $row->post_title }}">
                                    </a>
                                </div>
                                <div class="uk-width-2-3@s uk-flex uk-flex-column uk-flex-center">
                                    <div class="uk-blog-small-text">
                                        <div class="uk-flex" style="gap:15px;">
                                            @if ($row->associated_title)
                                                <div class="uk-text-uppercase">
                                                    <i class="fa-solid fa-user uk-text-secondary uk-margin-small-right"></i>
                                                    {{ $row->associated_title }}
                                                </div>
                                            @endif
                                            <div class="uk-text-uppercase">
                                                <i class="fa-solid fa-calendar uk-text-secondary uk-margin-small-right"></i>
                                                {{ $row->created_at->format('d F, Y') }}
                                            </div>
                                        </div>
                                        <a href="{{url(geturl($row['uri'],$row['page_key']))}}" class="uk-blog-text">
                                            <h2 class="f-18 uk-margin-remove two-line">{{ $row->post_title }}</h2>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @if($loop->last)
                        </div>
                    @endif
                @endif
            @endforeach
        </div>
        <div class="uk-hidden@s">
            <a href="{{ url('page/' . posttype_url($blog->uri)) }}" class="uk-button uk-primary-btn uk-border-pill uk-margin-top">
                <div class="uk-flex uk-flex-middle uk-flex-center" style="gap:10px;">
                    <span class="uk-btn-text">EXPLORE MORE</span>
                    <span class="uk-btn-icon">
                        <i class="fa-solid fa-paw"></i>
                    </span>
                </div>
            </a>
        </div>
    </div>
</section>
<!--------------------------- blog section end ------------------------------------->

@endsection