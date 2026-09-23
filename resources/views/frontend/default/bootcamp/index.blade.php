{{-- resources/views/bootcamps/index.blade.php --}}
@extends('layouts.default')
@push('title', 'دبلومه الماجستير المهني Professional Master\'s Diploma')
@push('meta')@endpush
@push('css')
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Tajawal:wght@300;400;500;700;800;900&display=swap" rel="stylesheet">
<style>
:root {
    --navy:      #0a1f5c;
    --navy-deep: #060f2e;
    --blue:      #1756c8;
    --blue-br:   #2e78f0;
    --blue-pale: #e6effe;
    --blue-ultra:#f0f5ff;
    --orange:    #f5821f;
    --orange-lt: #fff4ea;
    --gold:      #f0b429;
    --white:     #ffffff;
    --off:       #f7f9fe;
    --ink:       #0a1f5c;
    --muted:     #5a6a90;
    --faint:     #9ba8c8;
    --border:    #dde6f5;
    --green:     #0e9f6e;
    --shadow-sm: 0 2px 14px rgba(10,31,92,.07);
    --shadow-md: 0 8px 32px rgba(10,31,92,.12);
    --shadow-lg: 0 20px 60px rgba(10,31,92,.18);
    --r:         12px;
    --r-lg:      20px;
    --ff:        'Tajawal', sans-serif;
    --t:         .3s cubic-bezier(.4,0,.2,1);
}
*, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }
.upage { font-family: var(--ff); background: var(--off); color: var(--ink); direction: rtl; }

/* ══════════ HERO ══════════ */
.uhero { background: var(--navy-deep); position: relative; overflow: hidden; }
.uhero__mesh { position: absolute; inset: 0; pointer-events: none; background: radial-gradient(ellipse 80% 60% at 70% 50%, rgba(23,86,200,.5) 0%, transparent 65%), radial-gradient(ellipse 50% 50% at 10% 80%, rgba(245,130,31,.08) 0%, transparent 55%); }
.uhero__grid-bg { position: absolute; inset: 0; pointer-events: none; background-image: linear-gradient(rgba(255,255,255,.022) 1px, transparent 1px), linear-gradient(90deg, rgba(255,255,255,.022) 1px, transparent 1px); background-size: 56px 56px; }
.uhero__orb { position: absolute; border-radius: 50%; pointer-events: none; filter: blur(70px); }
.uhero__orb--1 { width: 600px; height: 600px; background: rgba(46,120,240,.15); top: -200px; right: -100px; }
.uhero__orb--2 { width: 400px; height: 400px; background: rgba(245,130,31,.09); bottom: -100px; left: 0; }

.uhero__strip { position: relative; z-index: 10; border-bottom: 1px solid rgba(255,255,255,.06); padding: 12px 0; background: rgba(0,0,0,.18); backdrop-filter: blur(16px); }
.uhero__strip-inner { display: flex; align-items: center; justify-content: space-between; max-width: 1200px; margin: 0 auto; padding: 0 20px; flex-wrap: wrap; gap: 10px; }
.uhero__crumb { display: flex; align-items: center; gap: 8px; flex-wrap: wrap; }
.uhero__crumb a { color: rgba(255,255,255,.4); font-size: 12px; text-decoration: none; transition: color .2s; }
.uhero__crumb a:hover { color: #fff; }
.uhero__crumb-sep { color: rgba(255,255,255,.2); font-size: 11px; }
.uhero__crumb-active { color: var(--gold); font-size: 12px; font-weight: 700; display: flex; align-items: center; gap: 6px; }
.uhero__crumb-active::before { content: ''; width: 5px; height: 5px; border-radius: 50%; background: var(--gold); display: inline-block; }
.uhero__badge-pill { display: flex; align-items: center; gap: 7px; background: rgba(245,130,31,.12); border: 1px solid rgba(245,130,31,.22); border-radius: 30px; padding: 5px 14px 5px 10px; }
.uhero__badge-pill-dot { width: 7px; height: 7px; border-radius: 50%; background: var(--orange); animation: dotPulse 2s infinite; }
@keyframes dotPulse { 0%,100%{opacity:1;transform:scale(1)} 50%{opacity:.4;transform:scale(.75)} }
.uhero__badge-pill-txt { font-size: 11px; font-weight: 700; color: rgba(255,255,255,.65); letter-spacing: .08em; }

.uhero__inner { position: relative; z-index: 5; padding: 3.5rem 0 2.5rem; }
.uhero__container { max-width: 1200px; margin: 0 auto; padding: 0 20px; }
.uhero__layout { display: grid; grid-template-columns: 1fr 460px; gap: 50px; align-items: center; }

.uhero__eyebrow { display: inline-flex; align-items: center; gap: 10px; margin-bottom: 20px; background: rgba(255,255,255,.06); border: 1px solid rgba(255,255,255,.1); border-radius: 40px; padding: 6px 18px 6px 6px; }
.uhero__eyebrow-icon { width: 28px; height: 28px; border-radius: 50%; background: linear-gradient(135deg, var(--orange), #d96a0a); display: flex; align-items: center; justify-content: center; box-shadow: 0 4px 16px rgba(245,130,31,.4); }
.uhero__eyebrow-icon i { font-size: 12px; color: #fff; }
.uhero__eyebrow-text { font-size: 11px; font-weight: 700; letter-spacing: .12em; text-transform: uppercase; color: rgba(255,255,255,.65); }

.uhero__h1 { font-size: clamp(1.8rem, 4vw, 3.2rem); font-weight: 900; line-height: 1.2; margin-bottom: 18px; color: #fff; }
.uhero__h1-accent { display: block; color: transparent; background: linear-gradient(90deg, var(--blue-br), var(--orange)); -webkit-background-clip: text; background-clip: text; }
.uhero__lead { font-size: 15px; line-height: 1.85; font-weight: 400; color: rgba(255,255,255,.55); max-width: 460px; margin-bottom: 30px; }

.uhero__stats-bar { display: flex; gap: 0; margin-bottom: 32px; width: fit-content; background: rgba(255,255,255,.04); border: 1px solid rgba(255,255,255,.08); border-radius: 16px; overflow: hidden; backdrop-filter: blur(16px); }
.uhero__stat { padding: 16px 24px; border-left: 1px solid rgba(255,255,255,.07); text-align: center; }
.uhero__stat:last-child { border-left: none; }
.uhero__stat-n { font-size: 26px; font-weight: 900; color: #fff; line-height: 1; display: block; }
.uhero__stat-n em { color: var(--orange); font-style: normal; }
.uhero__stat-l { display: block; margin-top: 4px; font-size: 10px; font-weight: 600; color: rgba(255,255,255,.35); text-transform: uppercase; letter-spacing: .1em; }

.uhero__trust { display: flex; gap: 8px; flex-wrap: wrap; }
.uhero__trust-pill { display: flex; align-items: center; gap: 6px; border: 1px solid rgba(255,255,255,.1); border-radius: 30px; padding: 6px 13px; font-size: 11.5px; color: rgba(255,255,255,.6); background: rgba(255,255,255,.04); font-weight: 500; }
.uhero__trust-pill i { color: var(--gold); font-size: 10px; }

.uhero__visual { display: flex; align-items: center; justify-content: center; }
.uhero__logo-frame { position: relative; width: 100%; aspect-ratio: 1; display: flex; align-items: center; justify-content: center; }
.uhero__ring-a { position: absolute; inset: 0; border-radius: 50%; border: 1.5px dashed rgba(255,255,255,.12); animation: spinA 25s linear infinite; }
.uhero__ring-b { position: absolute; inset: 14%; border-radius: 50%; border: 1.5px dashed rgba(245,130,31,.2); animation: spinA 18s linear infinite reverse; }
@keyframes spinA { to { transform: rotate(360deg); } }
.uhero__orbit-wrap { position: absolute; inset: 0; animation: spinA 20s linear infinite; }
.uhero__orbit-dot { position: absolute; width: 10px; height: 10px; border-radius: 50%; top: -5px; left: calc(50% - 5px); background: var(--orange); box-shadow: 0 0 18px var(--orange); }
.uhero__orbit-wrap--b { inset: 14%; animation: spinA 13s linear infinite reverse; }
.uhero__orbit-dot--b { width: 7px; height: 7px; top: -3.5px; left: calc(50% - 3.5px); background: var(--blue-br); box-shadow: 0 0 14px var(--blue-br); }
.uhero__center { position: relative; z-index: 2; width: 66%; aspect-ratio: 1; border-radius: 50%; background: linear-gradient(145deg, rgba(255,255,255,.1), rgba(255,255,255,.03)); border: 2px solid rgba(255,255,255,.15); backdrop-filter: blur(20px); display: flex; flex-direction: column; align-items: center; justify-content: center; box-shadow: 0 0 80px rgba(23,86,200,.28); }
.uhero__logo { width: 75%; filter: drop-shadow(0 8px 28px rgba(23,86,200,.5)); animation: logoBob 5s ease-in-out infinite; }
@keyframes logoBob { 0%,100%{transform:translateY(0)} 50%{transform:translateY(-8px)} }
.uhero__fc { position: absolute; z-index: 3; background: rgba(255,255,255,.93); backdrop-filter: blur(16px); border-radius: 14px; padding: 10px 14px; box-shadow: var(--shadow-md); display: flex; align-items: center; gap: 10px; border: 1px solid rgba(255,255,255,.8); animation: fcFloat 5s ease-in-out infinite; }
.uhero__fc:nth-child(5) { top: 6%; right: -10%; animation-delay: 0s; }
.uhero__fc:nth-child(6) { bottom: 10%; left: -12%; animation-delay: -2.5s; }
.uhero__fc:nth-child(7) { top: 52%; right: -14%; animation-delay: -1.3s; }
@keyframes fcFloat { 0%,100%{transform:translateY(0)} 50%{transform:translateY(-9px)} }
.uhero__fc-icon { width: 34px; height: 34px; border-radius: 10px; flex-shrink: 0; display: flex; align-items: center; justify-content: center; }
.uhero__fc-icon--b { background: var(--blue-pale); } .uhero__fc-icon--b i { color: var(--blue); }
.uhero__fc-icon--o { background: var(--orange-lt); } .uhero__fc-icon--o i { color: var(--orange); }
.uhero__fc-icon--g { background: #e6f8f2; } .uhero__fc-icon--g i { color: var(--green); }
.uhero__fc-val { font-size: 15px; font-weight: 900; color: var(--navy); line-height: 1; }
.uhero__fc-lbl { font-size: 10px; color: var(--muted); font-weight: 500; margin-top: 2px; }

/* ══════════ SECTION HEADER ══════════ */
.sec-head { text-align: center; margin-bottom: 36px; }
.sec-head__pill { display: inline-flex; align-items: center; gap: 8px; color: var(--orange); font-size: 13px; font-weight: 800; margin-bottom: 10px; }
.sec-head__pill::before, .sec-head__pill::after { content: ''; display: block; width: 22px; height: 2.5px; background: var(--orange); border-radius: 2px; }
.sec-head__title { font-size: clamp(1.5rem, 3vw, 2.2rem); font-weight: 900; color: var(--ink); margin-bottom: 8px; }
.sec-head__sub { font-size: 14.5px; color: var(--muted); font-weight: 400; max-width: 520px; margin: 0 auto; line-height: 1.7; }

/* ══════════ DIPLOMAS RESPONSIVE GRID ══════════ */
.diplomas-sec { padding: 4rem 0; background: var(--off); }
.diplomas-sec .sec-container { max-width: 1200px; margin: 0 auto; padding: 0 20px; }

.dgrid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 24px;
    width: 100%;
}

/* ── DIPLOMA CARD ── */
.dcard {
    background: #fff;
    border: 1px solid var(--border);
    border-radius: var(--r-lg);
    overflow: hidden;
    display: flex;
    flex-direction: column;
    width: 100%;
    transition: all var(--t);
    font-family: var(--ff);
    position: relative;
    box-shadow: var(--shadow-sm);
}
.dcard:hover {
    border-color: transparent;
    transform: translateY(-6px);
    box-shadow: var(--shadow-lg);
}

.dcard__img { position: relative; height: 195px; overflow: hidden; display: block; background: var(--navy); }
.dcard__img img { width: 100%; height: 100%; object-fit: cover; transition: transform .45s; }
.dcard:hover .dcard__img img { transform: scale(1.06); }
.dcard__img-ov { position: absolute; inset: 0; background: linear-gradient(to top, rgba(6,15,46,.72) 0%, rgba(6,15,46,.08) 60%, transparent 100%); }

.dcard__badge { position: absolute; top: 12px; right: 12px; background: var(--orange); color: #fff; font-size: 10px; font-weight: 800; padding: 4px 12px; border-radius: 30px; letter-spacing: .05em; text-transform: uppercase; box-shadow: 0 4px 14px rgba(245,130,31,.4); }
.dcard__ribbon { position: absolute; top: 0; left: 0; background: linear-gradient(135deg, var(--blue), var(--navy)); color: #fff; font-size: 10.5px; font-weight: 800; padding: 5px 12px 5px 8px; border-radius: 0 0 12px 0; }
.dcard__price-wrap { position: absolute; bottom: 12px; right: 12px; }
.dcard__price-tag { background: rgba(6,15,46,.82); backdrop-filter: blur(10px); color: #fff; font-size: 13px; font-weight: 800; padding: 5px 13px; border-radius: 30px; display: flex; align-items: center; gap: 8px; border: 1px solid rgba(255,255,255,.15); }
.dcard__price-old { font-size: 11px; color: rgba(255,255,255,.4); text-decoration: line-through; }
.dcard__price-free { background: rgba(14,159,110,.88); }

.dcard__body { padding: 18px; display: flex; flex-direction: column; flex: 1; }
.dcard__inst { display: flex; align-items: center; gap: 8px; margin-bottom: 10px; text-decoration: none; }
.dcard__av { width: 28px; height: 28px; border-radius: 50%; object-fit: cover; border: 2px solid var(--border); flex-shrink: 0; }
.dcard__inst-name { font-size: 12px; color: var(--muted); font-weight: 600; transition: color .2s; }
.dcard__inst:hover .dcard__inst-name { color: var(--blue); }

.dcard__title { font-size: 15.5px; font-weight: 800; color: var(--ink); line-height: 1.45; margin-bottom: 10px; flex: 1; text-decoration: none; display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical; overflow: hidden; transition: color .2s; }
.dcard__title:hover { color: var(--blue); }

.dcard__meta { display: flex; gap: 6px; flex-wrap: wrap; margin-bottom: 10px; }
.dcard__mpill { display: flex; align-items: center; gap: 4px; background: var(--off); border: 1px solid var(--border); padding: 3px 10px; border-radius: 30px; font-size: 11px; color: var(--muted); font-weight: 600; }
.dcard__mpill i { color: var(--blue-br); font-size: 10px; }

.dcard__rating { display: flex; align-items: center; gap: 6px; margin-bottom: 10px; }
.dcard__stars { display: flex; gap: 2px; }
.dcard__star { font-size: 11px; }
.dcard__star--f { color: var(--gold); } .dcard__star--e { color: #dde2f0; }
.dcard__rval { font-size: 11.5px; font-weight: 800; color: var(--ink); }
.dcard__rct { font-size: 10.5px; color: var(--faint); }

.dcard__tags { display: flex; gap: 6px; flex-wrap: wrap; margin-bottom: 12px; }
.dcard__tag { font-size: 10px; font-weight: 700; padding: 3px 10px; border-radius: 30px; }
.dcard__tag--cert { background: var(--blue-pale); color: var(--blue); }
.dcard__tag--live { background: var(--orange-lt); color: var(--orange); display: flex; align-items: center; gap: 4px; }
.dcard__ldot { width: 5px; height: 5px; border-radius: 50%; background: var(--orange); animation: ldotP 1.5s infinite; }
@keyframes ldotP { 0%,100%{opacity:1;transform:scale(1)} 50%{opacity:.3;transform:scale(.6)} }

.dcard__hr { border: none; border-top: 1px solid #edf0f8; margin: 0 0 12px; }

.dcard__actions { display: grid; grid-template-columns: auto 1fr; gap: 8px; }
.dcard__det { padding: 9px 14px; border: 1.5px solid var(--border); border-radius: 10px; font-size: 11.5px; font-weight: 700; color: var(--navy); text-decoration: none; display: flex; align-items: center; gap: 5px; background: #fff; transition: all .18s; white-space: nowrap; cursor: pointer; }
.dcard__det i { font-size: 10px; }
.dcard__det:hover { background: var(--blue-pale); border-color: var(--blue); color: var(--blue); }
.dcard__enroll { padding: 9px 14px; background: linear-gradient(135deg, var(--blue-br), var(--blue)); border: none; border-radius: 10px; font-size: 11.5px; font-weight: 700; font-family: var(--ff); color: #fff; text-decoration: none; text-align: center; display: flex; align-items: center; justify-content: center; gap: 5px; transition: all .18s; cursor: pointer; box-shadow: 0 4px 16px rgba(23,86,200,.25); }
.dcard__enroll:hover { transform: translateY(-1px); box-shadow: 0 6px 22px rgba(23,86,200,.35); color: #fff; }
.dcard__enroll--free { background: linear-gradient(135deg, #0e9f6e, #077a54); box-shadow: 0 4px 16px rgba(14,159,110,.25); }
.dcard__enroll--owned { background: linear-gradient(135deg, #0e9f6e, #077a54); }
.dcard__enroll--pending { background: var(--faint); cursor: default; pointer-events: none; box-shadow: none; }

.dcard__cert { margin-top: 10px; display: flex; align-items: center; gap: 8px; padding: 8px 12px; background: linear-gradient(135deg, #fffbf2, #fff8ea); border-radius: 10px; border: 1px solid rgba(240,180,41,.18); }
.dcard__cert i { color: var(--gold); font-size: 13px; flex-shrink: 0; }
.dcard__cert-txt { font-size: 10.5px; color: var(--muted); }
.dcard__cert-txt strong { color: var(--ink); font-weight: 800; }

/* ══════════ MASTERS SECTION ══════════ */
.masters-sec { padding: 4rem 0; background: linear-gradient(135deg, #f0f5ff 0%, #f7f9fe 50%, #fff4ea 100%); position: relative; overflow: hidden; }
.masters-sec .sec-container { max-width: 1200px; margin: 0 auto; padding: 0 20px; }
.masters-layout { display: grid; grid-template-columns: 1fr 320px; gap: 50px; align-items: center; }

.masters-eyebrow { display: inline-flex; align-items: center; gap: 8px; color: var(--orange); font-size: 13px; font-weight: 800; margin-bottom: 12px; }
.masters-eyebrow::before { content: ''; display: block; width: 22px; height: 2.5px; background: var(--orange); border-radius: 2px; }
.masters-title { font-size: clamp(1.5rem, 3vw, 2.1rem); font-weight: 900; color: var(--ink); margin-bottom: 10px; }
.masters-sub { font-size: 14.5px; color: var(--muted); margin-bottom: 28px; line-height: 1.75; max-width: 520px; }

.masters-grid { display: grid; grid-template-columns: repeat(4, 1fr); gap: 12px; margin-bottom: 28px; }
.mitem { text-align: center; cursor: pointer; }
.mitem__icon { width: 56px; height: 56px; border-radius: 16px; margin: 0 auto 10px; background: #fff; border: 1.5px solid var(--border); display: flex; align-items: center; justify-content: center; transition: all var(--t); box-shadow: var(--shadow-sm); }
.mitem__icon i { font-size: 1.2rem; color: var(--blue); transition: all var(--t); }
.mitem:hover .mitem__icon { background: var(--blue); border-color: var(--blue); box-shadow: 0 8px 24px rgba(23,86,200,.28); }
.mitem:hover .mitem__icon i { color: #fff; }
.mitem__name { font-size: 11.5px; font-weight: 700; color: var(--ink); line-height: 1.35; }

.masters-cta { display: inline-flex; align-items: center; gap: 8px; background: linear-gradient(135deg, var(--blue-br), var(--blue)); color: #fff; font-size: 13.5px; font-weight: 800; padding: 12px 24px; border-radius: 12px; text-decoration: none; box-shadow: 0 6px 20px rgba(23,86,200,.28); transition: all .2s; }
.masters-cta:hover { transform: translateY(-2px); box-shadow: 0 8px 28px rgba(23,86,200,.35); color: #fff; }

.masters-visual { display: flex; align-items: center; justify-content: center; }
.mvis-circle { width: 240px; height: 240px; border-radius: 50%; background: linear-gradient(135deg, var(--blue-pale), var(--blue-ultra)); display: flex; align-items: center; justify-content: center; position: relative; box-shadow: 0 16px 48px rgba(23,86,200,.12); }
.mvis-circle img { width: 78%; filter: drop-shadow(0 10px 24px rgba(10,31,92,.15)); animation: logoBob 5s ease-in-out infinite; }

/* ══════════ RESPONSIVE BREAKPOINTS ══════════ */
@media (max-width: 1099px) {
    .dgrid { grid-template-columns: repeat(2, 1fr); gap: 20px; }
    .masters-layout { grid-template-columns: 1fr; }
    .masters-visual { display: none; }
}
@media (max-width: 991px) {
    .uhero__layout { grid-template-columns: 1fr; gap: 30px; }
    .uhero__visual { display: none; }
}
@media (max-width: 767px) {
    .dgrid { grid-template-columns: 1fr; gap: 16px; }
    .masters-grid { grid-template-columns: repeat(2, 1fr); }
    .uhero__stats-bar { width: 100%; justify-content: space-around; }
    .uhero__stat { padding: 12px 14px; }
    .uhero__h1 { font-size: 1.7rem; }
    .sec-head__title { font-size: 1.4rem; }
}
</style>
@endpush

@section('content')
<div class="upage">

{{-- ══════════ HERO ══════════ --}}
<section class="uhero">
    <div class="uhero__mesh"></div>
    <div class="uhero__grid-bg"></div>
    <div class="uhero__orb uhero__orb--1"></div>
    <div class="uhero__orb uhero__orb--2"></div>

    <div class="uhero__strip">
        <div class="uhero__strip-inner">
            <nav class="uhero__crumb">
                <a href="{{ url('/') }}">{{ get_phrase('Home') }}</a>
                <span class="uhero__crumb-sep">›</span>
                <span class="uhero__crumb-active">دبلومه الماجستير المهني Professional Master's Diploma</span>
            </nav>
            <div class="uhero__badge-pill">
                <span class="uhero__badge-pill-dot"></span>
                <span class="uhero__badge-pill-txt">{{ get_phrase('برامج معتمدة دولياً') }}</span>
            </div>
        </div>
    </div>

    <div class="uhero__inner">
        <div class="uhero__container">
            <div class="uhero__layout">
                <div>
                    <div class="uhero__eyebrow">
                        <div class="uhero__eyebrow-icon"><i class="fa-solid fa-star"></i></div>
                        <span class="uhero__eyebrow-text">Internationally Accredited</span>
                    </div>
                    <h1 class="uhero__h1">
                        دبلومه الماجستير المهني<br>
                        <span class="uhero__h1-accent">Professional Master's Diploma</span>
                    </h1>
                    <p class="uhero__lead">{{ get_phrase('ارتقِ بمسارك المهني من خلال برامج أكاديمية متخصصة مصممة لتمكينك بالمعرفة والخبرة العملية') }}</p>
                    <div class="uhero__stats-bar">
                        <div class="uhero__stat">
                            <span class="uhero__stat-n">{{ $bootcamps->total() }}<em>+</em></span>
                            <span class="uhero__stat-l">{{ get_phrase('Programs') }}</span>
                        </div>
                        <div class="uhero__stat">
                            <span class="uhero__stat-n">5k<em>+</em></span>
                            <span class="uhero__stat-l">{{ get_phrase('Students') }}</span>
                        </div>
                        <div class="uhero__stat">
                            <span class="uhero__stat-n">100<em>%</em></span>
                            <span class="uhero__stat-l">{{ get_phrase('Certified') }}</span>
                        </div>
                    </div>
                    <div class="uhero__trust">
                        <div class="uhero__trust-pill"><i class="fa-solid fa-certificate"></i> {{ get_phrase('شهادات معتمدة') }}</div>
                        <div class="uhero__trust-pill"><i class="fa-solid fa-laptop"></i> {{ get_phrase('محتوى أكاديمي متطور') }}</div>
                        <div class="uhero__trust-pill"><i class="fa-solid fa-video"></i> {{ get_phrase('محاضرات أونلاين مباشرة') }}</div>
                        <div class="uhero__trust-pill"><i class="fa-solid fa-calendar"></i> {{ get_phrase('جدول زمني مرن') }}</div>
                    </div>
                </div>
                <div class="uhero__visual">
                    <div class="uhero__logo-frame">
                        <div class="uhero__ring-a"></div>
                        <div class="uhero__ring-b"></div>
                        <div class="uhero__orbit-wrap"><div class="uhero__orbit-dot"></div></div>
                        <div class="uhero__orbit-wrap uhero__orbit-wrap--b"><div class="uhero__orbit-dot uhero__orbit-dot--b"></div></div>
                        <div class="uhero__center">
                            <img src="{{ asset('frontend/images/logo.png') }}" alt="PAMT" class="uhero__logo">
                        </div>
                        <div class="uhero__fc"><div class="uhero__fc-icon uhero__fc-icon--b"><i class="fa-solid fa-users"></i></div><div><div class="uhero__fc-val">+5000</div><div class="uhero__fc-lbl">{{ get_phrase('طالب حول العالم') }}</div></div></div>
                        <div class="uhero__fc"><div class="uhero__fc-icon uhero__fc-icon--o"><i class="fa-solid fa-award"></i></div><div><div class="uhero__fc-val">4.9 ★</div><div class="uhero__fc-lbl">{{ get_phrase('تقييم المتدربين') }}</div></div></div>
                        <div class="uhero__fc"><div class="uhero__fc-icon uhero__fc-icon--g"><i class="fa-solid fa-certificate"></i></div><div><div class="uhero__fc-val">100%</div><div class="uhero__fc-lbl">{{ get_phrase('شهادات دولية') }}</div></div></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

{{-- ══════════ DIPLOMAS GRID ══════════ --}}
@php $categories = App\Models\BootcampCategory::get(); @endphp
<section class="diplomas-sec">
    <div class="sec-container">
        <div class="sec-head">
            <div class="sec-head__pill">دبلومه الماجستير المهني Professional Master's Diploma</div>
            <h2 class="sec-head__title">{{ get_phrase('برامج متخصصة تلبي احتياجات سوق العمل') }}</h2>
            <p class="sec-head__sub">{{ get_phrase('برامج متخصصة تلبي احتياجات سوق العمل وتطور مهاراتك') }}</p>
        </div>

        <div class="dgrid">
            @forelse($bootcamps as $bootcamp)
                @php
                    $ugc_reviews = App\Models\Review::where('course_id', $bootcamp->id)->orderBy('id','DESC')->get();
                    $ugc_total   = $ugc_reviews->count();
                    $ugc_sum     = array_sum(array_column($ugc_reviews->toArray(), 'rating'));
                    $ugc_avg     = $ugc_total > 0 ? round($ugc_sum / $ugc_total, 1) : 0;
                    $ugc_url     = route('purchase.bootcamp', $bootcamp->id);
                    $ugc_label   = get_phrase($bootcamp->is_paid ? 'Enroll Now' : 'Enroll Free');
                    $ugc_mod     = $bootcamp->is_paid ? '' : 'dcard__enroll--free';
                    if (isset(auth()->user()->id)) {
                        $ugc_owned = App\Models\BootcampPurchase::where('user_id', auth()->user()->id)->where('bootcamp_id', $bootcamp->id)->where('status', 1)->first();
                        if ($ugc_owned) { $ugc_label = get_phrase('Go to Program'); $ugc_url = route('my.bootcamp.details', $bootcamp->slug); $ugc_mod = 'dcard__enroll--owned'; }
                        $ugc_pending = DB::table('offline_payments')->where('user_id', auth()->user()->id)->where('item_type', 'bootcamp')->where('items', $bootcamp->id)->where('status', 0)->first();
                        if ($ugc_pending) { $ugc_label = get_phrase('Processing'); $ugc_url = 'javascript:void(0);'; $ugc_mod = 'dcard__enroll--pending'; }
                    }
                    $ugc_disc_pct = 0; $ugc_final = $bootcamp->price;
                    if ($bootcamp->is_paid == 1 && $bootcamp->discount_flag == 1) {
                        $ugc_disc_pct = round(($bootcamp->discounted_price / $bootcamp->price) * 100);
                        $ugc_final    = number_format($bootcamp->price - $bootcamp->discounted_price, 2);
                    }
                @endphp
                <div class="dcard">
                    <a href="{{ route('bootcamp.details', $bootcamp->slug) }}" class="dcard__img">
                        <img src="{{ get_image($bootcamp->thumbnail) }}" alt="{{ $bootcamp->title }}" loading="lazy">
                        <div class="dcard__img-ov"></div>
                        <span class="dcard__badge">دبلومة مهنية</span>
                        @if($bootcamp->is_paid == 1 && $bootcamp->discount_flag == 1)
                            <div class="dcard__ribbon">{{ $ugc_disc_pct }}% {{ get_phrase('OFF') }}</div>
                        @endif
                        <div class="dcard__price-wrap">
                            @if($bootcamp->is_paid == 0)
                                <span class="dcard__price-tag dcard__price-free">{{ get_phrase('مجاني') }}</span>
                            @elseif($bootcamp->discount_flag == 1)
                                <span class="dcard__price-tag">{{ currency($ugc_final) }} <span class="dcard__price-old">{{ currency($bootcamp->price, 2) }}</span></span>
                            @else
                                <span class="dcard__price-tag">{{ currency($bootcamp->price, 2) }}</span>
                            @endif
                        </div>
                    </a>
                    <div class="dcard__body">
                        <a href="{{ route('instructor.details', [slugify($bootcamp->instructor_name), $bootcamp->user_id]) }}" class="dcard__inst">
                            <img src="{{ get_image($bootcamp->instructor_image) }}" alt="{{ $bootcamp->instructor_name }}" class="dcard__av">
                            <span class="dcard__inst-name">{{ $bootcamp->instructor_name }}</span>
                        </a>
                        <a href="{{ route('bootcamp.details', $bootcamp->slug) }}" class="dcard__title" title="{{ $bootcamp->title }}">{{ ucfirst($bootcamp->title) }}</a>
                        <div class="dcard__meta">
                            <span class="dcard__mpill"><i class="fa-regular fa-clock"></i> {{ date('d M Y', $bootcamp->publish_date) }}</span>
                            <span class="dcard__mpill"><i class="fa-solid fa-chalkboard"></i> {{ count_bootcamp_classes($bootcamp->id) }} {{ get_phrase('classes') }}</span>
                        </div>
                        <div class="dcard__rating">
                            <div class="dcard__stars">@for($s=1;$s<=5;$s++)<span class="dcard__star {{ $s<=round($ugc_avg)?'dcard__star--f':'dcard__star--e' }}">★</span>@endfor</div>
                            @if($ugc_avg > 0)
                                <span class="dcard__rval">{{ $ugc_avg }}</span>
                                <span class="dcard__rct">({{ $ugc_total }} {{ get_phrase('reviews') }})</span>
                            @else
                                <span class="dcard__rct">{{ get_phrase('No reviews yet') }}</span>
                            @endif
                        </div>
                        <div class="dcard__tags">
                            <span class="dcard__tag dcard__tag--cert"><i class="fa-solid fa-certificate" style="font-size:9px;margin-left:3px;"></i>{{ get_phrase('شهادة') }}</span>
                            <span class="dcard__tag dcard__tag--live"><span class="dcard__ldot"></span>{{ get_phrase('أونلاين') }}</span>
                        </div>
                        <hr class="dcard__hr">
                        <div class="dcard__actions">
                            <a href="{{ route('bootcamp.details', $bootcamp->slug) }}" class="dcard__det"><i class="fa-solid fa-arrow-left"></i> {{ get_phrase('التفاصيل') }}</a>
                            <a href="{{ $ugc_url }}" class="dcard__enroll {{ $ugc_mod }}">{{ $ugc_label }} <i class="fa-solid fa-arrow-left" style="font-size:10px;"></i></a>
                        </div>
                        <div class="dcard__cert">
                            <i class="fa-solid fa-award"></i>
                            <span class="dcard__cert-txt">{{ get_phrase('Earn a') }} <strong>Professional Master's Diploma</strong> {{ get_phrase('upon completion') }}</span>
                        </div>
                    </div>
                </div>
            @empty
                <div style="text-align:center;padding:4rem 2rem;color:var(--muted);width:100%;grid-column: 1 / -1;">
                    <i class="fa-solid fa-magnifying-glass" style="font-size:2.5rem;color:var(--faint);display:block;margin-bottom:16px;"></i>
                    <strong style="display:block;margin-bottom:8px;font-size:20px;color:var(--ink);">{{ get_phrase('No programs found') }}</strong>
                    {{ get_phrase('Check back soon for new programs.') }}
                </div>
            @endforelse
        </div>

        @if($bootcamps->hasPages())
            <div class="d-flex justify-content-center mt-5">
                {{ $bootcamps->links() }}
            </div>
        @endif
    </div>
</section>

{{-- ══════════ MASTERS SECTION ══════════ --}}
<section class="masters-sec">
    <div class="sec-container">
        <div class="masters-layout">
            <div>
                <div class="masters-eyebrow">دبلومه الماجستير المهني Professional Master's Diploma</div>
                <h2 class="masters-title">{{ get_phrase('ارتقِ لمستوى أعلى من الخبرة والاحترافية') }}</h2>
                <p class="masters-sub">{{ get_phrase('برامج ماجستير متخصصة بالتعاون مع أبرز الجامعات والمؤسسات الأكاديمية الدولية') }}</p>
                <div class="masters-grid">
                    <div class="mitem">
                        <div class="mitem__icon"><i class="fa-solid fa-briefcase"></i></div>
                        <div class="mitem__name">{{ get_phrase('ماجستير إدارة الأعمال MBA') }}</div>
                    </div>
                    <div class="mitem">
                        <div class="mitem__icon"><i class="fa-solid fa-rotate"></i></div>
                        <div class="mitem__name">{{ get_phrase('ماجستير التحول الرقمي') }}</div>
                    </div>
                    <div class="mitem">
                        <div class="mitem__icon"><i class="fa-solid fa-chess-queen"></i></div>
                        <div class="mitem__name">{{ get_phrase('ماجستير القيادة والإدارة الاستراتيجية') }}</div>
                    </div>
                    <div class="mitem">
                        <div class="mitem__icon"><i class="fa-solid fa-users-gear"></i></div>
                        <div class="mitem__name">{{ get_phrase('ماجستير الموارد البشرية') }}</div>
                    </div>
                </div>
                <a href="{{ route('bootcamps') }}" class="masters-cta">
                    <i class="fa-solid fa-arrow-left"></i>
                    {{ get_phrase('عرض جميع برامج الماجستير') }}
                </a>
            </div>
            <div class="masters-visual">
                <div class="mvis-circle">
                    <img src="{{ asset('frontend/images/graduation.png') }}" alt="Masters" onerror="this.src='https://cdn-icons-png.flaticon.com/512/3976/3976625.png'">
                </div>
            </div>
        </div>
    </div>
</section>

</div>{{-- .upage --}}
@endsection