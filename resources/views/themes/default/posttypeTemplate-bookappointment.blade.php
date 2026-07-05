@extends('themes.default.common.master')
@section('meta_keyword', $data->meta_keyword)
@section('meta_description', $data->meta_description)
@section('content')
    @include('themes.default.common.hero-banner')

    <section id="booking-form" class="section-light" style="padding-top:1rem !important;">
        <div class="max-w-7xl mx-auto px-4">
            <div class="grid lg:grid-cols-12 gap-10 items-start">

                <div class="lg:col-span-8">
                    <div class="bg-white rounded-[36px] shadow-xl p-8 lg:p-12" data-aos="fade-right" data-aos-duration="1000">
                        <span class="inline-flex px-5 py-2 rounded-full bg-primary/10 text-primary">
                            Appointment Form
                        </span>
                        <h2 class="heading-font text-5xl mt-6">
                            Reserve Your Visit
                        </h2>
                        <p class="text-light mt-4">
                            {{-- Complete the form below and we'll confirm your appointment shortly. --}}
                            {!! $data->content !!}
                        </p>
                        @if (session('error'))
                            <div id="flash-message"
                                class="my-4 rounded-2xl border border-red-200 bg-red-50 px-5 py-4 text-red-700">
                                @if (is_array(session('message')))
                                    <ul class="list-disc pl-5">
                                        @foreach (session('message') as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                @else
                                    {{ session('message') }}
                                @endif
                            </div>
                        @endif

                        <form action="{{ route('sendmail_appointment') }}" method="POST" class="mt-8">
                            @csrf
                            <input type="hidden" id="g_recaptcha_response" name="g_recaptcha_response">
                            <div class="grid md:grid-cols-2 gap-6" data-aos="fade-up" data-aos-delay="100">
                                <div>
                                    <label class="booking-label">
                                        Full Name
                                    </label>
                                    <input type="text" name="name" class="booking-input" placeholder="Enter your name"
                                        required>

                                </div>
                                <div>
                                    <label class="booking-label">
                                        Email Address
                                    </label>
                                    <input type="email" name="email" class="booking-input" required>

                                </div>
                                <div>
                                    <label class="booking-label">
                                        Phone Number
                                    </label>
                                    <input type="tel" name="phone" class="booking-input" required>

                                </div>
                                <div>
                                    <label class="booking-label">
                                        Select Service
                                    </label>
                                    <select name="service" class="booking-input" required>
                                        <option>Select Service</option>
                                        <option>Threading</option>
                                        <option>Waxing</option>
                                        <option>Facial</option>
                                        <option>Nails</option>
                                        <option>Massage</option>
                                        @foreach ($services as $service)
                                            <option value="{{ $service->title ?? '' }}">
                                                {{ $service->title ?? '' }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>
                                <div>
                                    <label class="booking-label">
                                        Preferred Date
                                    </label>
                                    <input type="date" id="appointment_date" name="appointment_date"
                                        class="booking-input" min="{{ now()->format('Y-m-d') }}" required>
                                </div>
                                <div>
                                    <label class="booking-label">
                                        Preferred Time
                                    </label>
                                    <input type="time" id="appointment_time" name="appointment_time"
                                        class="booking-input">
                                </div>
                            </div>
                            <div class="mt-6" data-aos="fade-up" data-aos-delay="200">
                                <label class="booking-label">
                                    Additional Notes
                                </label>
                                <textarea name="message" rows="6" class="booking-input resize-none"
                                    placeholder="Tell us anything we should know..."></textarea>
                            </div>
                            <!-- Terms & Conditions Checkbox -->
                            <div class="mt-6 flex items-start gap-3" data-aos="fade-up" data-aos-delay="250">
                                <input id="terms" type="checkbox" required
                                    class="mt-1 h-5 w-5 accent-[var(--primary)] cursor-pointer">

                                <label for="terms" class="text-sm text-light leading-6 cursor-pointer">
                                    I accept the
                                    <a href="./terms-and-conditions.php" class="text-primary font-medium hover:underline">
                                        Terms & Conditions
                                    </a>
                                </label>
                            </div>
                            <button class="btn-primary btn-luxury mt-6" data-aos="zoom-in" data-aos-delay="300">
                                <i class="ri-calendar-check-line"></i>
                                Book Appointment
                            </button>
                        </form>
                    </div>
                </div>
                <!-- ===================== -->
                <!-- Right Sidebar -->
                <!-- ===================== -->
                <div class="lg:col-span-4">
                    <div class="sticky top-32 space-y-6" data-aos="fade-left" data-aos-duration="1000">
                        <!-- Contact -->
                        <div class="booking-sidebar" data-aos="fade-left" data-aos-delay="100">
                            <h3 class="heading-font text-3xl">
                                Need Help?
                            </h3>
                            <div class="space-y-5 mt-8">
                                <div class="sidebar-item" data-aos="fade-up" data-aos-delay="150">
                                    <i class="ri-phone-line"></i>
                                    <div>
                                        <strong>Call Us</strong>
                                        <p>
                                            <a href="tel:{{ $setting->phone }}">
                                                {{ $setting->phone }}
                                            </a>
                                            <br>
                                            @if ($setting->phone2)
                                                <a href="tel:{{ $setting->phone2 }}">
                                                    {{ $setting->phone2 }}
                                                </a>
                                            @endif
                                        </p>
                                    </div>
                                </div>
                                <div class="sidebar-item" data-aos="fade-up" data-aos-delay="200">
                                    <i class="ri-map-pin-line"></i>
                                    <div>
                                        <strong>Visit Us</strong>
                                        <p>
                                            {!! nl2br(e($setting->address)) !!}
                                        </p>
                                    </div>
                                </div>
                                <div class="sidebar-item" data-aos="fade-up" data-aos-delay="250">
                                    <i class="ri-time-line"></i>
                                    <div>
                                        <strong>Opening Hours</strong>
                                        <p>
                                            Mon - Sat<br>
                                            9:00 AM - 7:00 PM
                                        </p>
                                    </div>
                                </div>
                                <div class="sidebar-item" data-aos="fade-up" data-aos-delay="300">
                                    <i class="ri-mail-line"></i>
                                    <div>
                                        <strong>Email</strong>
                                        <p>
                                            <a href="mailto:{{ $setting->email_primary }}">
                                                {{ $setting->email_primary }}
                                            </a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Social -->
                        <div class="booking-sidebar" data-aos="fade-left" data-aos-delay="200">
                            <h4 class="font-semibold text-xl">
                                Follow Us
                            </h4>
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
                                @if ($setting->tiktok_link)
                                    <a href="{{ $setting->tiktok_link }}" target="_blank" class="social-circle">
                                        <i class="ri-tiktok-fill"></i>
                                    </a>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

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
    </script>
    <script>
        setTimeout(() => {
            const flash = document.getElementById('flash-message');
            if (flash) {
                flash.style.transition = '0.5s';
                flash.style.opacity = '0';
                setTimeout(() => flash.remove(), 500);
            }
        }, 5000);
    </script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const dateInput = document.getElementById('appointment_date');
            const timeInput = document.getElementById('appointment_time');
            function updateMinTime() {
                const today = new Date().toISOString().split('T')[0];
                if (dateInput.value === today) {
                    const now = new Date();
                    let hours = String(now.getHours()).padStart(2, '0');
                    let minutes = String(now.getMinutes()).padStart(2, '0');
                    timeInput.min = `${hours}:${minutes}`;
                } else {
                    timeInput.removeAttribute('min');
                }
            }
            dateInput.addEventListener('change', updateMinTime);
            updateMinTime();
        });
    </script>
@endsection
