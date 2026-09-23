{{-- content_area.blade.php --}}
<style>
.ca-header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin-bottom: 24px;
    padding-bottom: 18px;
    border-bottom: 1px solid var(--cream2);
}
.ca-header-left { display: flex; align-items: center; gap: 12px; }
.ca-header-icon {
    width: 38px; height: 38px;
    border-radius: 10px;
    background: linear-gradient(135deg, var(--navy), var(--navy3));
    display: flex; align-items: center; justify-content: center; flex-shrink: 0;
}
.ca-header-icon svg { width: 17px; height: 17px; stroke: #fff; fill: none; stroke-width: 1.6; }
.ca-header-title { font-family: var(--ff); font-size: 20px; font-weight: 600; color: var(--navy); line-height: 1.1; }
.ca-header-sub { font-size: 11.5px; color: var(--faint); margin-top: 2px; font-family: var(--fb); letter-spacing: .03em; }
.ca-pill {
    display: inline-flex; align-items: center; gap: 6px;
    background: var(--cream2); border: 1px solid var(--bc-border);
    border-radius: 20px; padding: 5px 14px;
    font-size: 12px; color: var(--muted); font-family: var(--fb); font-weight: 500;
}
.ca-pill strong { color: var(--navy); font-weight: 600; }
.ca-pill-sep { width: 3px; height: 3px; border-radius: 50%; background: var(--cream3); display: inline-block; }

/* Accordion */
.ca-accordion { display: flex; flex-direction: column; gap: 10px; }
.ca-acc-item {
    border: 1px solid rgba(0,0,0,.07);
    border-radius: 12px;
    overflow: hidden;
    background: #fff;
    transition: box-shadow .2s;
}
.ca-acc-item:hover { box-shadow: 0 4px 20px rgba(0,0,0,.07); }

.ca-acc-header {
    width: 100%;
    display: flex; align-items: center; gap: 14px;
    padding: 16px 20px;
    background: none; border: none; cursor: pointer;
    text-align: left;
    transition: background .15s;
}
.ca-acc-header:hover { background: rgba(0,0,0,.015); }
.ca-acc-header.open { background: rgba(10,22,40,.025); }

.ca-acc-num {
    width: 28px; height: 28px; border-radius: 8px; flex-shrink: 0;
    background: var(--cream2); border: 1px solid var(--bc-border);
    display: flex; align-items: center; justify-content: center;
    font-size: 11px; font-weight: 700; color: var(--navy3); font-family: var(--fb);
    transition: all .2s;
}
.ca-acc-header.open .ca-acc-num {
    background: var(--navy); color: var(--gold2);
    border-color: transparent;
}

.ca-acc-title {
    flex: 1; font-size: 14px; font-weight: 600; color: var(--bc-text);
    font-family: var(--fb); line-height: 1.3;
}
.ca-acc-badge {
    font-size: 11px; color: var(--faint); font-family: var(--fb);
    background: var(--cream2); border-radius: 20px; padding: 3px 10px;
    white-space: nowrap;
}
.ca-acc-chevron {
    width: 16px; height: 16px; flex-shrink: 0;
    stroke: var(--faint); fill: none; stroke-width: 2;
    stroke-linecap: round; stroke-linejoin: round;
    transition: transform .25s cubic-bezier(.4,0,.2,1);
}
.ca-acc-header.open .ca-acc-chevron { transform: rotate(180deg); }

/* Lesson list */
.ca-acc-body { max-height: 0; overflow: hidden; transition: max-height .35s cubic-bezier(.4,0,.2,1); }
.ca-acc-body.open { max-height: 1000px; }
.ca-lesson-list { list-style: none; padding: 0 14px 14px; margin: 0; display: flex; flex-direction: column; gap: 4px; }

.ca-lesson-item {
    display: flex; align-items: center; gap: 12px;
    padding: 10px 12px;
    border-radius: 8px;
    text-decoration: none;
    transition: background .15s;
    cursor: pointer;
}
.ca-lesson-item:hover { background: var(--cream2); }

.ca-lesson-dot {
    width: 7px; height: 7px; border-radius: 50%; flex-shrink: 0;
    background: var(--cream3); border: 1.5px solid var(--bc-border);
    transition: all .2s;
}
.ca-lesson-item:hover .ca-lesson-dot { background: var(--gold); border-color: var(--gold); }

.ca-lesson-text { flex: 1; font-size: 13.5px; color: var(--bc-text2); font-family: var(--fb); line-height: 1.35; }
.ca-lesson-item:hover .ca-lesson-text { color: var(--navy); }

.ca-lesson-lock {
    width: 14px; height: 14px; flex-shrink: 0;
    stroke: var(--faint); fill: none; stroke-width: 1.6;
    opacity: .6;
}
.ca-lesson-free {
    font-size: 10px; font-weight: 700; letter-spacing: .08em; text-transform: uppercase;
    color: #1a6b3c; background: #d4f0e0; border-radius: 20px; padding: 2px 9px;
    font-family: var(--fb); white-space: nowrap;
}

/* Divider between lessons */
.ca-lesson-list li + li { border-top: 1px solid rgba(0,0,0,.04); }
.ca-lesson-list li:first-child { padding-top: 4px; }

/* Empty states */
.ca-empty {
    text-align: center; padding: 40px 20px;
    color: var(--faint); font-size: 13.5px; font-family: var(--fb);
    display: flex; flex-direction: column; align-items: center; gap: 10px;
}
.ca-empty-icon { opacity: .3; }
.ca-empty-icon svg { width: 36px; height: 36px; stroke: var(--navy); fill: none; stroke-width: 1.4; }
</style>

<div class="bc-box">
    {{-- Header --}}
    <div class="ca-header">
        <div class="ca-header-left">
            <div class="ca-header-icon">
                <svg viewBox="0 0 20 20"><path d="M4 5h12M4 9.5h12M4 14h7.5" stroke-linecap="round"/></svg>
            </div>
            <div>
                <div class="ca-header-title">{{ get_phrase('Course Content') }}</div>
                <div class="ca-header-sub">{{ get_phrase('All modules & classes') }}</div>
            </div>
        </div>
        <div class="ca-pill">
            <strong>{{ count_bootcamp_modules($bootcamp_details->id) }}</strong>
            {{ get_phrase('modules') }}
            <span class="ca-pill-sep"></span>
            <strong>{{ count_bootcamp_classes($bootcamp_details->id) }}</strong>
            {{ get_phrase('classes') }}
        </div>
    </div>

    {{-- Accordion --}}
    @if($modules->count() > 0)
    <div class="ca-accordion">
        @foreach($modules as $i => $module)
        @php $mc = DB::table('bootcamp_live_classes')->where('module_id', $module->id)->count(); @endphp
        <div class="ca-acc-item">
            <button class="ca-acc-header" type="button" onclick="caToggle(this)">
                <span class="ca-acc-num">{{ str_pad($i + 1, 2, '0', STR_PAD_LEFT) }}</span>
                <span class="ca-acc-title">{{ ucfirst($module->title) }}</span>
                <span class="ca-acc-badge">{{ $mc }} {{ get_phrase($mc === 1 ? 'class' : 'classes') }}</span>
                <svg class="ca-acc-chevron" viewBox="0 0 20 20">
                    <path d="M5 8l5 5 5-5"/>
                </svg>
            </button>

            <div class="ca-acc-body">
                @php $classes = DB::table('bootcamp_live_classes')->where('module_id', $module->id)->get(); @endphp
                <ul class="ca-lesson-list">
                    @forelse($classes as $class)
                    <li>
                        <a href="{{ $bootcamp_details->is_paid ? 'javascript:void(0)' : route('course.player', $bootcamp_details->slug) }}"
                           class="ca-lesson-item">
                            <span class="ca-lesson-dot"></span>
                            <span class="ca-lesson-text">{{ ucfirst($class->title) }}</span>
                            @if($bootcamp_details->is_paid)
                                <svg class="ca-lesson-lock" viewBox="0 0 20 20">
                                    <rect x="5" y="9" width="10" height="9" rx="2"/>
                                    <path d="M7 9V7a3 3 0 016 0v2" stroke-linecap="round"/>
                                </svg>
                            @else
                                <span class="ca-lesson-free">{{ get_phrase('Free') }}</span>
                            @endif
                        </a>
                    </li>
                    @empty
                    <li>
                        <div class="ca-empty" style="padding: 20px;">
                            <span style="font-size: 13px; color: var(--faint);">{{ get_phrase('No classes in this module yet.') }}</span>
                        </div>
                    </li>
                    @endforelse
                </ul>
            </div>
        </div>
        @endforeach
    </div>

    @else
    <div class="ca-empty">
        <span class="ca-empty-icon">
            <svg viewBox="0 0 24 24"><path d="M9 12h6M9 16h4M6 4h12a2 2 0 012 2v14a2 2 0 01-2 2H6a2 2 0 01-2-2V6a2 2 0 012-2z" stroke-linecap="round" stroke-linejoin="round"/></svg>
        </span>
        <span>{{ get_phrase('Bootcamp Content Empty') }}</span>
    </div>
    @endif
</div>

@push('js')
<script>
function caToggle(header) {
    var body = header.nextElementSibling;
    var isOpen = header.classList.contains('open');
    // close all
    document.querySelectorAll('.ca-acc-header.open').forEach(function(h) {
        h.classList.remove('open');
        h.nextElementSibling.classList.remove('open');
    });
    // open clicked if it was closed
    if (!isOpen) {
        header.classList.add('open');
        body.classList.add('open');
    }
}
// Open first module by default
(function() {
    var first = document.querySelector('.ca-acc-header');
    if (first) caToggle(first);
})();
</script>
@endpush