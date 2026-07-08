@extends('themes.default.common.master')
@section('meta_keyword', $data->meta_keyword)
@section('meta_description', $data->meta_description)
@section('content')
    @include('themes.default.common.hero-banner')

    <!-- Categories Section -->
    <div class="sticky top-24 z-40 bg-white/95 backdrop-blur-xl border-b border-gray-100 shadow-sm" data-aos="fade-up"
        data-aos-duration="800">
        <div class="max-w-7xl mx-auto px-4">
            <div class="flex lg:justify-center lg:flex-wrap gap-3 overflow-x-auto py-5 whitespace-nowrap scrollbar-hide">
                @foreach ($categories as $category)
                    <a href="#{{ $category->uri }}" class="price-nav">
                        {{ $category->category }}
                    </a>
                @endforeach
            </div>
        </div>
    </div>
    {{-- @foreach ($categories as $category)
        <section id="{{ $category->uri }}" class="Section-light">

            <div class="max-w-5xl mx-auto px-4">

                <div class="bg-white rounded-[40px] shadow-xl overflow-hidden">

                    <div class="pb-10 px-10 pt-0 border-b">

                        <h3 class="heading-font text-3xl lg:text-4xl text-center">
                            {{ $category->category }}
                        </h3>

                        <p class="max-w-2xl mx-auto mt-4 text-light text-center">
                            {{ $category->category_caption }}
                        </p>

                    </div>

                    <div>

                        @foreach ($pricingItems[$category->id] ?? [] as $item)
                            <div
                                class="flex justify-between items-center p-6 border-b hover:bg-[var(--bg-light)] transition">

                                <span>
                                    {{ $item->post_title }}
                                </span>

                                <strong class="text-primary text-xl lg:text-2xl font-bold">
                                    £{{ $item->price }}
                                </strong>

                            </div>
                        @endforeach

                    </div>

                </div>

            </div>

        </section>
    @endforeach --}}

    @foreach ($categories as $category)
        <section id="{{ $category->uri }}" class="Section-light">

            <div class="max-w-5xl mx-auto px-4">

                <div class="bg-white rounded-[40px] shadow-xl overflow-hidden">

                    <div class="pb-10 px-10 border-b">

                        <h3 class="heading-font text-2xl md:text-3xl lg:text-4xl text-center">
                            {{ $category->category }}
                        </h3>
                        <p class="max-w-2xl mx-auto mt-4 text-light text-center" data-aos="fade-up" data-aos-delay="100">
                            {{ $category->category_caption }}
                        </p>
                    </div>

                    <div>
                        @foreach ($services->where('post_category', $category->id) as $service)
                            {{-- <div class="px-6 py-5 bg-gray-50 border-b">

                                <h4 class="font-bold text-lg md:text-xl lg:text-2xl text-primary">
                                    {{ $service->post_title }}
                                </h4>

                            </div> --}}
                            <div class="px-6 py-5 bg-gray-50 border-b flex justify-between items-center">
                                <div>

                                    <h4 class="font-bold text-lg md:text-xl lg:text-2xl text-primary">
                                        {{ $service->post_title }}
                                    </h4>

                                </div>

                                <a href="{{ url(geturl($service->uri, $service->page_key)) }}"
                                    class="text-primary font-medium hover:underline">

                                    View Service <i class="ri-arrow-right-line"></i>
                                </a>
                            </div>
                            @foreach ($pricingItems->where('post_parent', $service->id) as $price)
                                {{-- <div class="flex justify-between items-center p-6 border-b"> --}}
                                <a href="{{ url(geturl($service->uri, $service->page_key)) }}"
                                    class="flex justify-between items-center p-6 border-b hover:bg-[var(--bg-light)] transition">
                                    <span>
                                        {{ $price->post_title }}
                                    </span>

                                    <strong class="text-primary text-lg md:text-xl lg:text-2xl">
                                        £{{ $price->price }}
                                    </strong>
                                </a>
                                {{-- </div> --}}
                            @endforeach
                        @endforeach {{-- services --}}

                    </div>

                </div>

            </div>

        </section>
    @endforeach {{-- categories --}}

    <section style="padding-top: 0 !important;">
        <div class="max-w-6xl mx-auto px-4">
            <div class="relative overflow-hidden rounded-[40px] pb-10 px-10 pt-0 lg:p-16 text-center text-white">
                <!-- Background -->
                <div class="absolute inset-0"
                    style="
                background:linear-gradient(
                135deg,
                var(--primary-dark),
                var(--primary)
                );
                ">
                </div>
                <!-- Decorative Elements -->
                <div class="absolute -top-20 -right-20 w-72 h-72 bg-white/10 rounded-full blur-3xl">
                </div>
                <div class="absolute -bottom-20 -left-20 w-72 h-72 bg-white/10 rounded-full blur-3xl">
                </div>
                <!-- Content -->
                <div class="relative z-10">
                    <span class="inline-flex px-5 py-2 rounded-full bg-white/10 backdrop-blur">
                        Professional Elegance Beauty Salon
                    </span>
                    <h2 class="heading-font text-4xl lg:text-6xl mt-8">
                        Ready To Feel Beautiful?
                    </h2>
                    <p class="max-w-2xl mx-auto mt-6 text-white/80 text-base lg:text-[17px]">
                        Whether you're preparing for a special occasion
                        or simply treating yourself, our beauty experts
                        are here to help.
                    </p>
                    <div class="flex flex-wrap justify-center gap-4 mt-10">
                        <a href="{{ url('page/bookappointment.html') }}"
                            class="inline-flex items-center gap-2 px-8 py-4 rounded-full bg-white text-primary btn-luxury font-semibold hover:scale-105 transition">
                            <i class="ri-calendar-line"></i>
                            Book Appointment
                            <i class="ri-arrow-right-line"></i>
                        </a>

                        <a href="tel:{{ $setting->phone }}"
                            class="group inline-flex items-center gap-2 px-8 py-4 rounded-full border border-white text-white hover:bg-white hover:text-[var(--primary)] transition">
                            <i class="ri-phone-line"></i>
                            Call Us
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
