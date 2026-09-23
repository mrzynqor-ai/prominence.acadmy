{{-- bootcamp_grid.blade.php --}}
@php
    /* ── review data ── */
    $ugc_reviews = App\Models\Review::where('course_id', $bootcamp->id)->orderBy('id', 'DESC')->get();
    $ugc_total = $ugc_reviews->count();
    $ugc_sum = array_sum(array_column($ugc_reviews->toArray(), 'rating'));
    $ugc_avg = $ugc_total > 0 ? round($ugc_sum / $ugc_total, 1) : 0;

    /* ── button state ── */
    $ugc_url = route('purchase.bootcamp', $bootcamp->id);
    $ugc_label = get_phrase($bootcamp->is_paid ? 'Enroll Now' : 'Enroll Free');
    $ugc_mod = '';

    if (isset(auth()->user()->id)) {
        $ugc_owned = App\Models\BootcampPurchase::where('user_id', auth()->user()->id)
            ->where('bootcamp_id', $bootcamp->id)->where('status', 1)->first();
        if ($ugc_owned) {
            $ugc_label = get_phrase('Go to Program');
            $ugc_url = route('my.bootcamp.details', $bootcamp->slug);
            $ugc_mod = 'pcard__enroll--owned';
        }
        $ugc_pending = DB::table('offline_payments')
            ->where('user_id', auth()->user()->id)->where('item_type', 'bootcamp')
            ->where('items', $bootcamp->id)->where('status', 0)->first();
        if ($ugc_pending) {
            $ugc_label = get_phrase('Processing');
            $ugc_url = 'javascript:void(0);';
            $ugc_mod = 'pcard__enroll--pending';
        }
    }

    /* ── discount ── */
    $ugc_disc_pct = 0;
    if ($bootcamp->is_paid == 1 && $bootcamp->discount_flag == 1) {
        $ugc_disc_pct = round(($bootcamp->discounted_price / $bootcamp->price) * 100);
        $ugc_final = number_format($bootcamp->price - $bootcamp->discounted_price, 2);
    }
@endphp

<style>
    /* ── PROGRAM CARD  pcard__ prefix ── */
    .pcard {
        background: #fff;
        border: 1px solid #e0e4f8;
        border-radius: 20px;
        overflow: hidden;
        display: flex;
        flex-direction: column;
        font-family: 'DM Sans', system-ui, sans-serif;
        transition: border-color .25s, transform .3s cubic-bezier(.2, .8, .3, 1), box-shadow .3s;
        position: relative;
    }

    .pcard:hover {
        border-color: #2f57ef;
        transform: translateY(-6px);
        inset: 0;
        background: linear-gradient(to top, rgba(10, 15, 46, .65) 0%, transparent 55%);
        pointer-events: none;
    }

    .pcard__price {
        position: absolute;
        bottom: 12px;
        left: 12px;
        display: flex;
        align-items: center;
        gap: 6px;
    }

    .pcard__price-tag {
        display: flex;
        align-items: center;
        gap: 6px;
        background: rgba(10, 15, 46, .82);
        color: #fff;
        font-size: 13px;
        font-weight: 500;
        padding: 5px 13px;
        border-radius: 20px;
    }

    .pcard__price-old {
        color: rgba(255, 255, 255, .38);
        font-size: 11px;
        text-decoration: line-through;
    }

    .pcard__price-free {
        background: rgba(26, 122, 74, .88);
    }

    .pcard__discount {
        position: absolute;
        top: 0;
        right: 0;
        background: #2f57ef;
        color: #fff;
        font-size: 11px;
        font-weight: 600;
        padding: 6px 13px 6px 11px;
        border-radius: 0 0 0 12px;
        letter-spacing: .03em;
    }

    .pcard__save {
        position: absolute;
        top: 12px;
        left: 12px;
        width: 32px;
        height: 32px;
        border-radius: 50%;
        background: rgba(255, 255, 255, .92);
        display: flex;
        align-items: center;
        justify-content: center;
        border: none;
        cursor: pointer;
        opacity: 0;
        transition: opacity .2s;
        color: #2f57ef;
    }

    .pcard:hover .pcard__save {
        opacity: 1;
    }

    .pcard__save svg {
        width: 13px;
        height: 13px;
        stroke: currentColor;
        fill: none;
        stroke-width: 1.8;
    }

    /* body */
    .pcard__body {
        padding: 1.1rem 1.2rem 1.25rem;
        display: flex;
        flex-direction: column;
        flex: 1;
    }

    .pcard__instructor {
        display: flex;
        align-items: center;
        gap: 9px;
        margin-bottom: 10px;
        text-decoration: none;
    }

    .pcard__avatar {
        width: 28px;
        height: 28px;
        border-radius: 50%;
        object-fit: cover;
        flex-shrink: 0;
        border: 2px solid #e0e4f8;
    }

    .pcard__inst-name {
        font-size: 12px;
        color: #5a6490;
        font-weight: 400;
        transition: color .2s;
    }

    .pcard__inst-name:hover {
        color: #2f57ef;
    }

    .pcard__title {
        font-family: 'Cormorant Garamond', Georgia, serif;
        font-size: 16.5px;
        font-weight: 600;
        color: #0a0f2e;
        line-height: 1.42;
        margin-bottom: 12px;
        flex: 1;
        display: -webkit-box;
        -webkit-line-clamp: 2;
        -webkit-box-orient: vertical;
        overflow: hidden;
        text-decoration: none;
        transition: color .2s;
    }

    .pcard__title:hover {
        color: #2f57ef;
    }

    .pcard__meta {
        display: flex;
        gap: 7px;
        margin-bottom: 13px;
        flex-wrap: wrap;
    }

    .pcard__meta-pill {
        display: flex;
        align-items: center;
        gap: 5px;
        font-size: 11px;
        color: #5a6490;
        font-weight: 400;
        background: #f4f6ff;
        border: 1px solid #e0e4f8;
        padding: 4px 10px;
        border-radius: 20px;
    }

    .pcard__meta-pill svg {
        width: 11px;
        height: 11px;
        stroke: #9aa3c8;
        fill: none;
        stroke-width: 1.6;
        flex-shrink: 0;
    }

    .pcard__rating {
        display: flex;
        align-items: center;
        gap: 7px;
        margin-bottom: 14px;
    }

    .pcard__stars {
        display: flex;
        gap: 2px;
    }

    .pcard__star {
        width: 12px;
        height: 12px;
    }

    .pcard__star--full {
        color: #d4a843;
    }

    .pcard__star--half {
        color: #d4a843;
        opacity: .5;
    }

    .pcard__star--empty {
        color: #dde0f5;
    }

    .pcard__rating-num {
        font-size: 12px;
        font-weight: 600;
        color: #0a0f2e;
    }

    .pcard__rating-ct {
        font-size: 11px;
        color: #9aa3c8;
    }

    .pcard__divider {
        border: none;
        border-top: 1px solid #f0f2fc;
        margin: 0 0 14px;
    }

    .pcard__tags {
        display: flex;
        gap: 6px;
        flex-wrap: wrap;
        margin-bottom: 14px;
    }

    .pcard__tag {
        font-size: 10px;
        font-weight: 500;
        letter-spacing: .04em;
        padding: 3px 10px;
        border-radius: 20px;
    }

    .pcard__tag--cert {
        background: #eef1fd;
        color: #2f57ef;
    }

    .pcard__tag--live {
        display: flex;
        align-items: center;
        gap: 5px;
        background: #fef0f0;
        color: #c0392b;
    }

    .pcard__tag--live::before {
        content: '';
        width: 5px;
        height: 5px;
        border-radius: 50%;
        background: #e74c3c;
        display: inline-block;
        animation: pcard-pulse 1.5s infinite;
    }

    @keyframes pcard-pulse {

        0%,
        100% {
            opacity: 1;
        }

        50% {
            opacity: .3;
        }
    }

    /* actions */
    .pcard__actions {
        display: grid;
        grid-template-columns: auto 1fr;
        gap: 8px;
        margin-top: auto;
    }

    .pcard__details {
        padding: 9px 16px;
        border: 1px solid #e0e4f8;
        border-radius: 10px;
        font-size: 12px;
        font-weight: 500;
        color: #1e2755;
        text-decoration: none;
        text-align: center;
        transition: all .18s;
        white-space: nowrap;
        display: flex;
        align-items: center;
        gap: 5px;
        background: #fff;
    }

    .pcard__details:hover {
        background: #eef1fd;
        border-color: #2f57ef;
        color: #2f57ef;
    }

    .pcard__details svg {
        width: 12px;
        height: 12px;
        stroke: currentColor;
        fill: none;
        stroke-width: 1.8;
        flex-shrink: 0;
    }

    .pcard__enroll {
        padding: 9px 16px;
        background: #2f57ef;
        border: 1px solid #2f57ef;
        border-radius: 10px;
        font-size: 12px;
        font-weight: 500;
        color: #fff;
        text-decoration: none;
        text-align: center;
        transition: all .18s;
        display: block;
        font-family: 'DM Sans', system-ui, sans-serif;
        cursor: pointer;
    }

    .pcard__enroll:hover {
        background: #1e3bbf;
        border-color: #1e3bbf;
        color: #fff;
    }

    .pcard__enroll--owned {
        background: #1a7a4a;
        border-color: #1a7a4a;
    }

    .pcard__enroll--owned:hover {
        background: #145838;
        border-color: #145838;
    }

    .pcard__enroll--pending {
        background: #9aa3c8;
        border-color: #9aa3c8;
        cursor: default;
        pointer-events: none;
    }

    /* cert footer */
    .pcard__cert {
        margin-top: 12px;
        display: flex;
        align-items: center;
        gap: 8px;
        padding: 8px 12px;
        background: #f4f6ff;
        border-radius: 9px;
        border: 1px solid #e0e4f8;
    }

    .pcard__cert-icon {
        width: 14px;
        height: 14px;
        stroke: #2f57ef;
        fill: none;
        stroke-width: 1.6;
        flex-shrink: 0;
    }

    .pcard__cert-text {
        font-size: 11px;
        color: #5a6490;
    }

    .pcard__cert-text strong {
        color: #0a0f2e;
        font-weight: 500;
    }
</style>

<div class="pcard">
    <div class="pcard__topbar"></div>

    {{-- thumbnail --}}
    <a href="{{ route('bootcamp.details', $bootcamp->slug) }}">
        <div class="pcard__thumb">
            <img src="{{ get_image($bootcamp->thumbnail) }}" alt="{{ $bootcamp->title }}" loading="lazy">
            <div class="pcard__overlay"></div>

            {{-- save button --}}
            <button class="pcard__save" type="button" title="{{ get_phrase('Save') }}">
                <svg viewBox="0 0 20 20">
                    <path d="M5 2h10a1 1 0 011 1v15l-6-4-6 4V3a1 1 0 011-1z" stroke-linecap="round"
                        stroke-linejoin="round" />
                </svg>
            </button>

            {{-- price badge --}}
            <div class="pcard__price">
                @if ($bootcamp->is_paid == 0)
                    <span class="pcard__price-tag pcard__price-free">
                        <svg width="11" height="11" viewBox="0 0 20 20" fill="none" style="stroke-width:2;flex-shrink:0">
                            <path d="M10 2v16M6 6h5.5a2.5 2.5 0 010 5H6v-5zM6 11h6a3 3 0 010 6H6" stroke-linecap="round" />
                        </svg>
                        {{ get_phrase('Free') }}
                    </span>
                @elseif ($bootcamp->discount_flag == 1)
                    <span class="pcard__price-tag">
                        {{ currency($ugc_final) }}
                        <span class="pcard__price-old">{{ currency($bootcamp->price, 2) }}</span>
                    </span>
                @else
                    <span class="pcard__price-tag">{{ currency($bootcamp->price, 2) }}</span>
                @endif
            </div>

            {{-- discount ribbon --}}
            @if ($bootcamp->is_paid == 1 && $bootcamp->discount_flag == 1)
                <div class="pcard__discount">{{ $ugc_disc_pct }}% {{ get_phrase('off') }}</div>
            @endif
        </div>
    </a>

    {{-- body --}}
    <div class="pcard__body">

        {{-- instructor --}}
        <a href="{{ route('instructor.details', [slugify($bootcamp->instructor_name), $bootcamp->user_id]) }}"
            class="pcard__instructor">
            <img src="{{ get_image($bootcamp->instructor_image) }}" alt="{{ $bootcamp->instructor_name }}"
                class="pcard__avatar">
            <span class="pcard__inst-name">{{ $bootcamp->instructor_name }}</span>
        </a>

        {{-- title --}}
        <a href="{{ route('bootcamp.details', $bootcamp->slug) }}" class="pcard__title" title="{{ $bootcamp->title }}">
            {{ ucfirst($bootcamp->title) }}
        </a>

        {{-- meta pills --}}
        <div class="pcard__meta">
            <span class="pcard__meta-pill">
                <svg viewBox="0 0 20 20">
                    <circle cx="10" cy="10" r="7.5" />
                    <path d="M10 6.5v3.75l2.25 2.25" stroke-linecap="round" />
                </svg>
                {{ date('d M Y', $bootcamp->publish_date) }}
            </span>
            <span class="pcard__meta-pill">
                <svg viewBox="0 0 20 20">
                    <rect x="2" y="4" width="16" height="14" rx="2" />
                    <path d="M2 8h16M6.5 2v3M13.5 2v3" stroke-linecap="round" />
                </svg>
                {{ count_bootcamp_classes($bootcamp->id) }} {{ get_phrase('classes') }}
            </span>
        </div>

        {{-- rating --}}
        <div class="pcard__rating">
            <div class="pcard__stars">
                @for ($ugc_s = 1; $ugc_s <= 5; $ugc_s++)
                    <svg class="pcard__star {{ $ugc_s <= round($ugc_avg) ? 'pcard__star--full' : 'pcard__star--empty' }}"
                        viewBox="0 0 16 16" fill="currentColor">
                        <path d="M8 1l1.85 4.13 4.65.38-3.4 2.87 1.1 4.54L8 10.58l-4.2 2.34 1.1-4.54L1.5 5.51l4.65-.38z" />
                    </svg>
                @endfor
            </div>
            @if ($ugc_avg > 0)
                <span class="pcard__rating-num">{{ $ugc_avg }}</span>
                <span class="pcard__rating-ct">({{ $ugc_total }} {{ get_phrase('reviews') }})</span>
            @else
                <span class="pcard__rating-ct">{{ get_phrase('No reviews yet') }}</span>
            @endif
        </div>

        {{-- feature tags --}}
        <div class="pcard__tags">
            <span class="pcard__tag pcard__tag--cert">
                {{ get_phrase('Certificate') }}
            </span>
            <span class="pcard__tag pcard__tag--live">
                {{ get_phrase('Live') }}
            </span>
        </div>

        <hr class="pcard__divider">

        {{-- actions --}}
        <div class="pcard__actions">
            <a href="{{ route('bootcamp.details', $bootcamp->slug) }}" class="pcard__details">
                <svg viewBox="0 0 20 20">
                    <circle cx="10" cy="10" r="7.5" />
                    <path d="M10 7v3l2 2" stroke-linecap="round" />
                </svg>
                {{ get_phrase('Details') }}
            </a>
            <a href="{{ $ugc_url }}" class="pcard__enroll {{ $ugc_mod }}">
                {{ $ugc_label }}
            </a>
        </div>

        {{-- certificate note --}}
        <div class="pcard__cert">
            <svg class="pcard__cert-icon" viewBox="0 0 20 20">
                <path d="M10 2l1.8 4.1 4.5.37-3.3 2.79 1.07 4.39L10 11.3l-4.07 2.35 1.07-4.39L3.7 6.47l4.5-.37z" />
                <circle cx="10" cy="15" r="3.5" stroke-width="1" />
            </svg>
            <span class="pcard__cert-text">{{ get_phrase('Earn a') }}
                <strong>{{ get_phrase('Professional Certificate') }}</strong> {{ get_phrase('upon completion') }}</span>
        </div>

    </div>
</div>