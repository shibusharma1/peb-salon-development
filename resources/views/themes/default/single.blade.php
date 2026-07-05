@extends('themes.default.common.master')
@section('title',$data->post_title)
@section('meta_keyword',$data->meta_keyword)
@section('meta_description',$data->meta_description)
@section('thumbnail',$data->page_thumbnail)
@section('content')

<!--------------------------- banner section start ------------------------------------->
<div class="uk-inline uk-detail-banner"> 
    <img src="{{ $data->banner ? asset('uploads/medium/'.$data->banner) : asset('themes-assets/img/commit/img4.jpg') }}" loading="lazy" alt="{{$data->post_title}}">
    <div class="uk-overlay uk-overlay-primary uk-position-cover uk-detail-overlay uk-flex uk-flex-column uk-flex-center">
        <div class=" uk-width-1-1 uk-text-center" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target:  h1;  delay: 400; repeat: false;">
            <h1 class="uk-margin-small-top">{{$data->post_title}}</h1>
        </div>
    </div>
</div>
<!--------------------------- banner section end ------------------------------------->
<!--------------------------- introduction section start ------------------------------------->
<section class="uk-section">
    <div class="uk-container uk-container-large">
        <div class=" uk-grid" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target: .block;  delay: 400; repeat: false;">
            <div class="uk-width-2-3@m block">
                <div uk-lightbox>
                    <a class="uk-inline uk-blog-detail-img uk-inline-clip uk-transition-toggle" tabindex="0" href="{{asset('themes-assets/img/blog1.png')}}">
                        <img src="{{$data->banner ? asset('uploads/medium/'.$data->banner) : asset('themes-assets/img/blog1.png')}}" class=" uk-transition-scale-up uk-transition-opaque" loading="lazy" width="1800" height="1200" alt="{{$data->post_title}}">
                    </a>
                </div>
                <div>
                    <div class="uk-flex uk-margin-top" style="gap:15px;">
                        <div class="uk-text-uppercase">
                            <i class="fa-solid fa-user uk-text-secondary uk-margin-small-right"></i>
                            {{$data->associated_title}}
                        </div>
                        <div class="uk-text-uppercase">
                            <i class="fa-solid fa-calendar uk-text-secondary uk-margin-small-right"></i>
                            {{ $data->created_at->format('d F, Y') }}
                        </div>
                    </div>
                    <hr>
                    <p class="uk-text-justify">
                        {!! $data->post_content  !!}
                    </p>
                </div>
                <div class="uk-margin-bottom">
                    <h4 class="f-20 uk-text-bold">SHARE THIS:</h4>
                    <div class="uk-footer-icon">
                        <a href="" class="uk-icon-button " uk-icon="facebook"></a>
                        <a href="" class="uk-icon-button " uk-icon="instagram"></a>
                        <a href="" class="uk-icon-button " uk-icon="x"></a>
                        <a href="" class="uk-icon-button" uk-icon="youtube"></a>
                    </div>
                </div>
            </div>
    
        </div>
    </div>
</section>
<!--------------------------- introduction section end ------------------------------------->

@endsection