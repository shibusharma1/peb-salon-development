@extends('themes.default.common.master')
@section('meta_keyword', $data->meta_keyword)
@section('meta_description', $data->meta_description)
@section('content')
    @include('themes.default.common.hero-banner')

    <section class="section-white">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <!-- Intro -->
            <div class="mx-auto mb-8">

                <span class="inline-flex px-4 rounded-full bg-primary/10 text-primary font-semibold">
                    Price Guide
                </span>

                <h2 class="heading-font text-3xl md:text-4xl lg:text-[42px] px-4 text-dark mt-2">
                    Beauty Treatments & Pricing
                </h2>
                <p class="mt-4 px-4 text-[16px] lg:text-[17px] leading-8 text-muted hidden lg:block">
                    Browse our complete range of beauty, skincare, nail,
                    massage and aesthetic treatments. All prices are
                    transparent and designed to provide exceptional value
                    while maintaining the highest professional standards.
                </p>
            </div>
            <div class="pricing-content">
                {!! $data->content !!}
            </div>

        </div>
    </section>

@endsection
