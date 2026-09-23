{{-- instructor_area.blade.php --}}
@php
    $instructor = get_user_info($bootcamp_details->user_id);
    $skills = json_decode($instructor->skills, true);
    if (is_array($skills) && count($skills) > 0) {
        $skills = array_column($skills, 'value');
    }
    $rating      = instructor_rating($instructor->id);
    $students    = count_student_by_instructor($bootcamp_details->user_id);
    $bootcamps   = count_instructor_bootcamps($bootcamp_details->user_id);
    $reviews     = instructor_reviews($instructor->id);
@endphp

<style>
.ia-card {
    background: #fff;
    border: 1px solid rgba(0,0,0,.07);
    border-radius: 18px;
    overflow: hidden;
    box-shadow: 0 2px 20px rgba(0,0,0,.05);
}
.ia-top-bar {
    height: 3px;
    background: linear-gradient(90deg, var(--navy), var(--gold), var(--gold2), var(--gold), var(--navy));
}

/* Header */
.ia-header {
    display: flex;
    align-items: flex-start;
    gap: 20px;
    padding: 28px 28px 22px;
    border-bottom: 1px solid var(--cream2);
}
.ia-avatar-wrap { position: relative; flex-shrink: 0; }
.ia-avatar {
    width: 80px; height: 80px;
    border-radius: 50%;
    object-fit: cover;
    border: 3px solid var(--cream2);
    display: block;
}
.ia-avatar-ring {
    position: absolute; inset: -4px;
    border-radius: 50%;
    border: 1.5px solid rgba(201,168,76,.35);
    pointer-events: none;
}

.ia-meta { flex: 1; min-width: 0; }
.ia-eyebrow {
    font-size: 10px; letter-spacing: .15em; text-transform: uppercase;
    color: var(--gold); font-weight: 700; font-family: var(--fb); margin-bottom: 5px;
}
.ia-name {
    font-family: var(--ff); font-size: 22px; font-weight: 600;
    color: var(--navy); line-height: 1.1; margin-bottom: 6px;
}
.ia-skills {
    font-size: 13px; color: var(--faint); font-family: var(--fb);
    line-height: 1.5; margin-bottom: 12px;
}
.ia-rating-row { display: flex; align-items: center; gap: 8px; flex-wrap: wrap; }
.ia-stars { display: flex; gap: 2px; }
.ia-star { color: var(--gold); font-size: 13px; line-height: 1; }
.ia-rating-num {
    font-size: 13px; font-weight: 600; color: var(--navy3); font-family: var(--fb);
}
.ia-rating-lbl {
    font-size: 11.5px; color: var(--faint); font-family: var(--fb);
}

/* Stats row */
.ia-stats {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    border-bottom: 1px solid var(--cream2);
}
.ia-stat {
    padding: 18px 12px;
    text-align: center;
    border-right: 1px solid var(--cream2);
}
.ia-stat:last-child { border-right: none; }
.ia-stat-n {
    display: block;
    font-family: var(--ff); font-size: 24px; font-weight: 600; color: var(--navy);
    line-height: 1; margin-bottom: 5px;
}
.ia-stat-n span { color: var(--gold); font-size: 16px; }
.ia-stat-l {
    display: block;
    font-size: 10.5px; color: var(--faint); font-family: var(--fb);
    text-transform: uppercase; letter-spacing: .1em; font-weight: 500;
}
.ia-stat-icon {
    display: block; margin: 0 auto 8px;
    width: 30px; height: 30px; border-radius: 8px;
    background: var(--cream2);
    display: flex; align-items: center; justify-content: center;
}
.ia-stat-icon svg { width: 14px; height: 14px; stroke: var(--navy3); fill: none; stroke-width: 1.7; }

/* Bio */
.ia-bio { padding: 22px 28px; }
.ia-bio-lbl {
    font-size: 10px; letter-spacing: .13em; text-transform: uppercase;
    color: var(--faint); font-weight: 700; font-family: var(--fb); margin-bottom: 10px;
}
.ia-bio-text {
    font-size: 14px; color: var(--muted); line-height: 1.85;
    font-family: var(--fb); font-weight: 300;
    display: -webkit-box; -webkit-line-clamp: 4; -webkit-box-orient: vertical; overflow: hidden;
}
.ia-bio-text.expanded { display: block; -webkit-line-clamp: unset; overflow: visible; }
.ia-bio-toggle {
    display: inline-flex; align-items: center; gap: 5px;
    margin-top: 10px; font-size: 12.5px; font-weight: 500;
    color: var(--navy3); background: none; border: none;
    cursor: pointer; padding: 0; font-family: var(--fb); transition: opacity .2s;
}
.ia-bio-toggle:hover { opacity: .7; }
.ia-bio-toggle svg { width: 12px; height: 12px; stroke: currentColor; fill: none; stroke-width: 2.2; stroke-linecap: round; stroke-linejoin: round; }

/* Footer */
.ia-footer {
    padding: 18px 28px 24px;
    border-top: 1px solid var(--cream2);
    display: flex; align-items: center; justify-content: space-between; flex-wrap: wrap; gap: 12px;
}
.ia-footer-note { font-size: 12px; color: var(--faint); font-family: var(--fb); }
.ia-view-btn {
    display: inline-flex; align-items: center; gap: 8px;
    padding: 10px 20px;
    background: var(--navy); color: #fff;
    border-radius: 9px; border: none;
    font-size: 13px; font-weight: 600; font-family: var(--fb);
    text-decoration: none; letter-spacing: .03em;
    transition: background .2s, transform .15s;
}
.ia-view-btn:hover { background: var(--navy3); color: #fff; transform: translateY(-1px); }
.ia-view-btn svg { width: 13px; height: 13px; stroke: var(--gold2); fill: none; stroke-width: 2; stroke-linecap: round; stroke-linejoin: round; }
</style>

<div class="ia-card">
    <div class="ia-top-bar"></div>

    {{-- Header: Avatar + Name + Rating --}}
    <div class="ia-header">
        <div class="ia-avatar-wrap">
            <img class="ia-avatar" src="{{ get_image($instructor->photo) }}" alt="{{ $instructor->name }}">
            <div class="ia-avatar-ring"></div>
        </div>
        <div class="ia-meta">
            <div class="ia-eyebrow">{{ get_phrase('Bootcamp Instructor') }}</div>
            <div class="ia-name">{{ ucfirst($instructor->name) }}</div>
            @if($skills)
                <div class="ia-skills">{{ implode(' · ', array_slice($skills, 0, 4)) }}</div>
            @endif
            <div class="ia-rating-row">
                <div class="ia-stars">
                    @for($s = 1; $s <= 5; $s++)
                        <span class="ia-star" style="{{ $s <= round($rating) ? 'color:var(--gold)' : 'color:var(--cream3)' }}">★</span>
                    @endfor
                </div>
                <span class="ia-rating-num">{{ number_format($rating, 1) }}</span>
                <span class="ia-rating-lbl">{{ get_phrase('Instructor rating') }}</span>
            </div>
        </div>
    </div>

    {{-- Stats --}}
    <div class="ia-stats">
        <div class="ia-stat">
            <span class="ia-stat-icon" style="display:flex">
                <svg viewBox="0 0 20 20"><path d="M3 17c0-3.3 3.1-6 7-6s7 2.7 7 6M10 4a3.5 3.5 0 110 7 3.5 3.5 0 010-7z" stroke-linecap="round" stroke-linejoin="round"/></svg>
            </span>
            <span class="ia-stat-n">{{ $students }}<span>+</span></span>
            <span class="ia-stat-l">{{ get_phrase('Students') }}</span>
        </div>
        <div class="ia-stat">
            <span class="ia-stat-icon" style="display:flex">
                <svg viewBox="0 0 20 20"><rect x="2" y="4" width="16" height="14" rx="2"/><path d="M2 8h16M6.5 2v3M13.5 2v3" stroke-linecap="round"/></svg>
            </span>
            <span class="ia-stat-n">{{ $bootcamps }}</span>
            <span class="ia-stat-l">{{ get_phrase('Bootcamps') }}</span>
        </div>
        <div class="ia-stat">
            <span class="ia-stat-icon" style="display:flex">
                <svg viewBox="0 0 20 20"><path d="M10 2l2.4 4.9 5.4.8-3.9 3.8.9 5.4L10 14.4l-4.8 2.5.9-5.4L2.2 7.7l5.4-.8z" stroke-linecap="round" stroke-linejoin="round"/></svg>
            </span>
            <span class="ia-stat-n">{{ $reviews }}</span>
            <span class="ia-stat-l">{{ get_phrase('Reviews') }}</span>
        </div>
    </div>

    {{-- Bio --}}
    <div class="ia-bio">
        <div class="ia-bio-lbl">{{ get_phrase('About the instructor') }}</div>
        <p class="ia-bio-text" id="ia-bio-p">{{ ucfirst($instructor->about) }}</p>
        @if(strlen($instructor->about) > 240)
            <button class="ia-bio-toggle" id="ia-bio-toggle" type="button">
                <span id="ia-toggle-txt">{{ get_phrase('Read more') }}</span>
                <svg id="ia-toggle-icon" viewBox="0 0 20 20"><path d="M5 8l5 5 5-5"/></svg>
            </button>
        @endif
    </div>

    {{-- Footer --}}
    <div class="ia-footer">
        <span class="ia-footer-note">{{ get_phrase('Full profile & other courses') }}</span>
        <a href="{{ route('instructor.details', ['name' => slugify($instructor->name), 'id' => $instructor->id]) }}"
           class="ia-view-btn">
            {{ get_phrase('View Profile') }}
            <svg viewBox="0 0 20 20"><path d="M4 10h12M11 5l5 5-5 5"/></svg>
        </a>
    </div>
</div>

@push('js')
<script>
(function () {
    var toggle = document.getElementById('ia-bio-toggle');
    if (!toggle) return;
    var bio  = document.getElementById('ia-bio-p');
    var txt  = document.getElementById('ia-toggle-txt');
    var icon = document.getElementById('ia-toggle-icon');
    var open = false;
    toggle.addEventListener('click', function () {
        open = !open;
        bio.classList.toggle('expanded', open);
        txt.textContent  = open ? '{{ get_phrase("Read less") }}' : '{{ get_phrase("Read more") }}';
        icon.innerHTML   = open
            ? '<path d="M5 12l5-5 5 5"/>'
            : '<path d="M5 8l5 5 5-5"/>';
    });
})();
</script>
@endpush