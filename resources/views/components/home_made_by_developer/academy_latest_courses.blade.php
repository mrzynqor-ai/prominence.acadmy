{{--
    Academy Latest Courses Block
    =============================
    To make a editable image or text need to be add a "builder editable" class and builder identity attribute with a unique value
    builder identity value have to be unique under a single file
--}}

<style>
    .academy-latest-courses {
        padding: 80px 0;
        background: linear-gradient(180deg, #f8f9fa 0%, #ffffff 100%);
        direction: rtl;
    }

    .academy-latest-header {
        text-align: center;
        margin-bottom: 50px;
    }

    .academy-latest-subtitle {
        font-size: 14px;
        color: #e74c3c;
        text-transform: uppercase;
        letter-spacing: 2px;
        margin-bottom: 10px;
        font-weight: 600;
    }

    .academy-latest-title {
        font-size: 36px;
        font-weight: 700;
        color: #1a365d;
        margin-bottom: 15px;
        font-family: 'Cairo', 'Tajawal', sans-serif;
    }

    .academy-latest-desc {
        font-size: 16px;
        color: #6b7385;
        max-width: 600px;
        margin: 0 auto;
        line-height: 1.8;
    }

    /* Course Cards - List Style */
    .academy-latest-card {
        background: #ffffff;
        border-radius: 16px;
        overflow: hidden;
        box-shadow: 0 5px 20px rgba(0, 0, 0, 0.05);
        transition: all 0.3s ease;
        display: flex;
        gap: 20px;
        padding: 15px;
        margin-bottom: 20px;
        text-decoration: none;
        border: 1px solid #eee;
    }

    .academy-latest-card:hover {
        transform: translateX(-5px);
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        border-color: #1a365d;
    }

    .academy-latest-image {
        width: 180px;
        min-width: 180px;
        height: 130px;
        border-radius: 12px;
        overflow: hidden;
        position: relative;
    }

    .academy-latest-image img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    .academy-latest-price {
        position: absolute;
        bottom: 10px;
        right: 10px;
        background: linear-gradient(135deg, #e74c3c 0%, #c0392b 100%);
        color: #fff;
        padding: 5px 12px;
        border-radius: 20px;
        font-size: 13px;
        font-weight: 600;
    }

    .academy-latest-price.free {
        background: linear-gradient(135deg, #27ae60 0%, #1e8449 100%);
    }

    .academy-latest-content {
        flex: 1;
        display: flex;
        flex-direction: column;
        justify-content: center;
    }

    .academy-latest-course-title {
        font-size: 18px;
        font-weight: 600;
        color: #1a365d;
        margin-bottom: 8px;
        line-height: 1.5;
        display: -webkit-box;
        -webkit-line-clamp: 2;
        -webkit-box-orient: vertical;
        overflow: hidden;
    }

    .academy-latest-card:hover .academy-latest-course-title {
        color: #e74c3c;
    }

    .academy-latest-meta {
        display: flex;
        align-items: center;
        gap: 20px;
        margin-bottom: 12px;
        color: #6b7385;
        font-size: 13px;
    }

    .academy-latest-meta span {
        display: flex;
        align-items: center;
        gap: 5px;
    }

    .academy-latest-meta i {
        color: #1a365d;
        font-size: 14px;
    }

    .academy-latest-footer {
        display: flex;
        align-items: center;
        justify-content: space-between;
    }

    .academy-latest-instructor {
        display: flex;
        align-items: center;
        gap: 10px;
    }

    .academy-latest-instructor img {
        width: 35px;
        height: 35px;
        border-radius: 50%;
        object-fit: cover;
    }

    .academy-latest-instructor-name {
        font-size: 13px;
        color: #6b7385;
    }

    .academy-latest-instructor-name strong {
        color: #1a365d;
        font-weight: 600;
    }

    .academy-latest-rating {
        display: flex;
        align-items: center;
        gap: 5px;
        background: #fff8e1;
        padding: 5px 12px;
        border-radius: 20px;
    }

    .academy-latest-rating i {
        color: #f1c40f;
        font-size: 14px;
    }

    .academy-latest-rating span {
        color: #1a365d;
        font-weight: 600;
        font-size: 14px;
    }

    /* View All Button */
    .academy-latest-viewall {
        text-align: center;
        margin-top: 40px;
    }

    .academy-latest-viewall a {
        display: inline-block;
        padding: 15px 50px;
        background: linear-gradient(135deg, #e74c3c 0%, #c0392b 100%);
        color: #fff;
        border-radius: 50px;
        font-size: 16px;
        font-weight: 600;
        text-decoration: none;
        transition: all 0.3s ease;
    }

    .academy-latest-viewall a:hover {
        transform: translateY(-3px);
        box-shadow: 0 10px 30px rgba(231, 76, 60, 0.3);
        color: #fff;
    }

    /* Responsive */
    @media (max-width: 768px) {
        .academy-latest-title {
            font-size: 28px;
        }

        .academy-latest-card {
            flex-direction: column;
        }

        .academy-latest-image {
            width: 100%;
            height: 180px;
        }

        .academy-latest-meta {
            flex-wrap: wrap;
            gap: 10px;
        }

        .academy-latest-footer {
            flex-direction: column;
            align-items: flex-start;
            gap: 15px;
        }
    }
</style>

<section class="academy-latest-courses">
    <div class="container">
        {{-- Section Header --}}
        <div class="academy-latest-header drop-area">
            <p class="academy-latest-subtitle builder-editable" builder-identity="1">
                {{ get_phrase('تعلم مهارات جديدة') }}
            </p>
            <h2 class="academy-latest-title builder-editable" builder-identity="2">
                {{ get_phrase('أحدث البرامج التدريبية') }}
            </h2>
            <p class="academy-latest-desc builder-editable" builder-identity="3">
                {{ get_phrase('اكتشف أحدث الدورات التدريبية المضافة من أفضل المدربين المتخصصين') }}
            </p>
        </div>

        {{-- Courses List --}}
        <div class="row">
            <div class="col-lg-10 offset-lg-1">
                @php
                $latestCourses = App\Models\Course::where('status', 'active')->latest('id')->take(5)->get();
                @endphp

                @foreach ($latestCourses as $course)
                @php
                $ratings = DB::table('reviews')->where('course_id', $course->id)->pluck('rating')->toArray();
                $average_rating = count($ratings) > 0 ? array_sum($ratings) / count($ratings) : 0;
                $reviews_count = count($ratings);
                @endphp
                <a href="{{ route('course.details', $course->slug) }}" class="academy-latest-card">
                    <div class="academy-latest-image">
                        <img src="{{ get_image($course->thumbnail) }}" alt="{{ $course->title }}">
                        @if (isset($course->is_paid) && $course->is_paid == 0)
                        <span class="academy-latest-price free">{{ get_phrase('مجاني') }}</span>
                        @elseif (isset($course->discount_flag) && $course->discount_flag == 1)
                        <span class="academy-latest-price">{{ currency($course->discounted_price, 2) }}</span>
                        @else
                        <span class="academy-latest-price">{{ currency($course->price, 2) }}</span>
                        @endif
                    </div>
                    <div class="academy-latest-content">
                        <h3 class="academy-latest-course-title">{{ $course->title }}</h3>
                        <div class="academy-latest-meta">
                            <span>
                                <i class="fa fa-book"></i>
                                {{ lesson_count($course->id) }} {{ get_phrase('درس') }}
                            </span>
                            <span>
                                <i class="fa fa-clock"></i>
                                {{ course_duration($course->id) }}
                            </span>
                            <span>
                                <i class="fa fa-users"></i>
                                {{ course_enrollments($course->id) }} {{ get_phrase('متدرب') }}
                            </span>
                        </div>
                        <div class="academy-latest-footer">
                            <div class="academy-latest-instructor">
                                <img src="{{ course_instructor_image($course->id) }}" alt="">
                                <div class="academy-latest-instructor-name">
                                    {{ get_phrase('بواسطة') }} <strong>{{ course_by_instructor($course->id)->name }}</strong>
                                </div>
                            </div>
                            @if($average_rating > 0)
                            <div class="academy-latest-rating">
                                <i class="fa fa-star"></i>
                                <span>{{ number_format($average_rating, 1) }}</span>
                                <small>({{ $reviews_count }})</small>
                            </div>
                            @endif
                        </div>
                    </div>
                </a>
                @endforeach
            </div>
        </div>

        {{-- View All Button --}}
        <div class="academy-latest-viewall drop-area">
            <a href="{{ route('courses') }}" class="builder-editable" builder-identity="4">
                {{ get_phrase('عرض جميع الدورات') }}
            </a>
        </div>
    </div>
</section>