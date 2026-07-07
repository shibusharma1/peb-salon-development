@extends('themes.default.common.master')

@section('content')
    @php
        $services = App\Models\Posts\PostModel::where('post_type', 11)->orderBy('post_order')->get();
        $offer = App\Models\Posts\PostModel::where('post_type', 13)->latest()->first();
        $pricing = App\Models\Posts\PostModel::where('post_type', 14)
            ->where('post_parent', $data->id)
            ->orderBy('post_order')
            ->get();
    @endphp

    <section class="section-light">
        <div class="max-w-7xl mx-auto px-4">
            <div class="grid lg:grid-cols-12 gap-10">
                <div class="lg:hidden mb-2">
                    <h2 class="heading-font text-3xl text-primary">
                        Beauty Spotlight
                    </h2>

                    <p class="text-light mt-2">
                        Discover our featured treatment and exclusive offers.
                    </p>
                </div>
                <!-- LEFT SIDEBAR -->
                <aside class="lg:col-span-4 order-2 lg:order-1">
                    <div class="bg-white rounded-[32px] shadow-lg p-8 mb-8" data-aos="fade-right">
                        <h3 class="heading-font text-3xl text-primary mb-8">
                            Our Services
                        </h3>
                        <div class="space-y-3">
                            @foreach ($services as $service)
                                <a href="{{ url($service->uri . '.html') }}"
                                    class="group flex items-center justify-between px-5 py-4 rounded-2xl
                                           {{ $service->id == $data->id ? 'bg-primary text-white' : 'hover:bg-light' }}">
                                    {{ $service->post_title }}
                                    <i class="ri-arrow-right-line"></i>
                                </a>
                            @endforeach
                        </div>
                    </div>

                    <!-- now offers here -->
                    <div class="mt-8 overflow-hidden rounded-[32px] shadow-xl bg-white sticky top-28" data-aos="fade-left"
                        data-aos-delay="200">
                        <div class="relative">
                            <img src="{{ asset('uploads/original/' . $offer->page_thumbnail) }}"
                                class="h-64 w-full object-cover transition duration-[2000ms] hover:scale-105"
                                data-aos="zoom-out" data-aos-duration="100">
                            <div class="absolute top-4 left-4 bg-primary text-white px-4 py-2 rounded-full text-sm">
                                Featured Offer
                            </div>
                        </div>
                        <div class="p-8">
                            <h3 class="heading-font text-3xl">
                                {{ $offer->post_title }}
                            </h3>
                            <p class="text-muted mt-4">
                                {{ $offer->post_excerpt }}
                            </p>
                            <a href="{{ url($offer->uri . '.html') }}" class="btn-primary btn-luxury mt-6">
                                Claim Offer
                            </a>
                        </div>
                    </div>
                </aside>
                <!-- RIGHT CONTENT -->
                <div class="lg:col-span-8 order-1 lg:order-2">
                    <div class="bg-white rounded-[40px] overflow-hidden shadow-xl">
                        <img src="{{ asset('uploads/original/' . $data->page_thumbnail) }}"
                            class="w-full h-[280px] sm:h-[320px] lg:h-[380px] object-cover transition duration-[2000ms] hover:scale-105"
                            data-aos="zoom-out" data-aos-duration="1200">
                        <div class="p-6 lg:p-8">
                            <span class="inline-flex px-4 py-2 rounded-full bg-primary/10 text-primary" data-aos="fade-up"
                                data-aos-delay="100">
                                {{-- Premium Beauty Treatment --}}
                                {{ $data->category->category ?? 'Beauty Treatment' }}
                            </span>
                            <h1 class="heading-font px-4 text-4xl" data-aos="fade-up" data-aos-delay="200">
                                {{ $data->post_title }}
                            </h1>
                            <p class="text-muted px-4 mt-4 leading-8" data-aos="fade-up" data-aos-delay="300">
                                {!! $data->post_content !!}

                            </p>
                        </div>
                    </div>
                    <div class="bg-white rounded-[40px] shadow-xl p-10 mt-8">
                        <h3 class="heading-font text-3xl mb-6">
                            Pricing
                        </h3>
                        <div class="space-y-4">


                                @foreach ($pricing as $item)
                                    <div
                                        class="flex justify-between items-center p-5 rounded-2xl bg-light hover:bg-white hover:border hover:border-primary/40 hover:shadow-lg hover:-translate-y-1 transition-all duration-300">
                                        <span>{{ $item->post_title }}</span>
                                        <strong class="text-primary text-xl">
                                            £{{ $item->price }}
                                        </strong>
                                    </div>
                                @endforeach


                        </div>
                        <!-- Add button here -->
                        <div class="mt-6 text-center">
                            <a href="bookappointment.php" class="btn-primary btn-luxury inline-flex items-center gap-2">
                                <i class="ri-calendar-line"></i>
                                Book Appointment Now
                            </a>

                        </div>

                    </div>
                    <div class="bg-white rounded-[40px] shadow-xl p-10 mt-10">
                        <h3 class="heading-font text-3xl">
                            Love This Service?
                        </h3>
                        <p class="text-muted mt-3">
                            Share it with your friends and family.
                        </p>

                        <!-- Share -->
                        @php
                            $shareUrl = url()->current();
                            $shareText = $data->post_title;
                        @endphp

                        <!-- Share Buttons -->
                        <div class="flex flex-wrap items-center gap-3 mt-5">
                            <!-- Facebook -->
                            <a href="https://www.facebook.com/sharer/sharer.php?u={{ urlencode($shareUrl) }}"
                                target="_blank"
                                class="flex items-center gap-2 px-4 py-2 rounded-xl bg-[#1877F2] text-white text-sm hover:opacity-90 transition">
                                <i class="fab fa-facebook-f"></i> Facebook
                            </a>
                            <!-- X (Twitter) -->
                            <a href="https://twitter.com/intent/tweet?url={{ urlencode($shareUrl) }}&text={{ urlencode($shareText) }}"
                                target="_blank"
                                class="flex items-center gap-2 px-4 py-2 rounded-xl bg-black text-white text-sm hover:opacity-90 transition">
                                <i class="fab fa-x-twitter"></i> X
                            </a>
                            <!-- WhatsApp -->
                            <a href="https://wa.me/?text={{ urlencode($shareText . ' ' . $shareUrl) }}" target="_blank"
                                class="flex items-center gap-2 px-4 py-2 rounded-xl bg-green-500 text-white text-sm hover:opacity-90 transition">
                                <i class="fab fa-whatsapp"></i> WhatsApp
                            </a>
                            <!-- LinkedIn -->
                            <a href="https://www.linkedin.com/sharing/share-offsite/?url={{ urlencode($shareUrl) }}"
                                target="_blank"
                                class="flex items-center gap-2 px-4 py-2 rounded-xl bg-[#0A66C2] text-white text-sm hover:opacity-90 transition">
                                <i class="fab fa-linkedin-in"></i> LinkedIn
                            </a>
                            <!-- Copy Link -->
                            <button onclick="copyBlogLink()"
                                class="flex items-center gap-2 px-4 py-2 rounded-xl bg-gray-100 text-gray-700 text-sm hover:bg-gray-200 transition">
                                <i class="fa fa-link"></i> Copy Link
                            </button>
                        </div>
                    </div>
                    <!-- Copy Script -->
                    <script>
                        function copyBlogLink() {
                            const url = "{{ url()->current() }}";
                            navigator.clipboard.writeText(url).then(() => {
                                alert("Blog link copied to clipboard!");
                            });
                        }
                    </script>
                </div>
            </div>
        </div>
        <!-- </div> -->
    </section>
    <section class="section-light" style="padding-top: 0px !important;">
        <div class="max-w-7xl mx-auto px-4">
            <div
                class="rounded-[24px] md:rounded-[40px]
            bg-gradient-to-r
            from-[var(--primary)]
            to-[var(--primary-light)]
            p-6 md:p-8 lg:p-10 text-white">
                <div class="flex flex-col lg:flex-row justify-between items-center gap-8">
                    <div>
                        <h3 class="heading-font text-3xl md:text-4xl">
                            Any Questions?
                        </h3>
                        <p class="mt-3 text-white/80">
                            Need help choosing the right treatment?
                            Our beauty specialists are here to help.
                        </p>
                    </div>
                    <a href="tel:+441234567890"
                        class="group bg-white text-primary px-8 py-4 rounded-full font-semibold inline-flex items-center">
                        <i class="ri-phone-line mr-2 call-icon"></i>
                        Call Us Now
                    </a>
                </div>
            </div>
        </div>
    </section>
@endsection
