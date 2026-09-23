@extends('layouts.default')
@php
    $current_lang = strtolower(session('language') ?? app()->getLocale() ?? get_settings('language') ?? 'english');
    $is_ar = (app()->getLocale() == 'ar') || in_array($current_lang, ['ar', 'arabic']) || (get_current_language_direction() == 'rtl');
@endphp
@push('title', 'دبلومه الماجستير المهني Professional Master\'s Diploma')
@push('css')
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cairo:wght@400;600;700;800;900&family=Cinzel:wght@600;700;800&family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">

<style>
    :root {
        --uni-navy: #0b192c;
        --uni-navy-dark: #050d18;
        --uni-gold: #d4af37;
        --uni-gold-light: #f7e7a1;
        --uni-accent: #1e3a8a;
        --uni-bg: #f8fafc;
        --uni-card-bg: #ffffff;
        --uni-border: #e2e8f0;
        --uni-text: #1e293b;
        --uni-muted: #64748b;
        --uni-radius: 16px;
    }

    .uni-portal-wrapper {
        font-family: 'Cairo', 'Plus Jakarta Sans', sans-serif;
        background: var(--uni-bg);
        color: var(--uni-text);
        padding-bottom: 60px;
        @if($is_ar)
            direction: rtl;
            text-align: right;
        @endif
    }

    /* University Header Card */
    .uni-hero-card {
        background: linear-gradient(135deg, var(--uni-navy-dark) 0%, var(--uni-navy) 60%, var(--uni-accent) 100%);
        border-radius: var(--uni-radius);
        padding: 32px;
        color: #ffffff;
        position: relative;
        overflow: hidden;
        border: 1px solid rgba(212, 175, 55, 0.3);
        box-shadow: 0 20px 40px rgba(11, 25, 44, 0.15);
        margin-bottom: 32px;
    }
    .uni-hero-card::before {
        content: '';
        position: absolute;
        top: -60px;
        right: -60px;
        width: 250px;
        height: 250px;
        border-radius: 50%;
        background: radial-gradient(circle, rgba(212, 175, 55, 0.15) 0%, transparent 70%);
        pointer-events: none;
    }
    
    .uni-crest-badge {
        display: inline-flex;
        align-items: center;
        gap: 8px;
        background: rgba(212, 175, 55, 0.15);
        border: 1px solid var(--uni-gold);
        color: var(--uni-gold-light);
        padding: 6px 16px;
        border-radius: 30px;
        font-size: 13px;
        font-weight: 700;
        margin-bottom: 16px;
    }

    .uni-program-title {
        font-size: 26px;
        font-weight: 800;
        color: #ffffff;
        margin-bottom: 12px;
        line-height: 1.3;
    }

    .uni-meta-pill {
        display: inline-flex;
        align-items: center;
        gap: 8px;
        background: rgba(255, 255, 255, 0.08);
        padding: 6px 14px;
        border-radius: 10px;
        font-size: 13px;
        color: #cbd5e1;
    }

    /* Section Tabs Nav */
    .uni-nav-tabs {
        display: flex;
        gap: 12px;
        border-bottom: 2px solid #e2e8f0;
        margin-bottom: 28px;
        padding-bottom: 2px;
        overflow-x: auto;
    }
    .uni-nav-btn {
        background: none;
        border: none;
        padding: 12px 22px;
        font-size: 15px;
        font-weight: 700;
        color: #64748b;
        border-bottom: 3px solid transparent;
        cursor: pointer;
        transition: all 0.25s ease;
        display: flex;
        align-items: center;
        gap: 10px;
        white-space: nowrap;
    }
    .uni-nav-btn i {
        font-size: 17px;
    }
    .uni-nav-btn:hover {
        color: var(--uni-navy);
    }
    .uni-nav-btn.active {
        color: var(--uni-navy);
        border-bottom-color: var(--uni-gold);
        background: rgba(212, 175, 55, 0.06);
        border-radius: 10px 10px 0 0;
    }

    /* Section Cards */
    .uni-card {
        background: var(--uni-card-bg);
        border-radius: var(--uni-radius);
        border: 1px solid var(--uni-border);
        box-shadow: 0 4px 16px rgba(0,0,0,0.03);
        padding: 24px;
        margin-bottom: 24px;
    }
    .uni-section-title {
        font-size: 20px;
        font-weight: 800;
        color: var(--uni-navy);
        display: flex;
        align-items: center;
        gap: 10px;
        margin-bottom: 20px;
        padding-bottom: 12px;
        border-bottom: 1.5px solid #f1f5f9;
    }
    .uni-section-title i {
        color: var(--uni-gold);
    }

    /* 1. Live Class Join Link Cards (لينك يفتح المحاضرات) */
    .uni-live-card {
        background: linear-gradient(135deg, #f0f9ff 0%, #e0f2fe 100%);
        border: 1.5px solid #bae6fd;
        border-radius: 14px;
        padding: 20px;
        margin-bottom: 16px;
        display: flex;
        align-items: center;
        justify-content: space-between;
        gap: 16px;
        flex-wrap: wrap;
    }
    .uni-live-card.active-now {
        background: linear-gradient(135deg, #fef2f2 0%, #ffe4e6 100%);
        border-color: #fecdd3;
    }
    .uni-live-badge {
        display: inline-flex;
        align-items: center;
        gap: 6px;
        padding: 4px 12px;
        border-radius: 20px;
        font-size: 12px;
        font-weight: 800;
    }
    .uni-live-badge.live {
        background: #ef4444;
        color: #ffffff;
        animation: pulseLive 1.8s infinite;
    }
    .uni-live-badge.upcoming {
        background: #f59e0b;
        color: #ffffff;
    }
    .uni-live-badge.completed {
        background: #10b981;
        color: #ffffff;
    }

    @keyframes pulseLive {
        0%, 100% { opacity: 1; }
        50% { opacity: 0.6; }
    }

    .uni-btn-join {
        background: linear-gradient(135deg, #0284c7 0%, #0369a1 100%);
        color: #ffffff;
        font-weight: 800;
        font-size: 14px;
        padding: 10px 22px;
        border-radius: 12px;
        text-decoration: none;
        display: inline-flex;
        align-items: center;
        gap: 8px;
        box-shadow: 0 4px 14px rgba(2, 132, 199, 0.25);
        transition: all 0.2s ease;
    }
    .uni-btn-join:hover {
        transform: translateY(-2px);
        color: #ffffff;
        box-shadow: 0 6px 18px rgba(2, 132, 199, 0.35);
    }
    .uni-btn-join.active {
        background: linear-gradient(135deg, #dc2626 0%, #b91c1c 100%);
        box-shadow: 0 4px 14px rgba(220, 38, 38, 0.3);
    }
    .uni-btn-join.disabled {
        background: #94a3b8;
        cursor: not-allowed;
        pointer-events: none;
        box-shadow: none;
    }

    /* 2. Lecture Schedule Timetable (جدول المحاضرات) */
    .uni-table {
        width: 100%;
        border-collapse: separate;
        border-spacing: 0 8px;
    }
    .uni-table th {
        background: #f8fafc;
        color: #475569;
        font-weight: 700;
        font-size: 13px;
        padding: 12px 16px;
        border: none;
    }
    .uni-table td {
        background: #ffffff;
        padding: 14px 16px;
        border-top: 1px solid #f1f5f9;
        border-bottom: 1px solid #f1f5f9;
        font-size: 14px;
        vertical-align: middle;
    }
    .uni-table tr td:first-child {
        border-top-left-radius: 10px;
        border-bottom-left-radius: 10px;
        border-left: 1px solid #f1f5f9;
    }
    .uni-table tr td:last-child {
        border-top-right-radius: 10px;
        border-bottom-right-radius: 10px;
        border-right: 1px solid #f1f5f9;
    }

    /* 3. Recorded Lectures Gallery (سجل المحاضرات) */
    .uni-record-item {
        background: #f8fafc;
        border: 1px solid #e2e8f0;
        border-radius: 12px;
        padding: 16px;
        margin-bottom: 12px;
        display: flex;
        align-items: center;
        justify-content: space-between;
        transition: all 0.2s ease;
    }
    .uni-record-item:hover {
        background: #ffffff;
        border-color: var(--uni-gold);
        box-shadow: 0 4px 12px rgba(0,0,0,0.05);
    }
    .uni-btn-play {
        background: #1e293b;
        color: #ffffff;
        font-size: 13px;
        font-weight: 700;
        padding: 8px 16px;
        border-radius: 10px;
        text-decoration: none;
        display: inline-flex;
        align-items: center;
        gap: 6px;
        transition: all 0.2s ease;
    }
    .uni-btn-play:hover {
        background: var(--uni-navy);
        color: var(--uni-gold-light);
    }
</style>
@endpush

@section('content')
<div class="uni-portal-wrapper">
    <section class="my-course-content pt-4">
        <div class="container">
            <div class="row">
                @include('frontend.default.student.left_sidebar')

                <div class="col-lg-9">
                    <!-- University Header Banner -->
                    <div class="uni-hero-card">
                        <div class="d-flex justify-content-between align-items-start flex-wrap gap-2">
                            <div>
                                <div class="uni-crest-badge">
                                    <i class="fa-solid fa-award"></i>
                                    دبلومه الماجستير المهني Professional Master's Diploma
                                </div>
                                <h1 class="uni-program-title">{{ $bootcamp->title }}</h1>
                                @php $user = get_user_info($bootcamp->user_id); @endphp
                                <div class="d-flex gap-3 flex-wrap align-items-center">
                                    <span class="uni-meta-pill">
                                        <i class="fa-solid fa-user-tie text-warning"></i>
                                        {{ $is_ar ? 'المحاضر:' : 'Instructor:' }} <strong>{{ $user->name }}</strong>
                                    </span>
                                    <span class="uni-meta-pill">
                                        <i class="fa-regular fa-calendar-check text-info"></i>
                                        {{ date('d M, Y', $bootcamp->publish_date) }}
                                    </span>
                                    <span class="uni-meta-pill">
                                        <i class="fa-solid fa-video text-success"></i>
                                        {{ count_bootcamp_classes($bootcamp->id) }} {{ $is_ar ? 'محاضرة مباشرة' : 'Live Classes' }}
                                    </span>
                                </div>
                            </div>
                            <div>
                                <a href="{{ route('my.bootcamp.invoice', ['id' => $bootcamp->id]) }}" class="btn btn-outline-light btn-sm rounded-pill px-3">
                                    <i class="fa-solid fa-file-invoice"></i> {{ $is_ar ? 'الفاتورة والأوراق' : 'Invoice' }}
                                </a>
                            </div>
                        </div>
                    </div>

                    <!-- Navigation Tabs for University Portal -->
                    <div class="uni-nav-tabs" id="uniPortalTabs" role="tablist">
                        <button class="uni-nav-btn active" id="tab-join-btn" onclick="switchUniTab('join')">
                            <i class="fa-solid fa-video text-danger"></i>
                            {{ $is_ar ? 'لينك يفتح المحاضرات المباشرة' : 'Live Class Links' }}
                        </button>
                        <button class="uni-nav-btn" id="tab-schedule-btn" onclick="switchUniTab('schedule')">
                            <i class="fa-solid fa-calendar-days text-primary"></i>
                            {{ $is_ar ? 'جدول المحاضرات' : 'Lecture Schedule' }}
                        </button>
                        <button class="uni-nav-btn" id="tab-records-btn" onclick="switchUniTab('records')">
                            <i class="fa-solid fa-photo-film text-warning"></i>
                            {{ $is_ar ? 'سجل المحاضرات المسجلة' : 'Recorded Lectures Archive' }}
                        </button>
                    </div>

                    @php
                        $modules = App\Models\BootcampModule::where('bootcamp_id', $bootcamp->id)->get();
                        $all_live_classes = collect();
                        $all_resources = collect();
                        foreach($modules as $m) {
                            $live_classes = App\Models\BootcampLiveClass::where('module_id', $m->id)->get();
                            foreach($live_classes as $lc) { $lc->module_title = $m->title; $all_live_classes->push($lc); }
                            $res = App\Models\BootcampResource::where('module_id', $m->id)->get();
                            foreach($res as $r) { $r->module_title = $m->title; $all_resources->push($r); }
                        }
                    @endphp

                    <!-- Tab 1: Direct Live Join Links (لينك يفتح المحاضرات) -->
                    <div id="tab-join-content" class="uni-tab-pane">
                        <div class="uni-card">
                            <div class="uni-section-title">
                                <i class="fa-solid fa-headset"></i>
                                {{ $is_ar ? 'روابط الانضمام المباشر للمحاضرات التفاعلية' : 'Direct Live Class Join Links' }}
                            </div>

                            @if($all_live_classes->count() > 0)
                                @foreach($all_live_classes as $class)
                                    @php
                                        $is_active = class_started($class->id);
                                    @endphp
                                    <div class="uni-live-card {{ $is_active ? 'active-now' : '' }}">
                                        <div>
                                            <div class="d-flex align-items-center gap-2 mb-1">
                                                <span class="uni-live-badge {{ $class->status == 'live' ? 'live' : ($class->status == 'upcoming' ? 'upcoming' : 'completed') }}">
                                                    @if($class->status == 'live') <i class="fa-solid fa-signal"></i> {{ $is_ar ? 'مباشر الآن' : 'LIVE NOW' }}
                                                    @elseif($class->status == 'upcoming') <i class="fa-regular fa-clock"></i> {{ $is_ar ? 'قادمة' : 'UPCOMING' }}
                                                    @else <i class="fa-solid fa-circle-check"></i> {{ $is_ar ? 'مكتملة' : 'COMPLETED' }}
                                                    @endif
                                                </span>
                                                <small class="text-muted fw-bold">| {{ $class->module_title }}</small>
                                            </div>
                                            <h5 class="fw-bold mb-1 text-dark">{{ $class->title }}</h5>
                                            <small class="text-secondary">
                                                <i class="fa-regular fa-calendar me-1"></i> {{ date('d M, Y', $class->start_time) }} 
                                                ({{ date('h:i a', $class->start_time) }} - {{ date('h:i a', $class->end_time) }})
                                            </small>
                                        </div>

                                        <div>
                                            @if($is_active)
                                                <a href="{{ route('bootcamp.live.class.join', slugify($class->title)) }}" class="uni-btn-join active" target="_blank">
                                                    <i class="fa-solid fa-video"></i>
                                                    {{ $is_ar ? 'انضم للمحاضرة الآن (فتح اللينك)' : 'Join Live Class Now' }}
                                                </a>
                                            @else
                                                <a href="javascript:void(0);" class="uni-btn-join disabled">
                                                    <i class="fa-solid fa-lock"></i>
                                                    {{ $is_ar ? 'الرابط ينشط عند موعد المحاضرة' : 'Link Active at Class Time' }}
                                                </a>
                                            @endif
                                        </div>
                                    </div>
                                @endforeach
                            @else
                                <div class="text-center py-5 text-muted">
                                    <i class="fa-solid fa-video-slash fa-3x mb-3 text-secondary"></i>
                                    <h5>{{ $is_ar ? 'لا توجد محاضرات مباشرة متاحة حالياً' : 'No Live Classes Scheduled Yet' }}</h5>
                                </div>
                            @endif
                        </div>
                    </div>

                    <!-- Tab 2: Timetable / Schedule (جدول المحاضرات) -->
                    <div id="tab-schedule-content" class="uni-tab-pane d-none">
                        <div class="uni-card">
                            <div class="uni-section-title">
                                <i class="fa-solid fa-calendar-days"></i>
                                {{ $is_ar ? 'جدول المواعيد والمحاضرات الأكاديمية' : 'Official Academic Lecture Schedule' }}
                            </div>

                            @if($all_live_classes->count() > 0)
                                <div class="table-responsive">
                                    <table class="uni-table">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>{{ $is_ar ? 'عنوان المحاضرة' : 'Lecture Title' }}</th>
                                                <th>{{ $is_ar ? 'الوحدة / الموديول' : 'Module' }}</th>
                                                <th>{{ $is_ar ? 'التاريخ والوقت' : 'Date & Time' }}</th>
                                                <th>{{ $is_ar ? 'الحالة' : 'Status' }}</th>
                                                <th>{{ $is_ar ? 'رابط المحاضرة' : 'Join Link' }}</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach($all_live_classes as $idx => $class)
                                                @php $is_active = class_started($class->id); @endphp
                                                <tr>
                                                    <td><strong>{{ str_pad($idx + 1, 2, '0', STR_PAD_LEFT) }}</strong></td>
                                                    <td><strong class="text-dark">{{ $class->title }}</strong></td>
                                                    <td><span class="badge bg-light text-dark border">{{ $class->module_title }}</span></td>
                                                    <td>
                                                        <div class="fw-bold">{{ date('d M, Y', $class->start_time) }}</div>
                                                        <small class="text-muted">{{ date('h:i a', $class->start_time) }} - {{ date('h:i a', $class->end_time) }}</small>
                                                    </td>
                                                    <td>
                                                        <span class="uni-live-badge {{ $class->status == 'live' ? 'live' : ($class->status == 'upcoming' ? 'upcoming' : 'completed') }}">
                                                            {{ $class->status }}
                                                        </span>
                                                    </td>
                                                    <td>
                                                        @if($is_active)
                                                            <a href="{{ route('bootcamp.live.class.join', slugify($class->title)) }}" class="btn btn-sm btn-danger fw-bold rounded-pill px-3">
                                                                <i class="fa-solid fa-link"></i> {{ $is_ar ? 'فتح اللينك' : 'Open Link' }}
                                                            </a>
                                                        @else
                                                            <span class="text-muted small"><i class="fa-solid fa-clock"></i> {{ $is_ar ? 'قريباً' : 'Upcoming' }}</span>
                                                        @endif
                                                    </td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            @else
                                <div class="text-center py-5 text-muted">
                                    <i class="fa-solid fa-calendar-xmark fa-3x mb-3 text-secondary"></i>
                                    <h5>{{ $is_ar ? 'جدول المحاضرات فارغ حالياً' : 'Timetable Schedule Empty' }}</h5>
                                </div>
                            @endif
                        </div>
                    </div>

                    <!-- Tab 3: Recorded Lectures Gallery (سجل المحاضرات) -->
                    <div id="tab-records-content" class="uni-tab-pane d-none">
                        <div class="uni-card">
                            <div class="uni-section-title">
                                <i class="fa-solid fa-photo-film"></i>
                                {{ $is_ar ? 'سجل المحاضرات التسجيلية والأرشيف الأكاديمي' : 'Recorded Lectures Archive & Media' }}
                            </div>

                            @if($all_resources->count() > 0)
                                <div class="row">
                                    @foreach($all_resources as $resource)
                                        <div class="col-md-6 mb-3">
                                            <div class="uni-record-item">
                                                <div>
                                                    <div class="d-flex align-items-center gap-2 mb-1">
                                                        <span class="badge {{ $resource->upload_type == 'record' ? 'bg-primary' : 'bg-success' }}">
                                                            {{ $resource->upload_type == 'record' ? ($is_ar ? 'محاضرة مسجلة' : 'Recorded Lecture') : ($is_ar ? 'ملف تعليمي' : 'Resource File') }}
                                                        </span>
                                                        <small class="text-muted">{{ $resource->module_title }}</small>
                                                    </div>
                                                    <h6 class="fw-bold text-dark mb-1">{{ $resource->title }}</h6>
                                                    <small class="text-muted">
                                                        <i class="fa-regular fa-clock me-1"></i>
                                                        {{ date('d M, Y', $resource->create_at) }}
                                                    </small>
                                                </div>

                                                <div>
                                                    @if($resource->upload_type == 'resource')
                                                        <a href="{{ route('bootcamp.resource.download', $resource->id) }}" class="uni-btn-play">
                                                            <i class="fa-solid fa-download"></i>
                                                            {{ $is_ar ? 'تحميل' : 'Download' }}
                                                        </a>
                                                    @else
                                                        <a href="{{ route('bootcamp.resource.play', $resource->title) }}" class="uni-btn-play">
                                                            <i class="fa-solid fa-circle-play"></i>
                                                            {{ $is_ar ? 'تشغيل' : 'Play' }}
                                                        </a>
                                                    @endif
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            @else
                                <div class="text-center py-5 text-muted">
                                    <i class="fa-solid fa-film fa-3x mb-3 text-secondary"></i>
                                    <h5>{{ $is_ar ? 'سجل المحاضرات لا يحتوي على تسجيلات حالياً' : 'No Recorded Lectures Available Yet' }}</h5>
                                </div>
                            @endif
                        </div>
                    </div>

                    <!-- Full Syllabus Accordion Structure -->
                    <div class="uni-card">
                        <div class="uni-section-title">
                            <i class="fa-solid fa-book-bookmark"></i>
                            {{ $is_ar ? 'خطة المنهج والأقسام الأكاديمية' : 'Program Syllabus & Modules' }}
                        </div>

                        @if($modules->count() > 0)
                            <div class="accordion accordion-flush" id="uniSyllabusAccordion">
                                @foreach($modules as $idx => $module)
                                    <div class="accordion-item border mb-2 rounded-3 overflow-hidden">
                                        <h2 class="accordion-header" id="heading-{{ $module->id }}">
                                            <button class="accordion-button collapsed fw-bold text-dark" type="button" data-bs-toggle="collapse" data-bs-target="#collapse-{{ $module->id }}">
                                                <span class="me-2 text-warning">#{{ str_pad($idx + 1, 2, '0', STR_PAD_LEFT) }}</span>
                                                {{ $module->title }}
                                            </button>
                                        </h2>
                                        <div id="collapse-{{ $module->id }}" class="accordion-collapse collapse" data-bs-parent="#uniSyllabusAccordion">
                                            <div class="accordion-body bg-light">
                                                @php
                                                    $m_classes = App\Models\BootcampLiveClass::where('module_id', $module->id)->get();
                                                    $m_res = App\Models\BootcampResource::where('module_id', $module->id)->get();
                                                @endphp
                                                @if($m_classes->count() > 0)
                                                    <h6 class="fw-bold text-navy mb-2"><i class="fa-solid fa-video me-1"></i> {{ $is_ar ? 'المحاضرات:' : 'Classes:' }}</h6>
                                                    <ul class="list-group mb-3">
                                                        @foreach($m_classes as $mc)
                                                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                                                <span>{{ $mc->title }}</span>
                                                                @if(class_started($mc->id))
                                                                    <a href="{{ route('bootcamp.live.class.join', slugify($mc->title)) }}" class="btn btn-sm btn-danger">
                                                                        <i class="fa-solid fa-link"></i> {{ $is_ar ? 'انضمام' : 'Join' }}
                                                                    </a>
                                                                @else
                                                                    <span class="badge bg-secondary">{{ $mc->status }}</span>
                                                                @endif
                                                            </li>
                                                        @endforeach
                                                    </ul>
                                                @endif
                                                @if($m_res->count() > 0)
                                                    <h6 class="fw-bold text-navy mb-2"><i class="fa-solid fa-folder-open me-1"></i> {{ $is_ar ? 'المصادر والتسجيلات:' : 'Resources & Recordings:' }}</h6>
                                                    <ul class="list-group">
                                                        @foreach($m_res as $mr)
                                                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                                                <span>{{ $mr->title }}</span>
                                                                @if($mr->upload_type == 'resource')
                                                                    <a href="{{ route('bootcamp.resource.download', $mr->id) }}" class="btn btn-sm btn-outline-primary">
                                                                        <i class="fa-solid fa-download"></i> {{ $is_ar ? 'تحميل' : 'Download' }}
                                                                    </a>
                                                                @else
                                                                    <a href="{{ route('bootcamp.resource.play', $mr->title) }}" class="btn btn-sm btn-outline-dark">
                                                                        <i class="fa-solid fa-play"></i> {{ $is_ar ? 'تشغيل' : 'Play' }}
                                                                    </a>
                                                                @endif
                                                            </li>
                                                        @endforeach
                                                    </ul>
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        @endif
                    </div>

                </div>
            </div>
        </div>
    </section>
</div>

@push('js')
<script>
    function switchUniTab(tabName) {
        // Hide all panes
        document.querySelectorAll('.uni-tab-pane').forEach(function(pane) {
            pane.classList.add('d-none');
        });
        // Remove active class from buttons
        document.querySelectorAll('.uni-nav-btn').forEach(function(btn) {
            btn.classList.remove('active');
        });

        // Show target pane & activate button
        document.getElementById('tab-' + tabName + '-content').classList.remove('d-none');
        document.getElementById('tab-' + tabName + '-btn').classList.add('active');
    }
</script>
@endpush
@endsection

