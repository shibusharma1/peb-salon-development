@extends('themes.default.common.master')
@section('content')
    <section class="relative overflow-hidden py-8 lg:py-10 bg-gradient-to-br from-white via-[#faf8f8] to-[#f7f2f4]">
        <!-- Decorative Background -->
        <div class="absolute inset-0 overflow-hidden pointer-events-none">
            <div class="absolute -top-20 -left-20 w-64 h-64 rounded-full bg-[var(--primary)]/5 blur-3xl"></div>
            <div class="absolute -bottom-24 -right-20 w-72 h-72 rounded-full bg-[var(--accent)]/10 blur-3xl"></div>
        </div>
        <div class="relative max-w-2xl mx-auto px-4 sm:px-6">
            <div
                class="bg-white/90 backdrop-blur-xl rounded-[28px] shadow-[0_20px_60px_rgba(0,0,0,0.08)] border border-white overflow-hidden">
                <!-- Top Accent -->
                <div class="h-1.5 w-full bg-gradient-to-r from-[var(--primary)] via-[var(--accent)] to-[var(--primary)]">
                </div>
                <div class="px-6 sm:px-10 lg:px-12 py-8 sm:py-10 text-center">
                    <!-- Success Icon -->
                    <div
                        class="mx-auto w-20 h-20 sm:w-24 sm:h-24 rounded-full bg-green-100 flex items-center justify-center shadow-md">
                        <div class="w-14 h-14 sm:w-16 sm:h-16 rounded-full bg-green-500 flex items-center justify-center">
                            <i class="ri-check-line text-white text-3xl sm:text-4xl"></i>
                        </div>
                    </div>
                    <!-- Tag -->
                    <span
                        class="inline-flex mt-5 px-4 py-2 rounded-full bg-[var(--primary)]/10 text-[var(--primary)] uppercase tracking-[2px] text-[11px] sm:text-xs font-semibold">
                        Message Delivered Successfully
                    </span>
                    <!-- Heading -->
                    <h1 class="mt-5 text-2xl sm:text-3xl lg:text-4xl heading-font font-semibold text-gray-900">
                        Thank You!
                    </h1>
                    <!-- Greeting -->
                    <p class="mt-4 text-base sm:text-lg text-gray-700">
                        Dear
                        <span class="font-semibold text-[var(--primary)]">
                            {{ $name }}
                        </span>,
                    </p>
                    <!-- Message -->
                    <div class="mt-5 max-w-xl mx-auto text-gray-600 leading-7 text-[15px] sm:text-base">
                        {!! $message !!}
                    </div>
                    <!-- Divider -->
                    <div class="flex items-center justify-center gap-3 my-8">
                        <div class="h-px w-12 sm:w-16 bg-gray-200"></div>
                        <i class="ri-heart-fill text-[var(--primary)] text-base"></i>
                        <div class="h-px w-12 sm:w-16 bg-gray-200"></div>
                    </div>
                    <!-- Footer -->
                    <div>
                        <p class="text-gray-500 text-sm">
                            Warm Regards
                        </p>
                        <h4 class="mt-1 text-lg sm:text-xl heading-font font-semibold text-gray-900">
                            {{ $setting->site_name }}
                        </h4>
                    </div>
                    <!-- Buttons -->
                    <div class="mt-8 flex flex-col sm:flex-row justify-center gap-4">
                        <a href="{{ url('/') }}"
                            class="inline-flex items-center justify-center gap-2 px-6 py-3 rounded-full btn-primary btn-luxury font-semibold transition duration-300 hover:scale-105">
                            <i class="ri-home-5-line"></i>
                            Return to Home
                        </a>
                        <a href="javascript:history.back()"
                            class="inline-flex items-center justify-center gap-2 px-6 py-3 rounded-full border border-gray-300 text-gray-700 font-semibold hover:border-[var(--primary)] hover:text-[var(--primary)] transition duration-300">
                            <i class="ri-arrow-left-line"></i>
                            Go Back
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
@stop
