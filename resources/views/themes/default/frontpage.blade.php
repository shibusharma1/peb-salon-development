@extends('themes.default.common.master')
@section('content')
    <section class="relative h-screen overflow-hidden">
        <!-- Background Image -->
        <img src="{{ asset('assets/img/background/bg4.jpg') }}"
            class="absolute inset-0 w-full h-full object-cover [transform:scaleX(-1)] z-0">
        <!-- Banner Image -->
        {{-- <img src="./assets/img/main-slider/slide1.jpg" class="absolute inset-0 w-full h-full object-cover opacity-70 z-10"> --}}

        <img src="{{ $banners->picture ? asset('uploads/banners/' . $banners->picture) : asset('assets/img/main-slider/slide1.jpg') }}"
            class="absolute inset-0 w-full h-full object-cover">

        <!-- Dark Overlay -->
        <div class="absolute inset-0 bg-black/40 z-20"></div>
        <!-- Text -->
        <div class="relative z-30 h-full flex items-center">
            <div class="max-w-7xl mx-auto px-4">
                <div class="max-w-4xl">
                    <span class="inline-block px-5 py-2 rounded-full bg-white/20 backdrop-blur text-white">
                        {{ $banners->title }}
                    </span>
                    <h1 class="text-white text-3xl md:text-4xl lg:text-5xl mt-8 leading-tight">
                        <span id="heroText" data-text="{{ strip_tags($banners->caption) }}"></span>
                        <span class="text-primary animate-pulse">|</span>
                    </h1>
                    <p class="text-white/90 text-base lg:text-[17px] mt-6 max-w-xl">
                        {{ strip_tags($banners->content) }}
                        
                    </p>
                </div>
            </div>
        </div>
    </section>

    <section class="section-white overflow-hidden">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="grid lg:grid-cols-2 gap-16 xl:gap-24 items-center">
                <!-- Image -->
                <div class="relative">
                    <div class="absolute -bottom-6 -left-6 w-48 h-48 bg-primary/10 rounded-full blur-3xl">
                    </div>
                    <img src="./assets/img/main-slider/slide2.jpg" alt="About Us"
                        class="relative z-10 w-full h-[500px] lg:h-[650px] object-cover rounded-[36px] shadow-[0_30px_70px_rgba(0,0,0,0.18)] hover:scale-[1.01] transition duration-500"
                        data-aos="fade-right" data-aos-duration="1000">
                    <!-- Floating Experience Card -->
                    <div
                        class="absolute bottom-8 right-8 z-20 bg-white/90 backdrop-blur-xl rounded-[28px] shadow-2xl px-8 py-6 border border-white/50">
                        <h4 class="text-3xl lg:text-[32px] font-bold text-primary leading-none">
                            10+
                        </h4>
                        <p class="text-muted text-sm mt-2 tracking-wide uppercase">
                            Years Experience
                        </p>
                    </div>
                </div>
                <!-- Content -->
                <div data-aos="fade-left">
                    <span class="uppercase tracking-[4px] text-primary font-semibold text-sm">
                        Welcome To
                    </span>
                    <h2 class="mt-4 text-2xl md:text-3xl lg:text-[34px] font-semibold text-gray-900 leading-tight"
                        data-aos="fade-up">
                        Professional Elegance Beauty Salon
                    </h2>
                    <!-- Separator -->
                    <div class="mt-6">
                        <div class="dlab-separator text-primary style-icon" style="font-size:50px;color:red;">
                            <i class="flaticon-spa text-primary"></i>
                        </div>
                    </div>
                    <p class="mt-8 text-base lg:text-[17px] text-gray-600 leading-8">
                        We provide the highest quality and effective beauty
                        treatments in our salon to suit your schedule and needs.
                        All information about you and your treatments will be
                        kept safe, confidential and secure.
                    </p>
                    <p class="mt-6 text-base lg:text-[17px] text-gray-600 leading-8">
                        Our qualified beauticians, nail technicians and beauty
                        therapists deliver exceptional service with a focus on
                        professionalism, comfort and customer satisfaction.
                    </p>
                    <!-- Features -->
                    <div class="grid grid-cols-2 gap-4 sm:gap-5 mt-10">

                        <div class="feature-box">
                            <i class="ri-scissors-line"></i>
                            <span>Expert Beauticians</span>
                        </div>

                        <div class="feature-box">
                            <i class="ri-vip-crown-line"></i>
                            <span>Premium Products</span>
                        </div>

                        <div class="feature-box">
                            <i class="ri-heart-pulse-line"></i>
                            <span>Luxury Treatments</span>
                        </div>

                        <div class="feature-box">
                            <i class="ri-user-heart-line"></i>
                            <span>Personalized Care</span>
                        </div>

                    </div>
                    <!-- Button -->
                    <div class="text-center mt-12">
                        <a href="about.php"
                            class="inline-flex items-center gap-3 px-8 py-4 rounded-full btn-primary btn-luxury text-white font-semibold shadow-lg hover:scale-105 transition">
                            Read More
                            <i class="ri-arrow-right-line"></i>
                        </a>
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
                <!-- Card -->
                <div
                    class="group bg-white rounded-[32px] overflow-hidden shadow-lg hover:shadow-2xl transition duration-500">
                    <div class="overflow-hidden">
                        <img src="./assets/img/our-services/pic1.jpg" alt=""
                            class="w-full h-80 object-cover group-hover:scale-110 transition duration-700"
                            data-aos="zoom-in-up" data-aos-delay="100">
                    </div>
                    <div class="p-8">
                        <span class="text-primary text-sm uppercase tracking-[3px]">
                            Beauty Care
                        </span>
                        <h4 class="mt-3 text-2xl font-semibold text-gray-900" data-aos="fade-up">
                            Hair Styling
                        </h4>
                        <p class="mt-4 text-gray-600 leading-7">
                            Professional styling, coloring and hair treatment
                            services designed for your unique look.
                        </p>
                        <a href="service-detail.php" class="inline-flex items-center gap-2 mt-6 font-semibold text-primary">
                            Explore Service
                            <i class="ri-arrow-right-line"></i>
                        </a>
                    </div>
                </div>
                <div
                    class="group bg-white rounded-[32px] overflow-hidden shadow-lg hover:shadow-2xl transition duration-500">
                    <div class="overflow-hidden">
                        <img src="./assets/img/our-services/pic1.jpg" alt=""
                            class="w-full h-80 object-cover group-hover:scale-110 transition duration-700"
                            data-aos="zoom-in-up" data-aos-delay="100">
                    </div>
                    <div class="p-8">
                        <span class="text-primary text-sm uppercase tracking-[3px]">
                            Beauty Care
                        </span>
                        <h4 class="mt-3 text-2xl font-semibold text-gray-900" data-aos="fade-up">
                            Hair Styling
                        </h4>
                        <p class="mt-4 text-gray-600 leading-7">
                            Professional styling, coloring and hair treatment
                            services designed for your unique look.
                        </p>
                        <a href="service-detail.php" class="inline-flex items-center gap-2 mt-6 font-semibold text-primary">
                            Explore Service
                            <i class="ri-arrow-right-line"></i>
                        </a>
                    </div>
                </div>
                <div
                    class="group bg-white rounded-[32px] overflow-hidden shadow-lg hover:shadow-2xl transition duration-500">
                    <div class="overflow-hidden">
                        <img src="./assets/img/our-services/pic1.jpg" alt=""
                            class="w-full h-80 object-cover group-hover:scale-110 transition duration-700"
                            data-aos="zoom-in-up" data-aos-delay="100">
                    </div>
                    <div class="p-8">
                        <span class="text-primary text-sm uppercase tracking-[3px]">
                            Beauty Care
                        </span>
                        <h4 class="mt-3 text-2xl font-semibold text-gray-900" data-aos="fade-up">
                            Hair Styling
                        </h4>
                        <p class="mt-4 text-gray-600 leading-7">
                            Professional styling, coloring and hair treatment
                            services designed for your unique look.
                        </p>
                        <a href="service-detail.php"
                            class="inline-flex items-center gap-2 mt-6 font-semibold text-primary">
                            Explore Service
                            <i class="ri-arrow-right-line"></i>
                        </a>
                    </div>
                </div>
            </div>

            <div class="text-center mt-12">
                <a href="services.php"
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

                        <!-- Slide 1 -->
                        <div class="swiper-slide">
                            <div class="bg-white rounded-[40px] overflow-hidden shadow-xl">
                                <div class="grid lg:grid-cols-2 items-center">

                                    <div class="order-2 lg:order-1 p-8 lg:p-16" data-aos="fade-right"
                                        data-aos-duration="800">

                                        <span
                                            class="inline-flex px-4 py-2 rounded-full bg-[#7B234B]/10 text-primary font-semibold text-sm"
                                            data-aos="fade-up" data-aos-delay="0">
                                            FEATURED OFFER
                                        </span>

                                        <h2 class="mt-6 text-2xl md:text-3xl lg:text-[34px] font-semibold text-gray-900"
                                            data-aos="fade-up" data-aos-delay="100">
                                            Hot Stone Massage
                                        </h2>

                                        <p class="mt-6 text-base lg:text-[17px] text-gray-600 leading-8"
                                            data-aos="fade-up" data-aos-delay="200">
                                            Experience deep relaxation with our luxurious
                                            Hot Stone Massage.
                                        </p>

                                        <div class="hidden sm:grid sm:grid-cols-2 gap-4 mt-8" data-aos="fade-up"
                                            data-aos-delay="300">
                                            <div class="flex items-center gap-3">
                                                <i class="ri-check-line text-primary text-xl"></i>
                                                <span>90 Minute Session</span>
                                            </div>

                                            <div class="flex items-center gap-3" data-aos="fade-up" data-aos-delay="400">
                                                <i class="ri-check-line text-primary text-xl"></i>
                                                <span>Premium Oils</span>
                                            </div>

                                            <div class="flex items-center gap-3">
                                                <i class="ri-check-line text-primary text-xl"></i>
                                                <span>Relaxing Atmosphere</span>
                                            </div>

                                            <div class="flex items-center gap-3" data-aos="fade-up" data-aos-delay="500">
                                                <i class="ri-check-line text-primary text-xl"></i>
                                                <span>Expert Therapists</span>
                                            </div>
                                        </div>

                                        <div class="mt-10 flex flex-wrap gap-4" data-aos="fade-up" data-aos-delay="600">
                                            <a href="{{ url('page/bookappointment.html') }}"
                                                class="inline-flex items-center gap-2 px-8 py-4 rounded-full btn-primary btn-luxury text-white font-semibold">
                                                Book Now
                                                <i class="ri-arrow-right-line"></i>
                                            </a>

                                            <a href="offer-detail.php"
                                                class="inline-flex items-center gap-2 px-8 py-4 rounded-full border border-[#7B234B] text-primary font-semibold">
                                                Learn More
                                            </a>
                                        </div>

                                    </div>

                                    <div class="order-1 lg:order-2 relative h-full" data-aos="fade-left"
                                        data-aos-duration="1000">
                                        <img src="./assets/img/background/bg2.jpg" alt=""
                                            class="featured-slide-image w-full h-[280px] sm:h-[350px] lg:h-full object-cover">
                                    </div>

                                </div>
                            </div>
                        </div>

                        <!-- Slide 2 -->
                        <div class="swiper-slide">
                            <div class="bg-white rounded-[40px] overflow-hidden shadow-xl">
                                <div class="grid lg:grid-cols-2 items-center">

                                    <div class="order-2 lg:order-1 p-8 lg:p-16" data-aos="fade-right"
                                        data-aos-duration="800">

                                        <span
                                            class="inline-flex px-4 py-2 rounded-full bg-[#7B234B]/10 text-primary font-semibold text-sm"
                                            data-aos="fade-up" data-aos-delay="0">
                                            FEATURED OFFER
                                        </span>

                                        <h2 class="mt-6 text-2xl md:text-3xl lg:text-[34px] font-semibold text-gray-900"
                                            data-aos="fade-up" data-aos-delay="100">
                                            Luxury Facial
                                        </h2>

                                        <p class="mt-6 text-base lg:text-[17px] text-gray-600 leading-8"
                                            data-aos="fade-up" data-aos-delay="200">
                                            Rejuvenate your skin with our signature
                                            luxury facial treatment.
                                        </p>
                                        <div class="hidden sm:grid sm:grid-cols-2 gap-4 mt-8" data-aos="fade-up"
                                            data-aos-delay="300">
                                            <div class="flex items-center gap-3">
                                                <i class="ri-check-line text-primary text-xl"></i>
                                                <span>90 Minute Session</span>
                                            </div>

                                            <div class="flex items-center gap-3" data-aos="fade-up" data-aos-delay="400">
                                                <i class="ri-check-line text-primary text-xl"></i>
                                                <span>Premium Oils</span>
                                            </div>

                                            <div class="flex items-center gap-3" data-aos="fade-up" data-aos-delay="500">
                                                <i class="ri-check-line text-primary text-xl"></i>
                                                <span>Relaxing Atmosphere</span>
                                            </div>

                                            <div class="flex items-center gap-3" data-aos="fade-up" data-aos-delay="600">
                                                <i class="ri-check-line text-primary text-xl"></i>
                                                <span>Expert Therapists</span>
                                            </div>
                                        </div>

                                        <div class="mt-10" data-aos="fade-up" data-aos-delay="700">
                                            <a href="{{ url('page/bookappointment.html') }}"
                                                class="inline-flex items-center gap-2 px-8 py-4 rounded-full btn-primary btn-luxury text-white font-semibold">
                                                Book Now
                                            </a>
                                            <a href="offer-detail.php"
                                                class="inline-flex items-center gap-2 px-8 py-4 rounded-full border border-[#7B234B] text-primary font-semibold">
                                                Learn More
                                            </a>
                                        </div>

                                    </div>

                                    <div class="order-1 lg:order-2 relative h-full" data-aos="fade-left"
                                        data-aos-duration="1000">
                                        <img src="./assets/img/background/bg1.jpg" alt=""
                                            class="featured-slide-image w-full h-[280px] sm:h-[350px] lg:h-full object-cover">
                                    </div>

                                </div>
                            </div>
                        </div>

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
