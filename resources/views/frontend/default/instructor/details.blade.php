@extends('layouts.default')
@php
    $is_ar = (app()->getLocale() == 'ar') || (session('language') == 'arabic') || (get_current_language_direction() == 'rtl');
    $instructor_name = $instructor_details->name ?? 'Instructor';
@endphp
@push('title', $instructor_name . ' - ' . ($is_ar ? 'دبلومات ومقررات المحاضر' : 'Instructor Profile & Programs'))
@push('meta')@endpush
@push('css')
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cairo:wght@400;600;700;800;900&family=Tajawal:wght@400;500;700;800;900&display=swap" rel="stylesheet">
<style>
:root {
    --inst-navy: #060f2e;
    --inst-blue: #1756c8;
    --inst-gold: #f0b429;
    --inst-accent: #2e78f0;
    --inst-bg: #f7f9fe;
    --inst-card-bg: #ffffff;
    --inst-text: #0a1f5c;
    --inst-muted: #5a6a90;
    --inst-border: #dde6f5;
    --inst-radius: 20px;
    --inst-shadow: 0 12px 40px rgba(10,31,92,.08);
}

.inst-page {
    font-family: {{ $is_ar ? "'Cairo', 'Tajawal', sans-serif" : "system-ui, -apple-system, sans-serif" }};
    background: var(--inst-bg);
    color: var(--inst-text);
    padding-bottom: 5rem;
    direction: {{ $is_ar ? 'rtl' : 'ltr' }};
}

/* ══════════ BREADCRUMB ══════════ */
.inst-breadcrumb {
    background: #fff;
    border-bottom: 1px solid var(--inst-border);
    padding: 14px 0;
    margin-bottom: 2rem;
}
.inst-breadcrumb .breadcrumb {
    margin: 0;
    font-size: 13px;
}
.inst-breadcrumb a {
    color: var(--inst-muted);
    text-decoration: none;
}
.inst-breadcrumb .active {
    color: var(--inst-blue);
    font-weight: 700;
}

/* ══════════ PROFILE HERO CARD ══════════ */
.inst-hero-card {
    background: linear-gradient(135deg, #060f2e 0%, #0a1f5c 60%, #1756c8 100%);
    border-radius: var(--inst-radius);
    padding: 3rem 2.5rem;
    color: #ffffff;
    position: relative;
    overflow: hidden;
    box-shadow: 0 20px 60px rgba(10,31,92,.25);
    margin-bottom: 3.5rem;
}
.inst-hero-card::before {
    content: '';
    position: absolute;
    top: -100px;
    right: -100px;
    width: 350px;
    height: 350px;
    border-radius: 50%;
    background: radial-gradient(circle, rgba(240,180,41,.15) 0%, transparent 70%);
    pointer-events: none;
}
.inst-hero-card::after {
    content: '';
    position: absolute;
    bottom: -80px;
    left: -80px;
    width: 300px;
    height: 300px;
    border-radius: 50%;
    background: radial-gradient(circle, rgba(46,120,240,.2) 0%, transparent 70%);
    pointer-events: none;
}

.inst-avatar-wrap {
    position: relative;
    width: 170px;
    height: 170px;
    margin: 0 auto;
}
.inst-avatar-img {
    width: 100%;
    height: 100%;
    border-radius: 50%;
    object-fit: cover;
    border: 4px solid rgba(255,255,255,.9);
    box-shadow: 0 10px 30px rgba(0,0,0,.3);
}
.inst-badge-verified {
    position: absolute;
    bottom: 8px;
    right: 8px;
    background: var(--inst-gold);
    color: #060f2e;
    width: 34px;
    height: 34px;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 16px;
    border: 3px solid #0a1f5c;
    box-shadow: 0 4px 12px rgba(0,0,0,.3);
}

.inst-name {
    font-size: clamp(1.8rem, 3.5vw, 2.4rem);
    font-weight: 900;
    color: #fff;
    margin-bottom: 6px;
}
.inst-skill-pill {
    display: inline-block;
    background: rgba(240,180,41,.18);
    border: 1px solid rgba(240,180,41,.35);
    color: var(--inst-gold);
    font-size: 12.5px;
    font-weight: 700;
    padding: 4px 16px;
    border-radius: 30px;
    margin-bottom: 18px;
}
.inst-bio {
    font-size: 14.5px;
    line-height: 1.85;
    color: rgba(255,255,255,.8);
    margin-bottom: 24px;
}

.inst-meta-list {
    display: flex;
    flex-wrap: wrap;
    gap: 12px;
    list-style: none;
    padding: 0;
    margin-bottom: 24px;
}
.inst-meta-item {
    background: rgba(255,255,255,.07);
    border: 1px solid rgba(255,255,255,.12);
    backdrop-filter: blur(10px);
    border-radius: 12px;
    padding: 8px 16px;
    font-size: 12.5px;
    color: rgba(255,255,255,.85);
    display: flex;
    align-items: center;
    gap: 8px;
}
.inst-meta-item i {
    color: var(--inst-gold);
}

.inst-social-list {
    display: flex;
    gap: 10px;
    list-style: none;
    padding: 0;
    margin: 0;
}
.inst-social-link {
    width: 40px;
    height: 40px;
    border-radius: 50%;
    background: rgba(255,255,255,.1);
    border: 1px solid rgba(255,255,255,.18);
    display: flex;
    align-items: center;
    justify-content: center;
    color: #fff;
    font-size: 15px;
    transition: all .25s ease;
    text-decoration: none;
}
.inst-social-link:hover {
    background: var(--inst-gold);
    color: #060f2e;
    transform: translateY(-3px);
}

/* Stats Counter Box */
.inst-stats-container {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 14px;
    margin-top: 10px;
}
.inst-stat-card {
    background: rgba(255,255,255,.07);
    border: 1px solid rgba(255,255,255,.12);
    backdrop-filter: blur(12px);
    border-radius: 16px;
    padding: 18px 14px;
    text-align: center;
    transition: all .25s ease;
}
.inst-stat-card:hover {
    background: rgba(255,255,255,.12);
    border-color: var(--inst-gold);
}
.inst-stat-num {
    font-size: 26px;
    font-weight: 900;
    color: var(--inst-gold);
    line-height: 1;
    display: block;
    margin-bottom: 6px;
}
.inst-stat-label {
    font-size: 11.5px;
    color: rgba(255,255,255,.75);
    font-weight: 600;
}

/* ══════════ SECTIONS HEADER ══════════ */
.inst-sec-title {
    font-size: 22px;
    font-weight: 900;
    color: var(--inst-text);
    display: flex;
    align-items: center;
    gap: 12px;
    margin-bottom: 24px;
}
.inst-sec-title-icon {
    width: 42px;
    height: 42px;
    border-radius: 12px;
    background: linear-gradient(135deg, var(--inst-blue), #0a1f5c);
    color: #fff;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 18px;
    box-shadow: 0 6px 18px rgba(23,86,200,.25);
}
.inst-sec-badge {
    background: rgba(240,180,41,.15);
    color: #b37e06;
    font-size: 12px;
    font-weight: 800;
    padding: 4px 12px;
    border-radius: 20px;
    margin-inline-start: auto;
}

/* ══════════ DIPLOMA CARD ══════════ */
.inst-dcard {
    background: #fff;
    border: 1px solid var(--inst-border);
    border-radius: 18px;
    overflow: hidden;
    box-shadow: var(--inst-shadow);
    transition: all .3s cubic-bezier(.4,0,.2,1);
    height: 100%;
    display: flex;
    flex-direction: column;
}
.inst-dcard:hover {
    transform: translateY(-6px);
    box-shadow: 0 20px 50px rgba(10,31,92,.14);
    border-color: var(--inst-accent);
}
.inst-dcard-img-wrap {
    position: relative;
    height: 190px;
    overflow: hidden;
    background: var(--inst-navy);
}
.inst-dcard-img-wrap img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: transform .4s ease;
}
.inst-dcard:hover .inst-dcard-img-wrap img {
    transform: scale(1.06);
}
.inst-dcard-badge {
    position: absolute;
    top: 14px;
    right: 14px;
    background: linear-gradient(135deg, #f5821f, #d96a0a);
    color: #fff;
    font-size: 10.5px;
    font-weight: 800;
    padding: 4px 12px;
    border-radius: 20px;
    box-shadow: 0 4px 12px rgba(245,130,31,.35);
}
.inst-dcard-price {
    position: absolute;
    bottom: 12px;
    right: 12px;
    background: rgba(6,15,46,.85);
    backdrop-filter: blur(8px);
    color: #fff;
    font-size: 13px;
    font-weight: 800;
    padding: 4px 12px;
    border-radius: 20px;
    border: 1px solid rgba(255,255,255,.15);
}
.inst-dcard-body {
    padding: 20px;
    display: flex;
    flex-direction: column;
    flex: 1;
}
.inst-dcard-title {
    font-size: 16px;
    font-weight: 800;
    color: var(--inst-text);
    line-height: 1.45;
    margin-bottom: 12px;
    text-decoration: none;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    overflow: hidden;
    transition: color .2s;
}
.inst-dcard-title:hover {
    color: var(--inst-blue);
}
.inst-dcard-desc {
    font-size: 13px;
    color: var(--inst-muted);
    line-height: 1.6;
    margin-bottom: 16px;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    overflow: hidden;
}
.inst-dcard-footer {
    margin-top: auto;
    padding-top: 14px;
    border-top: 1px solid #edf0f8;
    display: flex;
    align-items: center;
    justify-content: space-between;
}
.inst-dcard-btn {
    padding: 9px 18px;
    background: linear-gradient(135deg, var(--inst-blue), #0a1f5c);
    color: #fff;
    border-radius: 10px;
    font-size: 12px;
    font-weight: 700;
    text-decoration: none;
    transition: all .2s;
    display: inline-flex;
    align-items: center;
    gap: 6px;
}
.inst-dcard-btn:hover {
    color: #fff;
    box-shadow: 0 6px 20px rgba(23,86,200,.35);
    transform: translateY(-1px);
}

@media (max-width: 991px) {
    .inst-hero-card { padding: 2rem 1.5rem; text-align: center; }
    .inst-stats-container { grid-template-columns: repeat(3, 1fr); gap: 10px; margin-top: 20px; }
    .inst-meta-list { justify-content: center; }
    .inst-social-list { justify-content: center; }
}
@media (max-width: 767px) {
    .inst-hero-card { padding: 1.5rem 1rem; border-radius: 14px; }
    .inst-name { font-size: 1.6rem; }
    .inst-avatar-wrap { width: 130px; height: 130px; }
    .inst-stats-container { grid-template-columns: 1fr; gap: 8px; }
    .inst-stat-card { padding: 12px 10px; }
    .inst-stat-num { font-size: 20px; }
    .inst-sec-title { font-size: 18px; flex-wrap: wrap; }
}
</style>
@endpush

@section('content')
<div class="inst-page">

    {{-- Breadcrumb --}}
    <div class="inst-breadcrumb">
        <div class="container">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{ route('home') }}">{{ get_phrase('Home') }}</a></li>
                    <li class="breadcrumb-item"><a href="{{ route('instructors') }}">{{ get_phrase('Instructors') }}</a></li>
                    <li class="breadcrumb-item active" aria-current="page">{{ $instructor_details->name }}</li>
                </ol>
            </nav>
        </div>
    </div>

    <div class="container">
        {{-- ══════════ HERO PROFILE CARD ══════════ --}}
        <div class="inst-hero-card">
            <div class="row align-items-center">
                <div class="col-lg-4 text-center mb-4 mb-lg-0">
                    <div class="inst-avatar-wrap">
                        <img src="{{ get_image($instructor_details->photo) }}" alt="{{ $instructor_details->name }}" class="inst-avatar-img">
                        <div class="inst-badge-verified" title="{{ $is_ar ? 'محاضر معتمد' : 'Verified Instructor' }}">
                            <i class="fa-solid fa-circle-check"></i>
                        </div>
                    </div>
                    <div class="inst-stats-container">
                        <div class="inst-stat-card">
                            <span class="inst-stat-num">{{ $instructor_bootcamps->total() }}</span>
                            <span class="inst-stat-label">{{ $is_ar ? 'دبلومات مهنية' : 'Diplomas' }}</span>
                        </div>
                        <div class="inst-stat-card">
                            <span class="inst-stat-num">{{ $instructor_courses->total() }}</span>
                            <span class="inst-stat-label">{{ $is_ar ? 'مقررات تدريبية' : 'Courses' }}</span>
                        </div>
                        <div class="inst-stat-card">
                            <span class="inst-stat-num">{{ count_student_by_instructor($instructor_details->id) }}</span>
                            <span class="inst-stat-label">{{ $is_ar ? 'طالب مسجل' : 'Students' }}</span>
                        </div>
                    </div>
                </div>

                <div class="col-lg-8">
                    <h1 class="inst-name">{{ $instructor_details->name }}</h1>
                    @if(!empty($instructor_details->skill))
                        <span class="inst-skill-pill"><i class="fa-solid fa-award me-1"></i> {{ $instructor_details->skill }}</span>
                    @endif

                    @if(!empty($instructor_details->boigraphy))
                        <p class="inst-bio">{{ $instructor_details->boigraphy }}</p>
                    @else
                        <p class="inst-bio">{{ $is_ar ? 'محاضر واستشاري أكاديمي متخصص في تقديم البرامج والدبلومات المتقدمة.' : 'Professional instructor & academic consultant specializing in advanced programs.' }}</p>
                    @endif

                    <ul class="inst-meta-list">
                        @if(instructor_experience($instructor_details->id))
                            <li class="inst-meta-item">
                                <i class="fa-solid fa-briefcase"></i>
                                <span>{{ $is_ar ? 'الخبرة: ' : 'Experience: ' }} {{ instructor_experience($instructor_details->id) }}</span>
                            </li>
                        @endif
                        @if(!empty($instructor_details->email))
                            <li class="inst-meta-item">
                                <i class="fa-solid fa-envelope"></i>
                                <span>{{ $instructor_details->email }}</span>
                            </li>
                        @endif
                        @if(!empty($instructor_details->phone))
                            <li class="inst-meta-item">
                                <i class="fa-solid fa-phone"></i>
                                <span>{{ $instructor_details->phone }}</span>
                            </li>
                        @endif
                        @if(!empty($instructor_details->details))
                            <li class="inst-meta-item">
                                <i class="fa-solid fa-location-dot"></i>
                                <span>{{ $instructor_details->details }}</span>
                            </li>
                        @endif
                    </ul>

                    <ul class="inst-social-list">
                        @if(!empty($instructor_details->twitter))
                            <li><a href="{{ $instructor_details->twitter }}" target="_blank" class="inst-social-link"><i class="fa-brands fa-x-twitter"></i></a></li>
                        @endif
                        @if(!empty($instructor_details->facebook))
                            <li><a href="{{ $instructor_details->facebook }}" target="_blank" class="inst-social-link"><i class="fa-brands fa-facebook-f"></i></a></li>
                        @endif
                        @if(!empty($instructor_details->linkedin))
                            <li><a href="{{ $instructor_details->linkedin }}" target="_blank" class="inst-social-link"><i class="fa-brands fa-linkedin-in"></i></a></li>
                        @endif
                    </ul>
                </div>
            </div>
        </div>

        {{-- ══════════ SECTION 1: BOOTCAMPS & DIPLOMAS ══════════ --}}
        @if(count($instructor_bootcamps) > 0)
            <div class="mb-5">
                <div class="inst-sec-title">
                    <div class="inst-sec-title-icon"><i class="fa-solid fa-graduation-cap"></i></div>
                    <span>{{ $is_ar ? 'دبلومه الماجستير المهني Professional Master\'s Diploma' : 'Professional Master\'s Diplomas' }}</span>
                    <span class="inst-sec-badge">{{ $instructor_bootcamps->total() }} {{ $is_ar ? 'برنامج معتمد' : 'Programs' }}</span>
                </div>

                <div class="row g-4">
                    @foreach($instructor_bootcamps as $bootcamp)
                        <div class="col-lg-4 col-md-6">
                            <div class="inst-dcard">
                                <div class="inst-dcard-img-wrap">
                                    <img src="{{ get_image($bootcamp->thumbnail) }}" alt="{{ $bootcamp->title }}">
                                    <span class="inst-dcard-badge">{{ $is_ar ? 'دبلومة مهنية' : 'Diploma' }}</span>
                                    <div class="inst-dcard-price">
                                        @if($bootcamp->is_paid == 0)
                                            <span class="text-success">{{ $is_ar ? 'مجاني' : 'Free' }}</span>
                                        @elseif($bootcamp->discount_flag == 1)
                                            <span>{{ currency($bootcamp->price - $bootcamp->discounted_price) }}</span>
                                        @else
                                            <span>{{ currency($bootcamp->price) }}</span>
                                        @endif
                                    </div>
                                </div>
                                <div class="inst-dcard-body">
                                    <a href="{{ route('bootcamp.details', $bootcamp->slug) }}" class="inst-dcard-title">
                                        {{ $bootcamp->title }}
                                    </a>
                                    <p class="inst-dcard-desc">{{ $bootcamp->short_description }}</p>
                                    <div class="inst-dcard-footer">
                                        <span class="text-muted font-size-12"><i class="fa-solid fa-chalkboard me-1 text-primary"></i> {{ count_bootcamp_classes($bootcamp->id) }} {{ $is_ar ? 'محاضرة' : 'Classes' }}</span>
                                        <a href="{{ route('bootcamp.details', $bootcamp->slug) }}" class="inst-dcard-btn">
                                            <span>{{ $is_ar ? 'عرض التفاصيل' : 'View Details' }}</span>
                                            <i class="fa-solid {{ $is_ar ? 'fa-arrow-left' : 'fa-arrow-right' }}"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>

                @if($instructor_bootcamps->hasPages())
                    <div class="entry-pagination mt-4 d-flex justify-content-center">
                        {{ $instructor_bootcamps->links() }}
                    </div>
                @endif
            </div>
        @endif

        {{-- ══════════ SECTION 2: COURSES ══════════ --}}
        @if (count($instructor_courses) > 0)
            <div>
                <div class="inst-sec-title">
                    <div class="inst-sec-title-icon"><i class="fa-solid fa-book-open"></i></div>
                    <span>{{ $is_ar ? 'المقررات والدورات التدريبية' : 'Courses' }}</span>
                    <span class="inst-sec-badge">{{ $instructor_courses->total() }} {{ $is_ar ? 'دورة' : 'Courses' }}</span>
                </div>

                <div class="row g-4 justify-content-center">
                    @foreach ($instructor_courses as $course)
                        @include('frontend.default.course.course_grid', ['course' => $course])
                    @endforeach
                </div>

                <!-- Pagination -->
                @if($instructor_courses->hasPages())
                    <div class="entry-pagination mt-4 d-flex justify-content-center">
                        {{ $instructor_courses->links() }}
                    </div>
                @endif
            </div>
        @endif

    </div>
</div>
@endsection
