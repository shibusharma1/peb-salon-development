@extends('themes.default.common.master')
@section('meta_keyword', $data->meta_keyword)
@section('meta_description', $data->meta_description)
@section('content')

    <style>
        .offer-content h3 {
            font-size: 2rem;
            margin-top: 20px;
            margin-bottom: 20px;
        }

        .offer-content p {
            margin-bottom: 20px;
            line-height: 1.8;
        }

        .offer-content ul {
            display: grid;
            grid-template-columns: repeat(2, minmax(0, 1fr));
            gap: 20px;
            margin-top: 30px;
        }

        .offer-content li {
            list-style: none;
            padding-left: 55px;
            position: relative;
            min-height: 48px;
        }

        .offer-content li:before {
            content: "✓";
            position: absolute;
            left: 0;
            top: 0;
            width: 40px;
            height: 40px;
            border-radius: 9999px;
            background: rgba(123, 35, 75, .1);
            display: flex;
            align-items: center;
            justify-content: center;
            color: #7B234B;
            font-weight: bold;
        }
    </style>


    <section class="pt-28 md:pt-36 relative min-h-[250px] md:min-h-[340px] overflow-hidden mb-8">
        <!-- Background Image -->
        <img src="{{ $data->banner ? asset('uploads/medium/' . $data->banner) : asset('themes-assets/img/company.jpg') }}"
            alt="{{ $data->post_type }}" class="absolute inset-0 w-full h-full object-cover">

        <!-- Overlay -->
        <div class="hero-overlay absolute inset-0">
        </div>
        <!-- Decorative Blur -->
        <div class="absolute top-0 right-0 w-[500px] h-[500px] rounded-full bg-white/10 blur-3xl">
        </div>
        <!-- Content -->
        <div class="relative z-10 h-full flex items-center">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 w-full">
                <div class="max-w-3xl">
                    <!-- Badge -->
                    <span
                        class="inline-flex items-center gap-2 px-5 py-2 rounded-full bg-white/10 backdrop-blur-md text-white text-sm uppercase tracking-[2px]">
                        <i class="ri-price-tag-3-line"></i>
                        {{ $data->uid ?? 'Professional Elegance Beauty' }}
                    </span>
                    <!-- Title -->
                    <h1 class="heading-font text-white text-2xl sm:text-3xl md:text-4xl lg:text-5xl mt-6 leading-tight">

                        {{ $data->post_title }}
                    </h1>
                    <!-- Description -->
                    <p class="hidden lg:block text-white/80 text-base lg:text-[17px] mt-6 max-w-2xl leading-8">

                        {{ strip_tags($data->caption) }}
                    </p>
                </div>
            </div>
        </div>
    </section>


    <section id="offer-detail" class="section-light">
        <div class="max-w-[1400px] mx-auto px-4">
            <div class="grid lg:grid-cols-12 gap-12 items-start">
                <!-- ========================================= -->
                <!-- LEFT SIDEBAR -->
                <!-- ========================================= -->
                <aside class="hidden lg:block lg:col-span-3 lg:sticky lg:top-32 self-start h-fit">
                    <!-- Sticky Wrapper -->
                    <div class="space-y-8">
                        <!-- Offer List -->
                        <div class="bg-white rounded-[36px] shadow-xl overflow-hidden">
                            <div class="p-4 border-b">
                                <span class="text-sm uppercase tracking-[3px] text-primary">
                                    Explore
                                </span>
                                <h2 class="heading-font text-2xl mt-2">
                                    Beauty Offers
                                </h2>
                            </div>
                            <div class="p-4">
                                {{-- Related Offers --}}
                                <a href="{{ url(geturl($data->uri, $data->page_key)) }}"
                                    class="flex items-center justify-between px-4 py-3 rounded-2xl bg-primary text-white font-semibold">
                                    <div class="flex items-center gap-4">
                                        <div class="w-11 h-11 rounded-full bg-white/20 flex items-center justify-center">
                                            <i class="ri-gift-line text-white"></i>
                                        </div>
                                        {{ $data->post_title }}
                                    </div>
                                    <i class="ri-arrow-right-line text-xl"></i>
                                </a>

                                @foreach ($related_posts as $offer)
                                    <a href="{{ url(geturl($offer->uri, $offer->page_key)) }}"
                                        class="mt-3 flex items-center justify-between px-5 py-4 rounded-2xl hover:bg-light hover:shadow-xl transition duration-500">
                                        <div class="flex items-center gap-4">
                                            <div
                                                class="w-11 h-11 rounded-full bg-primary/10 flex items-center justify-center">
                                                <i class="ri-heart-line text-primary"></i>
                                            </div>
                                            {{ $offer->post_title }}
                                        </div>
                                        <i class="ri-arrow-right-line"></i>
                                    </a>
                                @endforeach
                            </div>
                        </div>

                    </div>
                </aside>

                <div class="lg:col-span-6">
                    <div class="bg-white rounded-[40px] shadow-xl overflow-hidden">
                        <!-- Image -->
                        <div class="relative">
                            <img src="{{ asset('uploads/original/' . $data->banner) }}" alt="{{ $data->post_title }}"
                                loading="lazy" class="w-full h-[250px] md:h-[300px] object-cover">

                            <div class="absolute top-8 left-8">
                                <span class="px-5 py-2 rounded-full bg-primary text-white">
                                    20% OFF
                                </span>
                            </div>

                            <div class="absolute inset-x-0 bottom-0 h-40 bg-gradient-to-t from-black/60 to-transparent">
                            </div>
                            <div class="absolute bottom-8 left-8 text-white">
                                {{ $data->post_title }}
                            </div>
                        </div>
                        <!-- Content -->
                        <div class="p-8 lg:p-12">
                            <span class="text-primary uppercase tracking-[3px] text-sm font-semibold">
                                Luxury Treatment
                            </span>
                            <h2 class="heading-font text-3xl lg:text-4xl">
                                {{ $data->post_title }}
                            </h2>
                            <p class="text-muted text-base lg:text-[17px] leading-8 mt-4">
                                {{ strip_tags($data->post_excerpt) }}
                                {{-- Indulge yourself with our luxurious Hot Stone Massage,
                                carefully designed to melt away stress, relieve muscle
                                tension and restore complete body relaxation using
                                premium natural oils and heated volcanic stones. --}}
                            </p>
                        </div>


                        <div>
                            <div class="bg-white rounded-[40px] shadow-xl p-8 lg:px-10 lg:pb-10 lg:pt-0">
                                @if ($data->post_content)
                                    <span
                                        class="inline-flex items-center gap-2 py-2 rounded-full bg-primary/10 text-primary font-semibold">
                                        <i class="ri-star-smile-line"></i>
                                        What's Included
                                    </span>
                                    <div class="offer-content">
                                        {!! html_entity_decode($data->post_content) !!}
                                    </div>
                                @endif

                                <!-- Share -->
                                @php
                                    $shareUrl = url()->current();
                                    $shareText = $data->post_title;
                                @endphp

                                <div>
                                    <div class="mt-12">
                                        <span
                                            class="inline-flex items-center gap-2 py-2 rounded-full bg-primary/10 text-primary">
                                            <i class="ri-share-forward-line"></i>
                                            Share
                                        </span>
                                        <h3 class="heading-font text-3xl">
                                            Love This Offer?
                                        </h3>
                                        <p class="text-muted mt-4">
                                            Share this offer with your friends
                                            and family.
                                        </p>
                                        <div class="grid grid-cols-2 gap-3 mt-8">
                                            <a href="https://www.facebook.com/sharer/sharer.php?u={{ urlencode($shareUrl) }}"
                                                class="rounded-2xl bg-[#1877F2] text-white p-4 flex items-center justify-center gap-2">
                                                <i class="ri-facebook-fill"></i>
                                                Facebook
                                            </a>
                                            <a href="https://wa.me/?text={{ urlencode($shareText . ' ' . $shareUrl) }}"
                                                class="rounded-2xl bg-[#25D366] text-white p-4 flex items-center justify-center gap-2">
                                                <i class="ri-whatsapp-fill"></i>
                                                WhatsApp
                                            </a>
                                            <a href="https://twitter.com/intent/tweet?url={{ urlencode($shareUrl) }}&text={{ urlencode($shareText) }}"
                                                class="rounded-2xl bg-black text-white p-4 flex items-center justify-center gap-2">
                                                <i class="ri-twitter-x-line"></i>
                                                X
                                            </a>
                                            <a href="https://www.linkedin.com/sharing/share-offsite/?url={{ urlencode($shareUrl) }}"
                                                class="rounded-2xl bg-[#0A66C2] text-white p-4 flex items-center justify-center gap-2">
                                                <i class="ri-linkedin-fill"></i>
                                                LinkedIn
                                            </a>
                                        </div>
                                        <a href="copyBlogLink()">
                                            <button class="btn-outline w-full justify-center mt-5">
                                                <i class="ri-link"></i>
                                                Copy Offer Link

                                            </button>
                                        </a>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>

                <aside class="lg:col-span-3 lg:sticky lg:top-32 self-start h-fit">
                    <!-- Sticky Wrapper -->
                    <div class="space-y-8">

                        <div class="bg-white rounded-[36px] shadow-xl overflow-hidden">

                            <div class="p-4">

                                <div class="p-4 border-b">
                                    <span class="text-sm uppercase tracking-[3px] text-primary">
                                        Special Offer
                                    </span>
                                    <h2 class="heading-font text-2xl mt-2">
                                        Limited Time Only
                                        {{-- {{ $data->post_title }} --}}
                                    </h2>
                                </div>
                                <div class="p-8">
                                    {{-- <div class="text-center">
                                        <p class="text-muted">
                                            Regular Price
                                        </p>
                                        <h4 class="text-2xl font-bold line-through text-gray-400 mt-2">
                                            £80
                                        </h4>
                                    </div> --}}
                                    <div class="text-center">

                                        <span class="text-sm uppercase tracking-[3px] text-gray-500">
                                            Starting From
                                        </span>

                                        <h2 class="heading-font text-5xl text-primary mt-2">
                                            £{{ number_format($data->price, 2) }}
                                        </h2>

                                    </div>
                                    {{-- <div class="mt-4 rounded-3xl bg-light p-6 text-center">
                                        <span class="text-sm uppercase tracking-[3px] text-muted">
                                            You Save
                                        </span>
                                        <h3 class="text-2xl font-bold text-green-600 mt-2">
                                            £20
                                        </h3>
                                    </div> --}}
                                    <a href="bookappointment.php" class="btn-primary btn-luxury w-full justify-center mt-8">
                                        Book Offer
                                        <i class="ri-arrow-right-line"></i>
                                    </a>

                                </div>

                            </div>
                            <!-- </div> -->
                        </div>

                    </div>
                </aside>

            </div>
        </div>

    </section>

    <section class="section-light" style="padding-top: 0 !important;">
        <div class="max-w-7xl mx-auto px-4">
            <!-- Heading -->
            <div class="text-center max-w-3xl mx-auto">
                <span
                    class="inline-flex items-center gap-2 px-5 py-2 rounded-full bg-primary/10 text-primary font-semibold">
                    <i class="ri-gift-line"></i>
                    More Exclusive Offers
                </span>
                <h2 class="heading-font text-5xl mt-4">
                    You May Also Like
                </h2>
                <p class="mt-6 text-muted text-base lg:text-[17px] leading-8">
                    Discover more beauty treatments and exclusive offers
                    carefully selected to help you look and feel your best.
                </p>
            </div>
            <!-- Cards -->
            <div class="grid md:grid-cols-2 xl:grid-cols-3 gap-8 mt-12">

                @foreach ($related_posts->take(3) as $offer)
                    <a href="{{ url(geturl($offer->uri, $offer->page_key)) }}"
                        class="group bg-white rounded-[36px] overflow-hidden shadow-lg hover:shadow-2xl transition duration-500">

                        <div class="relative overflow-hidden">

                            <img src="{{ asset('uploads/original/' . $offer->banner) }}" alt="{{ $offer->post_title }}"
                                class="w-full h-64 object-cover transition duration-700 group-hover:scale-110">

                            <div class="absolute top-5 left-5">
                                <span class="bg-primary text-white px-4 py-2 rounded-full text-sm">
                                    Special Offer
                                </span>
                            </div>

                        </div>

                        <div class="p-8">

                            <span class="text-primary uppercase tracking-[2px] text-sm font-semibold">
                                Beauty Offer
                            </span>

                            <h3 class="heading-font text-2xl group-hover:text-primary transition">
                                {{ $offer->post_title }}
                            </h3>

                            <p class="text-muted mt-5 leading-7">
                                {{ \Illuminate\Support\Str::limit(strip_tags($offer->post_excerpt), 120) }}
                            </p>

                            <div class="flex items-end justify-between mt-4">

                                <div>
                                    <h4 class="text-primary text-2xl font-bold mt-1">
                                        £{{ number_format($offer->price, 2) }}
                                    </h4>
                                </div>

                                <div
                                    class="w-12 h-12 rounded-full bg-primary text-white flex items-center justify-center group-hover:translate-x-1 transition">

                                    <i class="ri-arrow-right-line text-xl"></i>

                                </div>

                            </div>

                        </div>

                    </a>
                @endforeach

            </div>
        </div>
    </section>


    <!-- Copy Script -->
    <script>
        function copyBlogLink() {
            const url = "{{ url()->current() }}";
            navigator.clipboard.writeText(url).then(() => {
                alert("Blog link copied to clipboard!");
            });
        }
    </script>
@endsection
