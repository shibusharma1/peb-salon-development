@extends('themes.default.common.master')
@section('meta_keyword', $data->meta_keyword)
@section('meta_description', $data->meta_description)
@section('content')
    @include('themes.default.common.hero-banner')
    <style>
        .terms-list {
            list-style: none;
            padding: 0;
            margin: 1.5rem 0;
        }

        .terms-list li {
            position: relative;
            padding-left: 2rem;
            margin-bottom: 1rem;
            line-height: 1.8;
            color: var(--text-light);
        }

        .terms-list li::before {
            content: "\eb80";

            font-family: "remixicon";
            position: absolute;
            left: 0;
            top: 2px;
            color: var(--primary);
            font-size: 1.1rem;
        }

        /* .terms-list li::before {
                content: "✓";
                position: absolute;
                left: 0;
                top: 0;
                color: var(--primary);
                font-weight: bold;
                font-size: 1.2rem;
            } */
    </style>
    <section class="section-white" style="padding-top: 0 !important;">
        <div class="max-w-6xl mx-auto px-4">
            <div class="bg-white rounded-[40px] shadow-xl overflow-hidden" data-aos="fade-up" data-aos-duration="1000">
                <div class="p-8 lg:p-14">
                    <!-- General Terms -->
                    <section id="general" class="scroll-mt-24">
                        <div class="flex items-start gap-5">
                            <div class="w-14 h-14 rounded-2xl bg-primary/10 flex items-center justify-center flex-shrink-0"
                                data-aos="zoom-in" data-aos-duration="700">
                                <i class="ri-file-list-3-line text-2xl text-primary"></i>
                            </div>
                            <div data-aos="fade-up" data-aos-delay="100">
                                <span class="uppercase tracking-[3px] text-primary font-semibold text-sm">
                                    Our Terms and Condition
                                </span>
                                <h2 class="heading-font text-4xl mt-3">
                                    General {{ $data->post_type }}
                                </h2>
                                <p class="mt-6 text-muted text-base lg:text-[17px] leading-8">
                                    To ensure every client enjoys the best possible
                                    salon experience, please review our booking
                                    policies before your appointment.
                                </p>
                            </div>
                        </div>
                        <!-- Highlight Box -->
                        <div class="mt-6 ml-16 rounded-[30px] bg-light p-8">
                            <ul class="terms-list space-y-5">
                                {!! html_entity_decode($data->content) !!}
                            </ul>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </section>


@endsection
