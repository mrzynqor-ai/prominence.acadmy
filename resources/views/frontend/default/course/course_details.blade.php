@extends('layouts.default')
@push('title', $course_details->title)
@push('meta')@endpush
@push('css')
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cairo:wght@400;600;700;800;900&family=Tajawal:wght@400;500;700;800;900&display=swap" rel="stylesheet">
<style>
@php
    $is_ar = (app()->getLocale() == 'ar') || (session('language') == 'arabic') || (get_current_language_direction() == 'rtl');
@endphp

:root {
    --cd-navy: #060f2e;
    --cd-blue: #1756c8;
    --cd-accent: #2e78f0;
    --cd-gold: #f0b429;
    --cd-bg: #f8fafc;
    --cd-text: #0a1f5c;
    --cd-muted: #5a6a90;
    --cd-border: #e2e8f0;
    --cd-radius: 18px;
    --cd-shadow: 0 12px 36px rgba(10,31,92,.08);
}

.cd-wrapper {
    font-family: {{ $is_ar ? "'Cairo', 'Tajawal', sans-serif" : "system-ui, -apple-system, sans-serif" }};
    background: var(--cd-bg);
    color: var(--cd-text);
    padding-bottom: 5rem;
    direction: {{ $is_ar ? 'rtl' : 'ltr' }};
}

/* ══════════ HERO HEADER ══════════ */
.cd-hero {
    background: linear-gradient(135deg, #060f2e 0%, #0a1f5c 55%, #1756c8 100%);
    position: relative;
    overflow: hidden;
    color: #fff;
    padding: 2.5rem 0 2.2rem;
    box-shadow: 0 14px 40px rgba(10,31,92,.2);
    margin-bottom: 2rem;
}
.cd-hero::before {
    content: '';
    position: absolute;
    top: -120px;
    right: -100px;
    width: 450px;
    height: 450px;
    border-radius: 50%;
    background: radial-gradient(circle, rgba(240,180,41,.15) 0%, transparent 70%);
    pointer-events: none;
}
.cd-hero::after {
    content: '';
    position: absolute;
    bottom: -120px;
    left: -80px;
    width: 400px;
    height: 400px;
    border-radius: 50%;
    background: radial-gradient(circle, rgba(46,120,240,.22) 0%, transparent 70%);
    pointer-events: none;
}

.cd-hero-inner {
    position: relative;
    z-index: 5;
}

.cd-breadcrumb {
    display: flex;
    align-items: center;
    gap: 8px;
    margin-bottom: 14px;
    font-size: 13px;
    flex-wrap: wrap;
}
.cd-breadcrumb a {
    color: rgba(255,255,255,.65);
    text-decoration: none;
    transition: color .2s;
}
.cd-breadcrumb a:hover {
    color: #fff;
}
.cd-breadcrumb .sep {
    color: rgba(255,255,255,.3);
}
.cd-breadcrumb .active {
    color: var(--cd-gold);
    font-weight: 700;
}

.cd-title {
    font-size: clamp(1.6rem, 3.2vw, 2.5rem);
    font-weight: 900;
    color: #fff;
    line-height: 1.3;
    margin-bottom: 12px;
}
.cd-sub {
    font-size: 14.5px;
    color: rgba(255,255,255,.82);
    line-height: 1.7;
    max-width: 780px;
    margin-bottom: 22px;
}

/* Key Stats Bar */
.cd-meta-grid {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    gap: 12px 24px;
    font-size: 13.5px;
}
.cd-meta-item {
    display: inline-flex;
    align-items: center;
    gap: 8px;
    color: rgba(255,255,255,.9);
    text-decoration: none;
}
.cd-meta-item:hover {
    color: #fff;
}
.cd-meta-avatar {
    width: 36px;
    height: 36px;
    border-radius: 50%;
    object-fit: cover;
    border: 2px solid var(--cd-gold);
}
.cd-rating-badge {
    display: inline-flex;
    align-items: center;
    gap: 4px;
    background: rgba(240,180,41,.2);
    border: 1px solid rgba(240,180,41,.4);
    padding: 3px 10px;
    border-radius: 20px;
    color: var(--cd-gold);
    font-weight: 800;
    font-size: 13px;
}

/* ══════════ STICKY PRICING CARD ══════════ */
.cd-sidebar-sticky {
    position: sticky;
    top: 100px;
    z-index: 10;
}

.cd-pricing-card {
    background: #fff;
    border-radius: var(--cd-radius);
    border: 1px solid var(--cd-border);
    box-shadow: 0 16px 40px rgba(10,31,92,.12);
    overflow: hidden;
    transition: transform .3s, box-shadow .3s;
}

.cd-preview-thumb {
    position: relative;
    overflow: hidden;
    border-bottom: 1px solid var(--cd-border);
    background: #000;
    aspect-ratio: 16/9;
}
.cd-preview-thumb img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    opacity: .9;
    transition: transform .4s;
}
.cd-pricing-card:hover .cd-preview-thumb img {
    transform: scale(1.03);
}
.cd-play-btn {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 64px;
    height: 64px;
    background: rgba(23,86,200,.9);
    border: 3px solid #fff;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    color: #fff;
    font-size: 22px;
    box-shadow: 0 0 30px rgba(23,86,200,.6);
    cursor: pointer;
    transition: all .3s;
}
.cd-play-btn:hover {
    transform: translate(-50%, -50%) scale(1.12);
    background: var(--cd-gold);
    color: #060f2e;
}

.cd-card-body {
    padding: 24px;
}
.cd-price-tag {
    display: flex;
    align-items: baseline;
    gap: 12px;
    margin-bottom: 18px;
}
.cd-price-main {
    font-size: 2rem;
    font-weight: 900;
    color: var(--cd-navy);
}
.cd-price-old {
    font-size: 1.2rem;
    color: var(--cd-muted);
    text-decoration: line-through;
}

.cd-btn-primary {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 10px;
    width: 100%;
    padding: 13px 20px;
    border-radius: 12px;
    background: linear-gradient(135deg, var(--cd-blue), #0a1f5c);
    color: #fff;
    font-size: 15px;
    font-weight: 800;
    text-decoration: none;
    border: none;
    box-shadow: 0 8px 20px rgba(23,86,200,.28);
    transition: all .2s;
    cursor: pointer;
}
.cd-btn-primary:hover {
    background: linear-gradient(135deg, #1b62e4, #060f2e);
    color: #fff;
    transform: translateY(-2px);
    box-shadow: 0 12px 25px rgba(23,86,200,.38);
}
.cd-btn-outline {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 10px;
    width: 100%;
    padding: 12px 20px;
    border-radius: 12px;
    background: #fff;
    border: 1.5px solid var(--cd-border);
    color: var(--cd-text);
    font-size: 14px;
    font-weight: 700;
    text-decoration: none;
    transition: all .2s;
    margin-top: 10px;
    cursor: pointer;
}
.cd-btn-outline:hover {
    border-color: var(--cd-blue);
    color: var(--cd-blue);
    background: var(--cd-bg);
}

.cd-features-list {
    list-style: none;
    padding: 0;
    margin: 22px 0 0;
    border-top: 1px solid var(--cd-border);
}
.cd-features-list li {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 12px 0;
    border-bottom: 1px dashed var(--cd-border);
    font-size: 13.5px;
}
.cd-features-list li:last-child {
    border-bottom: none;
}
.cd-feat-label {
    display: flex;
    align-items: center;
    gap: 10px;
    color: var(--cd-muted);
}
.cd-feat-label i {
    color: var(--cd-blue);
    font-size: 15px;
    width: 18px;
    text-align: center;
}
.cd-feat-val {
    font-weight: 700;
    color: var(--cd-text);
}

.cd-share-sec {
    text-align: center;
    margin-top: 18px;
    padding-top: 16px;
    border-top: 1px solid var(--cd-border);
    font-size: 13px;
    color: var(--cd-muted);
}
.cd-share-icons {
    display: flex;
    justify-content: center;
    gap: 10px;
    margin-top: 8px;
}
.cd-share-icon {
    width: 36px;
    height: 36px;
    border-radius: 50%;
    background: var(--cd-bg);
    border: 1px solid var(--cd-border);
    display: flex;
    align-items: center;
    justify-content: center;
    color: var(--cd-text);
    text-decoration: none;
    transition: all .2s;
}
.cd-share-icon:hover {
    background: var(--cd-blue);
    color: #fff;
    border-color: var(--cd-blue);
    transform: translateY(-2px);
}

/* ══════════ TABBED NAVIGATION ══════════ */
.cd-tabs-nav {
    display: flex;
    gap: 8px;
    background: #fff;
    border: 1px solid var(--cd-border);
    padding: 8px;
    border-radius: 16px;
    overflow-x: auto;
    scrollbar-width: thin;
    margin-bottom: 2rem;
    box-shadow: var(--cd-shadow);
}
.cd-tab-btn {
    white-space: nowrap;
    padding: 10px 20px;
    border-radius: 12px;
    font-size: 13.5px;
    font-weight: 700;
    color: var(--cd-muted);
    border: none;
    background: transparent;
    transition: all .2s;
    cursor: pointer;
    display: inline-flex;
    align-items: center;
    gap: 8px;
}
.cd-tab-btn:hover {
    color: var(--cd-blue);
    background: var(--cd-bg);
}
.cd-tab-btn.active {
    background: linear-gradient(135deg, var(--cd-blue), #0a1f5c);
    color: #fff;
    box-shadow: 0 6px 18px rgba(23,86,200,.22);
}

.cd-tab-pane-card {
    background: #fff;
    border: 1px solid var(--cd-border);
    border-radius: var(--cd-radius);
    padding: 28px;
    box-shadow: var(--cd-shadow);
    margin-bottom: 2rem;
}

@media (max-width: 991px) {
    .cd-hero { padding: 2rem 0; text-align: center; }
    .cd-breadcrumb { justify-content: center; }
    .cd-sub { margin-left: auto; margin-right: auto; }
    .cd-meta-grid { justify-content: center; }
    .cd-sidebar-sticky { position: static; margin-bottom: 2.5rem; }
    .cd-tab-pane-card { padding: 20px; }
}
@media (max-width: 767px) {
    .cd-hero { padding: 1.5rem 0; border-radius: 0 0 16px 16px; }
    .cd-title { font-size: 1.5rem; }
    .cd-sub { font-size: 13px; }
    .cd-card-body { padding: 18px; }
    .cd-price-main { font-size: 1.6rem; }
}
</style>
@endpush

@section('content')
@php
    $instructor_review = App\Models\Instructor_review::where('instructor_id', get_course_creator_id($course_details->id)->id ?? 0)
        ->orderBy('id', 'DESC')
        ->get();

    $review = App\Models\Review::where('course_id', $course_details->id)->orderBy('id', 'DESC')->get();

    $total = $review->count();
    $rating = array_sum(array_column($review->toArray(), 'rating'));

    $average_rating = 0;
    if ($total != 0) {
        $average_rating = $rating / $total;
    }
@endphp

<div class="cd-wrapper">
    {{-- ══════════ HERO HEADER ══════════ --}}
    <section class="cd-hero">
        <div class="container">
            <div class="cd-hero-inner">
                <nav class="cd-breadcrumb">
                    <a href="{{ route('home') }}">{{ get_phrase('Home') }}</a>
                    <span class="sep">›</span>
                    <a href="{{ route('courses') }}">{{ $is_ar ? 'المقررات' : 'Courses' }}</a>
                    <span class="sep">›</span>
                    <span class="active">{{ ellipsis($course_details->title, 40) }}</span>
                </nav>

                <h1 class="cd-title">{{ $course_details->title }}</h1>
                <p class="cd-sub">
                    {{ ellipsis($course_details->short_description, 200) }}
                </p>

                <div class="cd-meta-grid">
                    @if ($course_details->creator && $course_details->creator->id > 0)
                        <a class="cd-meta-item" href="{{ route('instructor.details', ['name' => slugify($course_details->creator->name), 'id' => $course_details->creator->id]) }}">
                            <img class="cd-meta-avatar" src="{{ get_image(course_by_instructor($course_details->id)->photo) }}" alt="instructor">
                            <span>{{ course_by_instructor($course_details->id)->name }}</span>
                        </a>
                    @endif

                    <div class="cd-rating-badge">
                        <i class="fa-solid fa-star"></i>
                        <span>{{ number_format($average_rating, 1) }}</span>
                        <span style="opacity:.8; font-weight:500;">({{ $total }})</span>
                    </div>

                    <div class="cd-meta-item">
                        <i class="fa-solid fa-globe text-primary"></i>
                        <span>{{ ucfirst($course_details->language) }}</span>
                    </div>

                    <div class="cd-meta-item">
                        <i class="fa-solid fa-clock text-primary"></i>
                        <span>{{ total_durations($course_details->id) }}</span>
                    </div>

                    <div class="cd-meta-item">
                        <i class="fa-solid fa-graduation-cap text-primary"></i>
                        <span>{{ total_enroll($course_details->id) }} {{ get_phrase('Students') }}</span>
                    </div>

                    <div class="cd-meta-item">
                        <i class="fa-solid fa-certificate text-warning"></i>
                        <span>{{ get_phrase('Certificate Course') }}</span>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div class="container">
        <div class="row">
            {{-- ══════════ MAIN CONTENT (TABS) ══════════ --}}
            <div class="col-lg-8 order-2 order-lg-1">
                <div class="cd-tabs-nav" id="pills-tab" role="tablist">
                    <button class="cd-tab-btn active" id="pills-overview-tab" data-bs-toggle="pill" data-bs-target="#pills-overview" type="button" role="tab">
                        <i class="fa-solid fa-circle-info"></i> {{ get_phrase('Overview') }}
                    </button>
                    <button class="cd-tab-btn" id="pills-course-content-tab" data-bs-toggle="pill" data-bs-target="#pills-course-content" type="button" role="tab">
                        <i class="fa-solid fa-book"></i> {{ get_phrase('Curriculum') }}
                    </button>
                    <button class="cd-tab-btn" id="pills-details-tab" data-bs-toggle="pill" data-bs-target="#pills-details" type="button" role="tab">
                        <i class="fa-solid fa-list-check"></i> {{ get_phrase('Details') }}
                    </button>
                    <button class="cd-tab-btn" id="pills-instructor-tab" data-bs-toggle="pill" data-bs-target="#pills-instructor" type="button" role="tab">
                        <i class="fa-solid fa-user-tie"></i> {{ get_phrase('Instructor') }}
                    </button>
                    <button class="cd-tab-btn" id="pills-reviews-tab" data-bs-toggle="pill" data-bs-target="#pills-reviews" type="button" role="tab">
                        <i class="fa-solid fa-star"></i> {{ get_phrase('Reviews') }}
                    </button>
                    <button class="cd-tab-btn" id="pills-custom-field-tab" data-bs-toggle="pill" data-bs-target="#pills-custom-field" type="button" role="tab">
                        <i class="fa-solid fa-sliders"></i> {{ get_phrase('Additional Info') }}
                    </button>
                </div>

                <div class="tab-content" id="pills-tabContent">
                    <div class="tab-pane fade show active cd-tab-pane-card" id="pills-overview" role="tabpanel">
                        @include('frontend.default.course.overview_area')
                    </div>
                    <div class="tab-pane fade cd-tab-pane-card" id="pills-course-content" role="tabpanel">
                        @include('frontend.default.course.content_area')
                    </div>
                    <div class="tab-pane fade cd-tab-pane-card" id="pills-details" role="tabpanel">
                        @include('frontend.default.course.requirement_outcome_area')
                    </div>
                    <div class="tab-pane fade cd-tab-pane-card" id="pills-instructor" role="tabpanel">
                        @if ($course_details->creator && $course_details->creator->id > 0)
                            @include('frontend.default.course.instructor_area')
                        @endif
                    </div>
                    <div class="tab-pane fade cd-tab-pane-card" id="pills-reviews" role="tabpanel">
                        @include('frontend.default.course.review_area')
                    </div>
                    <div class="tab-pane fade cd-tab-pane-card" id="pills-custom-field" role="tabpanel">
                        @include('frontend.default.course.additional_area')
                    </div>
                </div>
            </div>

            {{-- ══════════ SIDEBAR (PRICING CARD) ══════════ --}}
            <div class="col-lg-4 order-1 order-lg-2">
                <div class="cd-sidebar-sticky">
                    @include('frontend.default.course.pricing_card')
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Preview Video Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content bg-dark border-0 rounded-4 overflow-hidden">
            <div class="modal-body p-0">
                <link rel="stylesheet" href="{{ asset('assets/global/plyr/plyr.css') }}">
                @php
                    $preview_video_type = str_contains($course_details->preview, 'youtu') ? 'youtube' : '';
                    $preview_video_type = str_contains($course_details->preview, 'vimeo') && $preview_video_type == '' ? 'vimeo' : $preview_video_type;
                    $preview_video_type = str_contains($course_details->preview, 'http') && $preview_video_type == '' ? 'html5' : $preview_video_type;
                @endphp

                @if ($preview_video_type == 'youtube')
                    <div class="plyr__video-embed" id="promoPlayer">
                        <iframe height="450" src="{{ $course_details->preview }}?origin=https://plyr.io&amp;iv_load_policy=3&amp;modestbranding=1&amp;playsinline=1&amp;showinfo=0&amp;rel=0&amp;enablejsapi=1" allowfullscreen allowtransparency allow="autoplay"></iframe>
                    </div>
                @elseif ($preview_video_type == 'vimeo')
                    <div class="plyr__video-embed" id="promoPlayer">
                        <iframe height="450" id="promoPlayer" src="https://player.vimeo.com/video/{{ $course_details->preview }}?loop=false&amp;byline=false&amp;portrait=false&amp;title=false&amp;speed=true&amp;transparent=0&amp;gesture=media" allowfullscreen allowtransparency allow="autoplay"></iframe>
                    </div>
                @elseif($preview_video_type == 'html5')
                    <video id="promoPlayer" playsinline controls>
                        <source src="{{ $course_details->preview }}" type="video/mp4">
                    </video>
                @else
                    <video id="promoPlayer" playsinline controls>
                        <source src="{{ asset($course_details->preview) }}" type="video/mp4">
                    </video>
                @endif

                <script src="{{ asset('assets/global/plyr/plyr.js') }}"></script>
                <script>
                    "use strict";
                    const promoPlayer = new Plyr('#promoPlayer');
                </script>
            </div>
        </div>
    </div>
</div>

<script>
    "use strict";
    const myModalElement = document.getElementById('exampleModal');
    if (myModalElement) {
        myModalElement.addEventListener('hidden.bs.modal', event => {
            if (typeof promoPlayer !== 'undefined') promoPlayer.pause();
        });
        myModalElement.addEventListener('shown.bs.modal', event => {
            if (typeof promoPlayer !== 'undefined') promoPlayer.play();
        });
    }
</script>
@endsection

@push('js')
<script>
    "use strict";
    $(document).ready(function() {
        $('#more_description').on('click', function(e) {
            e.preventDefault();
            let ellipsis = $('.description').attr('id');
            $('.description').toggleClass(ellipsis);
            $(this).toggleClass('active');
            if ($(this).hasClass('active')) {
                $(this).text('See less');
            } else {
                $(this).html('See more <i class="fa-solid fa-angle-right me-2"></i>');
            }
        });
    });
</script>
@endpush
