<div>
    {{-- To make a editable image or text need to be add a "builder editable" class and builder identity attribute with a unique value --}}
{{-- builder identity and builder editable --}}
{{-- builder identity value have to be unique under a single file --}}

<!-- 1. BANNER SECTION - Keep at top for immediate impact -->
<section class="banner-wraper mt-0 mt-md-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6 order-2 order-md-1">
                <div class="banner-content drop-area">
                    <h5 class="d-flex"><img class="builder-editable" builder-identity="1" src="{{asset('assets/page-builder/block-image/roket.svg')}}" alt="..."> <span class="builder-editable" builder-identity="2">{{ get_phrase('The Leader in online learning')}}</span></h5>
                    <h1>
                        <span class="builder-editable" builder-identity="3">{{ get_phrase("Start learning from the world's pro")}}</span>
                        <span class="gradient color shadow-none builder-editable" builder-identity="4">{{ get_phrase('instructors')}}</span>
                    </h1>
                    <p class="builder-editable" builder-identity="5">{{ get_phrase('We invites learners to explore courses designed by industry experts, offering cutting-edge content for skill development.')}}</p>
                    <div class="banner-btn drop-area">
                        <a href="{{ route('courses') }}" class="eBtn gradient builder-editable" builder-identity="6">{{ get_phrase('Get Started') }}</a>
                        <a data-bs-toggle="modal" data-bs-target="#promoVideo" href="#" class="eBtn learn-btn"><i class="fa-solid fa-play"></i>{{ get_phrase('Learn More') }}</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-8 col-md-6 order-1 order-md-2">
                <div class="banner-image mt-0 mt-md-5">
                    <img class="large-img" src="{{ asset(get_frontend_settings('banner_image')) }}" alt="banner-image">
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Vertically centered modal -->
<div class="modal fade-in-effect" id="promoVideo" tabindex="-1" aria-labelledby="promoVideoLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-xl">
        <div class="modal-content">
            <div class="modal-body bg-dark">
            </div>
        </div>
    </div>
</div>

<script>
    (function() {
        var xhr = new XMLHttpRequest();
        var url = "{{ route('view', ['path' => 'components.home_ajax_loaded_templates.promo_video']) }}";

        xhr.open("GET", url, true);
        xhr.onload = function() {
            if (xhr.status >= 200 && xhr.status < 400) {
                $('#promoVideo .modal-body').html(xhr.responseText);
            }
        };

        xhr.send();
    })();

    function scrollToSmoothly(pos, time) {
        if (isNaN(pos)) {
            throw "Position must be a number";
        }
        if (pos < 0) {
            throw "Position can not be negative";
        }
        var currentPos = window.scrollY || window.screenTop;
        if (currentPos < pos) {
            var t = 10;
            for (let i = currentPos; i <= pos; i += 10) {
                t += 10;
                setTimeout(function() {
                    window.scrollTo(0, i);
                }, t / 2);
            }
        } else {
            time = time || 2;
            var i = currentPos;
            var x;
            x = setInterval(function() {
                window.scrollTo(0, i);
                i -= 10;
                if (i <= pos) {
                    clearInterval(x);
                }
            }, time);
        }
    }
</script>

<!-- 2. PERFORMANCE SECTION - Show value proposition early -->
{{-- To make a editable image or text need to be add a "builder editable" class and builder identity attribute with a unique value --}}
{{-- builder identity and builder editable --}}
{{-- builder identity value have to be unique under a single file --}}

<section class="performance-wrapper section-padding">
    <div class="container">
        <div class="pr-wrap">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6  ps-border">
                    <div class="ps-single-wrap drop-area">
                        <img class="builder-editable" builder-identity="1" src="{{asset('assets/page-builder/block-image/p1.png')}}" alt="...">
                        <h4 class="builder-editable" builder-identity="2">{{get_phrase('Fast Performance')}}</h4>
                     </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 ps-border">
                    <div class="ps-single-wrap drop-area">
                        <img class="builder-editable" builder-identity="4" src="{{asset('assets/page-builder/block-image/p2.png')}}" alt="...">
                        <h4 class="builder-editable" builder-identity="5">{{get_phrase('Perfect Responsive')}}</h4>
                     </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 ps-border">
                    <div class="ps-single-wrap drop-area">
                        <img class="builder-editable" builder-identity="7" src="{{asset('assets/page-builder/block-image/p3.png')}}" alt="...">
                        <h4 class="builder-editable" builder-identity="8">{{get_phrase('Fast & Friendly Support')}}</h4>
                     </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 ps-border">
                    <div class="ps-single-wrap drop-area">
                        <img class="builder-editable" builder-identity="10" src="{{asset('assets/page-builder/block-image/p4.png')}}" alt="...">
                        <h4 class="builder-editable" builder-identity="11">{{get_phrase('Easy to Use')}}</h4>
                     </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- 3. CATEGORIES SECTION - Help users explore topics -->
@php
    $categories = App\Models\Category::where('parent_id', 0)->take(32)->get();
@endphp

@if($categories->isNotEmpty())<section class="category-wrapper section-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 drop-area">
                <div class="section-title text-center">
                    <span class="title-head builder-editable" builder-identity="1">{{get_phrase('Categories')}}</span>
                    <h2 class="title builder-editable" builder-identity="2">{{get_phrase('Explore Top Courses Categories')}}
                    
                    </h2>
                </div>
            </div>
        </div>
        <div class="row justify-content-center">
            @foreach ($categories as $category)
                <div class="col-md-4 col-sm-6 mb-30">
                    <a href="{{ route('courses', $category->slug) }}" class="single-category">
                        <div class="single-category-logo">
                            <img src="{{ get_image($category->category_logo) }}" alt="">
                        </div>
                        <div class="single-category-name">
                            <h4>{{ $category->title }}</h4>
                            <p>{{ count_category_courses($category->id) }} {{get_phrase('courses')}}</p>
                        </div>
                    </a>
                </div>
            @endforeach
        </div>
    </div>
</section>
@endif

<!-- 4. FEATURED COURSES SECTION - Main content/products -->
{{-- To make a editable image or text need to be add a "builder editable" class and builder identity attribute with a unique value --}}
{{-- builder identity and builder editable --}}
{{-- builder identity value have to be unique under a single file --}}

<style>
    .heart {
        z-index: 99999;
        display: inline-block;
        top: 11px;
        position: absolute;
        right: 14px;
        background: #fff;
    }
    .mt-54{
        margin-top: 40px;
    }
    .h-190{
        height: 150px !important;
    }
    .p-15{
        padding: 15px !important;
    }
</style>

<section class="feature-wrapper section-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="res-control d-flex align-items-center justify-content-between">
                    <div class="section-title mb-0">
                        <span class="title-head builder-editable" builder-identity="1">{{get_phrase('Courses')}}</span>
                        <h2 class="title builder-editable" builder-identity="2">{{get_phrase('Featured Courses')}}
                        </h2>
                    </div>
                    <span class="featured-course-all-button drop-area">
                        <a href="{{ route('courses') }}" class="eBtn gradient builder-editable" builder-identity="3">{{ get_phrase('View All Courses') }}</a>
                    </span>
                </div>
            </div>
        </div>
        <span class="featured-course">

            @php
                $featured_courses = App\Models\Course::where('status', 'active')->latest('id')->get();
            @endphp

            <div class="row mt-50 gx-5">
                @foreach ($featured_courses->take(4) as $key => $row)
                    <div class="col-lg-6 col-md-12 col-sm-6 mb-30">
                        <a href="{{ route('course.details', $row->slug) }}" class="single-feature p-15 w-100 checkPropagation">
                            <div class="row">
                                <div class="col-lg-5 col-md-5">
                                    <div class="courses-img">
                                        <img class="h-190" src="{{ get_image($row->thumbnail) }}" alt="...">
                                        <div class="cText d-flex">

                                            @if (isset($row->is_paid) && $row->is_paid == 0)
                                                <h4>{{ get_phrase('Free') }}</h4>
                                            @elseif (isset($row->discount_flag) && $row->discount_flag == 1)
                                                <h4>{{ currency($row->discounted_price, 2) }}
                                                </h4>
                                                <del>{{ currency($row->price, 2) }}</del>
                                            @else
                                                <h4>{{ currency($row->price, 2) }}</h4>
                                            @endif
                                        </div>
                                        @auth
                                        @if ($row->wishlists()->where('course_id', $row->id)->count() > 0)
                                            <span data-bs-toggle="tooltip" data-bs-title="{{ get_phrase('Remove from wishlist') }}" class="heart checkPropagation inList" onclick="wishlistToggle('{{ $row->id }}', this)"><i class="fa-regular fa-heart"></i></span>
                                        @else
                                            <span data-bs-toggle="tooltip" data-bs-title="{{ get_phrase('Add to wishlist') }}" class="heart checkPropagation" onclick="wishlistToggle('{{ $row->id }}', this)"><i class="fa-regular fa-heart"></i></span>
                                        @endif
                                    @endauth
                                    </div>
                                </div>
                                <div class="col-lg-7 col-md-7">
                                    <div class="entry-details">
                                        <div class="entry-title">
                                            <h3 class="ellipsis-line-2">{{ ellipsis(ucfirst($row->title), 160) }}</h3>

                                           
                                        </div>
                                        <ul>
                                            <li>
                                                <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M12.6521 9.54004L14.8477 8.27081C14.9758 8.19549 15.0399 8.08879 15.0399 7.95071C15.0399 7.81263 14.9758 7.70458 14.8477 7.62658L12.6521 6.35735C12.5395 6.29326 12.4144 6.26121 12.2768 6.26121C12.1392 6.26121 12.0133 6.29326 11.8989 6.35735L9.70344 7.62658C9.57523 7.7019 9.51113 7.8086 9.51113 7.94669C9.51113 8.08479 9.57523 8.19283 9.70344 8.27081L11.8989 9.54004C12.0115 9.60414 12.1366 9.63619 12.2743 9.63619C12.4119 9.63619 12.5378 9.60414 12.6521 9.54004ZM12.6521 11.9968L14.1265 11.1554C14.2395 11.0928 14.3305 11.0021 14.3995 10.8832C14.4686 10.7643 14.5031 10.636 14.5031 10.4984V9.32371L12.6521 10.399C12.5392 10.4685 12.4136 10.5032 12.2755 10.5032C12.1374 10.5032 12.0119 10.4685 11.8989 10.399L10.048 9.32371V10.4984C10.048 10.636 10.0825 10.7643 10.1515 10.8832C10.2206 11.0021 10.3116 11.0928 10.4246 11.1554L11.8989 11.9968C12.0115 12.0609 12.1366 12.0929 12.2743 12.0929C12.4119 12.0929 12.5378 12.0609 12.6521 11.9968ZM16.4101 16.25H12.2755C12.2755 16.0416 12.2684 15.8333 12.2543 15.625C12.2401 15.4166 12.2189 15.2083 12.1906 15H16.4101C16.4849 15 16.5464 14.9759 16.5944 14.9279C16.6425 14.8798 16.6666 14.8183 16.6666 14.7435V5.25642C16.6666 5.18163 16.6425 5.12019 16.5944 5.0721C16.5464 5.02402 16.4849 4.99998 16.4101 4.99998H3.58967C3.51488 4.99998 3.45344 5.02402 3.40536 5.0721C3.35727 5.12019 3.33323 5.18163 3.33323 5.25642V6.14263C3.1249 6.11431 2.91657 6.09307 2.70825 6.07892C2.49992 6.06476 2.29159 6.05769 2.08325 6.05769V5.25642C2.08325 4.84215 2.23076 4.48752 2.52577 4.19252C2.82077 3.89751 3.17541 3.75 3.58967 3.75H16.4101C16.8244 3.75 17.179 3.89751 17.474 4.19252C17.769 4.48752 17.9165 4.84215 17.9165 5.25642V14.7435C17.9165 15.1578 17.769 15.5124 17.474 15.8074C17.179 16.1025 16.8244 16.25 16.4101 16.25ZM6.58498 16.25C6.41715 16.25 6.27127 16.1973 6.14734 16.0921C6.02341 15.9869 5.94595 15.8498 5.91498 15.681C5.79425 14.8274 5.42592 14.1017 4.81 13.504C4.19409 12.9062 3.45664 12.5443 2.59767 12.4182C2.43692 12.3974 2.31099 12.3219 2.2199 12.1917C2.1288 12.0615 2.08325 11.913 2.08325 11.7464C2.08325 11.5693 2.14362 11.4209 2.26436 11.3013C2.38508 11.1816 2.52556 11.133 2.68581 11.1555C3.8685 11.2901 4.87623 11.7759 5.70902 12.613C6.54181 13.45 7.02712 14.4599 7.16494 15.6426C7.18737 15.8114 7.1409 15.9548 7.02552 16.0729C6.91013 16.1909 6.76329 16.25 6.58498 16.25ZM9.82361 16.25C9.64091 16.25 9.49107 16.1869 9.37409 16.0609C9.25711 15.9348 9.18741 15.7777 9.16496 15.5897C9.00257 13.86 8.31027 12.3918 7.08804 11.1851C5.86582 9.97834 4.3872 9.3034 2.65217 9.16023C2.48336 9.14313 2.34634 9.07206 2.24111 8.94702C2.13587 8.82197 2.08325 8.67607 2.08325 8.50933C2.08325 8.33217 2.14148 8.18162 2.25794 8.05769C2.37438 7.93377 2.5154 7.88035 2.681 7.89744C4.7622 8.0406 6.53275 8.84135 7.99267 10.2997C9.4526 11.758 10.2627 13.5235 10.4229 15.5961C10.44 15.7788 10.3887 15.9334 10.2689 16.06C10.1491 16.1867 10.0007 16.25 9.82361 16.25ZM2.93215 16.25C2.6942 16.25 2.49324 16.1678 2.32925 16.0035C2.16525 15.8392 2.08325 15.6381 2.08325 15.4001C2.08325 15.1622 2.1654 14.9612 2.32971 14.7972C2.494 14.6332 2.69512 14.5512 2.93306 14.5512C3.17101 14.5512 3.37197 14.6334 3.53596 14.7977C3.69996 14.962 3.78196 15.1631 3.78196 15.4011C3.78196 15.639 3.69981 15.84 3.5355 16.004C3.37121 16.168 3.17009 16.25 2.93215 16.25Z"
                                                        fill="#6B7385" />
                                                </svg>
                                                {{ lesson_count($row->id) }} {{ get_phrase('lesson') }}
                                            </li>
                                            <li>
                                                <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M2.25174 16.0896C2.03834 16.0896 1.85945 16.0174 1.71508 15.873C1.57072 15.7287 1.49854 15.5498 1.49854 15.3364V14.237C1.49854 13.8075 1.60938 13.4243 1.83108 13.0872C2.05276 12.7501 2.34881 12.4879 2.71924 12.3005C3.5112 11.9131 4.30755 11.6145 5.10828 11.4045C5.90904 11.1946 6.78911 11.0896 7.74852 11.0896C8.70792 11.0896 9.58799 11.1946 10.3887 11.4045C11.1895 11.6145 11.9858 11.9131 12.7778 12.3005C13.1482 12.4879 13.4443 12.7501 13.666 13.0872C13.8876 13.4243 13.9985 13.8075 13.9985 14.237V15.3364C13.9985 15.5498 13.9263 15.7287 13.7819 15.873C13.6376 16.0174 13.4587 16.0896 13.2453 16.0896H2.25174ZM15.3414 16.0896C15.4437 16.0024 15.5232 15.8934 15.58 15.7626C15.6367 15.6318 15.6651 15.4855 15.6651 15.3236V14.1345C15.6651 13.5875 15.5312 13.0662 15.2633 12.5705C14.9955 12.0749 14.6155 11.6497 14.1235 11.2948C14.6823 11.3781 15.2127 11.5071 15.7148 11.6818C16.217 11.8565 16.6961 12.0629 17.1523 12.3012C17.5829 12.5309 17.9154 12.8016 18.1499 13.1133C18.3844 13.4251 18.5017 13.7655 18.5017 14.1345V15.3364C18.5017 15.5498 18.4295 15.7287 18.2851 15.873C18.1407 16.0174 17.9619 16.0896 17.7485 16.0896H15.3414ZM7.74852 9.74343C6.94645 9.74343 6.25982 9.45784 5.68864 8.88668C5.11746 8.3155 4.83187 7.62887 4.83187 6.8268C4.83187 6.02472 5.11746 5.33809 5.68864 4.76693C6.25982 4.19575 6.94645 3.91016 7.74852 3.91016C8.55058 3.91016 9.23721 4.19575 9.80839 4.76693C10.3796 5.33809 10.6651 6.02472 10.6651 6.8268C10.6651 7.62887 10.3796 8.3155 9.80839 8.88668C9.23721 9.45784 8.55058 9.74343 7.74852 9.74343ZM14.944 6.8268C14.944 7.62887 14.6584 8.3155 14.0872 8.88668C13.516 9.45784 12.8294 9.74343 12.0273 9.74343C11.9333 9.74343 11.8136 9.73275 11.6683 9.71139C11.5231 9.69003 11.4034 9.66653 11.3094 9.64089C11.638 9.24579 11.8906 8.80748 12.0671 8.32595C12.2436 7.84442 12.3318 7.34437 12.3318 6.8258C12.3318 6.30725 12.2418 5.80918 12.0618 5.33162C11.8818 4.85406 11.631 4.41443 11.3094 4.01272C11.429 3.96998 11.5487 3.94221 11.6683 3.92939C11.788 3.91657 11.9077 3.91016 12.0273 3.91016C12.8294 3.91016 13.516 4.19575 14.0872 4.76693C14.6584 5.33809 14.944 6.02472 14.944 6.8268ZM2.74851 14.8396H12.7485V14.237C12.7485 14.0629 12.705 13.908 12.6179 13.7723C12.5308 13.6366 12.3927 13.518 12.2036 13.4165C11.5177 13.0629 10.8115 12.795 10.0851 12.6128C9.35856 12.4307 8.57971 12.3396 7.74852 12.3396C6.91732 12.3396 6.13847 12.4307 5.41197 12.6128C4.68549 12.795 3.97929 13.0629 3.29339 13.4165C3.10429 13.518 2.9662 13.6366 2.87912 13.7723C2.79205 13.908 2.74851 14.0629 2.74851 14.237V14.8396ZM7.74852 8.49347C8.20685 8.49347 8.59921 8.33028 8.9256 8.00389C9.25199 7.6775 9.41518 7.28514 9.41518 6.8268C9.41518 6.36847 9.25199 5.97611 8.9256 5.64972C8.59921 5.32333 8.20685 5.16014 7.74852 5.16014C7.29018 5.16014 6.89782 5.32333 6.57143 5.64972C6.24504 5.97611 6.08185 6.36847 6.08185 6.8268C6.08185 7.28514 6.24504 7.6775 6.57143 8.00389C6.89782 8.33028 7.29018 8.49347 7.74852 8.49347Z"
                                                        fill="#6B7385" />
                                                </svg>
                                                {{ course_enrollments($row->id) }} {{ get_phrase('Students') }}
                                            </li>
                                        </ul>
                                        <div class="creator mt-54">
                                            <img src="{{ course_instructor_image($row->id) }}" alt="...">
                                            <p>{{ get_phrase('by') }} <span>{{ course_by_instructor($row->id)->name }}</span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                @endforeach

                <div class="col-md-12 mx-4 my-3 drop-area"></div>
            </div>
        </span>
    </div>
</section>

<!-- 5. TESTIMONIALS/ABOUT US SECTION - Build trust -->
{{-- To make a editable image or text need to be add a "builder editable" class and builder identity attribute with a unique value --}}
{{-- "builder identity" and "builder editable" --}}
{{-- builder identity value have to be unique under a single file --}}

<section class="testimonials-wrapper section-padding">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-5 col-md-6">
                <div class="skill-image position-relative">
                    <img class="builder-editable" builder-identity="1" src="{{ asset('assets/frontend/default/image/skill-image.png') }}" alt="...">
                    <div class="over-text">
                        <span>
                            <svg width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="M8.12494 20.0241C9.16021 20.0241 10.1674 20.1415 11.1466 20.3763C12.1258 20.6111 13.0977 20.9793 14.0625 21.4809V9.19239C13.1843 8.62028 12.2339 8.1912 11.2115 7.90514C10.1891 7.61907 9.16021 7.47604 8.12494 7.47604C7.37494 7.47604 6.67422 7.53493 6.02278 7.6527C5.37134 7.77049 4.70188 7.9632 4.01438 8.23082C3.91821 8.26289 3.85009 8.30897 3.81003 8.36907C3.76997 8.42918 3.74994 8.49528 3.74994 8.56739V20.3895C3.74994 20.5017 3.79 20.5838 3.87013 20.6359C3.95027 20.688 4.03843 20.694 4.13459 20.6539C4.72753 20.452 5.35332 20.2966 6.01197 20.1876C6.67061 20.0786 7.37494 20.0241 8.12494 20.0241ZM15.9374 21.4809C16.9022 20.9793 17.8741 20.6111 18.8533 20.3763C19.8324 20.1415 20.8397 20.0241 21.8749 20.0241C22.6249 20.0241 23.3293 20.0786 23.9879 20.1876C24.6466 20.2966 25.2723 20.452 25.8653 20.6539C25.9614 20.694 26.0496 20.688 26.1297 20.6359C26.2099 20.5838 26.2499 20.5017 26.2499 20.3895V8.56739C26.2499 8.49528 26.2299 8.43118 26.1898 8.37507C26.1498 8.31897 26.0817 8.27089 25.9855 8.23082C25.298 7.9632 24.6285 7.77049 23.9771 7.6527C23.3257 7.53493 22.6249 7.47604 21.8749 7.47604C20.8397 7.47604 19.8108 7.61907 18.7884 7.90514C17.7659 8.1912 16.8156 8.62028 15.9374 9.19239V21.4809ZM14.9999 23.7068C14.7564 23.7068 14.5284 23.6763 14.3161 23.6154C14.1037 23.5545 13.903 23.4736 13.7139 23.3726C12.8533 22.8854 11.9531 22.5181 11.0132 22.2704C10.0733 22.0229 9.11052 21.8991 8.12494 21.8991C7.36212 21.8991 6.61294 21.9836 5.87738 22.1527C5.14179 22.3217 4.43266 22.5705 3.74997 22.899C3.30447 23.1042 2.88059 23.0717 2.47834 22.8017C2.07611 22.5317 1.875 22.149 1.875 21.6539V8.08183C1.875 7.8126 1.9443 7.55979 2.08291 7.32342C2.22153 7.08704 2.42146 6.91677 2.68269 6.8126C3.52883 6.40075 4.41064 6.09587 5.32809 5.89795C6.24555 5.70003 7.17783 5.60107 8.12494 5.60107C9.34129 5.60107 10.5296 5.76734 11.6898 6.09989C12.8501 6.43241 13.9535 6.92319 14.9999 7.57223C16.0464 6.92319 17.1498 6.43241 18.31 6.09989C19.4703 5.76734 20.6586 5.60107 21.8749 5.60107C22.822 5.60107 23.7543 5.70003 24.6718 5.89795C25.5892 6.09587 26.471 6.40075 27.3172 6.8126C27.5784 6.91677 27.7783 7.08704 27.917 7.32342C28.0556 7.55979 28.1249 7.8126 28.1249 8.08183V21.6539C28.1249 22.149 27.9158 22.5276 27.4975 22.7897C27.0792 23.0517 26.6393 23.0801 26.1778 22.875C25.5031 22.5545 24.804 22.3117 24.0804 22.1467C23.3569 21.9816 22.6217 21.8991 21.8749 21.8991C20.8894 21.8991 19.9266 22.0229 18.9867 22.2704C18.0468 22.5181 17.1466 22.8854 16.286 23.3726C16.0969 23.4736 15.8961 23.5545 15.6838 23.6154C15.4715 23.6763 15.2435 23.7068 14.9999 23.7068ZM17.4278 11.077C17.4278 10.9376 17.4775 10.795 17.5768 10.6491C17.6762 10.5033 17.7892 10.4031 17.9158 10.3487C18.536 10.1003 19.1742 9.91195 19.8305 9.78376C20.4867 9.65555 21.1682 9.59145 21.8749 9.59145C22.2836 9.59145 22.679 9.61548 23.0612 9.66354C23.4434 9.71163 23.8284 9.77733 24.2163 9.86067C24.3637 9.89431 24.4911 9.97444 24.5985 10.101C24.7058 10.2276 24.7595 10.3751 24.7595 10.5434C24.7595 10.8254 24.671 11.0317 24.4939 11.1623C24.3168 11.2929 24.0873 11.3246 23.8052 11.2573C23.5056 11.1948 23.1943 11.1499 22.8713 11.1227C22.5484 11.0954 22.2163 11.0818 21.8749 11.0818C21.2692 11.0818 20.6758 11.1399 20.0949 11.2561C19.5139 11.3723 18.9598 11.5297 18.4326 11.7284C18.1377 11.8422 17.8966 11.8358 17.7091 11.7092C17.5216 11.5826 17.4278 11.3719 17.4278 11.077ZM17.4278 17.9039C17.4278 17.7645 17.4775 17.6199 17.5768 17.47C17.6762 17.3202 17.7892 17.218 17.9158 17.1635C18.5199 16.9151 19.1582 16.7289 19.8305 16.6047C20.5027 16.4805 21.1842 16.4184 21.8749 16.4184C22.2836 16.4184 22.679 16.4424 23.0612 16.4905C23.4434 16.5385 23.8284 16.6042 24.2163 16.6876C24.3637 16.7212 24.4911 16.8014 24.5985 16.928C24.7058 17.0546 24.7595 17.202 24.7595 17.3703C24.7595 17.6523 24.671 17.8586 24.4939 17.9892C24.3168 18.1198 24.0873 18.1515 23.8052 18.0842C23.5056 18.0217 23.1943 17.9768 22.8713 17.9496C22.5484 17.9223 22.2163 17.9087 21.8749 17.9087C21.2772 17.9087 20.6898 17.9656 20.1129 18.0794C19.536 18.1932 18.9839 18.3534 18.4567 18.5602C18.1618 18.682 17.9166 18.6788 17.7211 18.5505C17.5256 18.4223 17.4278 18.2068 17.4278 17.9039ZM17.4278 14.5025C17.4278 14.3631 17.4775 14.2204 17.5768 14.0746C17.6762 13.9288 17.7892 13.8286 17.9158 13.7741C18.536 13.5257 19.1742 13.3374 19.8305 13.2092C20.4867 13.081 21.1682 13.0169 21.8749 13.0169C22.2836 13.0169 22.679 13.041 23.0612 13.089C23.4434 13.1371 23.8284 13.2028 24.2163 13.2861C24.3637 13.3198 24.4911 13.3999 24.5985 13.5265C24.7058 13.6531 24.7595 13.8006 24.7595 13.9688C24.7595 14.2509 24.671 14.4572 24.4939 14.5878C24.3168 14.7184 24.0873 14.7501 23.8052 14.6828C23.5056 14.6203 23.1943 14.5754 22.8713 14.5481C22.5484 14.5209 22.2163 14.5073 21.8749 14.5073C21.2692 14.5073 20.6758 14.5654 20.0949 14.6815C19.5139 14.7977 18.9598 14.9552 18.4326 15.1539C18.1377 15.2677 17.8966 15.2613 17.7091 15.1347C17.5216 15.0081 17.4278 14.7974 17.4278 14.5025Z"
                                    fill="white" />
                            </svg>

                        </span>
                        <div class="b-text">
                            <h5 class="builder-editable" builder-identity="2">{{ get_phrase('150k +') }}</h5>
                            <p class="builder-editable" builder-identity="3">{{ get_phrase('Top rated Courses') }}</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-7 col-md-6">
                <div class="skil-content drop-area">
                    <span class="title-head builder-editable" builder-identity="4">{{ get_phrase('Know About Us') }}</span>
                    <h2 class="title"><span class="builder-editable" builder-identity="5">{{ get_phrase('Learn & Grow Your Skills From ') }}</span> <span class="gradient shadow-none color builder-editable" builder-identity="52nd">{{ get_phrase('Educate') }}</span>
                    </h2>
                    <p class="description mt-5 builder-editable" builder-identity="6">
                        {{ get_phrase('It offers courses designed to enhance knowledge and develop practical skills for personal and professional growth.') }}
                    </p>
                    <ul>
                        <li>
                            <div class="svg">
                                <svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path
                                        d="M21.4083 16.3111L24.8186 12.8896C24.9709 12.7356 25.1492 12.6585 25.3535 12.6585C25.5578 12.6585 25.7407 12.7356 25.9022 12.8896C26.0638 13.0437 26.1427 13.224 26.1389 13.4307C26.1352 13.6373 26.0563 13.8144 25.9022 13.962L22.059 17.7761C21.874 17.9676 21.6539 18.0633 21.3986 18.0633C21.1434 18.0633 20.92 17.9676 20.7286 17.7761L18.8978 15.9274C18.7437 15.7804 18.6648 15.6083 18.6611 15.4111C18.6573 15.2138 18.7362 15.0345 18.8978 14.8729C19.0518 14.7189 19.2324 14.64 19.4396 14.6362C19.6468 14.6325 19.8274 14.7114 19.9814 14.8729L21.4083 16.3111ZM10.628 21.9694C8.90488 20.4288 7.48318 19.0886 6.36289 17.9489C5.24258 16.8091 4.36009 15.7924 3.71543 14.8987C3.07077 14.005 2.62092 13.1891 2.36589 12.4509C2.1109 11.7128 1.9834 10.9653 1.9834 10.2085C1.9834 8.64995 2.51737 7.32997 3.58532 6.24857C4.65325 5.16717 5.95675 4.62646 7.49584 4.62646C8.47555 4.62646 9.41374 4.85495 10.3104 5.31191C11.2071 5.76885 11.9703 6.42286 12.6 7.27392C13.2355 6.42101 13.9837 5.76654 14.8444 5.31051C15.7051 4.85448 16.6195 4.62646 17.5875 4.62646C18.992 4.62646 20.2312 5.07706 21.3051 5.97825C22.379 6.87942 23.0072 8.01729 23.1897 9.39186H21.6417C21.4517 8.48544 20.9918 7.71737 20.2619 7.08766C19.532 6.45796 18.6405 6.1431 17.5875 6.1431C16.5016 6.1431 15.6491 6.42018 15.0298 6.97435C14.4106 7.52852 13.7614 8.23712 13.0824 9.10016H12.1176C11.4042 8.21019 10.7393 7.49486 10.1231 6.95417C9.50685 6.41346 8.6311 6.1431 7.49584 6.1431C6.37255 6.1431 5.42576 6.53386 4.65544 7.31537C3.88515 8.0969 3.50001 9.06128 3.50001 10.2085C3.50001 10.8259 3.62153 11.4525 3.86459 12.0883C4.10765 12.7242 4.56459 13.4688 5.23542 14.3221C5.90626 15.1754 6.82987 16.188 8.00626 17.3599C9.18265 18.5318 10.7139 19.9689 12.6 21.671C13.131 21.1983 13.8418 20.5589 14.7325 19.7527C15.6232 18.9465 16.2743 18.3475 16.6856 17.9556L16.8531 18.1232L17.2218 18.4918L17.5904 18.8605L17.758 19.028C17.3347 19.4393 16.9043 19.8421 16.4668 20.2362C16.0293 20.6303 15.6363 20.9859 15.2878 21.303L13.2215 23.1697C13.03 23.3222 12.8229 23.3985 12.6 23.3985C12.3772 23.3985 12.17 23.3222 11.9786 23.1697L10.628 21.9694Z"
                                        fill="#F81163" />
                                </svg>
                            </div>
                            <div class="skill-text">
                                <span class="builder-editable" builder-identity="7">{{ get_phrase('Life time Access') }}</span>
                                <p class="builder-editable" builder-identity="8">{{ get_phrase('It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.') }}
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="svg color-dash">
                                <svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path
                                        d="M6.31752 20.0083C4.63719 20.0083 3.21281 19.4264 2.04437 18.2627C0.875956 17.0989 0.291748 15.6806 0.291748 14.0077C0.291748 12.3349 0.875995 10.914 2.04449 9.74505C3.213 8.57615 4.63712 7.9917 6.31685 7.9917C6.98557 7.9917 7.62746 8.10762 8.24252 8.33945C8.85757 8.57129 9.41637 8.90932 9.91894 9.35355L12.4699 11.5814L11.3212 12.5776L8.952 10.4798C8.59152 10.1672 8.18948 9.92712 7.74587 9.75961C7.30225 9.59207 6.84178 9.50831 6.36448 9.50831C5.10613 9.50831 4.03219 9.94615 3.14264 10.8218C2.25312 11.6975 1.80836 12.7584 1.80836 14.0044C1.80836 15.2504 2.25312 16.3147 3.14264 17.1971C4.03219 18.0796 5.10613 18.5209 6.36448 18.5209C6.84178 18.5209 7.30225 18.4371 7.74587 18.2696C8.18948 18.1021 8.59152 17.862 8.952 17.5494L18.0812 9.35355C18.5762 8.92128 19.1323 8.58623 19.7493 8.34841C20.3664 8.1106 21.0106 7.9917 21.6821 7.9917C23.3622 7.9917 24.7865 8.57532 25.9553 9.74255C27.124 10.9098 27.7084 12.3286 27.7084 13.999C27.7084 15.6868 27.1201 17.1104 25.9435 18.2695C24.767 19.4287 23.333 20.0083 21.6417 20.0083C20.9734 20.0083 20.3355 19.8905 19.7281 19.655C19.1207 19.4194 18.562 19.0832 18.052 18.6465L15.4943 16.3894L16.6789 15.4112L19.0481 17.5202C19.4086 17.8418 19.8106 18.0841 20.2542 18.2471C20.6979 18.4102 21.1583 18.4917 21.6356 18.4917C22.894 18.4917 23.9679 18.0539 24.8575 17.1782C25.747 16.3025 26.1917 15.2416 26.1917 13.9956C26.1917 12.7496 25.747 11.6854 24.8575 10.8029C23.9679 9.92038 22.894 9.47914 21.6356 9.47914C21.1583 9.47914 20.6979 9.56291 20.2542 9.73044C19.8106 9.89796 19.4086 10.138 19.0481 10.4506L9.92596 18.6442C9.4262 19.0974 8.86775 19.4381 8.2506 19.6662C7.63347 19.8943 6.98911 20.0083 6.31752 20.0083Z"
                                        fill="#2F57EF" />
                                </svg>
                            </div>
                            <div class="skill-text">
                                <span class="builder-editable" builder-identity="9">{{ get_phrase('Learn from Anywhere') }}</span>
                                <p class="builder-editable" builder-identity="10">{{ get_phrase('It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.') }}</p>
                            </div>
                        </li>
                    </ul>
                    <a href="{{ route('about.us') }}" class="eBtn gradient mt-50 mb-5 builder-editable" builder-identity="11">{{ get_phrase('More about us') }} <i class="fa-solid fa-arrow-right-long ms-2"></i></a>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- 6. BLOG SECTION - Keep at bottom for engagement -->
{{-- To make a editable image or text need to be add a "builder editable" class and builder identity attribute with a unique value --}}
{{-- builder identity and builder editable --}}
{{-- builder identity value have to be unique under a single file --}}

<section class="blog-wrapper section-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="res-control d-flex align-items-center justify-content-between">
                    <div class="section-title mb-0">
                        <span class="title-head mb-10 builder-editable" builder-identity="1">{{get_phrase('Our Blog')}}</span>
                        <h2 class="title builder-editable" builder-identity="2">{{get_phrase('Have a look on our news')}}</h2>
                    </div>
                    <span class="blog-view-all-button">
                        <a href="{{ route('blogs') }}" class="eBtn gradient builder-editable" builder-identity="3">{{ get_phrase('View All Blogs') }}</a>
                    </span>
                </div>
            </div>
        </div>
        @php
            $blogs = App\Models\Blog::where('status', 1)->orderBy('is_popular', 'desc')->orderBy('id', 'desc')->take(3)->get();
        @endphp
        <div class="row justify-content-center mt-50">
            @foreach ($blogs as $key => $blog)
                <div class="col-lg-4 col-md-6 col-sm-6 mb-20">
                    <div class="Ecard card b-card">
                        <div class="card-head">
                            <img src="{{ get_image($blog->thumbnail) }}" alt="blog-thumbnail">
                            <span>{{ get_blog_category_name($blog->category_id) }}</span>
                        </div>
                        <div class="card-body">
                            <h4>{{ ucfirst($blog->title) }}</h4>
                            <div class="description ellipsis-line-2 mt-3">
                                {{ ellipsis(strip_tags($blog->description), 160) }}
                            </div>
                            <p></p>
                            <div class="b_bottom d-flex justify-content-between">
                                <a href="{{ route('blog.details', $blog->slug) }}" class="read-text mt-0 stretched-link">{{ get_phrase('Read More') }}<i class="fa-solid fa-arrow-right-long ms-2"></i></a>
                                <span>{{ date('d M, Y', strtotime($blog->created_at)) }}</span>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>

    </div>
</section>

</div>