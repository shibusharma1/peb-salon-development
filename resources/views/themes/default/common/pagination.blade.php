@if ($posts->hasPages())
    <div class="flex justify-center mt-16">
        <div class="flex flex-wrap items-center gap-3">

            {{-- Previous --}}
            @if ($posts->onFirstPage())
                <span
                    class="w-12 h-12 rounded-full border border-gray-200 flex items-center justify-center opacity-40 cursor-not-allowed">
                    <i class="ri-arrow-left-s-line"></i>
                </span>
            @else
                <a href="{{ $posts->previousPageUrl() }}"
                    class="w-12 h-12 rounded-full border border-gray-200 flex items-center justify-center hover:bg-primary hover:text-white transition">
                    <i class="ri-arrow-left-s-line"></i>
                </a>
            @endif

            {{-- Page Numbers --}}
            @foreach ($posts->getUrlRange(1, $posts->lastPage()) as $page => $url)
                @if ($page == $posts->currentPage())
                    <span
                        class="w-12 h-12 rounded-full bg-primary text-white flex items-center justify-center font-semibold shadow-lg">
                        {{ $page }}
                    </span>
                @else
                    <a href="{{ $url }}"
                        class="w-12 h-12 rounded-full border border-gray-200 flex items-center justify-center hover:bg-primary hover:text-white transition">
                        {{ $page }}
                    </a>
                @endif
            @endforeach

            {{-- Next --}}
            @if ($posts->hasMorePages())
                <a href="{{ $posts->nextPageUrl() }}"
                    class="w-12 h-12 rounded-full border border-gray-200 flex items-center justify-center hover:bg-primary hover:text-white transition">
                    <i class="ri-arrow-right-s-line"></i>
                </a>
            @else
                <span
                    class="w-12 h-12 rounded-full border border-gray-200 flex items-center justify-center opacity-40 cursor-not-allowed">
                    <i class="ri-arrow-right-s-line"></i>
                </span>
            @endif

        </div>
    </div>
@endif
