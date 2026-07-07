@extends('themes.default.common.master')
@section('meta_keyword', $data->meta_keyword)
@section('meta_description', $data->meta_description)
@section('content')
    @include('themes.default.common.hero-banner')

    <section class="section-white overflow-x-hidden">
        <div class="max-w-7xl mx-auto px-4">
            <div class="grid lg:grid-cols-12 gap-8 items-stretch">
                <!-- Map -->
                <div class="lg:col-span-8">
                    <div id="location" class="overflow-hidden rounded-[40px] shadow-xl h-full" data-aos="fade-right"
                        data-aos-duration="1000">
                        {!! $setting->google_map !!}
                    </div>
                </div>
                <!-- Contact Card -->
                <div class="lg:col-span-4">
                    <div class="bg-white rounded-[40px] shadow-xl p-8 h-full flex flex-col" data-aos="fade-left"
                        data-aos-duration="1000">
                        <h2 class="heading-font text-4xl text-primary">
                            Visit Us
                        </h2>
                        <p class="text-muted mt-3">
                            We'd love to welcome you to our office.
                        </p>
        
                        <div class="space-y-8 mt-10">
                            <div class="flex items-start gap-4" data-aos="fade-up" data-aos-delay="100">
                                <div class="w-14 h-14 rounded-2xl bg-primary/10 flex items-center justify-center">
                                    <i class="ri-map-pin-line text-primary text-2xl"></i>
                                </div>
                                <div>
                                    <h5 class="font-semibold">
                                        Address
                                    </h5>
                                    <p class="text-muted mt-2">
                                        {{ $setting->address }}
                                    </p>
                                </div>
                            </div>
                            <div class="flex items-start gap-4" data-aos="fade-up" data-aos-delay="200">
                                <div class="w-14 h-14 rounded-2xl bg-primary/10 flex items-center justify-center">
                                    <i class="ri-phone-line text-primary text-2xl"></i>
                                </div>
                                <div>
                                    <h5 class="font-semibold">
                                        Phone
                                    </h5>
                                    <a href="tel:{{ $setting->phone }}" class="block mt-2 hover:text-primary transition">
                                        {{ $setting->phone }}
                                    </a>

                                    @if ($setting->phone2)
                                        <a href="tel:{{ $setting->phone2 }}" class="block">
                                            {{ $setting->phone2 }}
                                        </a>
                                    @endif
                                </div>
                            </div>
                            <div class="flex items-start gap-4	" data-aos="fade-up" data-aos-delay="300">
                                <div class="w-14 h-14 rounded-2xl bg-primary/10 flex items-center justify-center">
                                    <i class="ri-mail-line text-primary text-2xl"></i>
                                </div>
                                <div>
                                    <h5 class="font-semibold">
                                        Email
                                    </h5>
                                    <a href="mailto:{{ $setting->email_primary }}"
                                        class="block mt-2 hover:text-primary transition">
                                        {{ $setting->email_primary }}
                                    </a>
                                </div>
                            </div>
                        </div>

                        <div class="border-t mt-10 pt-8">
                            <h5 class="font-semibold mb-4">
                                Follow Us
                            </h5>
                            <div class="flex gap-3">
                                @if ($setting->facebook_link)
                                    <a href="{{ $setting->facebook_link }}" target="_blank" class="social-circle">
                                        <i class="ri-facebook-fill"></i>
                                    </a>
                                @endif

                                @if ($setting->instagram_link)
                                    <a href="{{ $setting->instagram_link }}" target="_blank" class="social-circle">
                                        <i class="ri-instagram-line"></i>
                                    </a>
                                @endif

                                @if ($setting->twitter_link)
                                    <a href="{{ $setting->twitter_link }}" target="_blank" class="social-circle">
                                        <i class="ri-twitter-x-line"></i>
                                    </a>
                                @endif

                                @if ($setting->youtube_link)
                                    <a href="{{ $setting->youtube_link }}" target="_blank" class="social-circle">
                                        <i class="ri-youtube-fill"></i>
                                    </a>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="section-light overflow-x-hidden">
        <div class="max-w-7xl mx-auto px-4">
            <div class="bg-white rounded-[40px] shadow-xl overflow-hidden" data-aos="fade-up" data-aos-duration="1000">
                <div class="grid lg:grid-cols-2">
                    <!-- Directions -->
                    <div class="p-10 lg:p-14">
                        <span class="inline-flex px-4 py-2 rounded-full bg-primary/10 text-primary">
                            Find Us Easily
                        </span>
                        <h2 class="heading-font text-4xl mt-6">
                            Directions To Our Salon
                        </h2>
                        {{-- <div class="mt-10 space-y-8">
                            <div class="flex gap-4" data-aos="fade-right" data-aos-delay="100">
                                <div class="w-10 h-10 rounded-full bg-primary text-white flex items-center justify-center">
                                    1
                                </div>
                                <p>
                                    From North - Wellington Street Car Park
                                </p>
                            </div>
                            <div class="flex gap-4" data-aos="fade-right" data-aos-delay="200">
                                <div class="w-10 h-10 rounded-full bg-primary text-white flex items-center justify-center">
                                    2
                                </div>
                                <p>
                                    From South - Riding Car Park
                                </p>
                            </div>
                            <div class="flex gap-4" data-aos="fade-right" data-aos-delay="300">
                                <div class="w-10 h-10 rounded-full bg-primary text-white flex items-center justify-center">
                                    3
                                </div>
                                <p>
                                    From East - St Michael's Car Park
                                </p>
                            </div>
                        </div> --}}
						{!! $data->content !!}
                    </div>
                    <!-- CTA -->
                    <div class="bg-gradient-to-br from-primary to-primary-light p-10 lg:p-14 flex flex-col justify-center"
                        data-aos="fade-up" data-aos-delay="300">
                        <h2 class="heading-font text-primary text-5xl">
                            Ready To Book?
                        </h2>
                        <p class="mt-6">
                            Contact us today and let our beauty specialists
                            help you look and feel your absolute best.
                        </p>
                        <div class="flex flex-wrap gap-4 mt-10">
                            <a href="./{{ url('page/bookappointment.html') }}" class="btn-primary">
                                <i class="ri-calendar-line"></i>
                                Book Appointment
                            </a>
                            <a href="tel:01604315484" class="btn-outline">
                                <i class="ri-phone-line mx-2"></i>

                                Call Us
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
{{-- 

    <script src="https://www.google.com/recaptcha/api.js?render={{ env('SITE_KEY') }}"></script>
    <script>
        grecaptcha.ready(function() {
            function executeRecaptcha() {
                grecaptcha.execute('<?php echo env('SITE_KEY'); ?>', {
                    action: 'homepage'
                }).then(function(token) {
                    document.getElementById('g_recaptcha_response').value = token;
                });
            }

            // Initial execution of reCAPTCHA
            executeRecaptcha();

            // Refresh the reCAPTCHA token every 100 seconds (less than 2 minutes)
            setInterval(executeRecaptcha, 900000);
        });
    </script> --}}
@endsection
