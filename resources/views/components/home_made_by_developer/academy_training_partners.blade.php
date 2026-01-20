{{--
    Academy Training Partners Block
    ================================
    To make a editable image or text need to be add a "builder editable" class and builder identity attribute with a unique value
    builder identity value have to be unique under a single file
--}}

<style>
    .academy-training-partners {
        padding: 80px 0;
        background: #f8f9fa;
        direction: rtl;
    }

    .academy-section-header {
        text-align: center;
        margin-bottom: 50px;
    }

    .academy-section-subtitle {
        font-size: 14px;
        color: #e74c3c;
        text-transform: uppercase;
        letter-spacing: 2px;
        margin-bottom: 10px;
        font-weight: 600;
    }

    .academy-section-title {
        font-size: 36px;
        font-weight: 700;
        color: #1a365d;
        margin-bottom: 15px;
        font-family: 'Cairo', 'Tajawal', sans-serif;
    }

    .academy-section-desc {
        font-size: 16px;
        color: #6b7385;
        max-width: 600px;
        margin: 0 auto;
        line-height: 1.8;
    }

    /* Course Cards */
    .academy-course-card {
        background: #ffffff;
        border-radius: 16px;
        overflow: hidden;
        box-shadow: 0 5px 25px rgba(0, 0, 0, 0.08);
        transition: all 0.3s ease;
        height: 100%;
        display: flex;
        flex-direction: column;
    }

    .academy-course-card:hover {
        transform: translateY(-8px);
        box-shadow: 0 15px 40px rgba(0, 0, 0, 0.15);
    }

    .academy-course-image {
        position: relative;
        height: 200px;
        overflow: hidden;
    }

    .academy-course-image img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        transition: transform 0.3s ease;
    }

    .academy-course-card:hover .academy-course-image img {
        transform: scale(1.05);
    }

    .academy-course-badge {
        position: absolute;
        top: 15px;
        right: 15px;
        background: linear-gradient(135deg, #e74c3c 0%, #c0392b 100%);
        color: #fff;
        padding: 6px 14px;
        border-radius: 20px;
        font-size: 13px;
        font-weight: 600;
    }

    .academy-course-badge.free {
        background: linear-gradient(135deg, #27ae60 0%, #1e8449 100%);
    }

    .academy-course-content {
        padding: 20px;
        flex: 1;
        display: flex;
        flex-direction: column;
    }

    .academy-course-title {
        font-size: 18px;
        font-weight: 600;
        color: #1a365d;
        margin-bottom: 10px;
        line-height: 1.5;
        display: -webkit-box;
        -webkit-line-clamp: 2;
        -webkit-box-orient: vertical;
        overflow: hidden;
    }

    .academy-course-meta {
        display: flex;
        align-items: center;
        gap: 20px;
        margin-bottom: 15px;
        color: #6b7385;
        font-size: 14px;
    }

    .academy-course-meta span {
        display: flex;
        align-items: center;
        gap: 6px;
    }

    .academy-course-meta i {
        color: #e74c3c;
    }

    .academy-course-instructor {
        display: flex;
        align-items: center;
        gap: 12px;
        margin-top: auto;
        padding-top: 15px;
        border-top: 1px solid #eee;
    }

    .academy-instructor-avatar {
        width: 40px;
        height: 40px;
        border-radius: 50%;
        object-fit: cover;
    }

    .academy-instructor-name {
        font-size: 14px;
        color: #6b7385;
    }

    .academy-instructor-name strong {
        color: #1a365d;
        font-weight: 600;
    }

    .academy-course-rating {
        display: flex;
        align-items: center;
        gap: 5px;
        margin-right: auto;
    }

    .academy-course-rating i {
        color: #f1c40f;
        font-size: 14px;
    }

    .academy-course-rating span {
        color: #1a365d;
        font-weight: 600;
        font-size: 14px;
    }

    .academy-view-all-btn {
        text-align: center;
        margin-top: 50px;
    }

    .academy-view-all-btn a {
        display: inline-block;
        padding: 15px 40px;
        background: linear-gradient(135deg, #1a365d 0%, #2d4a7c 100%);
        color: #fff;
        border-radius: 50px;
        font-size: 16px;
        font-weight: 600;
        text-decoration: none;
        transition: all 0.3s ease;
    }

    .academy-view-all-btn a:hover {
        transform: translateY(-3px);
        box-shadow: 0 10px 30px rgba(26, 54, 93, 0.3);
        color: #fff;
    }

    /* Responsive */
    @media (max-width: 768px) {
        .academy-section-title {
            font-size: 28px;
        }

        .academy-course-meta {
            flex-wrap: wrap;
            gap: 10px;
        }
    }
</style>

<section class="academy-training-partners">
    <div class="container">
        {{-- Section Header --}}
        <div class="academy-section-header drop-area">
            <p class="academy-section-subtitle builder-editable" builder-identity="1">
                {{ get_phrase('شركاؤنا في النجاح') }}
            </p>
            <h2 class="academy-section-title builder-editable" builder-identity="2">
                {{ get_phrase('جهات تدريبية تعمل معنا') }}
            </h2>
            <p class="academy-section-desc builder-editable" builder-identity="3">
                {{ get_phrase('نتعاون مع أفضل الجهات التدريبية لتقديم محتوى تعليمي عالي الجودة') }}
            </p>
        </div>

        {{-- Courses Grid --}}
        <div class="row g-4">
            @php
            $courses = App\Models\Course::where('status', 'active')->latest('id')->take(4)->get();
            @endphp

            @foreach ($courses as $course)
            @php
            $ratings = DB::table('reviews')->where('course_id', $course->id)->pluck('rating')->toArray();
            $average_rating = count($ratings) > 0 ? array_sum($ratings) / count($ratings) : 0;
            @endphp
            <div class="col-lg-3 col-md-6">
                <a href="{{ route('course.details', $course->slug) }}" class="text-decoration-none">
                    <div class="academy-course-card">
                        <div class="academy-course-image">
                            <img src="{{ get_image($course->thumbnail) }}" alt="{{ $course->title }}">
                            @if (isset($course->is_paid) && $course->is_paid == 0)
                            <span class="academy-course-badge free">{{ get_phrase('مجاني') }}</span>
                            @elseif (isset($course->discount_flag) && $course->discount_flag == 1)
                            <span class="academy-course-badge">{{ currency($course->discounted_price, 2) }}</span>
                            @else
                            <span class="academy-course-badge">{{ currency($course->price, 2) }}</span>
                            @endif
                        </div>
                        <div class="academy-course-content">
                            <h3 class="academy-course-title">{{ $course->title }}</h3>
                            <div class="academy-course-meta">
                                <span>
                                    <i class="fa fa-book"></i>
                                    {{ lesson_count($course->id) }} {{ get_phrase('درس') }}
                                </span>
                                <span>
                                    <i class="fa fa-users"></i>
                                    {{ course_enrollments($course->id) }} {{ get_phrase('متدرب') }}
                                </span>
                            </div>
                            <div class="academy-course-instructor">
                                <img src="{{ course_instructor_image($course->id) }}" alt="" class="academy-instructor-avatar">
                                <div class="academy-instructor-name">
                                    {{ get_phrase('بواسطة') }} <strong>{{ course_by_instructor($course->id)->name }}</strong>
                                </div>
                                @if($average_rating > 0)
                                <div class="academy-course-rating">
                                    <i class="fa fa-star"></i>
                                    <span>{{ number_format($average_rating, 1) }}</span>
                                </div>
                                @endif
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            @endforeach
        </div>

        {{-- View All Button --}}
        <div class="academy-view-all-btn drop-area">
            <a href="{{ route('courses') }}" class="builder-editable" builder-identity="4">
                {{ get_phrase('عرض جميع الدورات') }}
            </a>
        </div>
    </div>
</section>