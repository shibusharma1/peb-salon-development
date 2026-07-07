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

                    {{ $data->post_type ?? $offer->post_title }}
                </h1>
                <!-- Description -->
                <p class="hidden lg:block text-white/80 text-base lg:text-[17px] mt-6 max-w-2xl leading-8">

                    {{ strip_tags($data->caption) }}
                </p>
            </div>
        </div>
    </div>
</section>
