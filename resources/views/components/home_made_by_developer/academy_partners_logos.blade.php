{{--
    Academy Partners Logos Block
    =============================
    To make a editable image or text need to be add a "builder editable" class and builder identity attribute with a unique value
    builder identity value have to be unique under a single file
--}}

<style>
    .academy-partners-section {
        padding: 60px 0;
        background: #ffffff;
        direction: rtl;
        border-top: 1px solid #eee;
        border-bottom: 1px solid #eee;
    }

    .academy-partners-header {
        text-align: center;
        margin-bottom: 40px;
    }

    .academy-partners-subtitle {
        font-size: 14px;
        color: #6b7385;
        text-transform: uppercase;
        letter-spacing: 2px;
        margin-bottom: 10px;
    }

    .academy-partners-title {
        font-size: 28px;
        font-weight: 600;
        color: #1a365d;
        font-family: 'Cairo', 'Tajawal', sans-serif;
    }

    /* Partners Logos Grid */
    .academy-partners-grid {
        display: flex;
        justify-content: center;
        align-items: center;
        flex-wrap: wrap;
        gap: 40px;
    }

    .academy-partner-item {
        flex: 0 0 auto;
        padding: 20px 30px;
        background: #f8f9fa;
        border-radius: 12px;
        transition: all 0.3s ease;
        display: flex;
        align-items: center;
        justify-content: center;
        min-width: 150px;
        min-height: 80px;
    }

    .academy-partner-item:hover {
        background: #ffffff;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.08);
        transform: translateY(-3px);
    }

    .academy-partner-item img {
        max-width: 120px;
        max-height: 50px;
        object-fit: contain;
        filter: grayscale(100%);
        opacity: 0.7;
        transition: all 0.3s ease;
    }

    .academy-partner-item:hover img {
        filter: grayscale(0%);
        opacity: 1;
    }

    /* Placeholder logos for demo */
    .academy-partner-placeholder {
        font-size: 14px;
        font-weight: 600;
        color: #6b7385;
        text-align: center;
    }

    /* Marquee Animation (Optional) */
    .academy-partners-marquee {
        overflow: hidden;
        position: relative;
    }

    .academy-partners-marquee::before,
    .academy-partners-marquee::after {
        content: '';
        position: absolute;
        top: 0;
        width: 100px;
        height: 100%;
        z-index: 2;
    }

    .academy-partners-marquee::before {
        right: 0;
        background: linear-gradient(to left, #fff, transparent);
    }

    .academy-partners-marquee::after {
        left: 0;
        background: linear-gradient(to right, #fff, transparent);
    }

    .academy-partners-track {
        display: flex;
        gap: 40px;
        animation: marquee 30s linear infinite;
    }

    @keyframes marquee {
        0% {
            transform: translateX(0);
        }

        100% {
            transform: translateX(-50%);
        }
    }

    /* Responsive */
    @media (max-width: 768px) {
        .academy-partners-title {
            font-size: 22px;
        }

        .academy-partners-grid {
            gap: 20px;
        }

        .academy-partner-item {
            padding: 15px 20px;
            min-width: 120px;
        }

        .academy-partner-item img {
            max-width: 80px;
        }
    }
</style>

<section class="academy-partners-section">
    <div class="container">
        {{-- Section Header --}}
        <div class="academy-partners-header drop-area">
            <p class="academy-partners-subtitle builder-editable" builder-identity="1">
                {{ get_phrase('شركاء النجاح') }}
            </p>
            <h2 class="academy-partners-title builder-editable" builder-identity="2">
                {{ get_phrase('جهات وشركات تثق بنا') }}
            </h2>
        </div>

        {{-- Partners Logos Grid --}}
        <div class="academy-partners-grid">
            {{-- Partner 1 --}}
            <div class="academy-partner-item">
                <img src="{{ asset('assets/frontend/default/image/logos/partner1.png') }}"
                    alt="Partner 1"
                    class="builder-editable"
                    builder-identity="3"
                    onerror="this.parentElement.innerHTML='<span class=\'academy-partner-placeholder\'>شعار شريك 1</span>'">
            </div>

            {{-- Partner 2 --}}
            <div class="academy-partner-item">
                <img src="{{ asset('assets/frontend/default/image/logos/partner2.png') }}"
                    alt="Partner 2"
                    class="builder-editable"
                    builder-identity="4"
                    onerror="this.parentElement.innerHTML='<span class=\'academy-partner-placeholder\'>شعار شريك 2</span>'">
            </div>

            {{-- Partner 3 --}}
            <div class="academy-partner-item">
                <img src="{{ asset('assets/frontend/default/image/logos/partner3.png') }}"
                    alt="Partner 3"
                    class="builder-editable"
                    builder-identity="5"
                    onerror="this.parentElement.innerHTML='<span class=\'academy-partner-placeholder\'>شعار شريك 3</span>'">
            </div>

            {{-- Partner 4 --}}
            <div class="academy-partner-item">
                <img src="{{ asset('assets/frontend/default/image/logos/partner4.png') }}"
                    alt="Partner 4"
                    class="builder-editable"
                    builder-identity="6"
                    onerror="this.parentElement.innerHTML='<span class=\'academy-partner-placeholder\'>شعار شريك 4</span>'">
            </div>

            {{-- Partner 5 --}}
            <div class="academy-partner-item">
                <img src="{{ asset('assets/frontend/default/image/logos/partner5.png') }}"
                    alt="Partner 5"
                    class="builder-editable"
                    builder-identity="7"
                    onerror="this.parentElement.innerHTML='<span class=\'academy-partner-placeholder\'>شعار شريك 5</span>'">
            </div>

            {{-- Partner 6 --}}
            <div class="academy-partner-item">
                <img src="{{ asset('assets/frontend/default/image/logos/partner6.png') }}"
                    alt="Partner 6"
                    class="builder-editable"
                    builder-identity="8"
                    onerror="this.parentElement.innerHTML='<span class=\'academy-partner-placeholder\'>شعار شريك 6</span>'">
            </div>
        </div>

        {{-- Drop area for additional elements --}}
        <div class="text-center mt-4 drop-area"></div>
    </div>
</section>