{{--
    Academy Hero Banner Block
    =========================
    To make a editable image or text need to be add a "builder editable" class and builder identity attribute with a unique value
    builder identity value have to be unique under a single file
--}}

<style>
    .academy-hero-banner {
        background: linear-gradient(135deg, #1a365d 0%, #2d4a7c 50%, #1e3a5f 100%);
        padding: 80px 0 60px;
        position: relative;
        overflow: hidden;
        direction: rtl;
    }

    .academy-hero-banner::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: url("data:image/svg+xml,%3Csvg width='60' height='60' viewBox='0 0 60 60' xmlns='http://www.w3.org/2000/svg'%3E%3Cg fill='none' fill-rule='evenodd'%3E%3Cg fill='%23ffffff' fill-opacity='0.03'%3E%3Cpath d='M36 34v-4h-2v4h-4v2h4v4h2v-4h4v-2h-4zm0-30V0h-2v4h-4v2h4v4h2V6h4V4h-4zM6 34v-4H4v4H0v2h4v4h2v-4h4v-2H6zM6 4V0H4v4H0v2h4v4h2V6h4V4H6z'/%3E%3C/g%3E%3C/g%3E%3C/svg%3E");
        opacity: 0.5;
    }

    .academy-hero-banner .container {
        position: relative;
        z-index: 1;
    }

    .academy-hero-title {
        font-size: 48px;
        font-weight: 700;
        color: #ffffff;
        margin-bottom: 15px;
        text-align: center;
        font-family: 'Cairo', 'Tajawal', sans-serif;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
    }

    .academy-hero-subtitle {
        font-size: 20px;
        color: rgba(255, 255, 255, 0.9);
        margin-bottom: 30px;
        text-align: center;
        font-weight: 400;
    }

    .academy-hero-description {
        font-size: 16px;
        color: rgba(255, 255, 255, 0.8);
        margin-bottom: 40px;
        text-align: center;
        max-width: 700px;
        margin-left: auto;
        margin-right: auto;
        line-height: 1.8;
    }

    /* Search Box */
    .academy-search-box {
        max-width: 650px;
        margin: 0 auto 50px;
        background: #ffffff;
        border-radius: 50px;
        padding: 8px;
        box-shadow: 0 10px 40px rgba(0, 0, 0, 0.2);
        display: flex;
        align-items: center;
    }

    .academy-search-box input {
        flex: 1;
        border: none;
        padding: 15px 25px;
        font-size: 16px;
        background: transparent;
        direction: rtl;
        outline: none;
    }

    .academy-search-box input::placeholder {
        color: #999;
    }

    .academy-search-box button {
        background: linear-gradient(135deg, #e74c3c 0%, #c0392b 100%);
        border: none;
        color: #fff;
        padding: 15px 35px;
        border-radius: 50px;
        font-size: 16px;
        font-weight: 600;
        cursor: pointer;
        transition: all 0.3s ease;
        display: flex;
        align-items: center;
        gap: 8px;
    }

    .academy-search-box button:hover {
        transform: translateY(-2px);
        box-shadow: 0 5px 20px rgba(231, 76, 60, 0.4);
    }

    /* Stats Section */
    .academy-stats {
        display: flex;
        justify-content: center;
        gap: 60px;
        flex-wrap: wrap;
        margin-top: 40px;
    }

    .academy-stat-item {
        text-align: center;
        padding: 20px;
    }

    .academy-stat-icon {
        width: 60px;
        height: 60px;
        background: rgba(255, 255, 255, 0.15);
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        margin: 0 auto 15px;
        backdrop-filter: blur(10px);
    }

    .academy-stat-icon i {
        font-size: 24px;
        color: #f1c40f;
    }

    .academy-stat-number {
        font-size: 32px;
        font-weight: 700;
        color: #ffffff;
        margin-bottom: 5px;
    }

    .academy-stat-label {
        font-size: 14px;
        color: rgba(255, 255, 255, 0.8);
        font-weight: 500;
    }

    /* Rating Stars */
    .academy-rating {
        display: flex;
        align-items: center;
        justify-content: center;
        gap: 5px;
        margin-bottom: 5px;
    }

    .academy-rating i {
        color: #f1c40f;
        font-size: 18px;
    }

    /* Responsive */
    @media (max-width: 768px) {
        .academy-hero-title {
            font-size: 32px;
        }

        .academy-hero-subtitle {
            font-size: 18px;
        }

        .academy-stats {
            gap: 30px;
        }

        .academy-stat-item {
            flex: 0 0 45%;
        }

        .academy-search-box {
            flex-direction: column;
            border-radius: 20px;
            padding: 15px;
        }

        .academy-search-box input {
            width: 100%;
            text-align: center;
            margin-bottom: 10px;
        }

        .academy-search-box button {
            width: 100%;
            justify-content: center;
        }
    }
</style>

<section class="academy-hero-banner">
    <div class="container">
        <div class="row">
            <div class="col-12 drop-area">
                {{-- Main Title --}}
                <h1 class="academy-hero-title builder-editable" builder-identity="1">
                    {{ get_phrase('شهادة MINI MBA في إدارة الأعمال') }}
                </h1>

                {{-- Subtitle --}}
                <p class="academy-hero-subtitle builder-editable" builder-identity="2">
                    {{ get_phrase('آي بي إس - دورات تدريبية في أكثر من 67 تخصص مختلف') }}
                </p>

                {{-- Description --}}
                <p class="academy-hero-description builder-editable" builder-identity="3">
                    {{ get_phrase('انضم إلى أكثر من آلاف المتدربين واحصل على شهادات معتمدة من أفضل الجهات التدريبية') }}
                </p>

                {{-- Search Box --}}
                <form action="{{ route('courses') }}" method="GET" class="academy-search-box">
                    <input type="text" name="search" placeholder="{{ get_phrase('البحث عن دورة تدريبية...') }}">
                    <button type="submit">
                        <i class="fa fa-search"></i>
                        <span class="builder-editable" builder-identity="4">{{ get_phrase('بحث') }}</span>
                    </button>
                </form>
            </div>
        </div>

        {{-- Statistics --}}
        <div class="row">
            <div class="col-12">
                <div class="academy-stats">
                    {{-- Courses Count --}}
                    <div class="academy-stat-item">
                        <div class="academy-stat-icon">
                            <i class="fa fa-book"></i>
                        </div>
                        <div class="academy-stat-number">
                            {{ App\Models\Course::where('status', 'active')->count() }}+
                        </div>
                        <div class="academy-stat-label builder-editable" builder-identity="5">
                            {{ get_phrase('دورة تدريبية') }}
                        </div>
                    </div>

                    {{-- Students Count --}}
                    <div class="academy-stat-item">
                        <div class="academy-stat-icon">
                            <i class="fa fa-users"></i>
                        </div>
                        <div class="academy-stat-number">
                            @php
                            $studentsCount = App\Models\Enrollment::count();
                            $formattedCount = $studentsCount >= 1000 ? number_format($studentsCount / 1000, 1) . 'K' : $studentsCount;
                            @endphp
                            {{ $formattedCount }}+
                        </div>
                        <div class="academy-stat-label builder-editable" builder-identity="6">
                            {{ get_phrase('متدرب ومتدربة') }}
                        </div>
                    </div>

                    {{-- Rating --}}
                    <div class="academy-stat-item">
                        <div class="academy-stat-icon">
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="academy-rating">
                            @php
                            $avgRating = App\Models\Review::avg('rating') ?? 4.8;
                            @endphp
                            @for($i = 1; $i <= 5; $i++)
                                @if($i <=round($avgRating))
                                <i class="fa fa-star"></i>
                                @else
                                <i class="fa fa-star-o"></i>
                                @endif
                                @endfor
                        </div>
                        <div class="academy-stat-number">
                            {{ number_format($avgRating, 1) }}
                        </div>
                        <div class="academy-stat-label builder-editable" builder-identity="7">
                            {{ get_phrase('تقييم المتدربين') }}
                        </div>
                    </div>

                    {{-- Instructors Count --}}
                    <div class="academy-stat-item">
                        <div class="academy-stat-icon">
                            <i class="fa fa-graduation-cap"></i>
                        </div>
                        <div class="academy-stat-number">
                            {{ App\Models\User::where('role', 'instructor')->count() }}+
                        </div>
                        <div class="academy-stat-label builder-editable" builder-identity="8">
                            {{ get_phrase('مدرب متخصص') }}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>