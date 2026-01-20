{{--
    Academy Categories Grid Block
    ==============================
    To make a editable image or text need to be add a "builder editable" class and builder identity attribute with a unique value
    builder identity value have to be unique under a single file
--}}

<style>
    .academy-categories-grid {
        padding: 80px 0;
        background: #ffffff;
        direction: rtl;
    }

    .academy-categories-header {
        text-align: center;
        margin-bottom: 50px;
    }

    .academy-categories-subtitle {
        font-size: 14px;
        color: #e74c3c;
        text-transform: uppercase;
        letter-spacing: 2px;
        margin-bottom: 10px;
        font-weight: 600;
    }

    .academy-categories-title {
        font-size: 36px;
        font-weight: 700;
        color: #1a365d;
        margin-bottom: 15px;
        font-family: 'Cairo', 'Tajawal', sans-serif;
    }

    .academy-categories-desc {
        font-size: 16px;
        color: #6b7385;
        max-width: 600px;
        margin: 0 auto;
        line-height: 1.8;
    }

    /* Category Cards */
    .academy-category-card {
        background: #f8f9fa;
        border-radius: 16px;
        padding: 30px 20px;
        text-align: center;
        transition: all 0.3s ease;
        height: 100%;
        text-decoration: none;
        display: block;
        border: 2px solid transparent;
    }

    .academy-category-card:hover {
        background: #ffffff;
        transform: translateY(-5px);
        box-shadow: 0 15px 40px rgba(26, 54, 93, 0.1);
        border-color: #1a365d;
    }

    .academy-category-icon {
        width: 80px;
        height: 80px;
        background: linear-gradient(135deg, #1a365d 0%, #2d4a7c 100%);
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        margin: 0 auto 20px;
        transition: all 0.3s ease;
    }

    .academy-category-card:hover .academy-category-icon {
        background: linear-gradient(135deg, #e74c3c 0%, #c0392b 100%);
        transform: scale(1.1);
    }

    .academy-category-icon img {
        width: 40px;
        height: 40px;
        object-fit: contain;
        filter: brightness(0) invert(1);
    }

    .academy-category-icon i {
        font-size: 32px;
        color: #ffffff;
    }

    .academy-category-name {
        font-size: 18px;
        font-weight: 600;
        color: #1a365d;
        margin-bottom: 8px;
        transition: color 0.3s ease;
    }

    .academy-category-card:hover .academy-category-name {
        color: #e74c3c;
    }

    .academy-category-count {
        font-size: 14px;
        color: #6b7385;
        margin: 0;
    }

    .academy-category-count span {
        font-weight: 700;
        color: #1a365d;
    }

    /* View All Link */
    .academy-categories-footer {
        text-align: center;
        margin-top: 50px;
    }

    .academy-categories-footer a {
        display: inline-flex;
        align-items: center;
        gap: 10px;
        color: #1a365d;
        font-size: 16px;
        font-weight: 600;
        text-decoration: none;
        transition: all 0.3s ease;
    }

    .academy-categories-footer a:hover {
        color: #e74c3c;
        gap: 15px;
    }

    .academy-categories-footer a i {
        font-size: 18px;
    }

    /* Responsive */
    @media (max-width: 768px) {
        .academy-categories-title {
            font-size: 28px;
        }

        .academy-category-icon {
            width: 60px;
            height: 60px;
        }

        .academy-category-icon i {
            font-size: 24px;
        }

        .academy-category-icon img {
            width: 30px;
            height: 30px;
        }
    }
</style>

<section class="academy-categories-grid">
    <div class="container">
        {{-- Section Header --}}
        <div class="academy-categories-header drop-area">
            <p class="academy-categories-subtitle builder-editable" builder-identity="1">
                {{ get_phrase('تصفح حسب التخصص') }}
            </p>
            <h2 class="academy-categories-title builder-editable" builder-identity="2">
                {{ get_phrase('استكشف الجهات التدريبية التي نقدمها') }}
            </h2>
            <p class="academy-categories-desc builder-editable" builder-identity="3">
                {{ get_phrase('اختر التخصص الذي يناسبك من بين أكثر من 67 تخصص مختلف') }}
            </p>
        </div>

        {{-- Categories Grid --}}
        <div class="row g-4">
            @php
            $categories = App\Models\Category::where('parent_id', 0)->take(8)->get();

            // Default icons for categories if no logo
            $defaultIcons = [
            'fa-laptop-code',
            'fa-chart-line',
            'fa-language',
            'fa-briefcase',
            'fa-heartbeat',
            'fa-palette',
            'fa-graduation-cap',
            'fa-cogs'
            ];
            @endphp

            @foreach ($categories as $index => $category)
            <div class="col-lg-3 col-md-4 col-sm-6">
                <a href="{{ route('courses', $category->slug) }}" class="academy-category-card">
                    <div class="academy-category-icon">
                        @if ($category->category_logo)
                        <img src="{{ get_image($category->category_logo) }}" alt="{{ $category->title }}">
                        @else
                        <i class="fa {{ $defaultIcons[$index % count($defaultIcons)] }}"></i>
                        @endif
                    </div>
                    <h3 class="academy-category-name">{{ $category->title }}</h3>
                    <p class="academy-category-count">
                        <span>{{ count_category_courses($category->id) }}</span> {{ get_phrase('دورة تدريبية') }}
                    </p>
                </a>
            </div>
            @endforeach
        </div>

        {{-- View All Link --}}
        <div class="academy-categories-footer drop-area">
            <a href="{{ route('courses') }}" class="builder-editable" builder-identity="4">
                {{ get_phrase('عرض جميع التخصصات') }}
                <i class="fa fa-arrow-left"></i>
            </a>
        </div>
    </div>
</section>