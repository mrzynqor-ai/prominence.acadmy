<style>
    .ebook-card .courses-img {
	height: auto !important;
}
</style>

<div class="col-lg-4 col-md-6 col-12 mb-30">
    <a href="{{ route('ebook.details', $ebook->slug) }}" class="card Ecard eBar-card ebook-card border-0 shadow-sm radius-16 h-100 overflow-hidden">
        <div class="courses-img position-relative" style="height: 260px !important; overflow: hidden; background: #f0f4f9;">
            <img src="{{ get_image($ebook->thumbnail) }}" alt="ebook-thumbnail" class="ebook-thumbnail w-100 h-100" style="object-fit: cover !important;">
            <div class="cText d-flex position-absolute bottom-0 start-0 m-3">
                <h4 class="bg-primary text-white px-3 py-1 radius-30 fw-bold fs-6 shadow-sm mb-0">
                    @if ($ebook->is_paid == 0)
                        {{ get_phrase('Free') }}
                    @else
                        @if ($ebook->discount_flag == 1)
                            @php $discounted_price = number_format(($ebook->price - $ebook->discounted_price), 2) @endphp
                            {{ currency($discounted_price) }}
                            <del class="text-white-50 ms-1" style="font-size:12px;">{{ currency(number_format($ebook->price, 2)) }}</del>
                        @else
                            {{ currency(number_format($ebook->price, 2)) }}
                        @endif
                    @endif
                </h4>
            </div>
        </div>
        <div class="card-body entry-details p-3">
            <div class="info-card mb-2 d-flex align-items-center gap-2">
                <div class="creator d-flex align-items-center gap-2">
                    <img src="{{ get_image($ebook->photo) }}" alt="author-image" class="rounded-circle" style="width: 28px; height: 28px; object-fit: cover;">
                    <h5 class="mb-0 text-muted fs-7 fw-semibold">{{ $ebook->author_name }}</h5>
                </div>
            </div>
            <div class="entry-title">
                <h3 class="w-100 ellipsis-2 mb-0 fw-bold fs-6 text-dark" style="line-height:1.4;">{{ ucfirst($ebook->title) }}</h3>
            </div>
        </div>
        <div class="learn-more p-3 pt-0 text-primary fw-bold fs-7">{{ get_phrase('Learn more') }} <i class="fa-solid fa-arrow-right-long ms-2"></i></div>
    </a>
</div>
