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


@endsection