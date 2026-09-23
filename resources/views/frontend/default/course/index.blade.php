@extends('layouts.default')
@php
    $is_ar = (app()->getLocale() == 'ar') || (session('language') == 'arabic') || (get_current_language_direction() == 'rtl');
    $page_title = $category_details['title'] ?? ($is_ar ? 'المقررات والدورات التدريبية' : 'All Courses');
@endphp
@push('title', $page_title)
@push('meta')@endpush
@push('css')
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cairo:wght@400;600;700;800;900&family=Tajawal:wght@400;500;700;800;900&display=swap" rel="stylesheet">
<style>
:root {
    --c-navy: #060f2e;
    --c-blue: #1756c8;
    --c-accent: #2e78f0;
    --c-gold: #f0b429;
    --c-bg: #f7f9fe;
    --c-text: #0a1f5c;
    --c-muted: #5a6a90;
    --c-border: #dde6f5;
    --c-radius: 18px;
    --c-shadow: 0 10px 30px rgba(10,31,92,.07);
}

.cpage {
    font-family: {{ $is_ar ? "'Cairo', 'Tajawal', sans-serif" : "system-ui, -apple-system, sans-serif" }};
    background: var(--c-bg);
    color: var(--c-text);
    padding-bottom: 5rem;
    direction: {{ $is_ar ? 'rtl' : 'ltr' }};
}

/* ══════════ HERO BANNER ══════════ */
.cpage-hero {
    background: linear-gradient(135deg, #060f2e 0%, #0a1f5c 60%, #1756c8 100%);
    position: relative;
    overflow: hidden;
    color: #fff;
    padding: 2.2rem 0 2rem;
    margin-bottom: 2rem;
    box-shadow: 0 12px 36px rgba(10,31,92,.18);
}
.cpage-hero::before {
    content: '';
    position: absolute;
    top: -120px;
    right: -100px;
    width: 400px;
    height: 400px;
    border-radius: 50%;
    background: radial-gradient(circle, rgba(240,180,41,.14) 0%, transparent 70%);
    pointer-events: none;
}
.cpage-hero::after {
    content: '';
    position: absolute;
    bottom: -100px;
    left: -80px;
    width: 350px;
    height: 350px;
    border-radius: 50%;
    background: radial-gradient(circle, rgba(46,120,240,.2) 0%, transparent 70%);
    pointer-events: none;
}

.cpage-hero-inner {
    position: relative;
    z-index: 5;
}
.cpage-breadcrumb {
    display: flex;
    align-items: center;
    gap: 8px;
    margin-bottom: 12px;
    font-size: 12.5px;
}
.cpage-breadcrumb a {
    color: rgba(255,255,255,.6);
    text-decoration: none;
    transition: color .2s;
}
.cpage-breadcrumb a:hover {
    color: #fff;
}
.cpage-breadcrumb .sep {
    color: rgba(255,255,255,.3);
}
.cpage-breadcrumb .active {
    color: var(--c-gold);
    font-weight: 700;
}

.cpage-title {
    font-size: clamp(1.6rem, 3vw, 2.4rem);
    font-weight: 900;
    color: #fff;
    margin-bottom: 8px;
    line-height: 1.25;
}
.cpage-sub {
    font-size: 14px;
    color: rgba(255,255,255,.75);
    max-width: 600px;
    line-height: 1.65;
    margin-bottom: 16px;
}

.cpage-stat-badge {
    display: inline-flex;
    align-items: center;
    gap: 8px;
    background: rgba(255,255,255,.1);
    border: 1px solid rgba(255,255,255,.18);
    backdrop-filter: blur(10px);
    padding: 5px 16px;
    border-radius: 30px;
    font-size: 12px;
    font-weight: 700;
    color: #fff;
}
.cpage-stat-badge i {
    color: var(--c-gold);
}

/* ══════════ CATEGORY CHIPS BAR ══════════ */
.cpage-chips-sec {
    margin-bottom: 1.5rem;
}
.cpage-chips-wrap {
    display: flex;
    gap: 8px;
    overflow-x: auto;
    padding-bottom: 8px;
    scrollbar-width: thin;
}
.cpage-chip {
    white-space: nowrap;
    padding: 7px 16px;
    border-radius: 30px;
    background: #fff;
    border: 1px solid var(--c-border);
    color: var(--c-text);
    font-size: 12.5px;
    font-weight: 700;
    text-decoration: none;
    transition: all .2s;
    display: inline-flex;
    align-items: center;
    gap: 6px;
    box-shadow: 0 2px 8px rgba(10,31,92,.04);
}
.cpage-chip:hover, .cpage-chip.active {
    background: linear-gradient(135deg, var(--c-blue), #0a1f5c);
    color: #fff;
    border-color: var(--c-blue);
    box-shadow: 0 6px 18px rgba(23,86,200,.25);
}

/* ══════════ FILTER TOOLBAR ══════════ */
.cpage-toolbar {
    background: #fff;
    border: 1px solid var(--c-border);
    border-radius: 16px;
    padding: 12px 18px;
    margin-bottom: 1.8rem;
    box-shadow: var(--c-shadow);
    display: flex;
    align-items: center;
    justify-content: space-between;
    flex-wrap: wrap;
    gap: 12px;
}
.cpage-toolbar-count {
    font-size: 13px;
    font-weight: 700;
    color: var(--c-muted);
}
.cpage-toolbar-count strong {
    color: var(--c-text);
}

.cpage-layout-toggle {
    display: flex;
    align-items: center;
    gap: 6px;
    background: var(--c-bg);
    padding: 4px;
    border-radius: 10px;
    border: 1px solid var(--c-border);
}
.cpage-layout-btn {
    padding: 5px 12px;
    border-radius: 8px;
    font-size: 12px;
    font-weight: 700;
    color: var(--c-muted);
    text-decoration: none;
    display: inline-flex;
    align-items: center;
    gap: 6px;
    transition: all .2s;
}
.cpage-layout-btn.active {
    background: var(--c-blue);
    color: #fff;
    box-shadow: 0 4px 12px rgba(23,86,200,.22);
}

/* Sidebar filter styling */
.cpage-sidebar-box {
    background: #fff;
    border: 1px solid var(--c-border);
    border-radius: var(--c-radius);
    padding: 20px;
    box-shadow: var(--c-shadow);
    margin-bottom: 1.5rem;
}

@media (max-width: 991px) {
    .cpage-hero { padding: 1.8rem 0; text-align: center; }
    .cpage-breadcrumb { justify-content: center; }
    .cpage-sub { margin-left: auto; margin-right: auto; font-size: 13.5px; }
}
@media (max-width: 767px) {
    .cpage-hero { padding: 1.4rem 0; border-radius: 0 0 16px 16px; margin-bottom: 1.5rem; }
    .cpage-title { font-size: 1.5rem; margin-bottom: 6px; }
    .cpage-sub { font-size: 12.5px; margin-bottom: 12px; }
    .cpage-toolbar { flex-direction: column; align-items: stretch; text-align: center; padding: 10px 14px; }
    .cpage-layout-toggle { justify-content: center; }
}
</style>
@endpush

@section('content')
<div class="cpage">

    {{-- ══════════ HERO BANNER ══════════ --}}
    <section class="cpage-hero">
        <div class="container">
            <div class="cpage-hero-inner">
                <nav class="cpage-breadcrumb">
                    <a href="{{ route('home') }}">{{ get_phrase('Home') }}</a>
                    <span class="sep">›</span>
                    <span class="active">{{ $page_title }}</span>
                </nav>
                <h1 class="cpage-title">{{ $page_title }}</h1>
                <p class="cpage-sub">
                    {{ $is_ar ? 'استكشف مكتبة شاملة من الدورات التدريبية المتقدمة المصممة لتطوير خبراتك الأكاديمية والمهنية.' : 'Explore a comprehensive library of courses designed to elevate your professional expertise.' }}
                </p>
                <div class="cpage-stat-badge">
                    <i class="fa-solid fa-book-open"></i>
                    <span>{{ $courses->total() }} {{ $is_ar ? 'دورة متاحة' : 'Courses Available' }}</span>
                </div>
            </div>
        </div>
    </section>

    <div class="container">
        {{-- ══════════ CATEGORY CHIPS BAR ══════════ --}}
        @php
            $parent_categories = App\Models\Category::where('parent_id', 0)->get();
            $current_cat_slug = request()->route()->parameter('category');
        @endphp
        @if(count($parent_categories) > 0)
            <div class="cpage-chips-sec">
                <div class="cpage-chips-wrap">
                    <a href="{{ route('courses') }}" class="cpage-chip {{ empty($current_cat_slug) ? 'active' : '' }}">
                        <i class="fa-solid fa-layer-group"></i>
                        <span>{{ $is_ar ? 'الكل' : 'All' }}</span>
                    </a>
                    @foreach($parent_categories as $pcat)
                        <a href="{{ route('courses', ['category' => $pcat->slug]) }}" class="cpage-chip {{ $current_cat_slug == $pcat->slug ? 'active' : '' }}">
                            <span>{{ $pcat->title }}</span>
                        </a>
                    @endforeach
                </div>
            </div>
        @endif

        {{-- ══════════ FILTER TOOLBAR ══════════ --}}
        <div class="cpage-toolbar">
            <div class="cpage-toolbar-count">
                {{ get_phrase('Showing') }} <strong>{{ count($courses) }}</strong> {{ get_phrase('of') }} <strong>{{ $courses->total() }}</strong> {{ get_phrase('courses') }}
            </div>

            <div class="cpage-layout-toggle">
                <a href="#" class="cpage-layout-btn layout {{ $layout == 'grid' ? 'active' : '' }}" id="grid">
                    <i class="fa-solid fa-border-all"></i>
                    <span>{{ get_phrase('Grid') }}</span>
                </a>
                <a href="#" class="cpage-layout-btn layout {{ $layout == 'list' ? 'active' : '' }}" id="list">
                    <i class="fa-solid fa-list"></i>
                    <span>{{ get_phrase('List') }}</span>
                </a>
            </div>
        </div>

        {{-- ══════════ MAIN CONTENT ROW ══════════ --}}
        <div class="row">
            {{-- Filter Sidebar --}}
            <div class="col-lg-3 col-12 mb-4 mb-lg-0">
                <div class="cpage-sidebar-box">
                    @include('frontend.default.course.filter')
                </div>
            </div>

            {{-- Courses Grid / List --}}
            <div class="col-lg-9 col-12">
                <div class="row g-4">
                    @forelse ($courses as $course)
                        @include('frontend.default.course.course_' . $layout, ['course' => $course])
                    @empty
                        <div class="col-12 text-center py-5 bg-white radius-10 border">
                            @include('frontend.default.empty')
                        </div>
                    @endforelse
                </div>

                {{-- Pagination --}}
                @if ($courses->hasPages())
                    <div class="entry-pagination mt-5 d-flex justify-content-center">
                        {{ $courses->links() }}
                    </div>
                @endif
            </div>
        </div>
    </div>
</div>
@endsection
