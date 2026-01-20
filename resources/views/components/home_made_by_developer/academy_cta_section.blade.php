{{--
    Academy CTA Section Block
    ==========================
    To make a editable image or text need to be add a "builder editable" class and builder identity attribute with a unique value
    builder identity value have to be unique under a single file
--}}

<style>
    .academy-cta-section {
        padding: 100px 0;
        background: linear-gradient(135deg, #1a365d 0%, #2d4a7c 50%, #1e3a5f 100%);
        position: relative;
        overflow: hidden;
        direction: rtl;
    }

    .academy-cta-section::before {
        content: '';
        position: absolute;
        top: -50%;
        right: -20%;
        width: 500px;
        height: 500px;
        background: rgba(255, 255, 255, 0.05);
        border-radius: 50%;
    }

    .academy-cta-section::after {
        content: '';
        position: absolute;
        bottom: -30%;
        left: -10%;
        width: 400px;
        height: 400px;
        background: rgba(255, 255, 255, 0.03);
        border-radius: 50%;
    }

    .academy-cta-content {
        position: relative;
        z-index: 1;
        text-align: center;
    }

    .academy-cta-icon {
        width: 80px;
        height: 80px;
        background: rgba(255, 255, 255, 0.1);
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        margin: 0 auto 30px;
        backdrop-filter: blur(10px);
    }

    .academy-cta-icon i {
        font-size: 36px;
        color: #f1c40f;
    }

    .academy-cta-title {
        font-size: 40px;
        font-weight: 700;
        color: #ffffff;
        margin-bottom: 20px;
        font-family: 'Cairo', 'Tajawal', sans-serif;
    }

    .academy-cta-subtitle {
        font-size: 18px;
        color: rgba(255, 255, 255, 0.9);
        max-width: 600px;
        margin: 0 auto 40px;
        line-height: 1.8;
    }

    .academy-cta-buttons {
        display: flex;
        gap: 20px;
        justify-content: center;
        flex-wrap: wrap;
    }

    .academy-cta-btn {
        display: inline-block;
        padding: 16px 40px;
        border-radius: 50px;
        font-size: 16px;
        font-weight: 600;
        text-decoration: none;
        transition: all 0.3s ease;
    }

    .academy-cta-btn.primary {
        background: linear-gradient(135deg, #e74c3c 0%, #c0392b 100%);
        color: #fff;
    }

    .academy-cta-btn.primary:hover {
        transform: translateY(-3px);
        box-shadow: 0 10px 30px rgba(231, 76, 60, 0.4);
        color: #fff;
    }

    .academy-cta-btn.secondary {
        background: transparent;
        color: #fff;
        border: 2px solid rgba(255, 255, 255, 0.5);
    }

    .academy-cta-btn.secondary:hover {
        background: rgba(255, 255, 255, 0.1);
        border-color: #fff;
        color: #fff;
    }

    /* Stats Row */
    .academy-cta-stats {
        display: flex;
        justify-content: center;
        gap: 60px;
        margin-top: 60px;
        flex-wrap: wrap;
    }

    .academy-cta-stat {
        text-align: center;
    }

    .academy-cta-stat-number {
        font-size: 42px;
        font-weight: 700;
        color: #f1c40f;
        margin-bottom: 5px;
    }

    .academy-cta-stat-label {
        font-size: 14px;
        color: rgba(255, 255, 255, 0.8);
        text-transform: uppercase;
        letter-spacing: 1px;
    }

    /* Responsive */
    @media (max-width: 768px) {
        .academy-cta-title {
            font-size: 28px;
        }

        .academy-cta-subtitle {
            font-size: 16px;
        }

        .academy-cta-stats {
            gap: 30px;
        }

        .academy-cta-stat-number {
            font-size: 32px;
        }

        .academy-cta-buttons {
            flex-direction: column;
            align-items: center;
        }

        .academy-cta-btn {
            width: 100%;
            max-width: 280px;
            text-align: center;
        }
    }
</style>

<section class="academy-cta-section">
    <div class="container">
        <div class="academy-cta-content drop-area">
            {{-- Icon --}}
            <div class="academy-cta-icon">
                <i class="fa fa-graduation-cap"></i>
            </div>

            {{-- Title --}}
            <h2 class="academy-cta-title builder-editable" builder-identity="1">
                {{ get_phrase('ابدأ رحلتك التعليمية اليوم') }}
            </h2>

            {{-- Subtitle --}}
            <p class="academy-cta-subtitle builder-editable" builder-identity="2">
                {{ get_phrase('انضم إلى آلاف المتدربين واحصل على شهادات معتمدة من أفضل الجهات التدريبية. ابدأ الآن واستثمر في مستقبلك المهني.') }}
            </p>

            {{-- Buttons --}}
            <div class="academy-cta-buttons">
                <a href="{{ route('register') }}" class="academy-cta-btn primary builder-editable" builder-identity="3">
                    {{ get_phrase('سجل الآن مجاناً') }}
                </a>
                <a href="{{ route('courses') }}" class="academy-cta-btn secondary builder-editable" builder-identity="4">
                    {{ get_phrase('تصفح الدورات') }}
                </a>
            </div>

            {{-- Stats --}}
            <div class="academy-cta-stats">
                <div class="academy-cta-stat">
                    <div class="academy-cta-stat-number">
                        {{ App\Models\Course::where('status', 'active')->count() }}+
                    </div>
                    <div class="academy-cta-stat-label builder-editable" builder-identity="5">
                        {{ get_phrase('دورة تدريبية') }}
                    </div>
                </div>
                <div class="academy-cta-stat">
                    <div class="academy-cta-stat-number">
                        @php
                        $enrollments = App\Models\Enrollment::count();
                        echo $enrollments >= 1000 ? number_format($enrollments / 1000, 1) . 'K' : $enrollments;
                        @endphp+
                    </div>
                    <div class="academy-cta-stat-label builder-editable" builder-identity="6">
                        {{ get_phrase('متدرب ومتدربة') }}
                    </div>
                </div>
                <div class="academy-cta-stat">
                    <div class="academy-cta-stat-number">
                        {{ App\Models\User::where('role', 'instructor')->count() }}+
                    </div>
                    <div class="academy-cta-stat-label builder-editable" builder-identity="7">
                        {{ get_phrase('مدرب متخصص') }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>