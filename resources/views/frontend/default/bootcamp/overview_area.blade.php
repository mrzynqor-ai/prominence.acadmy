<style>
.bc-description { font-size:14px; color:var(--muted); line-height:1.85; display:-webkit-box; -webkit-line-clamp:4; -webkit-box-orient:vertical; overflow:hidden; font-family:var(--fb); }
.bc-description--expanded { display:block !important; -webkit-line-clamp:unset !important; overflow:visible !important; }
.bc-see-more { display:inline-flex; align-items:center; gap:6px; margin-top:14px; font-size:13px; font-weight:500; color:var(--navy3); background:none; border:none; cursor:pointer; padding:0; font-family:var(--fb); transition:opacity .2s; }
.bc-see-more:hover { opacity:.7; }

/* FAQ redesign */
.bc-faq-item { border:1px solid rgba(0,0,0,.06); border-radius:12px; margin-bottom:8px; overflow:hidden; }
.bc-faq-q { display:flex; align-items:center; justify-content:space-between; padding:15px 18px; cursor:pointer; font-size:13.5px; font-weight:500; color:var(--bc-text2); background:none; border:none; width:100%; text-align:left; font-family:var(--fb); transition:background .15s; gap:12px; }
.bc-faq-q:hover, .bc-faq-q.open { background:#fafaf8; }
.bc-faq-q svg { width:15px; height:15px; stroke:var(--gold); fill:none; stroke-width:2; flex-shrink:0; transition:transform .25s; }
.bc-faq-q.open svg { transform:rotate(180deg); }
.bc-faq-a { display:none; padding:2px 18px 16px; font-size:13px; color:var(--muted); line-height:1.8; font-family:var(--fb); }
.bc-faq-a.open { display:block; }
</style>

{{-- Overview / Description --}}
<div class="bc-box">
    <div class="bc-box-header">
        <div class="bc-box-icon">
            <svg viewBox="0 0 20 20"><path d="M10 2a8 8 0 100 16A8 8 0 0010 2z" stroke-linecap="round"/><path d="M10 7v4l2.5 2.5" stroke-linecap="round"/></svg>
        </div>
        <div>
            <div class="bc-box-title">{{ get_phrase('Bootcamp Overview') }}</div>
            <div class="bc-box-subtitle">{{ get_phrase('Program Description') }}</div>
        </div>
    </div>

    <div class="bc-description" id="bc-description-text">
        @if(isset($bootcamp_details->description))
            {!! $bootcamp_details->description !!}
        @else
            <p style="text-align:center;color:var(--faint)">{{ get_phrase('No Bootcamp Description') }}</p>
        @endif
    </div>

    @if(isset($bootcamp_details->description))
        <button class="bc-see-more" id="bc-see-more">
            {{ get_phrase('See more') }}
            <svg width="12" height="12" viewBox="0 0 20 20" fill="none" stroke="currentColor" stroke-width="2">
                <path d="M5 8l5 5 5-5" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>
        </button>
    @endif
</div>

{{-- FAQ --}}
@php
    $faqs = $bootcamp_details->faqs ? json_decode($bootcamp_details->faqs, true) : [];
@endphp

<div class="bc-box">
    <div class="bc-box-header">
        <div class="bc-box-icon">
            <svg viewBox="0 0 20 20"><circle cx="10" cy="10" r="7.5"/><path d="M10 10.5v.5M10 7a2 2 0 011.5 3.3" stroke-linecap="round"/></svg>
        </div>
        <div>
            <div class="bc-box-title">{{ get_phrase('Frequently Asked') }}</div>
            <div class="bc-box-subtitle">{{ get_phrase('Common Questions') }}</div>
        </div>
    </div>

    @if(count($faqs) > 0)
        @foreach($faqs as $key => $faq)
            <div class="bc-faq-item">
                <button class="bc-faq-q" onclick="bcToggleFaq(this)">
                    {{ ucfirst($faq['title'] ?? '') }}
                    <svg viewBox="0 0 20 20"><path d="M5 8l5 5 5-5" stroke-linecap="round" stroke-linejoin="round"/></svg>
                </button>
                <div class="bc-faq-a">{{ ucfirst($faq['description'] ?? '') }}</div>
            </div>
        @endforeach
    @else
        <p style="text-align:center;color:var(--faint);font-size:13px;padding:8px 0">{{ get_phrase('FAQ area empty') }}</p>
    @endif
</div>

<script>
function bcToggleFaq(btn) {
    var answer = btn.nextElementSibling;
    var isOpen = btn.classList.contains('open');
    document.querySelectorAll('.bc-faq-q').forEach(function(b){
        b.classList.remove('open');
        b.nextElementSibling.classList.remove('open');
    });
    if (!isOpen) {
        btn.classList.add('open');
        answer.classList.add('open');
    }
}
</script>