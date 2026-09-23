<div class="cd-pricing-card">
    {{-- Course Preview Banner --}}
    <div class="cd-preview-thumb">
        <img src="{{ get_image($course_details->banner) }}" alt="{{ $course_details->title }}">
        @if(!empty($course_details->preview))
            <button type="button" class="cd-play-btn" data-bs-toggle="modal" data-bs-target="#exampleModal" aria-label="Play Preview">
                <i class="fa-solid fa-play ms-1"></i>
            </button>
        @endif
    </div>

    <div class="cd-card-body">
        @if ($course_details->is_best)
            <div class="mb-3 text-center">
                <span class="badge bg-warning text-dark px-3 py-2 radius-30 fw-bold">
                    <i class="fa-solid fa-trophy me-1"></i> {{ get_phrase('Top course') }}
                </span>
            </div>
        @endif

        {{-- Price Display --}}
        <div class="cd-price-tag justify-content-center">
            @if (isset($course_details->is_paid) && $course_details->is_paid == 0)
                <div class="cd-price-main text-success">{{ get_phrase('Free') }}</div>
            @elseif (isset($course_details->discount_flag) && $course_details->discount_flag == 1)
                <div class="cd-price-main">{{ currency($course_details->discounted_price, 2) }}</div>
                <div class="cd-price-old">{{ currency($course_details->price, 2) }}</div>
            @else
                <div class="cd-price-main">{{ currency($course_details->price, 2) }}</div>
            @endif
        </div>

        @php
            $is_enrolled = false;
            $in_cart = false;
            $in_wishlist = false;
            $pending_course = [];

            if (isset(auth()->user()->id)) {
                $is_enrolled = DB::table('enrollments')
                    ->where('user_id', auth()->user()->id)
                    ->where('course_id', $course_details->id)
                    ->where(function ($query) {
                        $query->where('expiry_date', '>', now()->timestamp)->orWhereNull('expiry_date');
                    })
                    ->exists();

                $in_cart = DB::table('cart_items')
                    ->where('user_id', auth()->user()->id)
                    ->where('course_id', $course_details->id)
                    ->exists();

                $in_wishlist = DB::table('wishlists')
                    ->where('user_id', auth()->user()->id)
                    ->where('course_id', $course_details->id)
                    ->exists();

                $pending_course_for_payment = DB::table('offline_payments')
                    ->where('user_id', auth()->user()->id)
                    ->where('status', 0)
                    ->first();

                $pending_course = $pending_course_for_payment ? json_decode($pending_course_for_payment->items, true) : [];
            }
        @endphp

        {{-- CTA Action Buttons --}}
        <div class="cd-cta-group">
            @if (isset(auth()->user()->id))
                @if (in_array($course_details->id, $pending_course))
                    <a href="javascript:void(0);" class="cd-btn-primary opacity-75">
                        <i class="fa-solid fa-hourglass-half"></i> {{ get_phrase('In progress') }}
                    </a>
                @else
                    @if ($is_enrolled)
                        <a href="{{ route('my.courses') }}" class="cd-btn-primary">
                            <i class="fa-solid fa-play-circle"></i> {{ get_phrase('Start Now') }}
                        </a>
                    @else
                        <a href="{{ route('purchase.course', $course_details->id) }}" class="cd-btn-primary">
                            <i class="fa-solid fa-bolt"></i> {{ get_phrase($course_details->is_paid ? 'Buy Now' : 'Enroll Now') }}
                        </a>

                        @if (isset($course_details->is_paid) && $course_details->is_paid == 1)
                            @if ($in_cart)
                                <a href="{{ route('cart.delete', ['id' => $course_details->id]) }}" class="cd-btn-outline text-danger">
                                    <i class="fa-solid fa-trash"></i> {{ get_phrase('Remove from cart') }}
                                </a>
                            @else
                                <a href="{{ route('cart.store', $course_details->id) }}" class="cd-btn-outline">
                                    <i class="fa-solid fa-cart-shopping"></i> {{ get_phrase('Add to cart') }}
                                </a>
                            @endif
                        @endif

                        @if ($in_wishlist)
                            <button type="button" class="cd-btn-outline toggleWishItem" onclick="wishlistToggleButton('{{ $course_details->id }}', this)">
                                <i class="fa-solid fa-heart text-danger"></i> <span>{{ get_phrase('Remove from wishlist') }}</span>
                            </button>
                        @else
                            <button type="button" class="cd-btn-outline toggleWishItem" onclick="wishlistToggleButton('{{ $course_details->id }}', this)">
                                <i class="fa-regular fa-heart"></i> <span>{{ get_phrase('Add to wishlist') }}</span>
                            </button>
                        @endif
                    @endif
                @endif
            @else
                <a href="{{ route('purchase.course', $course_details->id) }}" class="cd-btn-primary">
                    <i class="fa-solid fa-bolt"></i> {{ get_phrase($course_details->is_paid ? 'Buy Now' : 'Enroll Now') }}
                </a>
            @endif
        </div>

        {{-- Key Features List --}}
        <ul class="cd-features-list">
            <li>
                <span class="cd-feat-label"><i class="fa-solid fa-users"></i> {{ get_phrase('Students') }}</span>
                <span class="cd-feat-val">{{ total_enroll($course_details->id) }}</span>
            </li>
            <li>
                <span class="cd-feat-label"><i class="fa-solid fa-language"></i> {{ get_phrase('Language') }}</span>
                <span class="cd-feat-val">{{ ucfirst($course_details->language) }}</span>
            </li>
            <li>
                <span class="cd-feat-label"><i class="fa-solid fa-clock"></i> {{ get_phrase('Duration') }}</span>
                <span class="cd-feat-val">{{ total_durations($course_details->id) }}</span>
            </li>
            <li>
                <span class="cd-feat-label"><i class="fa-solid fa-layer-group"></i> {{ get_phrase('Level') }}</span>
                <span class="cd-feat-val">{{ ucfirst($course_details->level) }}</span>
            </li>
            <li>
                <span class="cd-feat-label"><i class="fa-solid fa-calendar-check"></i> {{ get_phrase('Expiry period') }}</span>
                <span class="cd-feat-val">{{ $course_details->expiry_period <= 0 ? get_phrase('Lifetime') : $course_details->expiry_period . ' ' . get_phrase('Months') }}</span>
            </li>
            <li>
                <span class="cd-feat-label"><i class="fa-solid fa-certificate"></i> {{ get_phrase('Certificate') }}</span>
                <span class="cd-feat-val text-success"><i class="fa-solid fa-check-circle"></i> {{ get_phrase('Yes') }}</span>
            </li>
        </ul>

        {{-- Share Buttons --}}
        @php
            $ref = isset($user_data['unique_identifier']) ? $user_data['unique_identifier'] : '';
            $share_url = urlencode(route('course.details', $course_details->slug));
        @endphp
        <div class="cd-share-sec">
            <span>{{ get_phrase('Share this course') }}</span>
            <div class="cd-share-icons">
                <a href="https://www.facebook.com/sharer/sharer.php?u={{ $share_url }}&ref={{ $ref }}" target="_blank" class="cd-share-icon" title="Facebook">
                    <i class="fab fa-facebook-f"></i>
                </a>
                <a href="https://twitter.com/intent/tweet?url={{ $share_url }}&text={{ urlencode($course_details->title) }}&ref={{ $ref }}" target="_blank" class="cd-share-icon" title="Twitter / X">
                    <i class="fab fa-x-twitter"></i>
                </a>
                <a href="https://api.whatsapp.com/send?text={{ $share_url }}" target="_blank" class="cd-share-icon" title="WhatsApp">
                    <i class="fab fa-whatsapp"></i>
                </a>
                <a href="https://www.linkedin.com/shareArticle?url={{ $share_url }}&title={{ urlencode($course_details->title) }}" target="_blank" class="cd-share-icon" title="LinkedIn">
                    <i class="fab fa-linkedin-in"></i>
                </a>
            </div>
        </div>
    </div>
</div>

<script>
    'use strict';
    function wishlistToggleButton(course_id, elem) {
        $.ajax({
            type: "get",
            url: "{{ route('toggleWishItem') }}" + '/' + course_id,
            success: function(response) {
                if (response) {
                    const icon = $(elem).find('i');
                    const span = $(elem).find('span');
                    if (response.toggleStatus == 'added') {
                        $(elem).addClass('text-danger');
                        if (icon.length) icon.attr('class', 'fa-solid fa-heart text-danger');
                        if (span.length) span.text('{{ get_phrase('Remove from wishlist') }}');
                    } else if (response.toggleStatus == 'removed') {
                        $(elem).removeClass('text-danger');
                        if (icon.length) icon.attr('class', 'fa-regular fa-heart');
                        if (span.length) span.text('{{ get_phrase('Add to wishlist') }}');
                    }
                }
            }
        });
    }
</script>
