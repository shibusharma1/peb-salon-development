@extends('themes.default.common.master')
@section('meta_keyword', $data->meta_keyword)
@section('meta_description', $data->meta_description)
@section('content')
<!-- ========================= PAGE BANNER ========================= -->
<section class="relative h-[380px] lg:h-[460px] overflow-hidden">
   <img
      src="{{ $data->banner ? asset('uploads/medium/'.$data->banner) : asset('themes-assets/img/company.jpg') }}"
      alt="{{ $data->post_type }}"
      class="absolute inset-0 w-full h-full object-cover">
   <div class="absolute inset-0 bg-black/60"></div>
   <div class="relative z-10 h-full flex items-center justify-center">
      <div class="text-center px-6">
         <span
            class="inline-flex px-5 py-2 rounded-full bg-white/10 backdrop-blur-xl text-white uppercase tracking-[4px] text-sm">
         <a href="{{ url('/') }}"
            class="hover:text-white/80 transition">
         Home
         </a>
         <span class="mx-3">/</span>
         {{ $data->post_type }}
         </span>
         <h1
            class="heading-font mt-8 text-4xl lg:text-6xl text-white font-semibold">
            {{ $data->uid }}
         </h1>
      </div>
   </div>
</section>
<!-- ========================= CONTENT ========================= -->
@if($posts)
<section class="py-12 lg:py-16 bg-white overflow-hidden">
   <div class="max-w-7xl mx-auto px-6 lg:px-8">
      @foreach($posts as $post)
      @if($loop->odd)
      <div
         class="grid lg:grid-cols-2 gap-14 xl:gap-20 items-center mb-24">
         <!-- Image -->
         <div data-aos="fade-right">
            <div
               class="overflow-hidden rounded-[36px] shadow-2xl">
               <img
                  src="{{ $post->banner ? asset('uploads/medium/'.$post->banner) : asset('themes-assets/img/commit.jpg') }}"
                  alt="{{ $post->post_title }}"
                  class="w-full h-[320px] md:h-[450px] object-cover hover:scale-105 transition duration-700">
            </div>
         </div>
         <!-- Content -->
         <div data-aos="fade-left">
            <span
               class="uppercase tracking-[4px] text-primary font-semibold text-sm">
            {{ $data->post_type }}
            </span>
            <h2
               class="heading-font mt-4 text-3xl lg:text-4xl font-semibold text-gray-900">
               {{ $post->post_title }}
            </h2>
            <div class="mt-6 w-20 h-1 bg-primary rounded-full"></div>
            <div
               class="mt-8 text-gray-600 leading-8 text-[17px]">
               {!! $post->post_content !!}
            </div>
         </div>
      </div>
      @else
      <div
         class="grid lg:grid-cols-2 gap-14 xl:gap-20 items-center mb-24">
         <!-- Content -->
         <div
            class="order-2 lg:order-1"
            data-aos="fade-right">
            <span
               class="uppercase tracking-[4px] text-primary font-semibold text-sm">
            {{ $data->post_type }}
            </span>
            <h2
               class="heading-font mt-4 text-3xl lg:text-4xl font-semibold text-gray-900">
               {{ $post->post_title }}
            </h2>
            <div class="mt-6 w-20 h-1 bg-primary rounded-full"></div>
            <div
               class="mt-8 text-gray-600 leading-8 text-[17px]">
               {!! $post->post_content !!}
            </div>
         </div>
         <!-- Image -->
         <div
            class="order-1 lg:order-2"
            data-aos="fade-left">
            <div
               class="overflow-hidden rounded-[36px] shadow-2xl">
               <img
                  src="{{ $post->banner ? asset('uploads/medium/'.$post->banner) : asset('themes-assets/img/blog2.webp') }}"
                  alt="{{ $post->post_title }}"
                  class="w-full h-[320px] md:h-[450px] object-cover hover:scale-105 transition duration-700">
            </div>
         </div>
      </div>
      @endif
      @endforeach
   </div>
</section>
@endif
@endsection