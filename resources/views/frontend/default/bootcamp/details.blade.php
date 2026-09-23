{{-- resources/views/bootcamps/details.blade.php --}}
@extends('layouts.default')
@push('title', get_phrase('Bootcamp Details'))
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
.dpage { font-family: var(--ff); background: var(--off); color: var(--ink); direction: rtl; }

/* ══ HERO ══ */
.dhero { background: var(--navy-deep); position: relative; overflow: hidden; }
.dhero__mesh {
    position: absolute; inset: 0; pointer-events: none;
    background:
        radial-gradient(ellipse 80% 60% at 70% 50%, rgba(23,86,200,.5) 0%, transparent 65%),
        radial-gradient(ellipse 50% 50% at 10% 80%, rgba(245,130,31,.08) 0%, transparent 55%);
}
.dhero__grid {
    position: absolute; inset: 0; pointer-events: none;
    background-image:
        linear-gradient(rgba(255,255,255,.022) 1px, transparent 1px),
        linear-gradient(90deg, rgba(255,255,255,.022) 1px, transparent 1px);
    background-size: 56px 56px;
}
.dhero__orb { position: absolute; border-radius: 50%; pointer-events: none; filter: blur(70px); }
.dhero__orb--1 { width: 600px; height: 600px; background: rgba(46,120,240,.15); top: -200px; right: -100px; }
.dhero__orb--2 { width: 400px; height: 400px; background: rgba(245,130,31,.09); bottom: -100px; left: 0; }

/* strip */
.dhero__strip {
    position: relative; z-index: 10;
    border-bottom: 1px solid rgba(255,255,255,.06);
    padding: 12px 0;
    background: rgba(0,0,0,.18);
    backdrop-filter: blur(16px);
}
.dhero__strip-inner {
    display: flex; align-items: center; justify-content: space-between;
    max-width: 1200px; margin: 0 auto; padding: 0 24px;
}
.dhero__crumb { display: flex; align-items: center; gap: 8px; }
.dhero__crumb a { color: rgba(255,255,255,.4); font-size: 12px; text-decoration: none; transition: color .2s; }
.dhero__crumb a:hover { color: #fff; }
.dhero__crumb-sep { color: rgba(255,255,255,.2); font-size: 11px; }
.dhero__crumb-active { color: var(--gold); font-size: 12px; font-weight: 700; display: flex; align-items: center; gap: 6px; max-width: 320px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; }
.dhero__crumb-active::before { content: ''; width: 5px; height: 5px; border-radius: 50%; background: var(--gold); display: inline-block; flex-shrink: 0; }
.dhero__badge-pill {
    display: flex; align-items: center; gap: 7px;
    background: rgba(245,130,31,.12);
    border: 1px solid rgba(245,130,31,.22);
    border-radius: 30px; padding: 5px 14px 5px 10px;
}
.dhero__badge-dot { width: 7px; height: 7px; border-radius: 50%; background: var(--orange); animation: dotPulse 2s infinite; }
@keyframes dotPulse { 0%,100%{opacity:1;transform:scale(1)} 50%{opacity:.4;transform:scale(.75)} }
.dhero__badge-txt { font-size: 11px; font-weight: 700; color: rgba(255,255,255,.65); letter-spacing: .08em; }

/* inner layout */
.dhero__inner { position: relative; z-index: 5; padding: 52px 0 40px; }
.dhero__container { max-width: 1200px; margin: 0 auto; padding: 0 24px; }
.dhero__layout { display: grid; grid-template-columns: 1fr 380px; gap: 60px; align-items: start; }

/* eyebrow */
.dhero__eyebrow {
    display: inline-flex; align-items: center; gap: 10px; margin-bottom: 24px;
    background: rgba(255,255,255,.06);
    border: 1px solid rgba(255,255,255,.1);
    border-radius: 40px; padding: 7px 20px 7px 7px;
}
.dhero__eyebrow-icon {
    width: 30px; height: 30px; border-radius: 50%;
    background: linear-gradient(135deg, var(--orange), #d96a0a);
    display: flex; align-items: center; justify-content: center;
    box-shadow: 0 4px 16px rgba(245,130,31,.4);
}
.dhero__eyebrow-icon i { font-size: 13px; color: #fff; }
.dhero__eyebrow-text { font-size: 11px; font-weight: 700; letter-spacing: .14em; text-transform: uppercase; color: rgba(255,255,255,.65); }

/* heading */
.dhero__h1 { font-size: clamp(1.9rem, 3.8vw, 3rem); font-weight: 900; color: #fff; line-height: 1.15; margin-bottom: 16px; }
.dhero__h1-accent { display: block; color: transparent; background: linear-gradient(90deg, var(--blue-br), var(--orange)); -webkit-background-clip: text; background-clip: text; }
.dhero__lead { font-size: 15px; line-height: 1.9; color: rgba(255,255,255,.48); max-width: 500px; margin-bottom: 28px; font-weight: 400; }

/* meta bar */
.dhero__meta { display: flex; align-items: center; flex-wrap: wrap; gap: 0; margin-bottom: 28px; padding-bottom: 24px; border-bottom: 1px solid rgba(255,255,255,.08); }
.dhero__meta-item { display: flex; align-items: center; gap: 8px; font-size: 12.5px; color: rgba(255,255,255,.4); padding-left: 20px; margin-left: 20px; border-left: 1px solid rgba(255,255,255,.08); }
.dhero__meta-item:first-child { border-left: none; padding-left: 0; margin-left: 0; }
.dhero__meta-av { width: 28px; height: 28px; border-radius: 50%; border: 1.5px solid rgba(245,130,31,.4); object-fit: cover; flex-shrink: 0; }
.dhero__meta-link { color: rgba(255,255,255,.75); text-decoration: none; font-weight: 700; transition: color .2s; }
.dhero__meta-link:hover { color: var(--gold); }
.dhero__meta-icon { width: 14px; height: 14px; stroke: rgba(255,255,255,.38); fill: none; stroke-width: 1.5; flex-shrink: 0; }

/* stats grid */
.dhero__stats {
    display: grid; grid-template-columns: repeat(4, 1fr);
    border: 1px solid rgba(255,255,255,.08);
    border-radius: var(--r); overflow: hidden;
    background: rgba(255,255,255,.03);
    backdrop-filter: blur(10px);
}
.dhero__stat { padding: 16px 12px; border-left: 1px solid rgba(255,255,255,.07); text-align: center; }
.dhero__stat:last-child { border-left: none; }
.dhero__stat-n { font-size: 26px; font-weight: 900; color: #fff; display: block; line-height: 1; }
.dhero__stat-n em { color: var(--orange); font-style: normal; font-size: 18px; }
.dhero__stat-n.live { font-size: 13px; font-weight: 800; letter-spacing: .1em; color: var(--orange); text-transform: uppercase; }
.dhero__stat-l { display: block; margin-top: 5px; font-size: 9.5px; font-weight: 700; color: rgba(255,255,255,.28); text-transform: uppercase; letter-spacing: .13em; }

/* thumbnail card */
.dhero__thumb-wrap { position: relative; }
.dhero__thumb-badge {
    position: absolute; top: -12px; right: -12px; z-index: 5;
    background: var(--orange); color: #fff;
    font-size: 10px; font-weight: 800; letter-spacing: .08em; text-transform: uppercase;
    padding: 6px 14px; border-radius: 20px;
    box-shadow: 0 4px 20px rgba(245,130,31,.45);
    display: flex; align-items: center; gap: 6px;
}
.dhero__thumb-badge::before { content: ''; width: 6px; height: 6px; border-radius: 50%; background: #fff; animation: dotPulse 2s infinite; }
.dhero__thumb-card {
    border-radius: var(--r-lg); overflow: hidden;
    border: 1px solid rgba(255,255,255,.1);
    box-shadow: 0 24px 60px rgba(0,0,0,.5);
}
.dhero__thumb { position: relative; aspect-ratio: 16/9; overflow: hidden; background: var(--navy); }
.dhero__thumb img { width: 100%; height: 100%; object-fit: cover; display: block; transition: transform .5s; }
.dhero__thumb-card:hover .dhero__thumb img { transform: scale(1.04); }
.dhero__thumb-ov { position: absolute; inset: 0; background: linear-gradient(to top, rgba(6,15,46,.72) 0%, transparent 60%); }
.dhero__play {
    position: absolute; top: 50%; left: 50%; transform: translate(-50%,-50%);
    width: 58px; height: 58px; border-radius: 50%;
    background: rgba(255,255,255,.12);
    border: 1.5px solid rgba(255,255,255,.4);
    display: flex; align-items: center; justify-content: center;
    cursor: pointer; transition: all .25s; backdrop-filter: blur(6px); z-index: 2;
}
.dhero__play:hover { background: var(--orange); border-color: var(--orange); transform: translate(-50%,-50%) scale(1.1); }
.dhero__play svg { fill: #fff; width: 20px; height: 20px; margin-left: 3px; }
.dhero__thumb-foot {
    position: absolute; bottom: 14px; left: 14px; right: 14px;
    display: flex; justify-content: space-between; align-items: center; z-index: 2;
}
.dhero__prev-txt { font-size: 11px; color: rgba(255,255,255,.55); letter-spacing: .08em; text-transform: uppercase; font-weight: 700; }
.dhero__free-tag {
    background: rgba(14,159,110,.25); border: 1px solid rgba(14,159,110,.4);
    color: #5dffc1; font-size: 10px; font-weight: 800; letter-spacing: .1em; text-transform: uppercase;
    padding: 4px 12px; border-radius: 20px;
}

/* trust pills under thumb */
.dhero__trust { display: flex; gap: 8px; flex-wrap: wrap; margin-top: 16px; }
.dhero__trust-pill {
    display: flex; align-items: center; gap: 6px;
    border: 1px solid rgba(255,255,255,.1); border-radius: 30px;
    padding: 6px 12px; font-size: 11px; color: rgba(255,255,255,.48);
    background: rgba(255,255,255,.04); font-weight: 500;
}
.dhero__trust-pill i { color: var(--gold); font-size: 10px; }

/* wave */
.dhero__wave { position: relative; z-index: 5; line-height: 0; }
.dhero__wave svg { display: block; width: 100%; height: 60px; }

/* ══ PAGE BODY ══ */
.dpage-body { padding: 36px 0 72px; background: var(--off); }
.dpage-container { max-width: 1200px; margin: 0 auto; padding: 0 24px; }
.dpage-layout { display: grid; grid-template-columns: minmax(0, 1fr) 300px; gap: 28px; align-items: start; }

/* ══ TABS ══ */
.dtabs-nav {
    display: flex; background: #fff;
    border: 1px solid var(--border);
    border-radius: var(--r-lg) var(--r-lg) 0 0;
    overflow: hidden; margin-bottom: 0;
}
.dtab-btn {
    padding: 14px 22px; font-size: 13px; font-weight: 700;
    color: var(--faint); background: none; border: none; cursor: pointer;
    border-bottom: 2.5px solid transparent; margin-bottom: -1px;
    font-family: var(--ff); letter-spacing: .02em; transition: color .2s, background .2s;
    white-space: nowrap;
}
.dtab-btn:hover { color: var(--ink); background: var(--off); }
.dtab-btn.active { color: var(--navy); border-bottom-color: var(--orange); background: rgba(245,130,31,.04); }

/* ══ CONTENT BOX ══ */
.dbox {
    background: #fff;
    border: 1px solid var(--border); border-top: none;
    border-radius: 0 0 var(--r-lg) var(--r-lg);
    padding: 28px; margin-bottom: 20px;
}
.dbox--standalone {
    border-top: 1px solid var(--border);
    border-radius: var(--r-lg);
}
.dbox__hd {
    display: flex; align-items: center; gap: 14px;
    margin-bottom: 22px; padding-bottom: 18px;
    border-bottom: 1px solid var(--off);
}
.dbox__icon {
    width: 38px; height: 38px; border-radius: 11px;
    background: linear-gradient(135deg, var(--blue), var(--navy));
    display: flex; align-items: center; justify-content: center; flex-shrink: 0;
}
.dbox__icon i { font-size: 15px; color: #fff; }
.dbox__icon--orange { background: linear-gradient(135deg, var(--orange), #d96a0a); }
.dbox__icon--green { background: linear-gradient(135deg, #0e9f6e, #077a54); }
.dbox__title { font-size: 20px; font-weight: 900; color: var(--navy); line-height: 1.1; }
.dbox__sub { font-size: 11.5px; color: var(--faint); font-weight: 600; text-transform: uppercase; letter-spacing: .06em; margin-top: 2px; }

/* description expand */
.ddesc { font-size: 14px; color: var(--muted); line-height: 1.9; display: -webkit-box; -webkit-line-clamp: 4; -webkit-box-orient: vertical; overflow: hidden; }
.ddesc.exp { display: block; -webkit-line-clamp: unset; overflow: visible; }
.dsee-more {
    display: inline-flex; align-items: center; gap: 6px; margin-top: 14px;
    font-size: 13px; font-weight: 700; color: var(--blue);
    background: none; border: none; cursor: pointer; padding: 0;
    font-family: var(--ff); transition: opacity .2s;
}
.dsee-more:hover { opacity: .7; }
.dsee-more i { font-size: 10px; transition: transform .2s; }

/* ══ FAQ ══ */
.dfaq-item { border: 1px solid var(--border); border-radius: var(--r); margin-bottom: 8px; overflow: hidden; }
.dfaq-q {
    display: flex; align-items: center; justify-content: space-between;
    padding: 14px 18px; cursor: pointer; font-size: 13.5px; font-weight: 700;
    color: var(--ink); background: none; border: none; width: 100%; text-align: right;
    font-family: var(--ff); transition: background .15s; gap: 12px;
}
.dfaq-q:hover, .dfaq-q.open { background: var(--blue-ultra); }
.dfaq-q i { color: var(--orange); font-size: 12px; flex-shrink: 0; transition: transform .25s; }
.dfaq-q.open i { transform: rotate(180deg); }
.dfaq-a { display: none; padding: 2px 18px 16px; font-size: 13.5px; color: var(--muted); line-height: 1.85; }
.dfaq-a.open { display: block; }

/* ══ CURRICULUM ══ */
.dca-top {
    display: flex; align-items: center; justify-content: space-between;
    margin-bottom: 22px; padding-bottom: 18px; border-bottom: 1px solid var(--off);
}
.dca-pill {
    display: inline-flex; align-items: center; gap: 6px;
    background: var(--blue-pale); border: 1px solid rgba(23,86,200,.15);
    border-radius: 20px; padding: 5px 14px;
    font-size: 12px; color: var(--blue); font-weight: 700;
}
.dca-pill strong { color: var(--navy); }

.dacc-item {
    border: 1px solid var(--border); border-radius: var(--r);
    margin-bottom: 8px; overflow: hidden; background: #fff;
    transition: box-shadow var(--t);
}
.dacc-item:hover { box-shadow: var(--shadow-sm); }
.dacc-hd {
    width: 100%; display: flex; align-items: center; gap: 14px;
    padding: 15px 18px; background: none; border: none; cursor: pointer;
    text-align: right; font-family: var(--ff); transition: background .15s;
}
.dacc-hd:hover, .dacc-hd.open { background: var(--blue-ultra); }
.dacc-num {
    width: 30px; height: 30px; border-radius: 9px; flex-shrink: 0;
    background: var(--blue-pale); border: 1px solid rgba(23,86,200,.15);
    display: flex; align-items: center; justify-content: center;
    font-size: 11px; font-weight: 800; color: var(--blue); transition: all .2s;
}
.dacc-hd.open .dacc-num { background: var(--navy); color: var(--gold); border-color: transparent; }
.dacc-title { flex: 1; font-size: 14px; font-weight: 800; color: var(--ink); line-height: 1.3; }
.dacc-badge {
    font-size: 11px; color: var(--muted); background: var(--off);
    border-radius: 20px; padding: 3px 10px; white-space: nowrap; font-weight: 700;
    border: 1px solid var(--border);
}
.dacc-ch { width: 16px; height: 16px; flex-shrink: 0; stroke: var(--faint); fill: none; stroke-width: 2; transition: transform .25s; }
.dacc-hd.open .dacc-ch { transform: rotate(180deg); stroke: var(--orange); }
.dacc-body { max-height: 0; overflow: hidden; transition: max-height .38s cubic-bezier(.4,0,.2,1); }
.dacc-body.open { max-height: 800px; }
.dlesson-list { list-style: none; padding: 0 12px 12px; display: flex; flex-direction: column; gap: 3px; }
.dlesson { display: flex; align-items: center; gap: 12px; padding: 9px 12px; border-radius: 8px; transition: background .15s; cursor: pointer; }
.dlesson:hover { background: var(--blue-ultra); }
.dlesson-dot { width: 7px; height: 7px; border-radius: 50%; flex-shrink: 0; background: var(--border); border: 1.5px solid #c8d6ef; transition: all .2s; }
.dlesson:hover .dlesson-dot { background: var(--orange); border-color: var(--orange); }
.dlesson-txt { flex: 1; font-size: 13.5px; color: var(--muted); text-align: right; }
.dlesson:hover .dlesson-txt { color: var(--navy); }
.dlesson-lock { flex-shrink: 0; }
.dlesson-lock i { font-size: 11px; color: var(--faint); opacity: .6; }
.dlesson-free { font-size: 9.5px; font-weight: 800; letter-spacing: .08em; text-transform: uppercase; color: var(--green); background: rgba(14,159,110,.1); border-radius: 20px; padding: 2px 9px; flex-shrink: 0; }
.dlesson-list li + li { border-top: 1px solid rgba(0,0,0,.04); }
.dca-empty { text-align: center; padding: 40px 20px; color: var(--faint); display: flex; flex-direction: column; align-items: center; gap: 12px; }
.dca-empty i { font-size: 2.5rem; color: var(--border); }

/* ══ OUTCOMES ══ */
.dreq-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 28px; }
.dreq-sec-title { font-size: 16px; font-weight: 900; color: var(--navy); margin-bottom: 14px; display: flex; align-items: center; gap: 8px; }
.dreq-dot { width: 8px; height: 8px; border-radius: 50%; background: var(--blue); flex-shrink: 0; }
.dout-dot { width: 8px; height: 8px; border-radius: 50%; background: var(--green); flex-shrink: 0; }
.dreq-list { list-style: none; display: flex; flex-direction: column; gap: 10px; }
.dreq-item { display: flex; align-items: flex-start; gap: 10px; font-size: 13.5px; color: var(--muted); line-height: 1.65; }
.dreq-ck {
    width: 20px; height: 20px; border-radius: 50%;
    background: linear-gradient(135deg, var(--blue), var(--navy));
    display: flex; align-items: center; justify-content: center; flex-shrink: 0; margin-top: 1px;
}
.dreq-ck i { font-size: 8px; color: #fff; }
.dout-ck {
    width: 20px; height: 20px; border-radius: 50%;
    background: rgba(14,159,110,.12);
    display: flex; align-items: center; justify-content: center; flex-shrink: 0; margin-top: 1px;
}
.dout-ck i { font-size: 8px; color: var(--green); }

/* ══ INSTRUCTOR CARD ══ */
.dinst-card { background: #fff; border: 1px solid var(--border); border-radius: var(--r-lg); overflow: hidden; box-shadow: var(--shadow-sm); }
.dinst-topbar { height: 4px; background: linear-gradient(90deg, var(--blue), var(--blue-br), var(--orange), var(--blue-br), var(--blue)); }
.dinst-hd { display: flex; align-items: flex-start; gap: 18px; padding: 26px 26px 20px; border-bottom: 1px solid var(--off); }
.dinst-av-wrap { position: relative; flex-shrink: 0; }
.dinst-av { width: 82px; height: 82px; border-radius: 50%; object-fit: cover; border: 3px solid var(--border); display: block; }
.dinst-av-ring { position: absolute; inset: -5px; border-radius: 50%; border: 1.5px solid rgba(245,130,31,.35); pointer-events: none; }
.dinst-eyebrow { font-size: 10px; letter-spacing: .15em; text-transform: uppercase; color: var(--orange); font-weight: 800; margin-bottom: 4px; }
.dinst-name { font-size: 22px; font-weight: 900; color: var(--navy); line-height: 1.1; margin-bottom: 5px; }
.dinst-skills { font-size: 12.5px; color: var(--faint); margin-bottom: 10px; line-height: 1.5; }
.dinst-rating { display: flex; align-items: center; gap: 7px; flex-wrap: wrap; }
.dinst-stars { display: flex; gap: 2px; }
.dinst-star--f { color: var(--gold); font-size: 13px; }
.dinst-star--e { color: var(--border); font-size: 13px; }
.dinst-rnum { font-size: 13px; font-weight: 800; color: var(--navy); }
.dinst-rlbl { font-size: 11.5px; color: var(--faint); }
.dinst-stats { display: grid; grid-template-columns: repeat(3, 1fr); border-bottom: 1px solid var(--off); }
.dinst-stat { padding: 18px 10px; text-align: center; border-left: 1px solid var(--off); }
.dinst-stat:first-child { border-left: none; }
.dinst-stat-icon { width: 32px; height: 32px; border-radius: 9px; background: var(--blue-pale); display: flex; align-items: center; justify-content: center; margin: 0 auto 8px; }
.dinst-stat-icon i { font-size: 13px; color: var(--blue); }
.dinst-stat-n { display: block; font-size: 22px; font-weight: 900; color: var(--navy); line-height: 1; margin-bottom: 4px; }
.dinst-stat-n em { color: var(--orange); font-size: 14px; font-style: normal; }
.dinst-stat-l { display: block; font-size: 10px; color: var(--faint); text-transform: uppercase; letter-spacing: .1em; font-weight: 700; }
.dinst-bio { padding: 20px 26px; }
.dinst-bio-lbl { font-size: 10px; letter-spacing: .13em; text-transform: uppercase; color: var(--faint); font-weight: 800; margin-bottom: 10px; }
.dinst-bio-txt { font-size: 14px; color: var(--muted); line-height: 1.85; display: -webkit-box; -webkit-line-clamp: 4; -webkit-box-orient: vertical; overflow: hidden; }
.dinst-bio-txt.exp { display: block; -webkit-line-clamp: unset; overflow: visible; }
.dinst-toggle { display: inline-flex; align-items: center; gap: 5px; margin-top: 10px; font-size: 12.5px; font-weight: 700; color: var(--blue); background: none; border: none; cursor: pointer; padding: 0; font-family: var(--ff); }
.dinst-toggle i { font-size: 10px; transition: transform .2s; }
.dinst-ft { padding: 16px 26px 22px; border-top: 1px solid var(--off); display: flex; align-items: center; justify-content: space-between; flex-wrap: wrap; gap: 10px; }
.dinst-ft-note { font-size: 12px; color: var(--faint); }
.dinst-view {
    display: inline-flex; align-items: center; gap: 8px; padding: 10px 20px;
    background: linear-gradient(135deg, var(--blue-br), var(--blue));
    color: #fff; border-radius: var(--r); border: none;
    font-size: 13px; font-weight: 800; font-family: var(--ff);
    text-decoration: none; cursor: pointer; transition: all .2s;
    box-shadow: 0 4px 18px rgba(23,86,200,.28);
}
.dinst-view:hover { transform: translateY(-1px); box-shadow: 0 8px 26px rgba(23,86,200,.38); color: #fff; }
.dinst-view i { font-size: 10px; }

/* ══ PRICING CARD (sidebar) ══ */
.dpc { background: #fff; border: 1px solid var(--border); border-radius: var(--r-lg); overflow: hidden; position: sticky; top: 24px; box-shadow: var(--shadow-md); }
.dpc-topbar { height: 4px; background: linear-gradient(90deg, var(--blue), var(--blue-br), var(--orange), var(--blue-br), var(--blue)); }
.dpc-thumb { position: relative; aspect-ratio: 16/9; overflow: hidden; background: var(--navy-deep); }
.dpc-thumb img { width: 100%; height: 100%; object-fit: cover; display: block; }
.dpc-thumb-ov { position: absolute; inset: 0; background: linear-gradient(to top, rgba(6,15,46,.7) 0%, transparent 55%); }
.dpc-play {
    position: absolute; top: 50%; left: 50%; transform: translate(-50%,-50%);
    width: 46px; height: 46px; border-radius: 50%;
    background: rgba(255,255,255,.12); border: 1.5px solid rgba(255,255,255,.4);
    display: flex; align-items: center; justify-content: center;
    cursor: pointer; transition: all .2s; z-index: 2;
}
.dpc-play:hover { background: var(--orange); border-color: var(--orange); }
.dpc-play svg { fill: #fff; width: 14px; height: 14px; margin-left: 2px; }

.dpc-body { padding: 22px 22px 18px; }
.dpc-price-lbl { font-size: 10px; letter-spacing: .14em; text-transform: uppercase; color: var(--faint); font-weight: 700; margin-bottom: 5px; }
.dpc-price-row { display: flex; align-items: baseline; gap: 10px; flex-wrap: wrap; margin-bottom: 4px; }
.dpc-price { font-size: 32px; font-weight: 900; color: var(--navy); line-height: 1; }
.dpc-price-old { font-size: 16px; color: var(--faint); text-decoration: line-through; }
.dpc-disc { font-size: 11px; font-weight: 800; letter-spacing: .05em; color: var(--green); background: rgba(14,159,110,.1); border: 1px solid rgba(14,159,110,.15); border-radius: 20px; padding: 3px 10px; }
.dpc-offer { display: flex; align-items: center; gap: 6px; font-size: 11.5px; color: #a33030; font-weight: 700; margin-bottom: 18px; margin-top: 4px; }
.dpc-offer i { font-size: 11px; flex-shrink: 0; }

.dpc-btn {
    display: block; width: 100%; padding: 13px 0;
    background: linear-gradient(135deg, var(--blue-br), var(--blue));
    color: #fff; border: none; border-radius: var(--r);
    font-size: 14px; font-weight: 800; font-family: var(--ff); letter-spacing: .02em;
    text-align: center; text-decoration: none; cursor: pointer;
    transition: all .2s; margin-bottom: 10px;
    box-shadow: 0 4px 18px rgba(23,86,200,.28);
}
.dpc-btn:hover { transform: translateY(-1px); box-shadow: 0 8px 26px rgba(23,86,200,.38); color: #fff; }
.dpc-btn--free { background: linear-gradient(135deg, #0e9f6e, #077a54); box-shadow: 0 4px 18px rgba(14,159,110,.28); }
.dpc-btn--free:hover { box-shadow: 0 8px 26px rgba(14,159,110,.38); }
.dpc-btn--owned { background: none; border: 1.5px solid var(--border); color: var(--navy); box-shadow: none; }
.dpc-btn--owned:hover { background: var(--blue-pale); border-color: var(--blue); color: var(--blue); transform: none; box-shadow: none; }
.dpc-btn--pending { background: var(--faint); cursor: default; pointer-events: none; box-shadow: none; }

.dpc-hr { border: none; border-top: 1px solid var(--off); margin: 18px 0 16px; }
.dpc-inc-lbl { font-size: 10px; letter-spacing: .12em; text-transform: uppercase; color: var(--navy); font-weight: 800; margin-bottom: 14px; }
.dpc-feats { display: flex; flex-direction: column; gap: 11px; }
.dpc-feat { display: flex; align-items: center; gap: 12px; font-size: 13px; color: var(--muted); }
.dpc-feat-dot { width: 28px; height: 28px; border-radius: 8px; flex-shrink: 0; background: var(--navy); display: flex; align-items: center; justify-content: center; }
.dpc-feat-dot i { font-size: 12px; color: var(--gold); }
.dpc-feat strong { color: var(--navy); font-weight: 800; }

.dpc-guarantee {
    margin-top: 16px; padding: 13px 14px;
    background: var(--orange-lt);
    border: 1px solid rgba(245,130,31,.2); border-radius: var(--r);
    display: flex; align-items: flex-start; gap: 12px;
}
.dpc-shield {
    width: 36px; height: 36px; border-radius: 50%;
    background: linear-gradient(135deg, var(--orange), #d96a0a);
    display: flex; align-items: center; justify-content: center; flex-shrink: 0;
    box-shadow: 0 4px 12px rgba(245,130,31,.3);
}
.dpc-shield i { font-size: 14px; color: #fff; }
.dpc-gtxt { font-size: 12px; color: var(--muted); line-height: 1.6; }
.dpc-gtxt strong { color: var(--ink); font-weight: 800; display: block; margin-bottom: 2px; }

.dpc-contact-lbl { font-size: 10px; letter-spacing: .12em; text-transform: uppercase; color: var(--faint); font-weight: 700; text-align: center; margin-bottom: 10px; }
.dpc-socials { display: flex; justify-content: center; gap: 7px; margin-bottom: 12px; }
.dpc-social {
    width: 34px; height: 34px; border-radius: 9px;
    background: var(--off); border: 1px solid var(--border);
    display: flex; align-items: center; justify-content: center;
    color: var(--muted); font-family: var(--ff); font-size: 12px; font-weight: 800;
    text-decoration: none; transition: all .18s;
}
.dpc-social:hover { background: var(--navy); color: var(--gold); border-color: var(--navy); }
.dpc-call {
    display: flex; align-items: center; justify-content: center; gap: 7px;
    width: 100%; padding: 10px 0; font-size: 13px; font-weight: 700; font-family: var(--ff);
    color: var(--blue); text-decoration: none;
    background: var(--blue-pale); border: 1px solid rgba(23,86,200,.15); border-radius: 9px;
    transition: all .18s;
}
.dpc-call:hover { background: var(--blue); color: #fff; }
.dpc-call i { font-size: 12px; }

.dpc-share-lbl { font-size: 10px; letter-spacing: .12em; text-transform: uppercase; color: var(--faint); font-weight: 700; text-align: center; margin-bottom: 10px; }
.dpc-share-row { display: flex; justify-content: center; gap: 8px; }
.dpc-sico { width: 36px; height: 36px; border-radius: 9px; display: flex; align-items: center; justify-content: center; text-decoration: none; font-size: 13px; font-weight: 800; font-family: var(--ff); transition: transform .18s, opacity .18s; }
.dpc-sico:hover { transform: translateY(-2px); }
.sico-fb { background: #1877F2; color: #fff; }
.sico-tw { background: #0f1419; color: #fff; }
.sico-wa { background: #25D366; color: #fff; }
.sico-li { background: #0A66C2; color: #fff; }

/* ══ RESPONSIVE ══ */
@media (max-width: 1100px) {
    .dhero__layout { grid-template-columns: 1fr; }
    .dhero__thumb-wrap { max-width: 480px; margin: 0 auto; width: 100%; order: -1; }
    .dpage-layout { grid-template-columns: 1fr; }
    .dreq-grid { grid-template-columns: 1fr; }
}
@media (max-width: 768px) {
    .dhero__stats { grid-template-columns: repeat(2, 1fr); }
    .dhero__meta { flex-direction: column; align-items: flex-start; gap: 10px; }
    .dhero__meta-item { border-left: none; padding-left: 0; margin-left: 0; }
    .dtabs-nav { overflow-x: auto; }
    .dtab-btn { padding: 13px 16px; font-size: 12px; }
}
@media (max-width: 480px) {
    .dinst-stats { grid-template-columns: repeat(3, 1fr); }
}
</style>
@endpush

@section('content')
<div class="dpage">

{{-- ══ HERO ══ --}}
<section class="dhero">
    <div class="dhero__mesh"></div>
    <div class="dhero__grid"></div>
    <div class="dhero__orb dhero__orb--1"></div>
    <div class="dhero__orb dhero__orb--2"></div>

    {{-- Breadcrumb Strip --}}
    <div class="dhero__strip">
        <div class="dhero__strip-inner">
            <nav class="dhero__crumb">
                <a href="{{ route('home') }}">{{ get_phrase('Home') }}</a>
                <span class="dhero__crumb-sep">›</span>
                <a href="{{ route('bootcamps') }}">{{ get_phrase('Bootcamps') }}</a>
                <span class="dhero__crumb-sep">›</span>
                <span class="dhero__crumb-active">{{ $bootcamp_details->title }}</span>
            </nav>
            <div class="dhero__badge-pill">
                <span class="dhero__badge-dot"></span>
                <span class="dhero__badge-txt">
                    @if($bootcamp_details->is_paid)
                        {{ get_phrase('Enrolling Now') }}
                    @else
                        {{ get_phrase('Free Program') }}
                    @endif
                </span>
            </div>
        </div>
    </div>

    {{-- Hero Content --}}
    <div class="dhero__inner">
        <div class="dhero__container">
            <div class="dhero__layout">

                {{-- Left: Text --}}
                <div>
                    <div class="dhero__eyebrow">
                        <div class="dhero__eyebrow-icon"><i class="fa-solid fa-graduation-cap"></i></div>
                        <span class="dhero__eyebrow-text">{{ get_phrase('Professional Diploma Program') }}</span>
                    </div>

                    <h1 class="dhero__h1">
                        {{ $bootcamp_details->title }}
                    </h1>

                    @if($bootcamp_details->short_description)
                        <p class="dhero__lead">{{ $bootcamp_details->short_description }}</p>
                    @endif

                    @php $user = get_user_info($bootcamp_details->user_id); @endphp

                    <div class="dhero__meta">
                        <div class="dhero__meta-item">
                            <img class="dhero__meta-av" src="{{ get_image($user->photo) }}" alt="{{ $user->name }}">
                            <a href="{{ route('instructor.details', ['name' => slugify($user->name), 'id' => $user->id]) }}" class="dhero__meta-link">{{ $user->name }}</a>
                        </div>
                        <div class="dhero__meta-item">
                            <svg class="dhero__meta-icon" viewBox="0 0 20 20"><circle cx="10" cy="10" r="7.5"/><path d="M10 6.5v3.75l2.25 2.25" stroke-linecap="round"/></svg>
                            {{ date('d M Y', $bootcamp_details->publish_date) }}
                        </div>
                        <div class="dhero__meta-item">
                            <svg class="dhero__meta-icon" viewBox="0 0 20 20"><path d="M3 5h14M3 10h10M3 15h7" stroke-linecap="round"/></svg>
                            @php $cm = count_bootcamp_modules($bootcamp_details->id); @endphp
                            {{ $cm }} {{ get_phrase($cm > 1 ? 'Modules' : 'Module') }}
                        </div>
                        <div class="dhero__meta-item">
                            <svg class="dhero__meta-icon" viewBox="0 0 20 20"><rect x="2" y="4" width="16" height="14" rx="2"/><path d="M2 8h16M6.5 2v3M13.5 2v3" stroke-linecap="round"/></svg>
                            @php $cc = count_bootcamp_classes($bootcamp_details->id); @endphp
                            {{ $cc }} {{ get_phrase($cc > 1 ? 'Classes' : 'Class') }}
                        </div>
                    </div>

                    <div class="dhero__stats">
                        <div class="dhero__stat">
                            <span class="dhero__stat-n live">{{ get_phrase('LIVE') }}</span>
                            <span class="dhero__stat-l">{{ get_phrase('Sessions') }}</span>
                        </div>
                        <div class="dhero__stat">
                            <span class="dhero__stat-n">{{ $cm }}<em>+</em></span>
                            <span class="dhero__stat-l">{{ get_phrase('Modules') }}</span>
                        </div>
                        <div class="dhero__stat">
                            <span class="dhero__stat-n">{{ total_enroll($bootcamp_details->id) }}</span>
                            <span class="dhero__stat-l">{{ get_phrase('Students') }}</span>
                        </div>
                        <div class="dhero__stat">
                            <span class="dhero__stat-n">100<em>%</em></span>
                            <span class="dhero__stat-l">{{ get_phrase('Certified') }}</span>
                        </div>
                    </div>
                </div>

                {{-- Right: Thumbnail Card --}}
                <div class="dhero__thumb-wrap">
                    <div class="dhero__thumb-badge">
                        @if($bootcamp_details->is_paid)
                            {{ get_phrase('Enrolling Now') }}
                        @else
                            {{ get_phrase('Free') }}
                        @endif
                    </div>
                    <div class="dhero__thumb-card">
                        <div class="dhero__thumb">
                            <img src="{{ get_image($bootcamp_details->thumbnail) }}" alt="{{ $bootcamp_details->title }}">
                            <div class="dhero__thumb-ov"></div>
                            @if($bootcamp_details->preview)
                                <button class="dhero__play" data-bs-toggle="modal" data-bs-target="#previewModal" aria-label="Play preview">
                                    <svg viewBox="0 0 24 24"><polygon points="5,3 19,12 5,21"/></svg>
                                </button>
                            @endif
                            <div class="dhero__thumb-foot">
                                <span class="dhero__prev-txt">▶ {{ get_phrase('Watch Preview') }}</span>
                                @if(!$bootcamp_details->is_paid)
                                    <span class="dhero__free-tag">{{ get_phrase('Free') }}</span>
                                @endif
                            </div>
                        </div>
                    </div>
                    <div class="dhero__trust">
                        <div class="dhero__trust-pill"><i class="fa-solid fa-certificate"></i> {{ get_phrase('شهادة معتمدة') }}</div>
                        <div class="dhero__trust-pill"><i class="fa-solid fa-video"></i> {{ get_phrase('أونلاين مباشر') }}</div>
                        <div class="dhero__trust-pill"><i class="fa-solid fa-award"></i> {{ get_phrase('محاضرون خبراء') }}</div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="dhero__wave">
        <svg viewBox="0 0 1440 60" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="none">
            <path d="M0,60 C240,14 480,54 720,32 C960,10 1200,52 1440,22 L1440,60 Z" fill="#f7f9fe"/>
        </svg>
    </div>
</section>

{{-- Preview Modal --}}
@if($bootcamp_details->preview)
<div class="modal fade" id="previewModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">{{ ucfirst($bootcamp_details->title) }}</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body p-0">
                <video width="100%" height="440" id="bcVideoPlayer" playsinline controls>
                    <source src="{{ asset($bootcamp_details->preview) }}" type="video/mp4">
                </video>
            </div>
        </div>
    </div>
</div>
@endif

{{-- ══ PAGE BODY ══ --}}
<div class="dpage-body">
    <div class="dpage-container">
        <div class="dpage-layout">

            {{-- ══ MAIN CONTENT ══ --}}
            <main>

                {{-- Tab Navigation --}}
                <nav class="dtabs-nav" role="tablist">
                    <button class="dtab-btn active" data-target="dtab-overview">{{ get_phrase('Overview') }}</button>
                    <button class="dtab-btn" data-target="dtab-curriculum">{{ get_phrase('Curriculum') }}</button>
                    <button class="dtab-btn" data-target="dtab-outcomes">{{ get_phrase('Outcomes') }}</button>
                    <button class="dtab-btn" data-target="dtab-instructor">{{ get_phrase('Instructor') }}</button>
                </nav>

                {{-- ═ TAB: OVERVIEW ═ --}}
                <div id="dtab-overview" class="dtab-panel">
                    <div class="dbox">

                        {{-- Description --}}
                        <div class="dbox__hd">
                            <div class="dbox__icon"><i class="fa-solid fa-circle-info"></i></div>
                            <div>
                                <div class="dbox__title">{{ get_phrase('Program Overview') }}</div>
                                <div class="dbox__sub">{{ get_phrase('Detailed Description') }}</div>
                            </div>
                        </div>
                        <div class="ddesc" id="ddesc-txt">
                            @if($bootcamp_details->description)
                                {!! $bootcamp_details->description !!}
                            @else
                                <p style="text-align:center;color:var(--faint)">{{ get_phrase('No description available.') }}</p>
                            @endif
                        </div>
                        @if($bootcamp_details->description)
                            <button class="dsee-more" id="dsee-more-btn">
                                {{ get_phrase('See more') }} <i class="fa-solid fa-chevron-down"></i>
                            </button>
                        @endif

                    </div>

                    {{-- FAQ --}}
                    @php $faqs = $bootcamp_details->faqs ? json_decode($bootcamp_details->faqs, true) : []; @endphp
                    @if(count($faqs) > 0)
                    <div class="dbox dbox--standalone">
                        <div class="dbox__hd">
                            <div class="dbox__icon dbox__icon--orange"><i class="fa-solid fa-circle-question"></i></div>
                            <div>
                                <div class="dbox__title">{{ get_phrase('Frequently Asked') }}</div>
                                <div class="dbox__sub">{{ get_phrase('Common Questions') }}</div>
                            </div>
                        </div>
                        @foreach($faqs as $faq)
                            <div class="dfaq-item">
                                <button class="dfaq-q" onclick="dtoggleFaq(this)">
                                    {{ ucfirst($faq['title'] ?? '') }}
                                    <i class="fa-solid fa-chevron-down"></i>
                                </button>
                                <div class="dfaq-a">{{ ucfirst($faq['description'] ?? '') }}</div>
                            </div>
                        @endforeach
                    </div>
                    @endif
                </div>

                {{-- ═ TAB: CURRICULUM ═ --}}
                <div id="dtab-curriculum" class="dtab-panel" style="display:none">
                    <div class="dbox">

                        <div class="dca-top">
                            <div style="display:flex;align-items:center;gap:12px">
                                <div class="dbox__icon"><i class="fa-solid fa-list-check"></i></div>
                                <div>
                                    <div class="dbox__title">{{ get_phrase('Course Content') }}</div>
                                    <div class="dbox__sub">{{ get_phrase('All Modules & Classes') }}</div>
                                </div>
                            </div>
                            <div class="dca-pill">
                                <strong>{{ count_bootcamp_modules($bootcamp_details->id) }}</strong> {{ get_phrase('modules') }}
                                &nbsp;·&nbsp;
                                <strong>{{ count_bootcamp_classes($bootcamp_details->id) }}</strong> {{ get_phrase('classes') }}
                            </div>
                        </div>

                        @if($modules->count() > 0)
                            <div>
                                @foreach($modules as $i => $module)
                                    @php $mc = DB::table('bootcamp_live_classes')->where('module_id', $module->id)->count(); @endphp
                                    <div class="dacc-item">
                                        <button class="dacc-hd" type="button" onclick="dtoggleAcc(this)">
                                            <span class="dacc-num">{{ str_pad($i + 1, 2, '0', STR_PAD_LEFT) }}</span>
                                            <span class="dacc-title">{{ ucfirst($module->title) }}</span>
                                            <span class="dacc-badge">{{ $mc }} {{ get_phrase($mc === 1 ? 'class' : 'classes') }}</span>
                                            <svg class="dacc-ch" viewBox="0 0 20 20"><path d="M5 8l5 5 5-5" stroke-linecap="round" stroke-linejoin="round"/></svg>
                                        </button>
                                        <div class="dacc-body">
                                            @php $classes = DB::table('bootcamp_live_classes')->where('module_id', $module->id)->get(); @endphp
                                            <ul class="dlesson-list">
                                                @forelse($classes as $class)
                                                    <li>
                                                        <div class="dlesson">
                                                            <span class="dlesson-dot"></span>
                                                            <span class="dlesson-txt">{{ ucfirst($class->title) }}</span>
                                                            @if($bootcamp_details->is_paid)
                                                                <span class="dlesson-lock"><i class="fa-solid fa-lock"></i></span>
                                                            @else
                                                                <span class="dlesson-free">{{ get_phrase('Free') }}</span>
                                                            @endif
                                                        </div>
                                                    </li>
                                                @empty
                                                    <li>
                                                        <div style="padding:16px;font-size:13px;color:var(--faint);text-align:center">
                                                            {{ get_phrase('No classes in this module yet.') }}
                                                        </div>
                                                    </li>
                                                @endforelse
                                            </ul>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        @else
                            <div class="dca-empty">
                                <i class="fa-solid fa-folder-open"></i>
                                <span>{{ get_phrase('No content added yet.') }}</span>
                            </div>
                        @endif

                    </div>
                </div>

                {{-- ═ TAB: OUTCOMES ═ --}}
                <div id="dtab-outcomes" class="dtab-panel" style="display:none">
                    @php
                        $requirements = $bootcamp_details->requirements ? json_decode($bootcamp_details->requirements, true) : [];
                        $outcomes     = $bootcamp_details->outcomes     ? json_decode($bootcamp_details->outcomes, true)     : [];
                    @endphp
                    <div class="dbox">
                        <div class="dbox__hd">
                            <div class="dbox__icon dbox__icon--green"><i class="fa-solid fa-check-double"></i></div>
                            <div>
                                <div class="dbox__title">{{ get_phrase('Requirements & Outcomes') }}</div>
                                <div class="dbox__sub">{{ get_phrase('What you need · What you\'ll gain') }}</div>
                            </div>
                        </div>
                        <div class="dreq-grid">
                            <div>
                                <div class="dreq-sec-title">
                                    <div class="dreq-dot"></div>
                                    {{ get_phrase('Prerequisites') }}
                                </div>
                                @if(count($requirements) > 0)
                                    <ul class="dreq-list">
                                        @foreach($requirements as $req)
                                            <li class="dreq-item">
                                                <div class="dreq-ck"><i class="fa-solid fa-check"></i></div>
                                                {{ $req }}
                                            </li>
                                        @endforeach
                                    </ul>
                                @else
                                    <p style="font-size:13px;color:var(--faint)">{{ get_phrase('No requirements listed.') }}</p>
                                @endif
                            </div>
                            <div>
                                <div class="dreq-sec-title">
                                    <div class="dout-dot"></div>
                                    {{ get_phrase('What You\'ll Learn') }}
                                </div>
                                @if(count($outcomes) > 0)
                                    <ul class="dreq-list">
                                        @foreach($outcomes as $outcome)
                                            <li class="dreq-item">
                                                <div class="dout-ck"><i class="fa-solid fa-check"></i></div>
                                                {{ $outcome }}
                                            </li>
                                        @endforeach
                                    </ul>
                                @else
                                    <p style="font-size:13px;color:var(--faint)">{{ get_phrase('No outcomes listed.') }}</p>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>

                {{-- ═ TAB: INSTRUCTOR ═ --}}
                <div id="dtab-instructor" class="dtab-panel" style="display:none">
                    @php
                        $instructor_user = get_user_info($bootcamp_details->user_id);
                        $i_skills        = json_decode($instructor_user->skills, true);
                        if (is_array($i_skills) && count($i_skills) > 0) {
                            $i_skills = array_column($i_skills, 'value');
                        }
                        $i_rating   = instructor_rating($instructor_user->id);
                        $i_students = count_student_by_instructor($bootcamp_details->user_id);
                        $i_camps    = count_instructor_bootcamps($bootcamp_details->user_id);
                        $i_reviews  = instructor_reviews($instructor_user->id);
                    @endphp
                    <div class="dinst-card">
                        <div class="dinst-topbar"></div>
                        <div class="dinst-hd">
                            <div class="dinst-av-wrap">
                                <img class="dinst-av" src="{{ get_image($instructor_user->photo) }}" alt="{{ $instructor_user->name }}">
                                <div class="dinst-av-ring"></div>
                            </div>
                            <div class="dinst-meta">
                                <div class="dinst-eyebrow">{{ get_phrase('Bootcamp Instructor') }}</div>
                                <div class="dinst-name">{{ ucfirst($instructor_user->name) }}</div>
                                @if($i_skills)
                                    <div class="dinst-skills">{{ implode(' · ', array_slice($i_skills, 0, 4)) }}</div>
                                @endif
                                <div class="dinst-rating">
                                    <div class="dinst-stars">
                                        @for($s = 1; $s <= 5; $s++)
                                            <span class="{{ $s <= round($i_rating) ? 'dinst-star--f' : 'dinst-star--e' }}">★</span>
                                        @endfor
                                    </div>
                                    <span class="dinst-rnum">{{ number_format($i_rating, 1) }}</span>
                                    <span class="dinst-rlbl">{{ get_phrase('Instructor rating') }}</span>
                                </div>
                            </div>
                        </div>

                        <div class="dinst-stats">
                            <div class="dinst-stat">
                                <div class="dinst-stat-icon"><i class="fa-solid fa-users"></i></div>
                                <span class="dinst-stat-n">{{ $i_students }}<em>+</em></span>
                                <span class="dinst-stat-l">{{ get_phrase('Students') }}</span>
                            </div>
                            <div class="dinst-stat">
                                <div class="dinst-stat-icon"><i class="fa-solid fa-chalkboard-user"></i></div>
                                <span class="dinst-stat-n">{{ $i_camps }}</span>
                                <span class="dinst-stat-l">{{ get_phrase('Bootcamps') }}</span>
                            </div>
                            <div class="dinst-stat">
                                <div class="dinst-stat-icon"><i class="fa-solid fa-star"></i></div>
                                <span class="dinst-stat-n">{{ $i_reviews }}</span>
                                <span class="dinst-stat-l">{{ get_phrase('Reviews') }}</span>
                            </div>
                        </div>

                        <div class="dinst-bio">
                            <div class="dinst-bio-lbl">{{ get_phrase('About the Instructor') }}</div>
                            <p class="dinst-bio-txt" id="dinst-bio-p">{{ ucfirst($instructor_user->about) }}</p>
                            @if(strlen($instructor_user->about ?? '') > 240)
                                <button class="dinst-toggle" id="dinst-bio-toggle">
                                    {{ get_phrase('Read more') }} <i class="fa-solid fa-chevron-down" id="dinst-toggle-icon"></i>
                                </button>
                            @endif
                        </div>

                        <div class="dinst-ft">
                            <span class="dinst-ft-note">{{ get_phrase('View full profile & all courses') }}</span>
                            <a href="{{ route('instructor.details', ['name' => slugify($instructor_user->name), 'id' => $instructor_user->id]) }}" class="dinst-view">
                                {{ get_phrase('View Profile') }} <i class="fa-solid fa-arrow-left"></i>
                            </a>
                        </div>
                    </div>
                </div>

            </main>

            {{-- ══ SIDEBAR ══ --}}
            <aside>
                @php
                    $is_purchased             = false;
                    $pending_bootcamp_payment = null;
                    if (isset(auth()->user()->id)) {
                        $is_purchased = DB::table('bootcamp_purchases')
                            ->where('user_id', auth()->user()->id)
                            ->where('bootcamp_id', $bootcamp_details->id)
                            ->where('status', 1)->exists();
                        $pending_bootcamp_payment = DB::table('offline_payments')
                            ->where('user_id', auth()->user()->id)
                            ->where('item_type', 'bootcamp')
                            ->where('items', $bootcamp_details->id)
                            ->where('status', 0)->first();
                    }
                    $instructor    = $bootcamp_details->instructor;
                    $share_url     = route('bootcamp.details', $bootcamp_details->slug);
                    $bcModuleIds   = App\Models\BootcampModule::where('bootcamp_id', $bootcamp_details->id)->pluck('id');
                    $hasResource   = App\Models\BootcampResource::whereIn('module_id', $bcModuleIds)->where('upload_type', 'resource')->exists();
                    $hasRecord     = App\Models\BootcampResource::whereIn('module_id', $bcModuleIds)->where('upload_type', 'record')->exists();
                    $loggedIn      = isset(auth()->user()->id);

                    /* discount */
                    $disc_pct   = 0;
                    $final_price = $bootcamp_details->price;
                    if ($bootcamp_details->is_paid == 1 && $bootcamp_details->discount_flag == 1) {
                        $disc_pct   = round(($bootcamp_details->discounted_price / $bootcamp_details->price) * 100);
                        $final_price = number_format($bootcamp_details->price - $bootcamp_details->discounted_price, 2);
                    }
                @endphp

                <div class="dpc">
                    <div class="dpc-topbar"></div>

                    {{-- Thumbnail + play --}}
                    <div class="dpc-thumb">
                        <img src="{{ get_image($bootcamp_details->thumbnail) }}" alt="{{ $bootcamp_details->title }}">
                        <div class="dpc-thumb-ov"></div>
                        @if($bootcamp_details->preview)
                            <button class="dpc-play" data-bs-toggle="modal" data-bs-target="#previewModal">
                                <svg viewBox="0 0 24 24"><polygon points="5,3 19,12 5,21"/></svg>
                            </button>
                        @endif
                    </div>

                    <div class="dpc-body">

                        {{-- Price --}}
                        <div class="dpc-price-lbl">{{ get_phrase('Enrollment Price') }}</div>
                        <div class="dpc-price-row">
                            @if(!$bootcamp_details->is_paid)
                                <span class="dpc-price" style="color:var(--green)">{{ get_phrase('Free') }}</span>
                            @elseif($bootcamp_details->discount_flag == 1)
                                <span class="dpc-price">{{ currency($final_price) }}</span>
                                <span class="dpc-price-old">{{ currency($bootcamp_details->price, 2) }}</span>
                                <span class="dpc-disc">{{ $disc_pct }}% {{ get_phrase('OFF') }}</span>
                            @else
                                <span class="dpc-price">{{ currency($bootcamp_details->price, 2) }}</span>
                            @endif
                        </div>

                        @if($bootcamp_details->discount_flag == 1)
                            <div class="dpc-offer">
                                <i class="fa-solid fa-clock"></i>
                                {{ get_phrase('Limited time offer — enroll today') }}
                            </div>
                        @else
                            <div style="margin-bottom:16px"></div>
                        @endif

                        {{-- CTA Button --}}
                        @if($loggedIn && $pending_bootcamp_payment)
                            <a href="javascript:void(0);" class="dpc-btn dpc-btn--pending">
                                ⏳ {{ get_phrase('Payment Processing') }}
                            </a>
                        @elseif($loggedIn && $is_purchased)
                            <a href="{{ route('my.bootcamp.details', $bootcamp_details->slug) }}" class="dpc-btn dpc-btn--owned">
                                ✓ {{ get_phrase('Go to My Bootcamp') }}
                            </a>
                        @else
                            <a href="{{ route('purchase.bootcamp', $bootcamp_details->id) }}" class="dpc-btn {{ !$bootcamp_details->is_paid ? 'dpc-btn--free' : '' }}">
                                @if(!$bootcamp_details->is_paid)
                                    {{ get_phrase('Enroll for Free') }} <i class="fa-solid fa-arrow-left" style="font-size:10px;margin-right:4px"></i>
                                @else
                                    {{ get_phrase('Enroll Now') }} <i class="fa-solid fa-arrow-left" style="font-size:10px;margin-right:4px"></i>
                                @endif
                            </a>
                        @endif

                        <hr class="dpc-hr">

                        {{-- Includes --}}
                        <div class="dpc-inc-lbl">{{ get_phrase('This Bootcamp Includes') }}</div>
                        <div class="dpc-feats">
                            <div class="dpc-feat">
                                <div class="dpc-feat-dot"><i class="fa-solid fa-calendar-check"></i></div>
                                <span><strong>{{ count_bootcamp_classes($bootcamp_details->id) }}</strong> {{ get_phrase('live instructor-led sessions') }}</span>
                            </div>
                            <div class="dpc-feat">
                                <div class="dpc-feat-dot"><i class="fa-solid fa-layer-group"></i></div>
                                <span><strong>{{ count_bootcamp_modules($bootcamp_details->id) }}</strong> {{ get_phrase('structured learning modules') }}</span>
                            </div>
                            <div class="dpc-feat">
                                <div class="dpc-feat-dot"><i class="fa-solid fa-file-arrow-down"></i></div>
                                <span>{{ get_phrase('Downloadable resources') }}: <strong>{{ $hasResource ? get_phrase('Included') : get_phrase('None') }}</strong></span>
                            </div>
                            <div class="dpc-feat">
                                <div class="dpc-feat-dot"><i class="fa-solid fa-circle-play"></i></div>
                                <span>{{ get_phrase('Class recordings') }}: <strong>{{ $hasRecord ? get_phrase('Included') : get_phrase('None') }}</strong></span>
                            </div>
                            <div class="dpc-feat">
                                <div class="dpc-feat-dot"><i class="fa-solid fa-award"></i></div>
                                <span>{{ get_phrase('Professional certificate on completion') }}</span>
                            </div>
                        </div>

                        {{-- Guarantee --}}
                        <div class="dpc-guarantee">
                            <div class="dpc-shield"><i class="fa-solid fa-shield-halved"></i></div>
                            <div class="dpc-gtxt">
                                <strong>{{ get_phrase('30-Day Money-Back Guarantee') }}</strong>
                                {{ get_phrase('Not satisfied? Full refund within 30 days — no questions asked.') }}
                            </div>
                        </div>

                        <hr class="dpc-hr">

                        {{-- Instructor social / contact --}}
                        @if($instructor)
                            <div class="dpc-contact-lbl">{{ get_phrase('Contact Instructor') }}</div>
                            <div class="dpc-socials">
                                @if(!empty($instructor->twitter))
                                    <a href="{{ $instructor->twitter }}" target="_blank" class="dpc-social" title="Twitter">𝕏</a>
                                @endif
                                @if(!empty($instructor->facebook))
                                    <a href="{{ $instructor->facebook }}" target="_blank" class="dpc-social" title="Facebook">f</a>
                                @endif
                                @if(!empty($instructor->linkedin))
                                    <a href="{{ $instructor->linkedin }}" target="_blank" class="dpc-social" title="LinkedIn">in</a>
                                @endif
                            </div>
                            @if(!empty($instructor->phone))
                                <a href="tel:{{ $instructor->phone }}" class="dpc-call">
                                    <i class="fa-solid fa-phone"></i>
                                    {{ $instructor->phone }}
                                </a>
                            @endif
                            <hr class="dpc-hr">
                        @endif

                        {{-- Share --}}
                        <div class="dpc-share-lbl">{{ get_phrase('Share this Bootcamp') }}</div>
                        <div class="dpc-share-row">
                            <a href="https://www.facebook.com/sharer/sharer.php?u={{ urlencode($share_url) }}" target="_blank" class="dpc-sico sico-fb" title="Facebook">f</a>
                            <a href="https://twitter.com/intent/tweet?url={{ urlencode($share_url) }}&text={{ urlencode($bootcamp_details->title) }}" target="_blank" class="dpc-sico sico-tw" title="Twitter">𝕏</a>
                            <a href="https://api.whatsapp.com/send?text={{ urlencode($share_url) }}" target="_blank" class="dpc-sico sico-wa" title="WhatsApp">W</a>
                            <a href="https://www.linkedin.com/shareArticle?url={{ urlencode($share_url) }}&title={{ urlencode($bootcamp_details->title) }}" target="_blank" class="dpc-sico sico-li" title="LinkedIn">in</a>
                        </div>

                    </div>
                </div>
            </aside>

        </div>
    </div>
</div>

</div>{{-- .dpage --}}
@endsection

@push('js')
<script>
(function () {
    /* ── Tabs ── */
    document.querySelectorAll('.dtab-btn').forEach(function (btn) {
        btn.addEventListener('click', function () {
            document.querySelectorAll('.dtab-btn').forEach(function (b) { b.classList.remove('active'); });
            document.querySelectorAll('.dtab-panel').forEach(function (p) { p.style.display = 'none'; });
            this.classList.add('active');
            var panel = document.getElementById(this.getAttribute('data-target'));
            if (panel) panel.style.display = 'block';
        });
    });

    /* ── Description expand/collapse ── */
    var descBtn  = document.getElementById('dsee-more-btn');
    var descTxt  = document.getElementById('ddesc-txt');
    if (descBtn && descTxt) {
        var descOpen = false;
        descBtn.addEventListener('click', function () {
            descOpen = !descOpen;
            descTxt.classList.toggle('exp', descOpen);
            var icon = descBtn.querySelector('i');
            descBtn.childNodes[0].textContent = descOpen ? '{{ get_phrase("See less") }} ' : '{{ get_phrase("See more") }} ';
            if (icon) icon.style.transform = descOpen ? 'rotate(180deg)' : 'rotate(0deg)';
        });
    }

    /* ── FAQ ── */
    window.dtoggleFaq = function (btn) {
        var answer = btn.nextElementSibling;
        var isOpen = btn.classList.contains('open');
        document.querySelectorAll('.dfaq-q.open').forEach(function (b) {
            b.classList.remove('open'); b.nextElementSibling.classList.remove('open');
        });
        if (!isOpen) { btn.classList.add('open'); answer.classList.add('open'); }
    };

    /* ── Curriculum accordion ── */
    window.dtoggleAcc = function (hd) {
        var body   = hd.nextElementSibling;
        var isOpen = hd.classList.contains('open');
        document.querySelectorAll('.dacc-hd.open').forEach(function (h) {
            h.classList.remove('open'); h.nextElementSibling.classList.remove('open');
        });
        if (!isOpen) { hd.classList.add('open'); body.classList.add('open'); }
    };
    /* auto-open first module */
    var firstAcc = document.querySelector('.dacc-hd');
    if (firstAcc) dtoggleAcc(firstAcc);

    /* ── Instructor bio toggle ── */
    var bioToggle = document.getElementById('dinst-bio-toggle');
    if (bioToggle) {
        var bioOpen = false;
        bioToggle.addEventListener('click', function () {
            bioOpen = !bioOpen;
            document.getElementById('dinst-bio-p').classList.toggle('exp', bioOpen);
            var icon = document.getElementById('dinst-toggle-icon');
            if (icon) icon.style.transform = bioOpen ? 'rotate(180deg)' : 'rotate(0)';
            bioToggle.childNodes[0].textContent = bioOpen ? '{{ get_phrase("Read less") }} ' : '{{ get_phrase("Read more") }} ';
        });
    }

    /* ── Stop video on modal close ── */
    var modal = document.getElementById('previewModal');
    if (modal) {
        modal.addEventListener('hidden.bs.modal', function () {
            var v = document.getElementById('bcVideoPlayer');
            if (v) { v.pause(); v.currentTime = 0; }
        });
    }
})();
</script>
@endpush