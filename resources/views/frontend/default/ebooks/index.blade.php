@extends('layouts.default')
@push('title', get_phrase('Ebooks'))
@push('meta')@endpush
@push('css')
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cairo:wght@400;600;700;800;900&family=Tajawal:wght@400;500;700;800;900&display=swap" rel="stylesheet">
<style>
@php
    $is_ar = (app()->getLocale() == 'ar') || (session('language') == 'arabic') || (get_current_language_direction() == 'rtl');
@endphp

.ebk-page {
    font-family: {{ $is_ar ? "'Cairo', 'Tajawal', sans-serif" : "system-ui, -apple-system, sans-serif" }};
    background: #f8fafc;
    direction: {{ $is_ar ? 'rtl' : 'ltr' }};
    padding-bottom: 5rem;
}

.ebk-hero {
    background: linear-gradient(135deg, #060f2e 0%, #0a1f5c 55%, #1756c8 100%);
    color: #fff;
    padding: 2.5rem 0 2rem;
    margin-bottom: 2rem;
    box-shadow: 0 12px 36px rgba(10,31,92,.18);
    position: relative;
    overflow: hidden;
}
.ebk-hero::before {
    content: '';
    position: absolute;
    top: -100px;
    right: -80px;
    width: 350px;
    height: 350px;
    border-radius: 50%;
    background: radial-gradient(circle, rgba(240,180,41,.15) 0%, transparent 70%);
}
.ebk-title {
    font-size: clamp(1.8rem, 3.2vw, 2.5rem);
    font-weight: 900;
    margin-bottom: 8px;
}
.ebk-sub {
    font-size: 14.5px;
    color: rgba(255,255,255,.8);
    max-width: 600px;
}
.ebk-count-badge {
    background: rgba(255,255,255,.12);
    border: 1px solid rgba(255,255,255,.2);
    backdrop-filter: blur(10px);
    padding: 5px 16px;
    border-radius: 30px;
    font-size: 13px;
    font-weight: 700;
    color: #fff;
    display: inline-flex;
    align-items: center;
    gap: 8px;
    margin-top: 14px;
}

@media (max-width: 991px) {
    .ebk-hero { text-align: center; padding: 1.8rem 0; }
    .ebk-sub { margin-left: auto; margin-right: auto; }
}
</style>
@endpush

@section('content')
<div class="ebk-page">
    <section class="ebk-hero">
        <div class="container">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb justify-content-center justify-content-lg-start mb-2" style="font-size:13px;">
                    <li class="breadcrumb-item"><a href="{{ route('home') }}" class="text-white-50 text-decoration-none">{{ get_phrase('Home') }}</a></li>
                    <li class="breadcrumb-item active text-warning fw-bold" aria-current="page">{{ get_phrase('Ebooks') }}</li>
                </ol>
            </nav>
            <h1 class="ebk-title">{{ get_phrase('Ebooks Catalog') }}</h1>
            <p class="ebk-sub">
                {{ $is_ar ? 'تصفح وحمّل الكتب الإلكترونية والمراجع المتقدمة لتوسيع معرفتك الأكاديمية والمهنية.' : 'Browse and access premium ebooks and academic guides to empower your learning journey.' }}
            </p>
            <div class="ebk-count-badge">
                <i class="fa-solid fa-book-bookmark text-warning"></i>
                <span>{{ get_phrase('Showing') }} {{ count($ebooks) }} {{ get_phrase('of') }} {{ $ebooks->total() }} {{ get_phrase('Ebooks') }}</span>
            </div>
        </div>
    </section>

    <div class="container">
        <div class="row">
            {{-- Filter Sidebar --}}
            <div class="col-lg-3 col-12 mb-4 mb-lg-0">
                <div class="bg-white p-4 radius-18 border shadow-sm">
                    @include('frontend.default.ebooks.filter')
                </div>
            </div>

            {{-- Ebooks Grid --}}
            <div class="col-lg-9 col-12">
                <div class="row g-4">
                    @forelse ($ebooks as $ebook)
                        @include('frontend.default.ebooks.card', ['ebook' => $ebook])
                    @empty
                        <div class="col-12 text-center py-5 bg-white radius-18 border">
                            @include('frontend.default.empty')
                        </div>
                    @endforelse
                </div>

                {{-- Pagination --}}
                @if ($ebooks->hasPages())
                    <div class="entry-pagination mt-5 d-flex justify-content-center">
                        {{ $ebooks->links() }}
                    </div>
                @endif
            </div>
        </div>
    </div>
</div>
@endsection
