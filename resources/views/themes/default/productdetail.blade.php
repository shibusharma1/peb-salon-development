@extends('themes.default.common.master')
@section('title',$data->title)
@section('content')

<!--------------------------- banner section start ------------------------------------->
<div class="uk-inline uk-detail-banner">
    <img src="{{ $post->banner ? asset('uploads/medium/'.$post->banner) : asset('themes-assets/img/commit/img4.jpg')}}" loading="lazy" alt="{{ $data->title }}">
    <div class="uk-overlay uk-overlay-primary uk-position-cover uk-detail-overlay uk-flex uk-flex-column uk-flex-center">
        <div class=" uk-width-1-1 uk-text-center" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target: h1;  delay: 400; repeat: false;">
            <h1 class="uk-margin-small-top">{{ $data->title }}</h1>
        </div>
    </div>
</div>
<!--------------------------- banner section end ------------------------------------->
<!--------------------------- introduction section start ------------------------------------->
<section class="uk-section">
    <div class="uk-container uk-container-large">
        <div class="uk-grid-small uk-grid" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target:div;  delay: 400; repeat: false;">
            <div class="uk-width-1-3@m  border-rounded uk-flex uk-flex-center uk-flex-middle ">
                <div class="uk-detail-img1 uk-padding uk-margin-bottom uk-inline-clip uk-transition-toggle" tabindex="0">
                    <img class="uk-transition-scale-up uk-transition-opaque" src="{{ $data->thumbnail ? asset('uploads/medium/'.$data->thumbnail) : asset('themes-assets/img/product/1.png')}}" loading="lazy" alt="">
                </div>
            </div>
            <div class="uk-width-2-3@m">
                <ul class="uk-subnav uk-subnav-pill uk-decription uk-margin-remove-bottom" uk-switcher>
                    <li class="uk-margin-remove"><a href="#">description</a></li>
                    <li class="uk-margin-remove"><a href="#">BENEFIT/PURPOSE</a></li>
                    <li class="uk-margin-remove"><a href="#">OTHER INFO</a></li>
                </ul>
                <div class="uk-switcher  uk-decription-content uk-padding-small">
                    <div>
                        <h3 class="uk-margin-remove" style="font-size:22px; font-weight:700;">{{ $data->title }}</h3>
                        <div>
                            <span class="heading">Brand Name:</span>
                            <span>{{ $data->sub_title }}</span>
                        </div>
                        <div>
                            <span class="heading">COMPOSITION:</span>
                            <span>
                                {!! $data->composition !!}
                            </span>
                        </div>
                        <div>
                            <span class="heading">description: </span>
                            <p class="uk-margin-remove uk-text-justify">
                                {!! $data->brief  !!}
                            </p>
                        </div>
                    </div>
                    <div>
                        {!! $data->purpose !!}
                    </div>
                    <div>
                        {!! $data->information !!}
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
<!--------------------------- introduction section end ------------------------------------->
<!--------------------------- realted section start ------------------------------------->
<section class="uk-section uk-bg-light">
    <div class="uk-container uk-container-large">
        <div class="uk-grid" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target: h2,a;  delay: 400; repeat: false;">
            <div class="uk-width-2-3@m uk-text-center uk-text-left@m">
                <h2 class="uk-margin-remove-top uk-text-primary">Similar Products</h2>
            </div>
            <div class="uk-width-1-3@m  uk-text-right uk-visible@m">
                <a href="{{url(geturl($post['uri'],$post['page_key']))}}" class="uk-button uk-primary-btn uk-border-pill ">
                    <div class="uk-flex uk-flex-middle uk-flex-center" style="gap:10px;">
                        <span class="uk-btn-text">EXPLORE MORE</span>
                        <span class="uk-btn-icon">
                            <i class="fa-solid fa-paw"></i>
                        </span>
                    </div>
                </a>
            </div>
        </div>
        <div class="uk-child-width-1-2 uk-child-width-1-3@m uk-child-width-1-4@l uk-grid-small uk-grid" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target: .uk-margin-bottom;  delay: 400; repeat: false;">
            <!-- product card -->
            @foreach ($related as $row)
                <div class="uk-margin-bottom">
                    <a href="{{ route('page.product_detail',$row->uri) }}">
                        <div class="product-img uk-inline-clip uk-transition-toggle" tabindex="0">
                            <img class="uk-transition-scale-up uk-transition-opaque" src="{{$row->thumbnail ? asset('uploads/medium/'.$row->thumbnail) : asset('themes-assets/img/product/2.png')}}" height="250" width="250" loading="lazy" alt="{{ $row->title }}">
                        </div>
                    </a>
                    <div class="product-name uk-padding-small">
                        <span>{{ $row->sub_title }}</span>
                        <a href="{{ route('page.product_detail',$row->uri) }}">
                            <h3 class="uk-margin-remove">{{ $row->title }}</h3>
                        </a>
                    </div>
                </div>
            @endforeach
        </div>
        <div class=" uk-text-center uk-hidden@m " uk-scrollspy=" cls: uk-animation-slide-bottom-small; target: a;  delay: 400; repeat: false;">
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
</section>
<!--------------------------- realted section end ------------------------------------->

@endsection