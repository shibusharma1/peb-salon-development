@extends('themes.default.common.master')
@section('meta_keyword',$data->meta_keyword)
@section('meta_description',$data->meta_description)
@section('content')

<!--------------------------- banner section start ------------------------------------->
<div class="uk-inline uk-inner-banner">
    <img src="{{ $data->banner ? asset('uploads/medium/'.$data->banner) : asset('themes-assets/img/commit/img4.jpg') }}" loading="lazy" alt="{{$data->post_title}}">
    <div class="uk-overlay uk-overlay-primary uk-position-cover uk-banner-overlay uk-flex uk-flex-column uk-flex-center">
        <div class=" uk-width-1-1 uk-text-center" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target: h3,h1;  delay: 400; repeat: false;">
            <h3 class="uk-margin-remove">
                <a href="{{ url('/') }}">HOME</a> / Product
            </h3>
            <h1 class="uk-margin-small-top">{{$data->post_title}}</h1>
        </div>
    </div>
</div>
<!--------------------------- banner section end ------------------------------------->
<!--------------------------- introduction section start ------------------------------------->
<section class="uk-section ">
    <div class="uk-container uk-container-large" >
        <div class="uk-grid" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target: div;  delay: 100; repeat: false;">
            <div class="uk-width-1-4@s uk-margin-bottom">
                <div class="uk-child-width-1-2 uk-grid-collapse uk-grid ">
                    <div style="padding:3px;">
                        <div class="secondary-block border-rounded uk-flex uk-flex-middle uk-flex-center">
                            <img src="{{asset('themes-assets/img/icon/cow.png')}}" height="60" width="60" alt="">
                        </div>
                    </div>
                    <div style="padding:3px;">
                        <div class="primary-block border-rounded uk-flex uk-flex-middle uk-flex-center">
                            <img src="{{asset('themes-assets/img/icon/buffalo.png')}}" height="60" width="60" alt="">
                        </div>
                    </div>
                </div>
                <div class="uk-child-width-1-2 uk-grid-collapse uk-grid">

                    <div style="padding:3px;">
                        <div class="primary-block border-rounded uk-flex uk-flex-middle uk-flex-center">
                            <img src="{{asset('themes-assets/img/icon/hen.png')}}" height="50" width="50" alt="">
                        </div>
                    </div>
                    <div style="padding:3px;">
                        <div class="secondary-block border-rounded uk-flex uk-flex-middle uk-flex-center">
                            <img src="{{asset('themes-assets/img/icon/pig.png')}}" height="60" width="60" alt="">
                        </div>
                    </div>
                </div>
            </div>
            <div class="uk-width-3-4@s">
                <p class="uk-text-justify">
                    {!! $data->post_content !!}
                </p>
            </div>
        </div>
    </div>
</section>
<!--------------------------- introduction section end ------------------------------------->
<!--------------------------- list section start ------------------------------------->
<section class="uk-section uk-bg-light">
    <div class="uk-container uk-container-large">
        <div class=" uk-grid-small uk-grid">
            <div class="uk-width-1-4@m uk-margin-bottom" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target: div;  delay: 100; repeat: false;">
                @include('themes.default.common.product-sidebar')
            </div>
            @if ($associated_posts->count() > 0)
                <div class="uk-width-3-4@m">
                    <div class="uk-child-width-1-2 uk-child-width-1-3@m uk-child-width-1-4@l uk-grid-small uk-grid" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target: .uk-margin-bottom;  delay: 100; repeat: false;">
                        <!-- product card -->
                        @foreach ($associated_posts as $row)
                            <div class="uk-margin-bottom">
                                <a href="{{ route('page.product_detail',$row->uri) }}">
                                    <div class="product-img uk-inline-clip uk-transition-toggle" tabindex="0">
                                        <img class="uk-transition-scale-up uk-transition-opaque" src="{{$row->thumbnail ? asset('uploads/medium/'.$row->thumbnail) : asset('themes-assets/img/product/1.png')}}" height="250" width="250" loading="lazy" alt="">
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
                    {!! $associated_posts->links('themes.default.common.pagination') !!}
                </div>
            @else
                <div class="d-flex justify-content-center align-items-center vh-100">
                    <h1 class="display-4">Coming Soon...</h1>
                </div>
            @endif
        </div>
    </div>
</section>
<!--------------------------- list section end ------------------------------------->

@endsection