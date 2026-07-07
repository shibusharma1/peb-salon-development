<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title', $setting->site_name)</title>
    <meta name="description"
        content="Experience luxury beauty treatments, hair styling, skin care, spa therapies and bridal services at Professional Elegance Beauty Salon.">
    <meta name="keywords" content="@yield('meta_keyword', $setting->meta_keyword)">
    <meta name="author" content="{{ $setting->site_name }}">
    <meta name="description" content="@yield('meta_description', $setting->meta_description)">
    <link rel="icon" href="{{ asset('assets/favicon/favicon.png') }}">
    <!-- Playfair Display -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@500;600;700&display=swap"
        rel="stylesheet">
    <!-- Inter -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <!-- Tailwind -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Swiper -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css">
    <!-- AOS -->
    <link rel="stylesheet" href="https://unpkg.com/aos@2.3.4/dist/aos.css">
    <!-- Remix Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/remixicon/fonts/remixicon.css">
    {{-- select 2 cdn and css --}}
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet">
 
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
    <link rel="stylesheet" href="{{ asset('css/pricing.css') }}">
    <link rel="stylesheet" href="{{ asset('css/gallery.css') }}">
    <link rel="stylesheet" href="{{ asset('css/bookappointment.css') }}">
    <link rel="stylesheet" href="{{ asset('css/call-ring.css') }}">
    <link rel="stylesheet" href="{{ asset('css/toastr.css') }}">

    <style>
        body {
            font-family: 'Inter', sans-serif;
        }

        .heading-font {
            font-family: 'Playfair Display', serif;
        }

        /* Select2 Wrapper */
        .select2-container {
            width: 100% !important;
        }

        /* Selected Box */
        .select2-container--default .select2-selection--single {
            height: 56px;
            border: 1px solid #f0d7e6;
            border-radius: 16px;
            background: #fff;
            display: flex;
            align-items: center;
            padding: 0 16px;
            transition: all .3s ease;
            box-shadow: 0 2px 10px rgba(177, 50, 122, 0.05);
        }

        /* Hover */
        .select2-container--default .select2-selection--single:hover {
            border-color: var(--primary-light);
        }

        /* Focus */
        .select2-container--default.select2-container--open .select2-selection--single {
            border-color: var(--primary);
            box-shadow: 0 0 0 4px rgba(177, 50, 122, .12);
        }

        /* Selected Text */
        .select2-container--default .select2-selection__rendered {
            line-height: 54px !important;
            color: #374151;
            font-size: 15px;
            font-weight: 500;
            padding-left: 0 !important;
        }

        /* Placeholder */
        .select2-container--default .select2-selection__placeholder {
            color: #9ca3af;
        }

        /* Dropdown Arrow */
        .select2-container--default .select2-selection__arrow {
            height: 54px;
            right: 14px;
        }

        .select2-container--default .select2-selection__arrow b {
            border-color: var(--primary) transparent transparent transparent;
        }

        /* Dropdown */
        .select2-dropdown {
            border: 1px solid #f0d7e6;
            border-radius: 16px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(177, 50, 122, .12);
        }

        /* Search Box */
        .select2-search--dropdown {
            padding: 12px;
            background: #fcf2f8;
        }

        .select2-search__field {
            border: 1px solid #f0d7e6 !important;
            border-radius: 12px !important;
            padding: 10px 14px !important;
            outline: none !important;
        }

        .select2-search__field:focus {
            border-color: var(--primary) !important;
            box-shadow: 0 0 0 3px rgba(177, 50, 122, .1);
        }

        /* Options */
        .select2-results__option {
            padding: 12px 16px;
            font-size: 14px;
        }

        /* Hover Option */
        .select2-container--default .select2-results__option--highlighted[aria-selected] {
            background: linear-gradient(135deg,
                    var(--primary),
                    var(--primary-light)) !important;
            color: #fff;
        }

        /* Selected Option */
        .select2-container--default .select2-results__option[aria-selected=true] {
            background: #fcf2f8;
            color: var(--primary-dark);
            font-weight: 600;
        }
    </style>
</head>

<body>
    <header class="fixed top-0 left-0 w-full z-50">
        <div class="header-wrapper backdrop-blur-xl border-b">
            <div class="max-w-7xl mx-auto px-6 lg:px-10">
                <div class="flex items-center justify-between h-24">
                    <!-- Logo -->
                    <a href="{{ url('/') }}" class="flex items-center gap-3">
                        <img src="{{ asset('assets/img/logo-white-2.png') }}" class="h-14"
                            alt="{{ $setting->site_name }}">
                        <!-- <div>
                            <h3 class="heading-font text-3xl text-white">
                                Elegance Beauty
                            </h3>
                            <p class="text-xs tracking-[4px] uppercase text-white/80">
                                Professional Salon
                            </p>
                        </div> -->
                    </a>
                    <!-- Menu -->
                    {{-- <nav class="hidden lg:flex items-center gap-6">
                        <a href="./" class="nav-link active">
                            Home
                        </a>
                        <a href="about.php" class="nav-link">
                            About
                        </a>
                        <a href="services.php" class="nav-link">
                            Services
                        </a>
                        <a href="offers.php" class="nav-link">
                            Offers
                        </a>
                        <a href="pricing.php" class="nav-link">
                            Pricing
                        </a>
                        <a href="gallery.php" class="nav-link">
                            Gallery
                        </a>
                        <a href="contact.php" class="nav-link">
                            Contact
                        </a>
                    </nav> --}}
                    <nav class="hidden lg:flex items-center gap-6">

                        <a href="{{ url('/') }}" class="nav-link {{ request()->is('/') ? 'active' : '' }}">
                            Home
                        </a>

                        @foreach ($navigations as $row)
                            @if ($row->id != 2)
                                @php
                                    $pageUrl = 'page/' . posttype_url($row->uri);
                                @endphp

                                <a href="{{ url($pageUrl) }}"
                                    class="nav-link {{ request()->is($pageUrl) ? 'active' : '' }}">
                                    {{ $row->post_type }}
                                </a>
                            @else
                                {{-- <div class="relative group">

                                    <button class="nav-link flex items-center gap-2">
                                        {{ $row->post_type }}
                                        <i class="ri-arrow-down-s-line"></i>
                                    </button>

                                    <div
                                        class="absolute left-0 top-full mt-2 w-60 bg-white rounded-xl shadow-xl hidden group-hover:block">
                                        @foreach ($services as $service)
                                            <a href="{{ url(geturl($service['uri'], $service['page_key'])) }}"
                                                class="block px-5 py-3 hover:bg-gray-100">

                                                {{ $service->post_title }}

                                            </a>
                                        @endforeach
                                    </div>
                                </div> --}}
                            @endif
                        @endforeach

                    </nav>
                    <!-- CTA -->
                    <div class="hidden lg:block float-animation">
                        <a href="{{ url('page/bookappointment.html') }}"
                            class="px-7 py-3 rounded-full
                                btn-primary
                                header-cta
                                hover:scale-105
                                transition">
                            <i class="ri-calendar-line"></i>
                            Book Appointment
                        </a>
                    </div>
                    <!-- Mobile -->
                    <button id="mobileMenuBtn" class="lg:hidden text-3xl">
                        <i class="ri-menu-3-line text-white"></i>
                    </button>
                </div>
            </div>
        </div>
    </header>
    <!-- Mobile Menu Overlay -->
    <div id="mobileMenu" class="fixed inset-0 bg-black/50 z-[999] hidden lg:hidden">
        <!-- Sidebar -->
        <div id="mobileDrawer"
            class="absolute right-0 top-0 h-full w-[300px] bg-white shadow-2xl transform translate-x-full transition-transform duration-300">
            <!-- Header -->
            <div class="flex items-center justify-between p-6 border-b">
                <h4 class="heading-font text-xl text-primary" data-aos="fade-up">
                    <a href="{{ url('/') }}" class="flex items-center gap-3">
                        <img src="{{ asset('assets/favicon/favicon.png') }}" class="h-14">
                        <div>
                            <h3 class="heading-font text-xl text-primary">
                                Elegance Beauty
                            </h3>
                            <p class="text-xs tracking-[4px] uppercase text-primary/80">
                                Professional Salon
                            </p>
                        </div>
                    </a>
                </h4>
                <button id="closeMenu">
                    <i class="ri-close-line text-3xl"></i>
                </button>
            </div>
            <!-- Links -->
            <nav class="flex flex-col p-6">
                <a href="{{ url('/') }}" class="mobile-nav-link {{ request()->is('/') ? 'active' : '' }}">
                    Home
                </a>

                @foreach ($navigations as $row)
                    @if ($row->id != 2)
                        @php
                            $pageUrl = 'page/' . posttype_url($row->uri);
                        @endphp

                        <a href="{{ url($pageUrl) }}"
                            class="mobile-nav-link {{ request()->is($pageUrl) ? 'active' : '' }}">
                            {{ $row->post_type }}
                        </a>
                    @else
                        {{-- <details class="border-b">

                            <summary class="py-4 cursor-pointer">
                                {{ $row->post_type }}
                            </summary>

                            @foreach ($services as $service)
                                <a href="{{ url(geturl($service['uri'], $service['page_key'])) }}"
                                    class="block py-3 pl-6">

                                    {{ $service->post_title }}

                                </a>
                            @endforeach

                        </details> --}}
                    @endif
                @endforeach
                <div class="float-animation">
                    <a href="{{ url('page/bookappointment.html') }}"
                        class="mt-6 text-center px-6 py-4 rounded-full btn-primary btn-luxury text-white">
                        <i class="ri-calendar-line"></i>
                        Book Appointment
                    </a>
                </div>
            </nav>
        </div>
    </div>
    <main>
