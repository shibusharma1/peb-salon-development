@extends('themes.default.common.master')
@section('meta_keyword', $data->meta_keyword)
@section('meta_description', $data->meta_description)
@section('content')
    <div class="sticky top-24 z-30 bg-white/90 backdrop-blur-xl border-b">
        <div class="max-w-7xl mx-auto px-4">
            <div class="flex justify-center overflow-x-auto gap-4 py-6 whitespace-nowrap scrollbar-hide">
                <button class="gallery-filter active-filter" data-filter="all">
                    All
                </button>
                @foreach ($categories as $category)
                    <button class="gallery-filter" data-filter="{{ Str::slug($category->caption) }}">
                        {{ $category->category }}
                    </button>
                @endforeach
            </div>
        </div>
    </div>

    <section class="section-light">
        <div class="max-w-7xl mx-auto px-4">
            <div id="galleryContainer" class="columns-1 sm:columns-2 lg:columns-3 gap-6 space-y-6">
                @foreach ($galleries as $key => $gallery)
                    <div class="gallery-item break-inside-avoid"
                        data-category="{{ Str::slug($gallery->category->caption) }}">
                        <div class="gallery-card">
                            <img loading="lazy" decoding="async" fetchpriority="low"
                                src="{{ asset('uploads/galleries/' . $gallery->picture) }}" alt="{{ $gallery->caption }}"
                                class="gallery-image">
                            <div class="gallery-overlay">
                                <button class="gallery-open" data-index="{{ $key }}">
                                    <i class="ri-search-eye-line"></i>
                                </button>
                            </div>
                        </div>
                        <h4 class="gallery-title">
                            {{ $gallery->caption }}
                        </h4>
                    </div>
                @endforeach
            </div>
        </div>
    </section>
    <!-- =============================
        Luxury Gallery Lightbox
        ============================== -->
    <div id="lightbox" class="fixed inset-0 z-[9999] hidden">
        <!-- Dark Background -->
        <div id="lightboxBackdrop" class="absolute inset-0 bg-black/90 backdrop-blur-md opacity-0 transition duration-300">
        </div>

        <button id="closeLightbox" class="lightbox-btn absolute top-6 right-6 z-50">
            <i class="ri-close-line"></i>
        </button>

        <button id="prevImage" class="lightbox-btn absolute left-4 lg:left-8 top-1/2 z-50">
            <i class="ri-arrow-left-s-line"></i>
        </button>

        <button id="nextImage" class="lightbox-btn absolute right-4 lg:right-8 top-1/2 z-50">
            <i class="ri-arrow-right-s-line"></i>
        </button>
        <!-- Center -->
        <div
            class="relative
        z-40
        h-full
        flex
        items-center
        justify-center
        px-5">
            <img id="lightboxImage" src=""
                class="max-h-[82vh]
            max-w-full
            rounded-[28px]
            shadow-2xl
            scale-90
            opacity-0
            transition
            duration-500">
        </div>
        <!-- Bottom -->
        <!-- Bottom Controls -->
        <div class="absolute bottom-6 left-1/2 -translate-x-1/2 z-40 w-full max-w-5xl px-6">
            <!-- Counter -->
            <div class="text-center mb-5">
                <span id="imageCounter" class="inline-flex px-5 py-2 rounded-full bg-white/10 backdrop-blur text-white">
                    1 / 12
                </span>
            </div>
            <!-- Thumbnails -->
            <div id="thumbnailContainer" class="flex justify-center gap-3 overflow-x-auto scrollbar-hide pb-2">
            </div>
        </div>
    </div>

@endsection
