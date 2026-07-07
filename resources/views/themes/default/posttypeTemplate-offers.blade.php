@extends('themes.default.common.master')
@section('meta_keyword', $data->meta_keyword)
@section('meta_description', $data->meta_description)
@section('content')
    @include('themes.default.common.hero-banner')

    <section class="section-white overflow-hidden">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <!-- Featured Offer -->
            <div class="featured-offer-slider mt-12 relative">

                <div class="swiper featuredSwiper">

                    <div class="swiper-wrapper">
                        @foreach ($posts->take(3) as $offer)
                            <div class="swiper-slide">
                                <div class="bg-white rounded-[40px] overflow-hidden shadow-xl h-[280px] sm:h-[350px] lg:h-[520px]">

                                    <div class="grid lg:grid-cols-2 h-full">

                                        <div class="order-2 lg:order-1 p-8 lg:p-12 flex flex-col h-full">

                                            <span
                                                class="inline-flex px-4 py-2 rounded-full bg-primary/10 text-primary font-semibold text-sm">
                                                FEATURED OFFER
                                            </span>

                                            <h2
                                                class="mt-4 text-2xl md:text-3xl lg:text-[32px] font-semibold text-gray-900 leading-tight">
                                                {{ $offer->post_title }}
                                            </h2>
                                            <p
                                                class="mt-6 text-base lg:text-[17px] text-gray-600 leading-8 line-clamp-3 min-h-[60px]">
                                                {{ strip_tags($offer->post_excerpt) }}
                                            </p>

                                            @if ($offer->price)
                                                <div class="mt-5 h-[70px]">
                                                    <span class="text-sm text-gray-500 uppercase">
                                                        Starting From
                                                    </span>
                                                    <div class="text-primary text-3xl font-bold">
                                                        £{{ number_format($offer->price, 2) }}
                                                    </div>
                                                </div>
                                            @else
                                                <div class="h-[70px]"></div>
                                            @endif

                                            <div class="mt-auto pt-10 flex flex-wrap gap-4">

                                                <a href="{{ url('page/bookappointment.html?service=' . urlencode($offer->post_title . '|offer')) }}"
                                                    class="inline-flex items-center gap-2 px-8 py-4 rounded-full btn-primary btn-luxury text-white font-semibold">
                                                    Book Now
                                                </a>

                                                <a href="{{ url(geturl($offer->uri, $offer->page_key)) }}"
                                                    class="inline-flex items-center gap-2 px-8 py-4 rounded-full border border-primary text-primary font-semibold">
                                                    Learn More
                                                </a>

                                            </div>

                                        </div>

                                        <div class="order-1 lg:order-2 relative h-full">

                                            <img src="{{ asset('uploads/original/' . $offer->banner) }}"
                                                alt="{{ $offer->post_title }}"
                                                class="featured-slide-image w-full h-[280px] sm:h-[350px] lg:h-[520px] object-cover">

                                        </div>

                                    </div>

                                </div>
                            </div>
                        @endforeach

                    </div>

                </div>

                <!-- Left Arrow -->
                <button class="featured-prev">
                    <i class="ri-arrow-left-s-line"></i>
                </button>

                <!-- Right Arrow -->
                <button class="featured-next">
                    <i class="ri-arrow-right-s-line"></i>
                </button>
                <div class="swiper-pagination mt-4px lg:hidden md:hidden"></div>
            </div>

            @if ($posts->count() > 3)
                <!-- Section Heading -->
                <div class="text-center mt-12">
                    <span
                        class="inline-flex items-center gap-2 px-5 py-2 rounded-full bg-primary/10 text-primary text-sm uppercase tracking-[2px]">
                        <i class="ri-gift-line"></i>
                        More Offers
                    </span>

                    <h2 class="heading-font text-2xl md:text-3xl lg:text-[34px] text-gray-900 mt-5">
                        Our Other Offers
                    </h2>

                    <p class="text-gray-600 mt-4 max-w-2xl mx-auto leading-8">
                        {{ strip_tags($data->content) }}
                    </p>
                </div>

                <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8 mt-12">
                    @foreach ($posts->skip(3) as $offer)
                        <div
                            class="group bg-white rounded-[32px] overflow-hidden shadow-lg hover:shadow-2xl transition duration-500">

                            <div class="overflow-hidden">

                                <img src="{{ asset('uploads/original/' . $offer->banner) }}" alt="{{ $offer->post_title }}"
                                    class="w-full h-72 object-cover group-hover:scale-110 transition duration-700">

                            </div>

                            <div class="p-8">

                                <h4 class="text-2xl font-semibold">
                                    {{ $offer->post_title }}
                                </h4>

                                <p class="mt-4 text-gray-600">
                                    {{ Str::limit(strip_tags($offer->post_excerpt), 120) }}
                                </p>

                                @if ($offer->price)
                                    <div class="mt-4 text-primary font-bold text-xl">
                                        £{{ $offer->price }}
                                    </div>
                                @endif

                                <a href="{{ url(geturl($offer->uri, $offer->page_key)) }}"
                                    class="inline-flex items-center gap-2 mt-6 text-primary font-semibold">
                                    Learn More
                                    <i class="ri-arrow-right-line"></i>
                                </a>

                            </div>

                        </div>
                    @endforeach

                </div>
                @include('themes.default.common.pagination')
            @endif
        </div>
    </section>


@endsection
