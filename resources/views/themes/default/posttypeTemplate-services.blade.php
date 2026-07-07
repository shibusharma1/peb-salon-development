@extends('themes.default.common.master')
@section('meta_keyword', $data->meta_keyword)
@section('meta_description', $data->meta_description)
@section('content')
    @include('themes.default.common.hero-banner')

    <!-- Services -->

    <section class="section-light">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">

            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                @foreach ($posts as $post)
                    <div
                        class="group bg-white rounded-[32px] overflow-hidden shadow-lg hover:shadow-2xl transition duration-500">

                        <div class="overflow-hidden">
                            <img src="{{ asset('uploads/original/' . $post->page_thumbnail) }}" alt="{{ $post->post_title }}"
                                class="w-full h-56 sm:h-64 md:h-72 lg:h-80 object-cover group-hover:scale-110 transition duration-700">
                        </div>

                        <div class="p-5 md:p-6 lg:p-8">
                            <span class="text-primary text-xs md:text-sm uppercase tracking-[3px]">
                                {{ $post->category->category ?? 'Beauty Treatment' }}
                            </span>

                            <h4 class="mt-3 text-xl lg:text-2xl font-semibold text-gray-900">
                                {{ $post->post_title }}
                            </h4>

                            <p class="mt-4 text-gray-600 leading-7">
                                {{ Str::limit(strip_tags($post->post_excerpt), 120) }}
                            </p>

                            <a href="{{ url(geturl($post['uri'], $post['page_key'])) }}"
                                class="inline-flex items-center gap-2 mt-6 font-semibold text-primary">
                                Explore Service
                                <i class="ri-arrow-right-line"></i>
                            </a>
                        </div>

                    </div>
                @endforeach
            </div>

            @include('themes.default.common.pagination')
        </div>
    </section>
    <!--/ End Services -->

@endsection
