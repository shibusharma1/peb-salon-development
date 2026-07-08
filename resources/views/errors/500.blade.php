@extends('themes.default.common.master')
@section('post_title', '500 - Internal Server Error')

@section('content')

<section class="relative py-12 bg-gradient-to-b from-white via-[#fff7fb] to-white overflow-hidden">
    <div class="max-w-7xl mx-auto px-6">
        <div class="max-w-3xl mx-auto text-center">
            <!-- Badge -->
            <span
                class="inline-flex items-center gap-2 px-5 py-2 rounded-full bg-primary/10 text-primary text-sm uppercase tracking-[3px] font-medium">
                <i class="ri-error-warning-line"></i>
                Internal Server Error
            </span>
            <!-- Error Code -->
            <h1 class="heading-font text-[120px] md:text-[170px] leading-none text-primary">
                500
            </h1>

            <!-- Heading -->
            <h2 class="heading-font text-4xl text-gray-900 mt-2">
                Something went wrong.
            </h2>
            <!-- Description -->
            <p class="text-lg text-gray-500 leading-9 mt-6 max-w-2xl mx-auto">
                We're sorry, but something unexpected happened on our server.
                Please try again in a few moments. If the problem persists,
                feel free to contact our support team.
            </p>
            <!-- Buttons -->
            <div class="flex flex-wrap justify-center gap-5 mt-12">
                <a href="{{ url('/') }}"
                    class="inline-flex items-center gap-2 bg-primary hover:bg-primary-dark text-white px-8 py-4 rounded-full font-semibold transition duration-300 shadow-lg hover:shadow-xl">
                    <i class="ri-home-5-line"></i>
                    Back to Home
                </a>
                <button onclick="location.reload()"
                    class="inline-flex items-center gap-2 border border-primary text-primary hover:bg-primary hover:text-white px-8 py-4 rounded-full font-semibold transition duration-300">
                    <i class="ri-refresh-line"></i>
                    Try Again
                </button>
            </div>
        </div>
    </div>

    <!-- Decorative Blur -->
    <div class="absolute -top-20 -left-20 w-72 h-72 bg-primary/10 rounded-full blur-3xl"></div>
    <div class="absolute bottom-0 -right-20 w-80 h-80 bg-pink-200/30 rounded-full blur-3xl"></div>
</section>

@endsection