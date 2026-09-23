<style>
.bc-req-grid { display:grid; grid-template-columns:1fr 1fr; gap:28px; }
.bc-req-section-title { font-family:var(--ff); font-size:17px; font-weight:600; color:var(--navy); margin-bottom:14px; display:flex; align-items:center; gap:8px; }
.bc-req-dot { width:6px; height:6px; border-radius:50%; background:var(--navy3); flex-shrink:0; }
.bc-out-dot { width:6px; height:6px; border-radius:50%; background:#1a7a4a; flex-shrink:0; }
.bc-req-list { list-style:none; display:flex; flex-direction:column; gap:10px; }
.bc-req-item { display:flex; align-items:flex-start; gap:10px; font-size:13px; color:var(--muted); line-height:1.65; font-family:var(--fb); }
.bc-req-check { width:18px; height:18px; border-radius:50%; background:linear-gradient(135deg,var(--navy),var(--navy3)); display:flex; align-items:center; justify-content:center; flex-shrink:0; margin-top:1px; }
.bc-req-check svg { width:8px; height:8px; stroke:#fff; fill:none; stroke-width:2.5; }
.bc-out-check { width:18px; height:18px; border-radius:50%; background:#e8f8f0; display:flex; align-items:center; justify-content:center; flex-shrink:0; margin-top:1px; }
.bc-out-check svg { width:8px; height:8px; stroke:#1a7a4a; fill:none; stroke-width:2.5; }
</style>

@php
    $requirements = $bootcamp_details->requirements ? json_decode($bootcamp_details->requirements, true) : [];
    $outcomes     = $bootcamp_details->outcomes     ? json_decode($bootcamp_details->outcomes, true)     : [];
@endphp

<div class="bc-box">
    <div class="bc-box-header">
        <div class="bc-box-icon">
            <svg viewBox="0 0 20 20"><path d="M5 10l3 3 7-7" stroke-linecap="round" stroke-linejoin="round"/></svg>
        </div>
        <div>
            <div class="bc-box-title">{{ get_phrase('Requirements & Outcomes') }}</div>
            <div class="bc-box-subtitle">{{ get_phrase('What you need · What you\'ll gain') }}</div>
        </div>
    </div>

    <div class="bc-req-grid">
        {{-- Requirements --}}
        <div>
            <div class="bc-req-section-title">
                <div class="bc-req-dot"></div>
                {{ get_phrase('Prerequisites') }}
            </div>
            @if(count($requirements) > 0)
                <ul class="bc-req-list">
                    @foreach($requirements as $req)
                        <li class="bc-req-item">
                            <div class="bc-req-check">
                                <svg viewBox="0 0 10 10"><path d="M2 5l2 2 4-4" stroke-linecap="round" stroke-linejoin="round"/></svg>
                            </div>
                            {{ $req }}
                        </li>
                    @endforeach
                </ul>
            @else
                <p style="font-size:13px;color:var(--faint);font-family:var(--fb)">{{ get_phrase('No requirements listed') }}</p>
            @endif
        </div>

        {{-- Outcomes --}}
        <div>
            <div class="bc-req-section-title">
                <div class="bc-out-dot"></div>
                {{ get_phrase('What You\'ll Learn') }}
            </div>
            @if(count($outcomes) > 0)
                <ul class="bc-req-list">
                    @foreach($outcomes as $outcome)
                        <li class="bc-req-item">
                            <div class="bc-out-check">
                                <svg viewBox="0 0 10 10"><path d="M2 5l2 2 4-4" stroke-linecap="round" stroke-linejoin="round"/></svg>
                            </div>
                            {{ $outcome }}
                        </li>
                    @endforeach
                </ul>
            @else
                <p style="font-size:13px;color:var(--faint);font-family:var(--fb)">{{ get_phrase('No outcomes listed') }}</p>
            @endif
        </div>
    </div>
</div>