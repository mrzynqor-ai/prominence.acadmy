@extends('layouts.default')
@push('title', get_phrase('Find A Tutor'))
@push('meta')@endpush
@push('css')
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cairo:wght@400;600;700;800;900&family=Tajawal:wght@400;500;700;800;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="{{ asset('assets/global/plyr/plyr.css') }}">
<style>
@php
    $is_ar = (app()->getLocale() == 'ar') || (session('language') == 'arabic') || (get_current_language_direction() == 'rtl');
@endphp

.tut-page {
    font-family: {{ $is_ar ? "'Cairo', 'Tajawal', sans-serif" : "system-ui, -apple-system, sans-serif" }};
    background: #f8fafc;
    direction: {{ $is_ar ? 'rtl' : 'ltr' }};
    padding-bottom: 5rem;
}

.tut-hero {
    background: linear-gradient(135deg, #060f2e 0%, #0a1f5c 55%, #1756c8 100%);
    color: #fff;
    padding: 2.5rem 0 2.2rem;
    margin-bottom: 2rem;
    box-shadow: 0 12px 36px rgba(10,31,92,.18);
    position: relative;
    overflow: hidden;
}
.tut-hero::before {
    content: '';
    position: absolute;
    top: -100px;
    right: -80px;
    width: 380px;
    height: 380px;
    border-radius: 50%;
    background: radial-gradient(circle, rgba(240,180,41,.16) 0%, transparent 70%);
}
.tut-title {
    font-size: clamp(1.8rem, 3.2vw, 2.5rem);
    font-weight: 900;
    margin-bottom: 8px;
}
.tut-sub {
    font-size: 14.5px;
    color: rgba(255,255,255,.82);
    max-width: 650px;
}

.tut-card {
    background: #fff;
    border-radius: 18px;
    border: 1px solid #e2e8f0;
    box-shadow: 0 10px 30px rgba(10,31,92,.06);
    padding: 22px;
    transition: transform .25s, box-shadow .25s;
    margin-bottom: 20px;
}
.tut-card:hover {
    transform: translateY(-3px);
    box-shadow: 0 16px 36px rgba(10,31,92,.12);
}

.tut-avatar {
    width: 64px;
    height: 64px;
    border-radius: 50%;
    object-fit: cover;
    border: 3px solid #1756c8;
}

.tut-name {
    font-size: 1.25rem;
    font-weight: 800;
    color: #060f2e;
    margin-bottom: 4px;
}
.tut-fee {
    font-size: 1.35rem;
    font-weight: 900;
    color: #1756c8;
}

.tut-badge {
    background: #f0f4f9;
    color: #0a1f5c;
    border: 1px solid #dde6f5;
    padding: 4px 12px;
    border-radius: 20px;
    font-size: 12.5px;
    font-weight: 700;
}

.tut-video-box {
    border-radius: 14px;
    overflow: hidden;
    background: #000;
    aspect-ratio: 16/9;
}

@media (max-width: 991px) {
    .tut-hero { text-align: center; padding: 1.8rem 0; }
    .tut-sub { margin-left: auto; margin-right: auto; }
}
</style>
@endpush

@section('content')
<div class="tut-page">
    <section class="tut-hero">
        <div class="container">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb justify-content-center justify-content-lg-start mb-2" style="font-size:13px;">
                    <li class="breadcrumb-item"><a href="{{ route('home') }}" class="text-white-50 text-decoration-none">{{ get_phrase('Home') }}</a></li>
                    <li class="breadcrumb-item active text-warning fw-bold" aria-current="page">{{ get_phrase('Find A Tutor') }}</li>
                </ol>
            </nav>
            <h1 class="tut-title">{{ get_phrase('Private Tutors & One-on-One Sessions') }}</h1>
            <p class="tut-sub">
                {{ $is_ar ? 'احجز جلسات تعليمية خاصة مع نخبة من المحاضرين والخبراء المعتمدين لتعزيز تحصيلك الأكاديمي والمهني.' : 'Book 1-on-1 private tutoring sessions with top certified academic instructors.' }}
            </p>
        </div>
    </section>

    <div class="container">
        <div class="row">
            {{-- Filter Sidebar --}}
            <div class="col-lg-3 col-12 mb-4 mb-lg-0">
                <div class="bg-white p-4 radius-18 border shadow-sm">
                    @include('frontend.default.tutor_booking.filter')
                </div>
            </div>

            {{-- Main Tutors Listing --}}
            <div class="col-lg-9 col-12">
                {{-- Search Toolbar --}}
                <div class="bg-white p-3 radius-16 border shadow-sm mb-4 d-flex justify-content-between align-items-center flex-wrap gap-3">
                    <span class="fw-bold text-muted fs-7">
                        {{ get_phrase('Showing') }} <strong>{{ count($tutors) }}</strong> {{ get_phrase('of') }} <strong>{{ $tutors->total() }}</strong> {{ get_phrase('Results') }}
                    </span>
                    <form action="{{ route('tutor_list') }}" method="get" class="d-flex align-items-center gap-2">
                        <input type="text" class="form-control form-control-sm px-3 radius-10 border" name="search" placeholder="{{ $is_ar ? 'ابحث باسم المحاضر...' : 'Search tutor by name...' }}" value="{{ request()->input('search') }}">
                        <button type="submit" class="btn btn-primary btn-sm px-3 radius-10 fw-bold">
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </button>
                    </form>
                </div>

                {{-- Tutor Cards --}}
                <div class="row">
                    @forelse ($tutors as $key => $tutor)
                        @php
                            $index = $key + 1;
                            $reviews = App\Models\TutorReview::where('tutor_id', $tutor->id)->get();
                            $averageRating = $reviews->avg('rating') ?? 0;
                            $lowestPrice = App\Models\TutorCanTeach::where('instructor_id', $tutor->id)->min('price') ?? 0;
                        @endphp
                        <div class="col-12">
                            <div class="tut-card">
                                <div class="row g-4 align-items-center">
                                    <div class="col-lg-5 col-12">
                                        <div class="tut-video-box">
                                            <div class="plyr__video-embed lms-player{{ $index }}">
                                                <iframe src="{{ $tutor->video_url ?? 'https://www.youtube.com/watch?v=OHz0xIR8uwI' }}" title="YouTube video player" frameborder="0" allowfullscreen></iframe>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-7 col-12">
                                        <div class="d-flex justify-content-between align-items-start gap-2 flex-wrap mb-2">
                                            <div class="d-flex align-items-center gap-3">
                                                <img src="{{ get_image($tutor->photo) }}" alt="{{ $tutor->name }}" class="tut-avatar">
                                                <div>
                                                    <h3 class="tut-name">{{ $tutor->name }}</h3>
                                                    <div class="d-flex align-items-center gap-1 text-warning fw-bold fs-7">
                                                        <i class="fa-solid fa-star"></i>
                                                        <span>{{ number_format($averageRating, 1) }}</span>
                                                        <span class="text-muted fw-normal">({{ count($reviews) }})</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="text-lg-end">
                                                <span class="text-muted fs-7 d-block fw-semibold">{{ get_phrase('Session fee') }}</span>
                                                <span class="tut-fee">{{ currency($lowestPrice) }}</span>
                                            </div>
                                        </div>

                                        @if($tutor->about)
                                            <p class="text-muted fs-7 mb-3 ellipsis-2">{{ $tutor->about }}</p>
                                        @endif

                                        <div class="d-flex flex-wrap gap-2 mb-3">
                                            <span class="tut-badge"><i class="fa-solid fa-video me-1 text-primary"></i> {{ total_schedule_by_tutor_id($tutor->id) }} {{ get_phrase('Live schedule') }}</span>
                                            <span class="tut-badge"><i class="fa-solid fa-calendar-check me-1 text-success"></i> {{ total_booked_schedule_by_tutor_id($tutor->id) }} {{ get_phrase('Booked') }}</span>
                                            <span class="tut-badge"><i class="fa-solid fa-comments me-1 text-warning"></i> {{ total_review_by_tutor_id($tutor->id) }} {{ get_phrase('Reviews') }}</span>
                                        </div>

                                        <div class="d-flex align-items-center gap-2 flex-wrap pt-2">
                                            <a href="{{ route('tutor_schedule', [$tutor->id, slugify($tutor->name)]) }}" class="btn btn-primary btn-sm px-4 py-2 radius-10 fw-bold shadow-sm">
                                                <i class="fa-solid fa-calendar-days me-1"></i> {{ get_phrase('Book a session') }}
                                            </a>
                                            <a href="{{ route('message.inbox', $tutor->id) }}" class="btn btn-outline-primary btn-sm px-4 py-2 radius-10 fw-bold">
                                                <i class="fa-solid fa-envelope me-1"></i> {{ get_phrase('Send Message') }}
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @empty
                        <div class="col-12 text-center py-5 bg-white radius-18 border">
                            @include('frontend.default.empty')
                        </div>
                    @endforelse
                </div>

                {{-- Pagination --}}
                @if ($tutors->hasPages())
                    <div class="entry-pagination mt-4 d-flex justify-content-center">
                        {{ $tutors->links() }}
                    </div>
                @endif
            </div>
        </div>
    </div>
</div>
@endsection

@push('js')
<script src="{{ asset('assets/global/plyr/plyr.js') }}"></script>
<script>
    "use strict";
    $(document).ready(function() {
        @foreach ($tutors as $key => $tutor)
            new Plyr('.lms-player{{ $key + 1 }}');
        @endforeach
    });
</script>
@endpush
