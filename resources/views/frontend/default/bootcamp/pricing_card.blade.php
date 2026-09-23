{{-- pricing_card.blade.php --}}
@php
    if (isset(auth()->user()->id)) {
        $is_purchased = DB::table('bootcamp_purchases')
            ->where('user_id', auth()->user()->id)
            ->where('bootcamp_id', $bootcamp_details->id)
            ->where('status', 1)
            ->exists();

        $pending_bootcamp_payment = DB::table('offline_payments')
            ->where('user_id', auth()->user()->id)
            ->where('item_type', 'bootcamp')
            ->where('items', $bootcamp_details->id)
            ->where('status', 0)
            ->first();
    }

    $instructor = $bootcamp_details->instructor;

    $ref = $user_data['unique_identifier'] ?? '';
    $share_url = route('bootcamp.details', $bootcamp_details->slug);

    $bootcampModuleIds = App\Models\BootcampModule::where('bootcamp_id', $bootcamp_details->id)->pluck('id');
    $hasResource = App\Models\BootcampResource::whereIn('module_id', $bootcampModuleIds)->where('upload_type', 'resource')->exists();
    $hasClassRecord = App\Models\BootcampResource::whereIn('module_id', $bootcampModuleIds)->where('upload_type', 'record')->exists();
@endphp

<style>
    :root {
        --navy: #0a1628;
        --navy3: #1a3a6b;
        --gold: #c9a84c;
        --gold2: #e8c96d;
        --cream: #faf7f2;
        --cream2: #f0ebe2;
        --cream3: #e5ddd0;
        --muted: #6b5e45;
        --faint: #9e906e;
        --ff: 'Playfair Display', Georgia, serif;
        --fb: 'DM Sans', system-ui, sans-serif;
    }

    .pc-card {
        background: var(--cream);
        border: 1px solid rgba(201, 168, 76, .18);
        border-radius: 18px;
        overflow: hidden;
        position: sticky;
        top: 24px;
    }

    .pc-topbar {
        height: 3px;
        background: linear-gradient(90deg, var(--navy), var(--gold), var(--gold2), var(--gold), var(--navy));
    }

    /* Thumbnail */
    .pc-thumb {
        position: relative;
        aspect-ratio: 16/9;
        overflow: hidden;
        background: var(--navy);
    }

    .pc-thumb img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        display: block;
    }

    .pc-thumb-overlay {
        position: absolute;
        inset: 0;
        background: linear-gradient(to top, rgba(10, 22, 40, .7) 0%, transparent 55%);
    }

    .pc-play {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        width: 46px;
        height: 46px;
        border-radius: 50%;
        background: rgba(201, 168, 76, .18);
        border: 1.5px solid rgba(201, 168, 76, .5);
        display: flex;
        align-items: center;
        justify-content: center;
        cursor: pointer;
        transition: all .2s;
    }

    .pc-play:hover {
        background: var(--gold);
        border-color: var(--gold);
    }

    .pc-play svg {
        fill: #fff;
        width: 14px;
        height: 14px;
        margin-left: 3px;
    }

    /* Body */
    .pc-body {
        padding: 22px 22px 18px;
    }

    /* Price block */
    .pc-price-lbl {
        font-size: 10px;
        letter-spacing: .14em;
        text-transform: uppercase;
        color: var(--faint);
        font-weight: 600;
        font-family: var(--fb);
        margin-bottom: 6px;
    }

    .pc-price-row {
        display: flex;
        align-items: baseline;
        gap: 10px;
        margin-bottom: 4px;
        flex-wrap: wrap;
    }

    .pc-price-main {
        font-family: var(--ff);
        font-size: 32px;
        font-weight: 700;
        color: var(--navy);
        line-height: 1;
    }

    .pc-price-old {
        font-family: var(--ff);
        font-size: 16px;
        color: var(--faint);
        text-decoration: line-through;
    }

    .pc-price-disc {
        font-size: 11px;
        font-weight: 700;
        letter-spacing: .05em;
        color: #0a5c30;
        background: #d8f3e7;
        border: 1px solid rgba(10, 92, 48, .12);
        border-radius: 20px;
        padding: 3px 10px;
        font-family: var(--fb);
    }

    .pc-offer-note {
        display: flex;
        align-items: center;
        gap: 6px;
        font-size: 11.5px;
        color: #a33030;
        font-weight: 500;
        font-family: var(--fb);
        margin-bottom: 18px;
        margin-top: 4px;
    }

    .pc-offer-note svg {
        width: 12px;
        height: 12px;
        stroke: #a33030;
        fill: none;
        stroke-width: 1.7;
        flex-shrink: 0;
    }

    /* CTA */
    .pc-btn-enroll {
        display: block;
        width: 100%;
        padding: 13px 0;
        background: var(--navy);
        color: #fff;
        border: none;
        border-radius: 10px;
        font-size: 14px;
        font-weight: 600;
        font-family: var(--fb);
        letter-spacing: .03em;
        text-align: center;
        text-decoration: none;
        cursor: pointer;
        transition: background .2s, transform .15s;
        margin-bottom: 10px;
    }

    .pc-btn-enroll:hover {
        background: var(--navy3);
        color: #fff;
        transform: translateY(-1px);
    }

    .pc-btn-enroll--free {
        background: #0f6e56;
    }

    .pc-btn-enroll--free:hover {
        background: #085041;
    }

    .pc-btn-enroll--owned {
        background: none;
        border: 1.5px solid rgba(10, 22, 40, .2);
        color: var(--navy);
    }

    .pc-btn-enroll--owned:hover {
        background: var(--navy);
        color: #fff;
    }

    .pc-btn-enroll--pending {
        background: none;
        border: 1.5px solid rgba(201, 168, 76, .35);
        color: #7a5c18;
    }

    /* Divider */
    .pc-hr {
        border: none;
        border-top: 1px solid var(--cream3);
        margin: 18px 0 16px;
    }

    /* Includes */
    .pc-inc-lbl {
        font-size: 10px;
        letter-spacing: .12em;
        text-transform: uppercase;
        color: var(--navy);
        font-weight: 700;
        font-family: var(--fb);
        margin-bottom: 14px;
    }

    .pc-feat-list {
        display: flex;
        flex-direction: column;
        gap: 10px;
    }

    .pc-feat {
        display: flex;
        align-items: center;
        gap: 11px;
        font-size: 13px;
        color: var(--muted);
        font-family: var(--fb);
        line-height: 1.3;
    }

    .pc-feat-dot {
        width: 26px;
        height: 26px;
        border-radius: 7px;
        flex-shrink: 0;
        background: var(--navy);
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .pc-feat-dot svg {
        width: 12px;
        height: 12px;
        stroke: var(--gold2);
        fill: none;
        stroke-width: 1.8;
    }

    .pc-feat strong {
        color: var(--navy);
        font-weight: 600;
    }

    /* Guarantee */
    .pc-guarantee {
        margin-top: 16px;
        padding: 13px 14px;
        background: #fff;
        border: 1px solid rgba(201, 168, 76, .22);
        border-radius: 10px;
        display: flex;
        align-items: flex-start;
        gap: 11px;
    }

    .pc-guarantee-shield {
        width: 34px;
        height: 34px;
        border-radius: 50%;
        background: var(--gold);
        display: flex;
        align-items: center;
        justify-content: center;
        flex-shrink: 0;
    }

    .pc-guarantee-shield svg {
        width: 14px;
        height: 14px;
        stroke: var(--navy);
        fill: none;
        stroke-width: 2;
    }

    .pc-guarantee-txt {
        font-size: 12px;
        color: var(--muted);
        line-height: 1.6;
        font-family: var(--fb);
    }

    .pc-guarantee-txt strong {
        color: var(--navy);
        font-weight: 600;
        display: block;
        margin-bottom: 2px;
    }

    /* Contact & Share */
    .pc-section-lbl {
        font-size: 10px;
        letter-spacing: .12em;
        text-transform: uppercase;
        color: var(--faint);
        font-weight: 700;
        font-family: var(--fb);
        text-align: center;
        margin-bottom: 12px;
    }

    .pc-socials {
        display: flex;
        justify-content: center;
        gap: 8px;
        margin-bottom: 12px;
    }

    .pc-social-ico {
        width: 32px;
        height: 32px;
        border-radius: 8px;
        background: var(--cream2);
        border: 1px solid var(--cream3);
        display: flex;
        align-items: center;
        justify-content: center;
        color: var(--muted);
        font-family: var(--fb);
        font-size: 12px;
        font-weight: 700;
        text-decoration: none;
        transition: all .18s;
    }

    .pc-social-ico:hover {
        background: var(--navy);
        color: var(--gold2);
        border-color: var(--navy);
    }

    .pc-call-btn {
        display: flex;
        align-items: center;
        justify-content: center;
        gap: 7px;
        width: 100%;
        padding: 10px 0;
        font-size: 13px;
        font-weight: 500;
        font-family: var(--fb);
        color: var(--navy3);
        text-decoration: none;
        background: var(--cream);
        border: 1px solid var(--cream3);
        border-radius: 8px;
        transition: all .18s;
    }

    .pc-call-btn:hover {
        background: var(--navy);
        color: var(--gold2);
        border-color: var(--navy);
    }

    .pc-call-btn svg {
        width: 13px;
        height: 13px;
        stroke: currentColor;
        fill: none;
        stroke-width: 2;
    }

    .pc-share-row {
        display: flex;
        justify-content: center;
        gap: 8px;
    }

    .pc-share-ico {
        width: 34px;
        height: 34px;
        border-radius: 8px;
        display: flex;
        align-items: center;
        justify-content: center;
        text-decoration: none;
        font-size: 13px;
        font-weight: 700;
        font-family: var(--fb);
        transition: transform .18s, opacity .18s;
    }

    .pc-share-ico:hover {
        transform: translateY(-2px);
        opacity: .88;
    }

    .pc-si-fb {
        background: #1877F2;
        color: #fff;
    }

    .pc-si-tw {
        background: #0f1419;
        color: #fff;
    }

    .pc-si-wa {
        background: #25D366;
        color: #fff;
    }

    .pc-si-li {
        background: #0A66C2;
        color: #fff;
    }
</style>

<div class="pc-card">
    <div class="pc-topbar"></div>

    {{-- Thumbnail --}}
    <div class="pc-thumb">
        <img src="{{ get_image($bootcamp_details->thumbnail) }}" alt="{{ $bootcamp_details->title }}">
        <div class="pc-thumb-overlay"></div>
        @if($bootcamp_details->preview)
        <style>
/* ── PROMINENCE PRICING (pa-price) ── */
.pa-price {
    background: var(--pa-white);
    border-radius: 20px;
    padding: 30px;
    box-shadow: 0 20px 50px rgba(0, 0, 0, 0.1);
    border: 1px solid var(--pa-blue-light);
    position: sticky;
    top: 100px;
    direction: rtl;
    text-align: right;
}

.pa-price__label {
    display: inline-block;
    background: var(--pa-blue-light);
    color: var(--pa-blue-mid);
    padding: 4px 12px;
    border-radius: 6px;
    font-size: 12px;
    font-weight: 700;
    margin-bottom: 20px;
}

.pa-price__amount {
    margin-bottom: 30px;
}
.pa-price__val {
    font-size: 42px;
    font-weight: 800;
    color: var(--pa-blue-deep);
}
.pa-price__curr {
    font-size: 18px;
    color: var(--pa-text-muted);
    margin-right: 5px;
}

.pa-price__features {
    list-style: none;
    padding: 0;
    margin: 0 0 30px;
}
.pa-price__feat-item {
    display: flex;
    align-items: center;
    gap: 12px;
    margin-bottom: 15px;
    font-size: 15px;
    color: var(--pa-text);
}
.pa-price__feat-item i {
    color: var(--pa-orange);
    font-size: 14px;
}

.pa-price__btn {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 10px;
    width: 100%;
    background: var(--pa-blue-mid);
    color: var(--pa-white);
    padding: 18px;
    border-radius: 12px;
    font-size: 18px;
    font-weight: 800;
    text-decoration: none;
    transition: all 0.3s;
    border: none;
    cursor: pointer;
}
.pa-price__btn:hover {
    background: var(--pa-blue-deep);
    transform: translateY(-3px);
    box-shadow: 0 10px 20px rgba(0, 74, 173, 0.2);
}

.pa-price__btn--outline {
    background: transparent;
    border: 2px solid var(--pa-blue-mid);
    color: var(--pa-blue-mid);
    margin-top: 15px;
}
.pa-price__btn--outline:hover {
    background: var(--pa-blue-mid);
    color: var(--pa-white);
}

.pa-price__guarantee {
    margin-top: 25px;
    text-align: center;
    font-size: 13px;
    color: var(--pa-text-muted);
}
</style>

<div class="pa-price">
    <div class="pa-price__label">رسوم الالتحاق بالبرنامج</div>
    
    <div class="pa-price__amount">
        <span class="pa-price__val">{{ currency($bootcamp_details->price) }}</span>
        <span class="pa-price__curr">ريال سعودي</span>
    </div>

    <ul class="pa-price__features">
        <li class="pa-price__feat-item">
            <i class="fas fa-check-circle"></i>
            <span>دخول كامل للمحاضرات المسجلة</span>
        </li>
        <li class="pa-price__feat-item">
            <i class="fas fa-check-circle"></i>
            <span>حضور المحاضرات المباشرة</span>
        </li>
        <li class="pa-price__feat-item">
            <i class="fas fa-check-circle"></i>
            <span>شهادة معتمدة عند الإتمام</span>
        </li>
        <li class="pa-price__feat-item">
            <i class="fas fa-check-circle"></i>
            <span>دعم فني وتواصل مع المدرب</span>
        </li>
    </ul>

    <form action="{{ route('purchase.bootcamp', $bootcamp_details->id) }}" method="post">
        @csrf
        <button type="submit" class="pa-price__btn">
            <span>سجل الآن</span>
            <i class="fas fa-arrow-left"></i>
        </button>
    </form>

    <button class="pa-price__btn pa-price__btn--outline" data-bs-toggle="modal" data-bs-target="#previewModal">
        <i class="fas fa-play-circle"></i>
        <span>مشاهدة العرض التعريفي</span>
    </button>

    <div class="pa-price__guarantee">
        <i class="fas fa-shield-alt"></i>
        ضمان استرداد الرسوم خلال 7 أيام
    </div>
</div>
        @endif
    </div>

    <div class="pc-body">

        {{-- Price --}}
        <div class="pc-price-lbl">{{ get_phrase('Enrollment Price') }}</div>
        <div class="pc-price-row">
            @if(!$bootcamp_details->is_paid)
                <span class="pc-price-main">{{ get_phrase('Free') }}</span>
            @elseif($bootcamp_details->discount_flag == 1)
                <span
                    class="pc-price-main">{{ currency($bootcamp_details->price - $bootcamp_details->discounted_price, 2) }}</span>
                <span class="pc-price-old">{{ currency($bootcamp_details->price, 2) }}</span>
                @php $pct = round(($bootcamp_details->discounted_price / $bootcamp_details->price) * 100); @endphp
                <span class="pc-price-disc">{{ $pct }}% {{ get_phrase('OFF') }}</span>
            @else
                <span class="pc-price-main">{{ currency($bootcamp_details->price, 2) }}</span>
            @endif
        </div>

        @if($bootcamp_details->discount_flag == 1)
            <div class="pc-offer-note">
                <svg viewBox="0 0 20 20">
                    <circle cx="10" cy="10" r="7.5" />
                    <path d="M10 6.5v3.75l2.25 2.25" stroke-linecap="round" />
                </svg>
                {{ get_phrase('Limited time offer — enroll today') }}
            </div>
        @else
            <div style="margin-bottom:16px"></div>
        @endif

        {{-- CTA --}}
        @php $loggedIn = isset(auth()->user()->id); @endphp
        @if($loggedIn && $pending_bootcamp_payment)
            <a href="{{ route('purchase.bootcamp', $bootcamp_details->id) }}" class="pc-btn-enroll pc-btn-enroll--pending">
                ⏳ {{ get_phrase('Payment Processing') }}
            </a>
        @elseif($loggedIn && $is_purchased)
            <a href="{{ route('my.bootcamp.details', $bootcamp_details->slug) }}"
                class="pc-btn-enroll pc-btn-enroll--owned">
                ✓ {{ get_phrase('Go to My Bootcamp') }}
            </a>
        @else
            <a href="{{ route('purchase.bootcamp', $bootcamp_details->id) }}"
                class="pc-btn-enroll {{ !$bootcamp_details->is_paid ? 'pc-btn-enroll--free' : '' }}">
                {{ get_phrase($bootcamp_details->is_paid ? 'Enroll in Bootcamp →' : 'Enroll for Free →') }}
            </a>
        @endif

        <hr class="pc-hr">

        {{-- Includes --}}
        <div class="pc-inc-lbl">{{ get_phrase('This bootcamp includes') }}</div>
        <div class="pc-feat-list">
            <div class="pc-feat">
                <div class="pc-feat-dot">
                    <svg viewBox="0 0 20 20">
                        <rect x="2" y="4" width="16" height="14" rx="2" />
                        <path d="M2 8h16M6.5 2v3M13.5 2v3" stroke-linecap="round" />
                    </svg>
                </div>
                <span><strong>{{ count_bootcamp_classes($bootcamp_details->id) }}</strong>
                    {{ get_phrase('live instructor-led sessions') }}</span>
            </div>
            <div class="pc-feat">
                <div class="pc-feat-dot">
                    <svg viewBox="0 0 20 20">
                        <path d="M4 5h12M4 9.5h12M4 14h7.5" stroke-linecap="round" />
                    </svg>
                </div>
                <span><strong>{{ count_bootcamp_modules($bootcamp_details->id) }}</strong>
                    {{ get_phrase('structured learning modules') }}</span>
            </div>
            <div class="pc-feat">
                <div class="pc-feat-dot">
                    <svg viewBox="0 0 20 20">
                        <path d="M4 14l3-3 3 3 6-6M17 4H3a1 1 0 00-1 1v10a1 1 0 001 1h14a1 1 0 001-1V5a1 1 0 00-1-1z"
                            stroke-linecap="round" stroke-linejoin="round" />
                    </svg>
                </div>
                <span>{{ get_phrase('Downloadable resources') }}:
                    <strong>{{ $hasResource ? get_phrase('Included') : get_phrase('None') }}</strong></span>
            </div>
            <div class="pc-feat">
                <div class="pc-feat-dot">
                    <svg viewBox="0 0 20 20">
                        <polygon points="7,4 7,16 17,10" />
                        <path d="M3 4v12" stroke-linecap="round" />
                    </svg>
                </div>
                <span>{{ get_phrase('Class recordings') }}:
                    <strong>{{ $hasClassRecord ? get_phrase('Included') : get_phrase('None') }}</strong></span>
            </div>
            <div class="pc-feat">
                <div class="pc-feat-dot">
                    <svg viewBox="0 0 20 20">
                        <path d="M6 10l3 3 5-5" stroke-linecap="round" stroke-linejoin="round" />
                        <circle cx="10" cy="10" r="7.5" />
                    </svg>
                </div>
                <span>{{ get_phrase('Professional certificate on completion') }}</span>
            </div>
        </div>

        {{-- Guarantee --}}
        <div class="pc-guarantee">
            <div class="pc-guarantee-shield">
                <svg viewBox="0 0 20 20">
                    <path d="M10 2l7 3v5c0 4.4-3 8.3-7 9.5C7 18.3 3 14.4 3 10V5z" stroke-linecap="round"
                        stroke-linejoin="round" />
                    <path d="M7 10l2 2 4-4" stroke-linecap="round" stroke-linejoin="round" />
                </svg>
            </div>
            <div class="pc-guarantee-txt">
                <strong>{{ get_phrase('30-Day Money-Back Guarantee') }}</strong>
                {{ get_phrase('Not satisfied? Get a full refund within 30 days — no questions asked.') }}
            </div>
        </div>

        <hr class="pc-hr">

        {{-- Contact instructor --}}
        <div class="pc-section-lbl">{{ get_phrase('Contact Instructor') }}</div>
        <div class="pc-socials">
            @if(!empty($instructor->twitter))
                <a href="{{ $instructor->twitter }}" target="_blank" class="pc-social-ico" title="Twitter">𝕏</a>
            @endif
            @if(!empty($instructor->facebook))
                <a href="{{ $instructor->facebook }}" target="_blank" class="pc-social-ico" title="Facebook">f</a>
            @endif
            @if(!empty($instructor->linkedin))
                <a href="{{ $instructor->linkedin }}" target="_blank" class="pc-social-ico" title="LinkedIn">in</a>
            @endif
        </div>
        @if(!empty($instructor->phone))
            <a href="tel:{{ $instructor->phone }}" class="pc-call-btn">
                <svg viewBox="0 0 20 20">
                    <path d="M3 3l3.5 1L7.5 7 5.7 8.8c.9 1.8 2.7 3.6 4.5 4.5L12 11.5l3 1 1 3.5C11.7 17.5 2.5 8.3 3 3z"
                        stroke-linecap="round" stroke-linejoin="round" />
                </svg>
                {{ $instructor->phone }}
            </a>
        @endif

        <hr class="pc-hr">

        {{-- Share --}}
        <div class="pc-section-lbl">{{ get_phrase('Share this bootcamp') }}</div>
        <div class="pc-share-row">
            <a href="https://www.facebook.com/sharer/sharer.php?u={{ urlencode($share_url) }}" target="_blank"
                class="pc-share-ico pc-si-fb" title="Facebook">f</a>
            <a href="https://twitter.com/intent/tweet?url={{ urlencode($share_url) }}&text={{ urlencode($bootcamp_details->title) }}"
                target="_blank" class="pc-share-ico pc-si-tw" title="Twitter">𝕏</a>
            <a href="https://api.whatsapp.com/send?text={{ urlencode($share_url) }}" target="_blank"
                class="pc-share-ico pc-si-wa" title="WhatsApp">W</a>
            <a href="https://www.linkedin.com/shareArticle?url={{ urlencode($share_url) }}&title={{ urlencode($bootcamp_details->title) }}"
                target="_blank" class="pc-share-ico pc-si-li" title="LinkedIn">in</a>
        </div>

    </div>{{-- /pc-body --}}
</div>

@include('frontend.default.scripts')