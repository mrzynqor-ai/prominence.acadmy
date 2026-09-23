@extends('layouts' . '.' . get_frontend_settings('theme'))
@php
    $current_lang = strtolower(session('language') ?? app()->getLocale() ?? get_settings('language') ?? 'english');
    $is_ar = (app()->getLocale() == 'ar') || in_array($current_lang, ['ar', 'arabic']) || (get_current_language_direction() == 'rtl');
    $is_rtl = $is_ar;
@endphp
@push('title', $is_ar ? 'تسجيل الدخول' : get_phrase('Log In'))
@push('meta')@endpush
@push('css')
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&family=Cairo:wght@400;600;700;800&display=swap');

        .auth-redesign-area {
            font-family: {{ $is_rtl ? "'Cairo', 'Plus Jakarta Sans', sans-serif" : "'Plus Jakarta Sans', sans-serif" }};
            padding: 60px 0;
            background: radial-gradient(circle at 10% 20%, rgba(99, 102, 241, 0.06) 0%, rgba(241, 245, 249, 0.95) 90%);
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

        /* Ambient glowing background blobs */
        .auth-orb {
            position: absolute;
            border-radius: 50%;
            filter: blur(90px);
            opacity: 0.45;
            z-index: 0;
            pointer-events: none;
        }
        .auth-orb-1 {
            width: 380px;
            height: 380px;
            background: linear-gradient(135deg, #6366f1, #a855f7);
            top: -60px;
            left: -60px;
            animation: floatOrb 12s infinite alternate ease-in-out;
        }
        .auth-orb-2 {
            width: 420px;
            height: 420px;
            background: linear-gradient(135deg, #3b82f6, #06b6d4);
            bottom: -90px;
            right: -90px;
            animation: floatOrb 16s infinite alternate-reverse ease-in-out;
        }

        @keyframes floatOrb {
            0% { transform: translate(0, 0) scale(1); }
            100% { transform: translate(35px, 45px) scale(1.08); }
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
            background: linear-gradient(135deg, #0f172a 0%, #1e1b4b 45%, #312e81 100%);
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
            background: radial-gradient(circle at 80% 15%, rgba(99, 102, 241, 0.3) 0%, transparent 65%);
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
            color: #e0e7ff;
            width: fit-content;
        }
        .auth-badge .pulse-dot {
            width: 8px;
            height: 8px;
            background: #10b981;
            border-radius: 50%;
            box-shadow: 0 0 10px #10b981;
        }

        .auth-hero-title {
            font-size: 34px;
            font-weight: 800;
            line-height: 1.25;
            letter-spacing: -0.02em;
            margin-top: 24px;
            margin-bottom: 14px;
            background: linear-gradient(135deg, #ffffff 0%, #cbd5e1 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
        .auth-hero-desc {
            font-size: 14px;
            color: #94a3b8;
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
            background: linear-gradient(135deg, #6366f1, #8b5cf6);
            display: flex;
            align-items: center;
            justify-content: center;
            color: #ffffff;
            font-size: 16px;
            flex-shrink: 0;
            box-shadow: 0 8px 16px rgba(99, 102, 241, 0.3);
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
            color: #94a3b8;
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
            color: #a5b4fc;
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
            margin-bottom: 22px;
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
        .auth-input:focus {
            outline: none;
            background: #ffffff;
            border-color: #6366f1;
            box-shadow: 0 0 0 4px rgba(99, 102, 241, 0.12);
        }
        .auth-input:focus ~ .auth-input-icon {
            color: #6366f1;
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

        .auth-flex-row {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 24px;
            font-size: 13px;
        }
        .auth-checkbox-label {
            display: flex;
            align-items: center;
            gap: 8px;
            color: #475569;
            font-weight: 600;
            cursor: pointer;
            margin: 0;
        }
        .auth-checkbox {
            width: 18px;
            height: 18px;
            border-radius: 6px;
            border: 1.5px solid #cbd5e1;
            cursor: pointer;
            accent-color: #6366f1;
        }
        .auth-link {
            color: #6366f1;
            font-weight: 700;
            text-decoration: none;
            transition: color 0.2s ease;
        }
        .auth-link:hover {
            color: #4f46e5;
            text-decoration: underline;
        }

        .auth-btn-submit {
            width: 100%;
            height: 52px;
            background: linear-gradient(135deg, #6366f1 0%, #4f46e5 100%);
            color: #ffffff;
            border: none;
            border-radius: 14px;
            font-size: 15px;
            font-weight: 700;
            letter-spacing: 0.01em;
            cursor: pointer;
            box-shadow: 0 10px 24px rgba(99, 102, 241, 0.28);
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
        }
        .auth-btn-submit:hover {
            transform: translateY(-2px);
            box-shadow: 0 14px 30px rgba(99, 102, 241, 0.38);
            background: linear-gradient(135deg, #4f46e5 0%, #4338ca 100%);
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
            background: #6366f1;
            color: #ffffff;
            box-shadow: 0 2px 8px rgba(99, 102, 241, 0.3);
        }
        .lang-switcher a:hover:not(.active) {
            color: #0f172a;
        }

        /* Demo Account Quick Switcher */
        .demo-box {
            margin-top: 28px;
            padding: 16px;
            background: #f1f5f9;
            border-radius: 16px;
            border: 1px dashed #cbd5e1;
        }
        .demo-title {
            font-size: 11px;
            font-weight: 800;
            text-transform: uppercase;
            letter-spacing: 0.06em;
            color: #64748b;
            margin-bottom: 10px;
        }
        .demo-chips {
            display: flex;
            gap: 8px;
            flex-wrap: wrap;
        }
        .demo-chip {
            background: #ffffff;
            border: 1.5px solid #e2e8f0;
            padding: 6px 14px;
            border-radius: 10px;
            font-size: 12px;
            font-weight: 700;
            color: #334155;
            cursor: pointer;
            transition: all 0.2s ease;
            display: flex;
            align-items: center;
            gap: 6px;
        }
        .demo-chip:hover {
            background: #6366f1;
            color: #ffffff;
            border-color: #6366f1;
            transform: translateY(-1px);
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
                                    {{ $is_ar ? 'منصة أكاديمية برومينانس' : get_phrase('Prominence Academy Platform') }}
                                </div>
                                <h2 class="auth-hero-title">{{ $is_ar ? 'سرّع نموك المهني والتعليمي' : get_phrase('Accelerate Your Professional Growth') }}</h2>
                                <p class="auth-hero-desc">{{ $is_ar ? 'احصل على دورات تدريبية يقدمها خبراء، وجلسات مباشرة تفاعلية، ومجتمع تعلم عالمي مزدهر.' : get_phrase('Access expert-led courses, interactive live sessions, and a thriving global learning community.') }}</p>
                                
                                <div class="auth-feature-list">
                                    <div class="auth-feature-item">
                                        <div class="auth-feature-icon">
                                            <i class="fa-solid fa-graduation-cap"></i>
                                        </div>
                                        <div class="auth-feature-text">
                                            <h6>{{ $is_ar ? 'منهج معتمد' : get_phrase('Certified Curriculum') }}</h6>
                                            <p>{{ $is_ar ? 'شهادات معتمدة ومُعترف بها عند إكمال الدورة' : get_phrase('Industry recognised credentials upon completion') }}</p>
                                        </div>
                                    </div>
                                    <div class="auth-feature-item">
                                        <div class="auth-feature-icon">
                                            <i class="fa-solid fa-laptop-code"></i>
                                        </div>
                                        <div class="auth-feature-text">
                                            <h6>{{ $is_ar ? 'تعلم تفاعلي' : get_phrase('Interactive Learning') }}</h6>
                                            <p>{{ $is_ar ? 'مشاريع عملية وتقييم فوري للمهارات' : get_phrase('Hands-on projects and instant feedback') }}</p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="auth-stat-card">
                                <div class="auth-stat-info">
                                    <h3>10,000+</h3>
                                    <p>{{ $is_ar ? 'متعلم نشط حول العالم' : get_phrase('Active Learners Worldwide') }}</p>
                                </div>
                                <div class="auth-feature-icon" style="background: linear-gradient(135deg, #10b981, #059669);">
                                    <i class="fa-solid fa-users"></i>
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
                                <h3>{{ $is_ar ? 'مرحباً بعودتك' : get_phrase('Welcome Back') }} 👋</h3>
                                <p>{{ $is_ar ? 'يرجى إدخال بياناتك لتسجيل الدخول إلى حسابك.' : get_phrase('Please enter your details to sign in to your account.') }}</p>
                            </div>

                            <form action="{{ route('login') }}" id="login-form" method="POST">
                                @csrf
                                <input type="hidden" id="user_agent" name="user_agent">

                                <div class="auth-field-group">
                                    <label for="email" class="auth-label">{{ $is_ar ? 'البريد الإلكتروني' : get_phrase('Email Address') }}</label>
                                    <div class="auth-input-wrapper">
                                        <input type="email" id="email" name="email" class="auth-input" placeholder="name@example.com" required autocomplete="email" autofocus>
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

                                <div class="auth-flex-row">
                                    <label class="auth-checkbox-label" for="flexCheckChecked">
                                        <input class="auth-checkbox" type="checkbox" name="remember" id="flexCheckChecked" checked>
                                        <span>{{ $is_ar ? 'تذكرني' : get_phrase('Remember Me') }}</span>
                                    </label>
                                    <a href="{{ route('password.request') }}" class="auth-link">{{ $is_ar ? 'نسيت كلمة المرور؟' : get_phrase('Forgot Password?') }}</a>
                                </div>

                                @if(get_frontend_settings('recaptcha_status'))
                                    <button class="auth-btn-submit g-recaptcha" data-sitekey="{{ get_frontend_settings('recaptcha_sitekey') }}" data-callback='onLoginSubmit' data-action='submit'>
                                        <span>{{ $is_ar ? 'تسجيل الدخول' : get_phrase('Sign In') }}</span>
                                        <i class="fa-solid fa-arrow-right"></i>
                                    </button>
                                @else
                                    <button type="submit" id="login" class="auth-btn-submit">
                                        <span>{{ $is_ar ? 'تسجيل الدخول' : get_phrase('Sign In') }}</span>
                                        <i class="fa-solid fa-arrow-right"></i>
                                    </button>
                                @endif

                                <!-- Quick Demo Selector for local testing -->
                                <!-- <div class="demo-box">
                                    <div class="demo-title">{{ $is_ar ? 'تعبئة حساب تجريبي سريع' : get_phrase('Quick Fill Demo Account') }}</div>
                                    <div class="demo-chips">
                                        <button type="button" class="demo-chip custom-btn" id="admin">
                                            <i class="fa-solid fa-user-shield"></i> {{ $is_ar ? 'مسؤول' : get_phrase('Admin') }}
                                        </button>
                                        <button type="button" class="demo-chip custom-btn" id="instructor">
                                            <i class="fa-solid fa-chalkboard-user"></i> {{ $is_ar ? 'محاضر' : get_phrase('Instructor') }}
                                        </button>
                                        <button type="button" class="demo-chip custom-btn" id="student">
                                            <i class="fa-solid fa-user-graduate"></i> {{ $is_ar ? 'طالب' : get_phrase('Student') }}
                                        </button>
                                    </div>
                                </div> -->

                                <p class="auth-footer-text">
                                    {{ $is_ar ? 'ليس لديك حساب حتى الآن؟' : get_phrase('Don\'t have an account yet?') }}
                                    <a href="{{ route('register.form') }}" class="auth-link">{{ $is_ar ? 'إنشاء حساب مجاني' : get_phrase('Create Free Account') }}</a>
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
            $('.custom-btn').on('click', function(e) {
                e.preventDefault();

                var role = $(this).attr('id');
                if (role == 'admin') {
                    $('#email').val('admin@example.com');
                    $('#password').val('12345678');
                } else if (role == 'student') {
                    $('#email').val('student@example.com');
                    $('#password').val('12345678');
                } else {
                    $('#email').val('instructor@example.com');
                    $('#password').val('12345678');
                }
            });

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
        });

        function onLoginSubmit(token) {
            document.getElementById("login-form").submit();
        }

        document.addEventListener("DOMContentLoaded", function () {
            if (!localStorage.getItem('device_token')) {
                localStorage.setItem('device_token', crypto.randomUUID());
            }
            const deviceToken = localStorage.getItem('device_token');
            const agentInput = document.getElementById('user_agent');
            if (agentInput) {
                agentInput.value = deviceToken;
            }
        });
    </script>
@endpush



