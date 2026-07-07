@extends('themes.default.common.master')
@section('content')
    <section class="relative min-h-[70vh] md:min-h-[85vh] lg:h-screen overflow-hidden">
        <!-- Background Image -->
        <img src="{{ asset('assets/img/background/bg4.jpg') }}"
            class="absolute inset-0 w-full h-full object-cover [transform:scaleX(-1)] z-0">
        <!-- Banner Image -->
        {{-- <img src="./assets/img/main-slider/slide1.jpg" class="absolute inset-0 w-full h-full object-cover opacity-70 z-10"> --}}

        <img src="{{ $banners->picture ? asset('uploads/banners/' . $banners->picture) : asset('assets/img/main-slider/slide1.jpg') }}"
            class="absolute inset-0 w-full h-full object-cover object-[65%_center]">

        <!-- Dark Overlay -->
        <div class="absolute inset-0 bg-black/40 z-20"></div>
        
        <!-- Text -->
        <div class="relative z-30 h-full flex items-center">
            <div class="max-w-7xl mx-auto px-4">
                <div class="max-w-md md:max-w-xl lg:max-w-4xl">
                    <span class="inline-block px-5 py-2 rounded-full bg-white/20 backdrop-blur text-white">
                        {{ $banners->title }}
                    </span>
                    <h1 class="text-white text-3xl md:text-4xl lg:text-5xl mt-4 md:mt-8 leading-tight">
                        <span id="heroText" data-text="{{ strip_tags($banners->caption) }}"></span>
                        <span class="text-primary animate-pulse">|</span>
                    </h1>
                    <p class="text-white/90 text-base lg:text-[17px] mt-5 max-w-xl">
                        
                        {{ strip_tags($banners->content) }}

                    </p>
                </div>
            </div>
        </div>
    </section>

    <section class="section-white">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">

            <!-- about -->
            <div class="grid lg:grid-cols-2 gap-12 lg:gap-20 items-center">
                <div class="relative">
                    <div class="absolute -bottom-8 -left-8 w-52 h-52 bg-primary/10 rounded-full blur-3xl">
                    </div>
                    <div class="absolute top-6 left-6 z-20 bg-primary text-white px-5 py-3 rounded-full shadow-lg">
                        {{ $about->sub_title }}
                    </div>
                    <img src="{{ asset('uploads/original/' . $about->banner) }}" alt="{{ $about->post_title }}"
                        class="relative z-10 rounded-[40px] shadow-[0_30px_70px_rgba(0,0,0,0.18)] w-full h-[560px] object-cover transition duration-500 hover:scale-[1.01]"
                        data-aos="fade-right" data-aos-delay="1000">
                    <div
                        class="absolute bottom-8 right-8 z-20 bg-white/90 backdrop-blur-xl rounded-3xl px-6 py-5 shadow-xl border border-white/50">
                        <h4 class="text-3xl font-bold text-primary">10+</h4>
                        <p class="text-sm text-muted uppercase tracking-wide">
                            Years Experience
                        </p>
                    </div>
                </div>
                <!-- Content -->
                <div data-aos="fade-left" data-aos-delay="100">
                    <span class="inline-flex px-4 py-2 rounded-full bg-primary/10 text-primary font-semibold">
                        about & Beauty Therapist
                    </span>
                    <h2 class="heading-font text-2xl md:text-3xl lg:text-[34px] mt-6 text-dark">
                        {{ $about->post_title }}
                    </h2>
                    <p class="mt-8 text-muted text-[16px] lg:text-[17px] leading-8">
                        {{ $about->post_excerpt }}
                    </p>
                    <div class="grid grid-cols-2 gap-4 mt-8">
                        <div class="founder-stat-box">
                            <h4>2012</h4>
                            <span>Founded Salon</span>
                        </div>

                        <div class="founder-stat-box">
                            <h4>NVQ 3</h4>
                            <span>Certified Expert</span>
                        </div>
                    </div>

                    <div class="about-content mt-6">
                        {!! html_entity_decode(html_entity_decode($about->post_content)) !!}
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="section-light">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <!-- Heading -->
            <div class="text-center max-w-3xl mx-auto">
                <span class="uppercase tracking-[4px] text-primary-dark font-semibold text-sm">
                    Our Expertise
                </span>
                <h2 class="mt-4 text-2xl md:text-3xl lg:text-[34px] font-semibold text-gray-900" data-aos="fade-up">
                    Luxury Beauty Services
                </h2>
                <div class="mt-5">
                    <div class="dlab-separator text-primary style-icon">
                        <i class="flaticon-spa text-primary"></i>
                    </div>
                </div>
                <p class="mt-6 text-gray-600 text-base lg:text-[17px]">
                    Discover premium beauty and wellness treatments tailored
                    to enhance your natural elegance.
                </p>
            </div>
            <!-- Services -->
            <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8 mt-12">
                @foreach ($services as $service)
                    <div
                        class="group bg-white rounded-[32px] overflow-hidden shadow-lg hover:shadow-2xl transition duration-500">

                        <div class="overflow-hidden">
                            <img src="{{ asset('uploads/original/' . $service->page_thumbnail) }}"
                                alt="{{ $service->post_title }}"
                                class="w-full h-56 sm:h-64 md:h-72 lg:h-80 object-cover group-hover:scale-110 transition duration-700">
                        </div>

                        <div class="p-5 md:p-6 lg:p-8">
                            <span class="text-primary text-xs md:text-sm uppercase tracking-[3px]">
                                {{ $service->category->category ?? 'Beauty Treatment' }}
                            </span>

                            <h4 class="mt-3 text-xl lg:text-2xl font-semibold text-gray-900">
                                {{ $service->post_title }}
                            </h4>

                            <p class="mt-4 text-gray-600 leading-7">
                                {{ Str::limit(strip_tags($service->post_excerpt), 120) }}
                            </p>

                            <a href="{{ url(geturl($service['uri'], $service['page_key'])) }}"
                                class="inline-flex items-center gap-2 mt-6 font-semibold text-primary">
                                Explore Service
                                <i class="ri-arrow-right-line"></i>
                            </a>
                        </div>

                    </div>
                @endforeach
            </div>

            <div class="text-center mt-12">
                <a href="{{ url('page/service.html') }}"
                    class="inline-flex items-center gap-3 px-8 py-4 rounded-full btn-primary btn-luxury text-white font-semibold shadow-lg hover:scale-105 transition">
                    View All Services
                    <i class="ri-arrow-right-line"></i>
                </a>
            </div>
        </div>
    </section>

    <section class="section-white overflow-hidden">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">

            <div class="text-center max-w-3xl mx-auto">
                <span class="uppercase tracking-[4px] text-primary font-semibold text-sm">
                    Exclusive Offers
                </span>
                <h2 class="mt-4 text-2xl md:text-3xl lg:text-[34px] font-semibold text-gray-900" data-aos="fade-up">
                    Beauty Promotions You'll Love
                </h2>
            </div>
            <!-- Featured Offer -->
            <div class="featured-offer-slider mt-12 relative">

                <div class="swiper featuredSwiper">

                    <div class="swiper-wrapper">

                        @foreach ($offers->take(3) as $offer)
                            <div class="swiper-slide">
                                <div
                                    class="bg-white rounded-[40px] overflow-hidden shadow-xl h-[280px] sm:h-[350px] lg:h-[520px]">

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
        </div>
    </section>
@endsection
