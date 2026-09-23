@extends('layouts.' . get_frontend_settings('theme'))
@php
    $current_lang = strtolower(session('language') ?? app()->getLocale() ?? get_settings('language') ?? 'english');
    $is_ar = (app()->getLocale() == 'ar') || in_array($current_lang, ['ar', 'arabic']) || (get_current_language_direction() == 'rtl');
    $is_rtl = $is_ar;
@endphp
@push('title', $is_ar ? 'إنشاء حساب' : get_phrase('Sign Up'))
@push('meta')@endpush
@push('css')
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&family=Cairo:wght@400;600;700;800&display=swap');

        .auth-redesign-area {
            font-family: {{ $is_rtl ? "'Cairo', 'Plus Jakarta Sans', sans-serif" : "'Plus Jakarta Sans', sans-serif" }};
            padding: 60px 0;
            background: radial-gradient(circle at 90% 10%, rgba(124, 58, 237, 0.08) 0%, rgba(241, 245, 249, 0.95) 90%);
            min-height: calc(100vh - 100px);
            display: flex;
            align-items: center;
            position: relative;
            overflow: hidden;
            @if($is_rtl)
                direction: rtl;
                text-align: right;
            @endif
        }

        /* Ambient background Orbs */
        .auth-orb {
            position: absolute;
            border-radius: 50%;
            filter: blur(90px);
            opacity: 0.45;
            z-index: 0;
            pointer-events: none;
        }
        .auth-orb-1 {
            width: 400px;
            height: 400px;
            background: linear-gradient(135deg, #8b5cf6, #ec4899);
            top: -80px;
            right: -80px;
            animation: floatOrb 14s infinite alternate ease-in-out;
        }
        .auth-orb-2 {
            width: 380px;
            height: 380px;
            background: linear-gradient(135deg, #6366f1, #3b82f6);
            bottom: -70px;
            left: -70px;
            animation: floatOrb 18s infinite alternate-reverse ease-in-out;
        }

        @keyframes floatOrb {
            0% { transform: translate(0, 0) scale(1); }
            100% { transform: translate(-30px, 40px) scale(1.1); }
        }

        .auth-card-container {
            position: relative;
            z-index: 1;
            background: rgba(255, 255, 255, 0.88);
            backdrop-filter: blur(24px);
            -webkit-backdrop-filter: blur(24px);
            border: 1px solid rgba(255, 255, 255, 0.9);
            border-radius: 28px;
            box-shadow: 0 25px 60px rgba(15, 23, 42, 0.08), 0 4px 16px rgba(0, 0, 0, 0.02);
            overflow: hidden;
            margin: 0 auto;
        }

        /* Left Hero Panel */
        .auth-hero-panel {
            background: linear-gradient(135deg, #0f172a 0%, #2e1065 45%, #4c1d95 100%);
            padding: 52px 44px;
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            color: #ffffff;
            position: relative;
            overflow: hidden;
        }
        .auth-hero-panel::before {
            content: '';
            position: absolute;
            top: 0; right: 0; bottom: 0; left: 0;
            background: radial-gradient(circle at 20% 80%, rgba(139, 92, 246, 0.3) 0%, transparent 65%);
            pointer-events: none;
        }

        .auth-badge {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 7px 18px;
            border-radius: 50px;
            background: rgba(255, 255, 255, 0.12);
            backdrop-filter: blur(12px);
            border: 1px solid rgba(255, 255, 255, 0.2);
            font-size: 13px;
            font-weight: 600;
            color: #f3e8ff;
            width: fit-content;
        }
        .auth-badge .pulse-dot {
            width: 8px;
            height: 8px;
            background: #ec4899;
            border-radius: 50%;
            box-shadow: 0 0 10px #ec4899;
        }

        .auth-hero-title {
            font-size: 34px;
            font-weight: 800;
            line-height: 1.25;
            letter-spacing: -0.02em;
            margin-top: 24px;
            margin-bottom: 14px;
            background: linear-gradient(135deg, #ffffff 0%, #e9d5ff 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
        .auth-hero-desc {
            font-size: 14px;
            color: #cbd5e1;
            line-height: 1.6;
            margin-bottom: 32px;
        }

        .auth-feature-list {
            display: flex;
            flex-direction: column;
            gap: 16px;
            margin-bottom: 32px;
        }
        .auth-feature-item {
            display: flex;
            align-items: center;
            gap: 14px;
            background: rgba(255, 255, 255, 0.05);
            padding: 14px 18px;
            border-radius: 16px;
            border: 1px solid rgba(255, 255, 255, 0.08);
            transition: all 0.3s ease;
        }
        .auth-feature-item:hover {
            background: rgba(255, 255, 255, 0.1);
            transform: {{ $is_rtl ? 'translateX(-4px)' : 'translateX(4px)' }};
        }
        .auth-feature-icon {
            width: 40px;
            height: 40px;
            border-radius: 12px;
            background: linear-gradient(135deg, #8b5cf6, #d946ef);
            display: flex;
            align-items: center;
            justify-content: center;
            color: #ffffff;
            font-size: 16px;
            flex-shrink: 0;
            box-shadow: 0 8px 16px rgba(139, 92, 246, 0.3);
        }
        .auth-feature-text h6 {
            font-size: 14px;
            font-weight: 700;
            margin: 0;
            color: #f8fafc;
        }
        .auth-feature-text p {
            font-size: 12px;
            margin: 2px 0 0 0;
            color: #cbd5e1;
        }

        .auth-stat-card {
            background: rgba(255, 255, 255, 0.08);
            backdrop-filter: blur(12px);
            border: 1px solid rgba(255, 255, 255, 0.15);
            border-radius: 18px;
            padding: 20px 24px;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .auth-stat-info h3 {
            font-size: 24px;
            font-weight: 800;
            margin: 0;
            color: #ffffff;
        }
        .auth-stat-info p {
            font-size: 12px;
            margin: 0;
            color: #ddd6fe;
            font-weight: 500;
        }

        /* Right Form Area */
        .auth-form-panel {
            padding: 52px 48px;
        }
        .auth-header {
            margin-bottom: 28px;
        }
        .auth-header h3 {
            font-size: 28px;
            font-weight: 800;
            color: #0f172a;
            margin-bottom: 8px;
            letter-spacing: -0.02em;
        }
        .auth-header p {
            font-size: 14px;
            color: #64748b;
            margin: 0;
        }

        .auth-field-group {
            margin-bottom: 20px;
        }
        .auth-label {
            font-size: 13px;
            font-weight: 700;
            color: #334155;
            margin-bottom: 8px;
            display: block;
        }
        .auth-input-wrapper {
            position: relative;
            display: flex;
            align-items: center;
        }
        .auth-input-icon {
            position: absolute;
            @if($is_rtl)
                right: 16px;
                left: auto;
            @else
                left: 16px;
                right: auto;
            @endif
            color: #94a3b8;
            font-size: 16px;
            pointer-events: none;
            transition: color 0.2s ease;
        }
        .auth-input {
            width: 100%;
            height: 52px;
            @if($is_rtl)
                padding: 12px 46px 12px 16px;
            @else
                padding: 12px 16px 12px 46px;
            @endif
            background: #f8fafc;
            border: 1.5px solid #e2e8f0;
            border-radius: 14px;
            font-size: 14px;
            color: #0f172a;
            font-weight: 500;
            transition: all 0.25s ease;
        }
        .auth-textarea {
            width: 100%;
            padding: 12px 16px;
            background: #f8fafc;
            border: 1.5px solid #e2e8f0;
            border-radius: 14px;
            font-size: 14px;
            color: #0f172a;
            font-weight: 500;
            transition: all 0.25s ease;
        }
        .auth-input:focus, .auth-textarea:focus {
            outline: none;
            background: #ffffff;
            border-color: #8b5cf6;
            box-shadow: 0 0 0 4px rgba(139, 92, 246, 0.12);
        }
        .auth-input:focus ~ .auth-input-icon {
            color: #8b5cf6;
        }
        .auth-password-toggle {
            position: absolute;
            @if($is_rtl)
                left: 14px;
                right: auto;
            @else
                right: 14px;
                left: auto;
            @endif
            background: none;
            border: none;
            color: #94a3b8;
            cursor: pointer;
            font-size: 16px;
            padding: 6px;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: color 0.2s ease;
        }
        .auth-password-toggle:hover {
            color: #475569;
        }

        .auth-instructor-card {
            background: #f8fafc;
            border: 1.5px dashed #cbd5e1;
            border-radius: 16px;
            padding: 16px 20px;
            margin-bottom: 22px;
            transition: all 0.3s ease;
        }
        .auth-instructor-card:hover {
            border-color: #8b5cf6;
            background: #f5f3ff;
        }
        .auth-checkbox-label {
            display: flex;
            align-items: center;
            gap: 10px;
            color: #334155;
            font-weight: 700;
            font-size: 14px;
            cursor: pointer;
            margin: 0;
        }
        .auth-checkbox {
            width: 18px;
            height: 18px;
            border-radius: 6px;
            border: 1.5px solid #cbd5e1;
            cursor: pointer;
            accent-color: #8b5cf6;
        }

        .instructor-extra-box {
            margin-top: 16px;
            padding-top: 16px;
            border-top: 1px solid #e2e8f0;
        }

        .auth-btn-submit {
            width: 100%;
            height: 52px;
            background: linear-gradient(135deg, #8b5cf6 0%, #7c3aed 100%);
            color: #ffffff;
            border: none;
            border-radius: 14px;
            font-size: 15px;
            font-weight: 700;
            letter-spacing: 0.01em;
            cursor: pointer;
            box-shadow: 0 10px 24px rgba(139, 92, 246, 0.28);
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
        }
        .auth-btn-submit:hover {
            transform: translateY(-2px);
            box-shadow: 0 14px 30px rgba(139, 92, 246, 0.38);
            background: linear-gradient(135deg, #7c3aed 0%, #6d28d9 100%);
        }
        .auth-btn-submit i {
            @if($is_rtl)
                transform: scaleX(-1);
            @endif
        }

        /* Language Switcher Pill */
        .lang-switcher {
            display: inline-flex;
            align-items: center;
            gap: 3px;
            background: #f1f5f9;
            border: 1px solid #e2e8f0;
            border-radius: 20px;
            padding: 3px 6px;
            font-size: 12px;
            font-weight: 700;
        }
        .lang-switcher a {
            color: #64748b;
            text-decoration: none;
            padding: 4px 10px;
            border-radius: 14px;
            transition: all 0.2s ease;
        }
        .lang-switcher a.active {
            background: #8b5cf6;
            color: #ffffff;
            box-shadow: 0 2px 8px rgba(139, 92, 246, 0.3);
        }
        .lang-switcher a:hover:not(.active) {
            color: #0f172a;
        }

        .auth-link {
            color: #8b5cf6;
            font-weight: 700;
            text-decoration: none;
            transition: color 0.2s ease;
        }
        .auth-link:hover {
            color: #7c3aed;
            text-decoration: underline;
        }

        .auth-footer-text {
            text-align: center;
            margin-top: 24px;
            font-size: 14px;
            color: #64748b;
        }

        @media (max-width: 991px) {
            .auth-hero-panel { display: none; }
            .auth-form-panel { padding: 36px 24px; }
        }
    </style>
@endpush

@section('content')
    <section class="auth-redesign-area">
        <div class="auth-orb auth-orb-1"></div>
        <div class="auth-orb auth-orb-2"></div>

        <div class="container">
            <div class="auth-card-container">
                <div class="row g-0">
                    <!-- Left Hero Panel -->
                    <div class="col-lg-6 d-none d-lg-block">
                        <div class="auth-hero-panel">
                            <div>
                                <div class="auth-badge">
                                    <span class="pulse-dot"></span>
                                    {{ $is_ar ? 'انضم إلى أكاديمية برومينانس' : get_phrase('Join Prominence Academy') }}
                                </div>
                                <h2 class="auth-hero-title">{{ $is_ar ? 'ابدأ رحلة التعلم اليوم' : get_phrase('Start Your Learning Journey Today') }}</h2>
                                <p class="auth-hero-desc">{{ $is_ar ? 'أنشئ حسابك لفتح مئات الدورات التدريبية عالية الجودة والأدوات التفاعلية وفرص العمل.' : get_phrase('Create your account to unlock hundreds of high-quality courses, interactive tools, and career opportunities.') }}</p>
                                
                                <div class="auth-feature-list">
                                    <div class="auth-feature-item">
                                        <div class="auth-feature-icon">
                                            <i class="fa-solid fa-rocket"></i>
                                        </div>
                                        <div class="auth-feature-text">
                                            <h6>{{ $is_ar ? 'وصول فوري للدورات' : get_phrase('Instant Course Access') }}</h6>
                                            <p>{{ $is_ar ? 'سجل في أفضل الدورات وتعلم بسريتك الخاصة' : get_phrase('Enroll in top courses and learn at your own pace') }}</p>
                                        </div>
                                    </div>
                                    <div class="auth-feature-item">
                                        <div class="auth-feature-icon">
                                            <i class="fa-solid fa-user-tie"></i>
                                        </div>
                                        <div class="auth-feature-text">
                                            <h6>{{ $is_ar ? 'محاضرون خبراء' : get_phrase('Expert Instructors') }}</h6>
                                            <p>{{ $is_ar ? 'تعلم مباشرة من قادة الصناعة المعتمدين' : get_phrase('Learn directly from verified industry leaders') }}</p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="auth-stat-card">
                                <div class="auth-stat-info">
                                    <h3>{{ $is_ar ? 'مجاني 100%' : '100% Free' }}</h3>
                                    <p>{{ $is_ar ? 'لإنشاء حسابك كطالب' : get_phrase('To Create Your Student Account') }}</p>
                                </div>
                                <div class="auth-feature-icon" style="background: linear-gradient(135deg, #ec4899, #be185d);">
                                    <i class="fa-solid fa-star"></i>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Right Form Panel -->
                    <div class="col-lg-6 col-12">
                        <div class="auth-form-panel">
                            <!-- Language Switcher Bar -->
                            <div class="d-flex justify-content-between align-items-center mb-4">
                                <div class="auth-badge d-lg-none">
                                    <span class="pulse-dot"></span>
                                    {{ $is_ar ? 'أكاديمية برومينانس' : get_phrase('Prominence Academy') }}
                                </div>
                                <div class="lang-switcher {{ $is_rtl ? 'me-auto' : 'ms-auto' }}">
                                    <a href="{{ route('select.lng', ['language' => 'english']) }}" class="{{ !$is_ar ? 'active' : '' }}">EN</a>
                                    <a href="{{ route('select.lng', ['language' => 'arabic']) }}" class="{{ $is_ar ? 'active' : '' }}">العربية</a>
                                </div>
                            </div>

                            <div class="auth-header">
                                <h3>{{ $is_ar ? 'إنشاء حساب جديد' : get_phrase('Create Account') }} 🚀</h3>
                                <p>{{ $is_ar ? 'أدخل تفاصيلك أدناه للبدء.' : get_phrase('Fill in your details below to get started.') }}</p>
                            </div>

                            <form action="{{ route('register') }}" id="login-form" method="post" enctype="multipart/form-data">
                                @csrf

                                <div class="auth-field-group">
                                    <label for="name" class="auth-label">{{ $is_ar ? 'الاسم الكامل' : get_phrase('Full Name') }}</label>
                                    <div class="auth-input-wrapper">
                                        <input type="text" id="name" name="name" class="auth-input" placeholder="{{ $is_ar ? 'الاسم' : 'John Doe' }}" value="{{ old('name') }}" required autofocus>
                                        <i class="fa-regular fa-user auth-input-icon"></i>
                                    </div>
                                    @error('name')
                                        <small class="text-danger mt-1 d-block">{{ $message }}</small>
                                    @enderror
                                </div>

                                <div class="auth-field-group">
                                    <label for="email" class="auth-label">{{ $is_ar ? 'البريد الإلكتروني' : get_phrase('Email Address') }}</label>
                                    <div class="auth-input-wrapper">
                                        <input type="email" id="email" name="email" class="auth-input" placeholder="name@example.com" value="{{ old('email') }}" required>
                                        <i class="fa-regular fa-envelope auth-input-icon"></i>
                                    </div>
                                    @error('email')
                                        <small class="text-danger mt-1 d-block">{{ $message }}</small>
                                    @enderror
                                </div>

                                <div class="auth-field-group">
                                    <label for="password" class="auth-label">{{ $is_ar ? 'كلمة المرور' : get_phrase('Password') }}</label>
                                    <div class="auth-input-wrapper">
                                        <input type="password" id="password" name="password" class="auth-input" placeholder="••••••••••••" required>
                                        <i class="fa-solid fa-lock auth-input-icon"></i>
                                        <button type="button" id="showpassword" class="auth-password-toggle">
                                            <i class="fa-regular fa-eye" id="toggleIcon"></i>
                                        </button>
                                    </div>
                                    @error('password')
                                        <small class="text-danger mt-1 d-block">{{ $message }}</small>
                                    @enderror
                                </div>

                                @if (get_settings('allow_instructor'))
                                    <div class="auth-instructor-card">
                                        <label for="instructor" class="auth-checkbox-label">
                                            <input class="auth-checkbox" id="instructor" type="checkbox" name="instructor">
                                            <span>{{ $is_ar ? 'التقديم لتصبح محاضراً' : get_phrase('Apply to Become an Instructor') }}</span>
                                        </label>

                                        <div id="become-instructor-fields" class="instructor-extra-box d-none">
                                            <div class="auth-field-group">
                                                <label for="phone" class="auth-label">{{ $is_ar ? 'رقم الهاتف' : get_phrase('Phone Number') }}</label>
                                                <div class="auth-input-wrapper">
                                                    <input class="auth-input" id="phone" type="text" name="phone" placeholder="{{ $is_ar ? 'أدخل رقم هاتفك' : get_phrase('Enter your phone number') }}">
                                                    <i class="fa-solid fa-phone auth-input-icon"></i>
                                                </div>
                                            </div>

                                            <div class="auth-field-group">
                                                <label for="document" class="auth-label">
                                                    {{ $is_ar ? 'مستند المؤهلات' : get_phrase('Qualification Document') }} 
                                                    <small class="text-muted">(doc, pdf, png, jpg)</small>
                                                </label>
                                                <input class="auth-textarea" id="document" type="file" name="document">
                                            </div>

                                            <div class="auth-field-group">
                                                <label for="description" class="auth-label">{{ $is_ar ? 'نبذة مختصرة / رسالة التقديم' : get_phrase('Bio / Application Message') }}</label>
                                                <textarea class="auth-textarea" id="description" name="description" rows="3" placeholder="{{ $is_ar ? 'أخبرنا باختصار عن خبرتك التدريسية...' : get_phrase('Tell us briefly about your teaching experience...') }}"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                @endif

                                @if (get_frontend_settings('recaptcha_status'))
                                    <button class="auth-btn-submit g-recaptcha" data-sitekey="{{ get_frontend_settings('recaptcha_sitekey') }}" data-callback='onLoginSubmit' data-action='submit'>
                                        <span>{{ $is_ar ? 'إنشاء حساب' : get_phrase('Create Account') }}</span>
                                        <i class="fa-solid fa-arrow-right"></i>
                                    </button>
                                @else
                                    <button type="submit" class="auth-btn-submit">
                                        <span>{{ $is_ar ? 'إنشاء حساب' : get_phrase('Create Account') }}</span>
                                        <i class="fa-solid fa-arrow-right"></i>
                                    </button>
                                @endif

                                <p class="auth-footer-text">
                                    {{ $is_ar ? 'لديك حساب بالفعل؟' : get_phrase('Already have an account?') }}
                                    <a href="{{ route('login') }}" class="auth-link">{{ $is_ar ? 'تسجيل الدخول' : get_phrase('Sign In') }}</a>
                                </p>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@push('js')
    <script>
        "use strict";

        $(document).ready(function() {
            $('#showpassword').on('click', function(e) {
                e.preventDefault();
                const input = $('#password');
                const icon = $('#toggleIcon');

                if (input.attr('type') === 'password') {
                    input.attr('type', 'text');
                    icon.removeClass('fa-eye').addClass('fa-eye-slash');
                } else {
                    input.attr('type', 'password');
                    icon.removeClass('fa-eye-slash').addClass('fa-eye');
                }
            });

            $('#instructor').on('change', function () {
                if ($(this).is(':checked')) {
                    $('#become-instructor-fields').removeClass('d-none');
                    $('#phone').attr('required', true);
                    $('#document').attr('required', true);
                } else {
                    $('#become-instructor-fields').addClass('d-none');
                    $('#phone').removeAttr('required');
                    $('#document').removeAttr('required');
                }
            });
        });

        function onLoginSubmit(token) {
            document.getElementById("login-form").submit();
        }
    </script>
@endpush
