@php
    $is_ar = (app()->getLocale() == 'ar') || (session('language') == 'arabic') || (get_current_language_direction() == 'rtl');
    $parent_categories = DB::table('categories')->where('parent_id', 0)->latest('id')->get();
    $bootcamp_categories = DB::table('bootcamp_categories')->latest('id')->get();
    $featured_courses = App\Models\Course::where('status', 'active')->latest('id')->take(6)->get();
    $featured_bootcamps = App\Models\Bootcamp::latest('id')->take(6)->get();
    $latest_blogs = App\Models\Blog::where('status', 1)->orderBy('is_popular', 'desc')->latest('id')->take(3)->get();
@endphp
<!DOCTYPE html>
<html lang="{{ $is_ar ? 'ar' : 'en' }}" dir="{{ $is_ar ? 'rtl' : 'ltr' }}">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>{{ $is_ar ? 'Boroz Academy - أكاديمية بروز للتدريب الحديث' : 'Boroz Academy - Modern Training Platform' }}
    </title>
    <link rel="shortcut icon" href="{{ asset(get_frontend_settings('favicon')) }}" />
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
        href="https://fonts.googleapis.com/css2?family=Cairo:wght@300;400;500;600;700;800;900&family=Outfit:wght@400;600;700;800&display=swap"
        rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        navy: '#004d80',
                        'navy-light': '#0066aa',
                        'navy-dark': '#003355',
                        orange: '#e8721c',
                        'orange-dark': '#d06518',
                    },
                },
            },
        }
    </script>
    <style>
        body {
            font-family:
                {{ $is_ar ? "'Cairo', sans-serif" : "'Outfit', system-ui, sans-serif" }}
            ;
        }

        .hero-overlay {
            background: linear-gradient(135deg, rgba(0, 77, 128, 0.92), rgba(232, 114, 28, 0.75));
        }

        .card-hover {
            transition: all 0.3s ease;
        }

        .card-hover:hover {
            transform: translateY(-8px);
            box-shadow: 0 20px 35px rgba(0, 0, 0, 0.12);
        }

        .mobile-menu {
            max-height: 0;
            overflow: hidden;
            transition: max-height 0.5s ease;
        }

        .mobile-menu.active {
            max-height: 3000px;
        }

        .dropdown-content {
            max-height: 0;
            overflow: hidden;
            transition: max-height 0.4s ease;
        }

        .dropdown-content.active {
            max-height: 2000px;
        }

        .dropdown-arrow {
            transition: transform 0.3s ease;
        }

        .dropdown-arrow.rotated {
            transform: rotate(180deg);
        }

        .submenu-item {
            padding: 12px 20px;
            border-right: 3px solid transparent;
            transition: all 0.3s ease;
        }

        .submenu-item:hover {
            background-color: rgba(232, 114, 28, 0.1);
            border-right-color: #e8721c;
        }

        .whatsapp-float {
            position: fixed;
            bottom: 30px;
            left: 30px;
            z-index: 100;
            animation: pulse 2s infinite;
        }

        @keyframes pulse {

            0%,
            100% {
                transform: scale(1);
            }

            50% {
                transform: scale(1.08);
            }
        }
    </style>
</head>

<body class="bg-slate-50 text-[#004d80] antialiased">

    <!-- TOP BAR -->
    <div class="bg-[#004d80] text-white text-xs sm:text-sm py-2">
        <div class="max-w-7xl mx-auto px-4 flex flex-wrap items-center justify-between gap-2">

            <!-- Left: Social Media + Language -->
            <div class="flex items-center gap-4">
                @if (get_frontend_settings('twitter') != '')
                    <a href="{{ get_frontend_settings('twitter') }}" target="_blank"
                        class="hover:text-orange-400 transition-colors">
                        <i class="fa-brands fa-x-twitter"></i>
                    </a>
                @endif
                @if (get_frontend_settings('linkedin') != '')
                    <a href="{{ get_frontend_settings('linkedin') }}" target="_blank"
                        class="hover:text-orange-400 transition-colors">
                        <i class="fa-brands fa-linkedin"></i>
                    </a>
                @endif
                @if (get_frontend_settings('facebook') != '')
                    <a href="{{ get_frontend_settings('facebook') }}" target="_blank"
                        class="hover:text-orange-400 transition-colors">
                        <i class="fa-brands fa-square-facebook"></i>
                    </a>
                @endif

                <!-- Language Selector -->
                <form action="{{ route('select.lng') }}" method="get" class="inline-block">
                    @php
                        $activated_language = strtolower(session('language') ?? get_settings('language'));
                    @endphp
                    <select name="language" id="lng-selector" onchange="this.form.submit()"
                        class="bg-transparent border border-white/30 rounded px-2 py-1 text-white text-xs cursor-pointer focus:outline-none focus:bg-navy-dark">
                        @foreach (App\Models\Language::all() as $lng)
                            <option value="{{ $lng->name }}" {{ strtolower($lng->name) == $activated_language ? 'selected' : '' }} class="text-black">
                                {{ get_phrase($lng->name) }}
                            </option>
                        @endforeach
                    </select>
                </form>
            </div>

            <!-- Right: Auth + Address + Phone -->
            <div class="flex items-center gap-4">
                @auth
                    <div class="relative flex items-center gap-2 group">
                        <button class="flex items-center gap-2 hover:text-orange-400 transition-colors focus:outline-none">
                            <img src="{{ get_image(Auth()->user()->photo) }}" alt="user"
                                class="w-6 h-6 rounded-full object-cover border border-white/40">
                            <span class="hidden sm:inline">{{ ucfirst(Auth()->user()->name) }}</span>
                            <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 24 24" fill="none"
                                stroke="currentColor" stroke-width="2">
                                <path d="M6 9l6 6 6-6" />
                            </svg>
                        </button>

                        <div
                            class="absolute top-full left-0 mt-2 w-48 bg-white text-gray-700 rounded shadow-lg z-50 hidden group-hover:block text-sm">
                            @if (in_array(auth()->user()->role, ['admin', 'instructor']))
                                <a href="{{ route(auth()->user()->role . '.dashboard') }}"
                                    class="flex items-center gap-2 px-4 py-2 hover:bg-gray-100 transition-colors">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24"
                                        fill="none" stroke="currentColor" stroke-width="2">
                                        <rect x="3" y="3" width="7" height="7" />
                                        <rect x="14" y="3" width="7" height="7" />
                                        <rect x="14" y="14" width="7" height="7" />
                                        <rect x="3" y="14" width="7" height="7" />
                                    </svg>
                                    {{ get_phrase('Dashboard') }}
                                </a>
                            @endif

                            @if (auth()->user()->role != 'admin')
                                <a href="{{ route('my.courses') }}"
                                    class="flex items-center gap-2 px-4 py-2 hover:bg-gray-100 transition-colors">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24"
                                        fill="none" stroke="currentColor" stroke-width="2">
                                        <path d="M4 19.5A2.5 2.5 0 0 1 6.5 17H20" />
                                        <path d="M6.5 2H20v20H6.5A2.5 2.5 0 0 1 4 19.5v-15A2.5 2.5 0 0 1 6.5 2z" />
                                    </svg>
                                    {{ get_phrase('My Courses') }}
                                </a>
                                <a href="{{ route('my.profile') }}"
                                    class="flex items-center gap-2 px-4 py-2 hover:bg-gray-100 transition-colors">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24"
                                        fill="none" stroke="currentColor" stroke-width="2">
                                        <path d="M19 21v-2a4 4 0 0 0-4-4H9a4 4 0 0 0-4 4v2" />
                                        <circle cx="12" cy="7" r="4" />
                                    </svg>
                                    {{ get_phrase('My Profile') }}
                                </a>
                            @endif

                            <div class="border-t border-gray-100 my-1"></div>

                            <a href="{{ route('logout') }}"
                                class="logout-link flex items-center gap-2 px-4 py-2 hover:bg-red-50 text-red-500 transition-colors">
                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24"
                                    fill="none" stroke="currentColor" stroke-width="2">
                                    <path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4" />
                                    <polyline points="16 17 21 12 16 7" />
                                    <line x1="21" y1="12" x2="9" y2="12" />
                                </svg>
                                {{ get_phrase('Log Out') }}
                            </a>
                        </div>
                    </div>
                @else
                    <a href="{{ route('login') }}" class="flex items-center gap-1 hover:text-orange-400 transition-colors">
                        <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none"
                            stroke="currentColor" stroke-width="2">
                            <path d="M19 21v-2a4 4 0 0 0-4-4H9a4 4 0 0 0-4 4v2" />
                            <circle cx="12" cy="7" r="4" />
                        </svg>
                        <span>{{ get_phrase('Login') }}</span>
                    </a>
                @endauth

                @if (get_settings('address') != '')
                    <span class="hidden md:flex items-center gap-1 hover:text-orange-400 transition-colors">
                        <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none"
                            stroke="currentColor" stroke-width="2">
                            <path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7z" />
                            <circle cx="12" cy="9" r="2.5" />
                        </svg>
                        <span>{{ get_settings('address') }}</span>
                    </span>
                @endif

                @if (get_settings('phone') != '')
                    <a href="tel:{{ get_settings('phone') }}"
                        class="flex items-center gap-1 hover:text-orange-400 transition-colors" dir="ltr">
                        <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none"
                            stroke="currentColor" stroke-width="2">
                            <path
                                d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72c.127.96.361 1.903.7 2.81a2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45c.907.339 1.85.573 2.81.7A2 2 0 0 1 22 16.92z" />
                        </svg>
                        <span>{{ get_settings('phone') }}</span>
                    </a>
                @endif
            </div>
        </div>
    </div>

    <!-- NAVIGATION -->
    <nav class="bg-white shadow-md sticky top-0 z-40">
        <div class="max-w-7xl mx-auto px-4 py-3">
            <div class="flex items-center justify-between">
                <a href="{{ route('home') }}" class="flex items-center gap-3">
                    <img src="https://prominence.academy/public/uploads/log-x.jpeg" alt="Logo"
                        class="w-12 h-12 object-contain rounded-lg" />
                    <!-- <div class="text-right">
                        <div class="font-bold text-[#004d80] text-lg leading-tight">
                            {{ $is_ar ? 'أكاديمية بروز' : 'Boroz Academy' }}</div>
                        <div class="text-xs text-gray-500">
                            {{ $is_ar ? 'منصة تدريب معتمدة' : 'Accredited Training Platform' }}</div>
                    </div> -->
                </a>

                <!-- Desktop Menu -->
                <div class="hidden lg:flex items-center gap-6 text-sm font-bold text-[#004d80]">
                    <a href="#home" class="hover:text-orange transition-colors">{{ $is_ar ? 'الرئيسية' : 'Home' }}</a>
                    <a href="#about"
                        class="hover:text-orange transition-colors">{{ $is_ar ? 'نبذة عنا' : 'About Us' }}</a>

                    <!-- قائمة الدورات -->
                    <div class="relative group">
                        <button class="hover:text-orange transition-colors flex items-center gap-1 py-2">
                            {{ $is_ar ? 'قائمة الدورات' : 'Courses Catalog' }}
                            <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M19 9l-7 7-7-7" />
                            </svg>
                        </button>
                        <div
                            class="absolute right-0 mt-1 w-64 bg-white rounded-xl shadow-2xl opacity-0 invisible group-hover:opacity-100 group-hover:visible transition-all duration-300 border-t-4 border-orange z-50">
                            @foreach ($parent_categories->take(20) as $parent_category)
                                <a href="{{ route('courses', $parent_category->slug) }}"
                                    class="block px-4 py-3 hover:bg-orange/10 hover:text-orange border-b border-gray-100 transition-all">{{ $parent_category->title }}</a>
                            @endforeach
                        </div>
                    </div>

                    <!-- قائمة الدبلومات -->
                    <div class="relative group">
                        <a href="{{ route('bootcamps') }}"
                            class="hover:text-orange transition-colors flex items-center gap-1 py-2">
                            {{ $is_ar ? 'دبلومات الماجستير المهني' : 'Master\'s Diplomas' }}
                            <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M19 9l-7 7-7-7" />
                            </svg>
                        </a>
                        <div
                            class="absolute right-0 mt-1 w-72 bg-white rounded-xl shadow-2xl opacity-0 invisible group-hover:opacity-100 group-hover:visible transition-all duration-300 border-t-4 border-orange z-50">
                            <a href="{{ route('bootcamps') }}"
                                class="block px-4 py-3 bg-orange/10 font-bold text-orange border-b border-orange/20 transition-all">{{ $is_ar ? 'جميع الدبلومات المهنية' : 'All Professional Diplomas' }}</a>
                            @foreach ($bootcamp_categories->take(20) as $boot_cat)
                                <a href="/bootcamp?category={{ $boot_cat->slug }}"
                                    class="block px-4 py-3 hover:bg-gray-50 border-b border-gray-100 transition-all">{{ $boot_cat->title }}</a>
                            @endforeach
                        </div>
                    </div>

                    <a href="{{ route('ebooks') }}"
                        class="hover:text-orange transition-colors">{{ $is_ar ? 'الكتب الإلكترونية' : 'Ebooks' }}</a>
                    <a href="{{ route('tutor_list') }}"
                        class="hover:text-orange transition-colors">{{ $is_ar ? 'ابحث عن معلم' : 'Find A Tutor' }}</a>
                    <a href="#doctorate"
                        class="hover:text-orange transition-colors">{{ $is_ar ? 'الدكتوراة المهنية' : 'Professional Doctorate' }}</a>
                    <a href="#graduates-club"
                        class="hover:text-orange transition-colors">{{ $is_ar ? 'نادي بروز للخريجين' : 'Alumni Club' }}</a>
                    <a href="#contact"
                        class="hover:text-orange transition-colors">{{ $is_ar ? 'اتصل بنا' : 'Contact Us' }}</a>
                </div>

                <button id="mobile-menu-btn" class="lg:hidden text-[#004d80] p-2">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                        stroke="currentColor" stroke-width="2">
                        <line x1="3" y1="12" x2="21" y2="12" />
                        <line x1="3" y1="6" x2="21" y2="6" />
                        <line x1="3" y1="18" x2="21" y2="18" />
                    </svg>
                </button>
            </div>

            <!-- Mobile Menu -->
            <div id="mobile-menu" class="mobile-menu lg:hidden">
                <div class="flex flex-col gap-2 pt-4 text-sm font-bold text-[#004d80]">
                    <a href="#home"
                        class="py-3 px-4 hover:bg-gray-50 rounded-lg transition-colors">{{ $is_ar ? 'الرئيسية' : 'Home' }}</a>
                    <a href="#about"
                        class="py-3 px-4 hover:bg-gray-50 rounded-lg transition-colors">{{ $is_ar ? 'نبذة عنا' : 'About Us' }}</a>
                    <a href="{{ route('courses') }}"
                        class="py-3 px-4 hover:bg-gray-50 rounded-lg transition-colors">{{ $is_ar ? 'الدورات التدريبية' : 'All Courses' }}</a>
                    <a href="{{ route('bootcamps') }}"
                        class="py-3 px-4 hover:bg-gray-50 rounded-lg transition-colors text-orange">{{ $is_ar ? 'دبلومات الماجستير المهني' : 'Master\'s Diplomas' }}</a>
                    <a href="{{ route('ebooks') }}"
                        class="py-3 px-4 hover:bg-gray-50 rounded-lg transition-colors">{{ $is_ar ? 'الكتب الإلكترونية' : 'Ebooks' }}</a>
                    <a href="{{ route('tutor_list') }}"
                        class="py-3 px-4 hover:bg-gray-50 rounded-lg transition-colors">{{ $is_ar ? 'ابحث عن معلم' : 'Find A Tutor' }}</a>
                    <a href="#doctorate"
                        class="py-3 px-4 hover:bg-gray-50 rounded-lg transition-colors">{{ $is_ar ? 'الدكتوراة المهنية' : 'Professional Doctorate' }}</a>
                    <a href="#graduates-club"
                        class="py-3 px-4 hover:bg-gray-50 rounded-lg transition-colors">{{ $is_ar ? 'نادي بروز للخريجين' : 'Alumni Club' }}</a>
                    <a href="#contact"
                        class="py-3 px-4 hover:bg-gray-50 rounded-lg transition-colors">{{ $is_ar ? 'اتصل بنا' : 'Contact Us' }}</a>
                </div>
            </div>
        </div>
    </nav>

    <!-- HERO SECTION -->
    <section id="home" class="relative min-h-[620px] flex items-center justify-center bg-cover bg-center"
        style="background-image: url('https://images.unsplash.com/photo-1427504494785-3a9ca7044f45?q=80&w=1920');">
        <div class="hero-overlay absolute inset-0"></div>
        <div class="relative z-10 text-center text-white px-4 py-16 max-w-4xl mx-auto">
            <img src="https://prominence.academy/public/uploads/log-x.jpeg" alt="Logo Central"
                class="w-28 h-28 mx-auto mb-6 drop-shadow-2xl rounded-full bg-white p-2 border-4 border-orange" />
            <p class="text-lg md:text-xl mb-2 text-orange font-bold animate-pulse">
                {{ $is_ar ? 'منصة تدريب وتأهيل معتمدة' : 'Accredited Training & Qualification Platform' }}</p>
            <h1 class="text-4xl md:text-6xl font-black mb-4 leading-tight">
                {{ $is_ar ? 'نصقل مهاراتك اليوم' : 'Honing Your Skills Today' }}</h1>
            <h2 class="text-3xl md:text-5xl font-black mb-8 border-b-4 border-orange inline-block pb-2">
                {{ $is_ar ? 'لتبرُز وتشرق غداً' : 'To Stand Out & Shine Tomorrow' }}</h2>
            <p class="text-lg mb-10 text-gray-100 max-w-2xl mx-auto leading-relaxed">
                {{ $is_ar ? 'أكاديمية بروز للتدريب الحديث - رحلتك نحو التميز والنجاح المهني والتميز الأكاديمي تبدأ هنا' : 'Boroz Academy for Modern Training - Your journey towards professional & academic excellence starts here' }}
            </p>
            <div class="flex flex-wrap justify-center gap-4">
                <a href="{{ route('bootcamps') }}"
                    class="bg-orange hover:bg-orange-dark text-white px-8 py-4 rounded-full font-bold text-lg shadow-xl transition-all transform hover:-translate-y-1">{{ $is_ar ? 'استكشف دبلومات الماجستير' : 'Explore Master\'s Diplomas' }}</a>
                <a href="#contact"
                    class="bg-white/15 border-2 border-white/30 text-white hover:bg-white hover:text-[#004d80] px-8 py-4 rounded-full font-bold text-lg backdrop-blur-md transition-all">{{ $is_ar ? 'تواصل معنا' : 'Contact Us' }}</a>
            </div>
        </div>
    </section>

    <!-- STATS SECTION -->
    <section class="py-14 bg-white shadow-inner border-b border-gray-100">
        <div class="max-w-7xl mx-auto px-4">
            <div class="grid grid-cols-2 md:grid-cols-4 gap-8">
                <div class="text-center">
                    <div class="text-4xl md:text-5xl font-black text-orange mb-2">+500</div>
                    <div class="text-gray-600 font-bold">{{ $is_ar ? 'متدرب وخريج' : 'Trainees & Graduates' }}</div>
                </div>
                <div class="text-center">
                    <div class="text-4xl md:text-5xl font-black text-[#004d80] mb-2">+50</div>
                    <div class="text-gray-600 font-bold">{{ $is_ar ? 'دورة وتخصص' : 'Courses & Specialties' }}</div>
                </div>
                <div class="text-center">
                    <div class="text-4xl md:text-5xl font-black text-orange mb-2">+30</div>
                    <div class="text-gray-600 font-bold">{{ $is_ar ? 'مدرب ومحاضر محترف' : 'Expert Instructors' }}</div>
                </div>
                <div class="text-center">
                    <div class="text-4xl md:text-5xl font-black text-[#004d80] mb-2">95%</div>
                    <div class="text-gray-600 font-bold">{{ $is_ar ? 'معدل رضا المتدربين' : 'Satisfaction Rate' }}</div>
                </div>
            </div>
        </div>
    </section>

    <!-- ABOUT SECTION -->
    <section id="about" class="py-20 bg-slate-50 px-4">
        <div class="max-w-6xl mx-auto grid md:grid-cols-2 gap-12 items-center">
            <div>
                <div class="inline-block bg-orange/10 text-orange font-bold px-4 py-1.5 rounded-full text-sm mb-4">
                    {{ $is_ar ? 'عن الأكاديمية' : 'About Us' }}</div>
                <h2 class="text-3xl md:text-4xl font-bold mb-6 text-[#004d80]">
                    {{ $is_ar ? 'نبذة عن أكاديمية بروز للتدريب الحديث' : 'About Boroz Academy for Modern Training' }}
                </h2>
                <p class="text-gray-600 leading-relaxed mb-6 text-lg">
                    {{ $is_ar ? 'أكاديمية بروز للتدريب الحديث هي منصة تعليمية وتدريبية معتمدة، تهدف إلى إعداد وتأهيل الكوادر البشرية وفق أعلى معايير الجودة العالمية، عبر تقديم دورات برمجية، إدارية، طاقية، وطبية متقدمة.' : 'Boroz Academy is an accredited education platform committed to qualifying professionals according to international standards.' }}
                </p>
                <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                    <div
                        class="bg-white p-4 rounded-xl shadow-sm border-r-4 border-orange flex items-center gap-3 card-hover">
                        <svg class="text-orange w-7 h-7 flex-shrink-0" xmlns="http://www.w3.org/2000/svg" fill="none"
                            viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                            <path d="M22 11.08V12a10 10 0 1 1-5.93-9.14" />
                            <polyline points="22 4 12 14.01 9 11.01" />
                        </svg>
                        <span
                            class="font-bold text-sm text-[#004d80]">{{ $is_ar ? 'برامج معتمدة دولياً' : 'Internationally Accredited' }}</span>
                    </div>
                    <div
                        class="bg-white p-4 rounded-xl shadow-sm border-r-4 border-orange flex items-center gap-3 card-hover">
                        <svg class="text-orange w-7 h-7 flex-shrink-0" xmlns="http://www.w3.org/2000/svg" fill="none"
                            viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                            <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2" />
                            <circle cx="9" cy="7" r="4" />
                            <path d="M23 21v-2a4 4 0 0 0-3-3.87" />
                            <path d="M16 3.13a4 4 0 0 1 0 7.75" />
                        </svg>
                        <span
                            class="font-bold text-sm text-[#004d80]">{{ $is_ar ? 'مدربونخبراء ومتخصصون' : 'Expert Instructors' }}</span>
                    </div>
                    <div
                        class="bg-white p-4 rounded-xl shadow-sm border-r-4 border-orange flex items-center gap-3 card-hover">
                        <svg class="text-orange w-7 h-7 flex-shrink-0" xmlns="http://www.w3.org/2000/svg" fill="none"
                            viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                            <rect x="2" y="7" width="20" height="14" rx="2" ry="2" />
                            <path d="M16 21V5a2 2 0 0 0-2-2h-4a2 2 0 0 0-2 2v16" />
                        </svg>
                        <span
                            class="font-bold text-sm text-[#004d80]">{{ $is_ar ? 'شهادات وثيقة قابلة للتحقق' : 'Verifiable Certificates' }}</span>
                    </div>
                    <div
                        class="bg-white p-4 rounded-xl shadow-sm border-r-4 border-orange flex items-center gap-3 card-hover">
                        <svg class="text-orange w-7 h-7 flex-shrink-0" xmlns="http://www.w3.org/2000/svg" fill="none"
                            viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                            <circle cx="12" cy="12" r="10" />
                            <polyline points="12 6 12 12 16 14" />
                        </svg>
                        <span
                            class="font-bold text-sm text-[#004d80]">{{ $is_ar ? 'مرونة عالية في المواعيد' : 'Flexible Schedules' }}</span>
                    </div>
                </div>
            </div>
            <div class="rounded-3xl overflow-hidden shadow-2xl border-4 border-white">
                <img src="https://images.unsplash.com/photo-1522202176988-66273c2fd55f?q=80&w=800" alt="Education"
                    class="w-full h-full object-cover" />
            </div>
        </div>
    </section>

    <!-- DYNAMIC COURSES SECTION -->
    <section id="courses" class="py-20 bg-white px-4">
        <div class="max-w-7xl mx-auto">
            <div class="flex flex-col md:flex-row md:items-end justify-between mb-12 gap-4">
                <div>
                    <span
                        class="text-orange font-bold text-sm uppercase tracking-wider">{{ $is_ar ? 'برامجنا التدريبية' : 'Our Courses' }}</span>
                    <h2 class="text-3xl md:text-4xl font-bold text-[#004d80] mt-1">
                        {{ $is_ar ? 'الدورات التدريبية المتاحة' : 'Available Training Courses' }}</h2>
                </div>
                <a href="{{ route('courses') }}"
                    class="bg-[#004d80] hover:bg-navy-light text-white px-6 py-3 rounded-full font-bold text-sm transition-all inline-flex items-center gap-2 self-start md:self-auto">
                    <span>{{ $is_ar ? 'عرض جميع الدورات' : 'View All Courses' }}</span>
                    <i class="fa-solid fa-arrow-left"></i>
                </a>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                @forelse($featured_courses as $course)
                    <div
                        class="bg-white rounded-2xl overflow-hidden shadow-md border border-gray-100 card-hover flex flex-col">
                        <div class="relative h-48 overflow-hidden bg-gray-100">
                            <img src="{{ get_image($course->thumbnail) }}" alt="{{ $course->title }}"
                                class="w-full h-full object-cover" />
                            <div
                                class="absolute top-3 right-3 bg-[#004d80] text-white text-xs font-bold px-3 py-1 rounded-full shadow">
                                @if(isset($course->is_paid) && $course->is_paid == 0)
                                    {{ $is_ar ? 'مجاني' : 'Free' }}
                                @elseif(isset($course->discount_flag) && $course->discount_flag == 1)
                                    {{ currency($course->discounted_price, 2) }}
                                @else
                                    {{ currency($course->price, 2) }}
                                @endif
                            </div>
                        </div>
                        <div class="p-6 flex-1 flex flex-col justify-between">
                            <div>
                                <h3 class="font-bold text-lg text-[#004d80] mb-2 line-clamp-2">{{ $course->title }}</h3>
                                <p class="text-sm text-gray-500 line-clamp-2 mb-4">
                                    {{ ellipsis(strip_tags($course->short_description ?? ''), 120) }}</p>
                            </div>
                            <div class="pt-4 border-t border-gray-100 flex items-center justify-between">
                                <span class="text-xs text-gray-500 flex items-center gap-1">
                                    <i class="fa-regular fa-clock text-orange"></i>
                                    <span>{{ lesson_count($course->id) }} {{ $is_ar ? 'درس' : 'Lessons' }}</span>
                                </span>
                                <a href="{{ route('course.details', $course->slug) }}"
                                    class="text-orange font-bold text-sm hover:underline flex items-center gap-1">
                                    <span>{{ $is_ar ? 'تفاصيل الدورة' : 'Details' }}</span>
                                    <i class="fa-solid fa-angle-left text-xs"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                @empty
                    <!-- Fallback Course Item 1 -->
                    <div class="bg-white rounded-2xl overflow-hidden shadow-md border border-gray-100 card-hover">
                        <img src="https://images.unsplash.com/photo-1517245386807-bb43f82c33c4?q=80&w=400"
                            class="w-full h-48 object-cover" alt="Course" />
                        <div class="p-6">
                            <div class="text-xs text-orange font-bold mb-2">
                                {{ $is_ar ? 'تطوير الويب والبرمجة' : 'Web Development' }}</div>
                            <h3 class="font-bold text-lg text-[#004d80] mb-2">
                                {{ $is_ar ? 'دورة تطوير الويب الشاملة Full Stack' : 'Full Stack Web Development' }}</h3>
                            <p class="text-sm text-gray-500 mb-4">
                                {{ $is_ar ? 'تعلم بناء المواقع والتطبيقات المتكاملة باستخدام أحدث التقنيات.' : 'Build modern websites and web applications with full stack tools.' }}
                            </p>
                            <a href="{{ route('courses') }}"
                                class="bg-orange text-white px-5 py-2.5 rounded-xl font-bold text-sm inline-block hover:bg-orange-dark transition-colors">{{ $is_ar ? 'سجل الآن' : 'Enroll Now' }}</a>
                        </div>
                    </div>
                    <!-- Fallback Course Item 2 -->
                    <div class="bg-white rounded-2xl overflow-hidden shadow-md border border-gray-100 card-hover">
                        <img src="https://images.unsplash.com/photo-1551836022-d5d88e9218df?q=80&w=400"
                            class="w-full h-48 object-cover" alt="Course" />
                        <div class="p-6">
                            <div class="text-xs text-orange font-bold mb-2">{{ $is_ar ? 'الإدارة والقيادة' : 'Management' }}
                            </div>
                            <h3 class="font-bold text-lg text-[#004d80] mb-2">
                                {{ $is_ar ? 'دورة إدارة الأعمال والقيادة الاستراتيجية' : 'Business & Strategic Leadership' }}
                            </h3>
                            <p class="text-sm text-gray-600 mb-4">
                                {{ $is_ar ? 'تطوير المهارات القيادية والإدارية لإدارة المؤسسات بنجاح.' : 'Develop executive leadership and organizational skills.' }}
                            </p>
                            <a href="{{ route('courses') }}"
                                class="bg-orange text-white px-5 py-2.5 rounded-xl font-bold text-sm inline-block hover:bg-orange-dark transition-colors">{{ $is_ar ? 'سجل الآن' : 'Enroll Now' }}</a>
                        </div>
                    </div>
                    <!-- Fallback Course Item 3 -->
                    <div class="bg-white rounded-2xl overflow-hidden shadow-md border border-gray-100 card-hover">
                        <img src="https://images.unsplash.com/photo-1576091160399-112ba8d25d1d?q=80&w=400"
                            class="w-full h-48 object-cover" alt="Course" />
                        <div class="p-6">
                            <div class="text-xs text-orange font-bold mb-2">
                                {{ $is_ar ? 'الإدارة الطبية' : 'Healthcare Management' }}</div>
                            <h3 class="font-bold text-lg text-[#004d80] mb-2">
                                {{ $is_ar ? 'دبلوم معايير جودة الرعاية الصحية' : 'Healthcare Quality Standards Diploma' }}
                            </h3>
                            <p class="text-sm text-gray-600 mb-4">
                                {{ $is_ar ? 'تأهيل الكوادر الطبية والإدارية لتطبيق معايير الجودة في المستشفيات.' : 'Qualifying medical administrators to implement hospital quality.' }}
                            </p>
                            <a href="{{ route('courses') }}"
                                class="bg-orange text-white px-5 py-2.5 rounded-xl font-bold text-sm inline-block hover:bg-orange-dark transition-colors">{{ $is_ar ? 'سجل الآن' : 'Enroll Now' }}</a>
                        </div>
                    </div>
                @endforelse
            </div>
        </div>
    </section>

    <!-- DYNAMIC BOOTCAMPS & DIPLOMAS SECTION -->
    <section id="bootcamps" class="py-20 bg-slate-50 px-4">
        <div class="max-w-7xl mx-auto">
            <div class="text-center mb-16">
                <span
                    class="text-orange font-bold text-sm uppercase tracking-wider">{{ $is_ar ? 'الدبلومات المهنية' : 'Professional Diplomas' }}</span>
                <h2 class="text-3xl md:text-4xl font-bold text-[#004d80] mt-1">
                    {{ $is_ar ? 'دبلومات الماجستير المهني والمعسكرات' : 'Master\'s Diplomas & Training Bootcamps' }}
                </h2>
                <p class="text-gray-600 text-lg max-w-2xl mx-auto mt-2">
                    {{ $is_ar ? 'برامج مكثفة وشاملة مصممة لنقلك إلى مستوى احترافي جديد' : 'Intensive comprehensive diploma programs engineered for elite career growth' }}
                </p>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                @forelse($featured_bootcamps as $bootcamp)
                    <div
                        class="bg-white rounded-3xl overflow-hidden shadow-xl border-2 border-gray-100 card-hover flex flex-col">
                        <div class="relative h-52 bg-navy">
                            <img src="{{ get_image($bootcamp->thumbnail) }}" alt="{{ $bootcamp->title }}"
                                class="w-full h-full object-cover" />
                            <div
                                class="absolute top-4 right-4 bg-orange text-white text-xs font-bold px-3 py-1.5 rounded-full shadow">
                                {{ currency($bootcamp->price, 2) }}
                            </div>
                        </div>
                        <div class="p-6 flex-1 flex flex-col justify-between">
                            <div>
                                <h3 class="font-bold text-xl text-[#004d80] mb-3 line-clamp-2">{{ $bootcamp->title }}</h3>
                                <p class="text-sm text-gray-600 line-clamp-3 mb-6">
                                    {{ ellipsis(strip_tags($bootcamp->short_description ?? ''), 140) }}</p>
                            </div>
                            <div class="pt-4 border-t border-gray-100 flex items-center justify-between">
                                <span class="text-xs font-bold text-gray-500">
                                    <i class="fa-solid fa-certificate text-orange me-1"></i>
                                    {{ $is_ar ? 'شهادة معتمدة' : 'Accredited Degree' }}
                                </span>
                                <a href="{{ route('bootcamps') }}"
                                    class="bg-[#004d80] hover:bg-orange text-white px-5 py-2 rounded-xl font-bold text-sm transition-colors">
                                    {{ $is_ar ? 'التفاصيل والتسجيل' : 'Details' }}
                                </a>
                            </div>
                        </div>
                    </div>
                @empty
                    <div
                        class="bg-white rounded-3xl overflow-hidden shadow-xl border-2 border-gray-100 card-hover p-8 text-center col-span-3">
                        <h3 class="text-2xl font-bold text-[#004d80] mb-4">
                            {{ $is_ar ? 'دبلومات الماجستير المهني المعترف بها' : 'Recognized Professional Diplomas' }}</h3>
                        <p class="text-gray-600 mb-6 max-w-xl mx-auto">
                            {{ $is_ar ? 'تواصل معنا للاطلاع على جدول الدفعات القادمة في دبلومات الماجستير المهني والدكتوراة.' : 'Contact us to view the upcoming cohort schedule for professional master diplomas.' }}
                        </p>
                        <a href="{{ route('bootcamps') }}"
                            class="bg-orange text-white px-8 py-3 rounded-full font-bold inline-block hover:bg-orange-dark transition-colors">{{ $is_ar ? 'استعرض الدبلومات المتاحة' : 'Browse Diplomas' }}</a>
                    </div>
                @endforelse
            </div>
        </div>
    </section>

    <!-- MASTERS SECTION -->
    <section id="masters" class="py-20 bg-gradient-to-br from-orange to-orange-dark text-white px-4">
        <div class="max-w-6xl mx-auto">
            <div class="grid md:grid-cols-2 gap-12 items-center">
                <div>
                    <h2 class="text-3xl md:text-4xl font-bold mb-6">
                        {{ $is_ar ? 'التسجيل في الماجستير المهني' : 'Enroll in Professional Master\'s' }}</h2>
                    <p class="text-lg mb-6 text-orange-100 leading-relaxed">
                        {{ $is_ar ? 'برنامج الماجستير المهني المعتمد دولياً، مصمم للمحترفين الراغبين في تطوير مسيرتهم الأكاديمية والمهنية وتحقيق قفزة نوعية في مجالاتهم.' : 'Internationally accredited Professional Master\'s program designed for career leaders seeking significant advancement.' }}
                    </p>
                    <div class="space-y-4 mb-8">
                        <div class="flex items-start gap-3 bg-white/10 p-4 rounded-xl backdrop-blur-sm">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                fill="none" stroke="currentColor" stroke-width="2" class="flex-shrink-0 mt-1">
                                <path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path>
                                <polyline points="22 4 12 14.01 9 11.01"></polyline>
                            </svg>
                            <div>
                                <h4 class="font-bold mb-1">
                                    {{ $is_ar ? 'برنامج أكاديمي متميز' : 'Distinguished Academic Program' }}</h4>
                                <p class="text-sm text-orange-100">
                                    {{ $is_ar ? 'منهج دراسي شامل يجمع بين الجانب الأكاديمي والتطبيق العملي' : 'Comprehensive curriculum combining academic theory with real-world practice' }}
                                </p>
                            </div>
                        </div>
                        <div class="flex items-start gap-3 bg-white/10 p-4 rounded-xl backdrop-blur-sm">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                fill="none" stroke="currentColor" stroke-width="2" class="flex-shrink-0 mt-1">
                                <path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path>
                                <polyline points="22 4 12 14.01 9 11.01"></polyline>
                            </svg>
                            <div>
                                <h4 class="font-bold mb-1">
                                    {{ $is_ar ? 'إشراف أكاديمي متخصص' : 'Expert Academic Supervision' }}</h4>
                                <p class="text-sm text-orange-100">
                                    {{ $is_ar ? 'مشرفون أكاديميون ذوو خبرة وكفاءة عالية' : 'Experienced supervisors with proven academic excellence' }}
                                </p>
                            </div>
                        </div>
                    </div>
                    <a href="{{ route('login') }}"
                        class="inline-block bg-white text-orange hover:bg-gray-100 px-8 py-4 rounded-full font-bold text-lg shadow-xl transition-all transform hover:-translate-y-1">{{ $is_ar ? 'سجل في الماجستير' : 'Enroll in Master\'s' }}</a>
                </div>
                <div class="rounded-3xl overflow-hidden shadow-2xl border-4 border-white/20">
                    <img src="{{ asset('assets/frontend/default/image/test-image.png') }}" alt="Masters"
                        class="w-full h-full object-cover">
                </div>
            </div>
        </div>
    </section>

    <!-- DOCTORATE SECTION -->
    <section id="doctorate" class="py-20 bg-gray-50 px-4">
        <div class="max-w-6xl mx-auto">
            <div class="grid md:grid-cols-2 gap-12 items-center">
                <div class="rounded-3xl overflow-hidden shadow-2xl order-2 md:order-1 border-4 border-white">
                    <img src="https://images.unsplash.com/photo-1523240795612-9a054b0db644?q=80&w=800" alt="Doctorate"
                        class="w-full h-full object-cover">
                </div>
                <div class="order-1 md:order-2">
                    <h2 class="text-3xl md:text-4xl font-bold mb-6 text-[#004d80]">
                        {{ $is_ar ? 'التسجيل في الدكتوراة المهنية' : 'Enroll in Professional Doctorate' }}</h2>
                    <p class="text-gray-600 leading-relaxed mb-6 text-lg">
                        {{ $is_ar ? 'برنامج متقدم للحصول على الدكتوراة المهنية المعتمدة دولياً، مصمم خصيصاً للمحترفين الراغبين في تطوير مسيرتهم الأكاديمية والعملية والوصول إلى أعلى المراتب العلمية.' : 'An advanced program for acquiring an internationally accredited Professional Doctorate.' }}
                    </p>
                    <div class="space-y-4 mb-8">
                        <div
                            class="flex items-start gap-3 p-4 bg-white rounded-xl shadow-sm border-r-4 border-[#004d80]">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                fill="none" stroke="currentColor" stroke-width="2"
                                class="text-orange flex-shrink-0 mt-1">
                                <path d="M2 3h6a4 4 0 0 1 4 4v14a3 3 0 0 0-3-3H2z"></path>
                                <path d="M22 3h-6a4 4 0 0 0-4 4v14a3 3 0 0 1 3-3h7z"></path>
                            </svg>
                            <div>
                                <h4 class="font-bold text-[#004d80] mb-1">
                                    {{ $is_ar ? 'منهج أكاديمي شامل' : 'Comprehensive Curriculum' }}</h4>
                                <p class="text-sm text-gray-600">
                                    {{ $is_ar ? 'برنامج دراسي متكامل يجمع بين النظرية والتطبيق العملي' : 'Integrated academic program combining theory and application' }}
                                </p>
                            </div>
                        </div>
                    </div>
                    <a href="{{ route('login') }}"
                        class="inline-block bg-[#004d80] hover:bg-navy-light text-white px-8 py-4 rounded-full font-bold text-lg shadow-xl transition-all transform hover:-translate-y-1">{{ $is_ar ? 'سجل الآن في الدكتوراة' : 'Enroll in Doctorate' }}</a>
                </div>
            </div>
        </div>
    </section>

    <!-- GRADUATES CLUB SECTION -->
    <section id="graduates-club" class="py-20 bg-gradient-to-br from-[#004d80] to-navy-dark text-white px-4">
        <div class="max-w-6xl mx-auto">
            <div class="grid md:grid-cols-2 gap-12 items-center">
                <div>
                    <h2 class="text-3xl md:text-4xl font-bold mb-6">
                        {{ $is_ar ? 'نادي بروز للخريجين' : 'Boroz Alumni Club' }}</h2>
                    <p class="text-lg mb-6 text-gray-200 leading-relaxed">
                        {{ $is_ar ? 'انضم إلى مجتمع خريجي أكاديمية بروز واستفد من شبكة علاقات مهنية واسعة وفرص التطوير المستمر والدعم الدائم.' : 'Join the Boroz Alumni Community and unlock professional networking and career development.' }}
                    </p>
                    <a href="{{ route('login') }}"
                        class="inline-block bg-orange text-white hover:bg-orange-dark px-8 py-4 rounded-full font-bold text-lg shadow-xl transition-all transform hover:-translate-y-1">{{ $is_ar ? 'انضم للنادي الآن' : 'Join Alumni Club Now' }}</a>
                </div>
                <div class="rounded-3xl overflow-hidden shadow-2xl border-4 border-white/10">
                    <img src="https://images.unsplash.com/photo-1511632765486-a01980e01a18?q=80&w=800" alt="Graduates"
                        class="w-full h-full object-cover">
                </div>
            </div>
        </div>
    </section>

    <!-- NEWS & ARTICLES SECTION -->
    <section id="news" class="py-20 bg-white px-4">
        <div class="max-w-7xl mx-auto">
            <div class="text-center mb-16">
                <h2 class="text-3xl md:text-4xl font-bold mb-4 text-[#004d80]">
                    {{ $is_ar ? 'أحدث الأخبار والفعاليات' : 'Latest News & Events' }}</h2>
                <p class="text-gray-600 text-lg">
                    {{ $is_ar ? 'تابع آخر أخبارنا وفعالياتنا التدريبية والمقالات التعليمية' : 'Follow our latest news, training events and blog posts' }}
                </p>
            </div>
            <div class="grid md:grid-cols-3 gap-8">
                @forelse($latest_blogs as $blog)
                    <div class="bg-white rounded-3xl overflow-hidden shadow-lg card-hover border-b-4 border-orange">
                        <img src="{{ get_image($blog->thumbnail) }}" alt="{{ $blog->title }}"
                            class="w-full h-52 object-cover" />
                        <div class="p-6">
                            <div class="flex items-center gap-2 mb-3 text-xs text-gray-500">
                                <i class="fa-regular fa-calendar text-orange"></i>
                                <span>{{ date('d M, Y', strtotime($blog->created_at)) }}</span>
                            </div>
                            <h3 class="text-lg font-bold text-[#004d80] mb-3 line-clamp-2">{{ ucfirst($blog->title) }}</h3>
                            <p class="text-gray-600 mb-4 text-sm leading-relaxed line-clamp-3">
                                {{ ellipsis(strip_tags($blog->description), 140) }}</p>
                            <a href="{{ route('blog.details', $blog->slug) }}"
                                class="text-orange font-bold text-sm flex items-center gap-2 hover:gap-3 transition-all">
                                <span>{{ $is_ar ? 'اقرأ المزيد' : 'Read More' }}</span>
                                <i class="fa-solid fa-arrow-left text-xs"></i>
                            </a>
                        </div>
                    </div>
                @empty
                    <div class="bg-white rounded-3xl overflow-hidden shadow-lg card-hover border-b-4 border-orange">
                        <img src="https://images.unsplash.com/photo-1540317580384-e5d43616b9aa?q=80&w=800" alt="News 1"
                            class="w-full h-52 object-cover" />
                        <div class="p-6">
                            <h3 class="text-lg font-bold text-[#004d80] mb-3">
                                {{ $is_ar ? 'إطلاق برنامج القيادة الاستراتيجية' : 'Launch of Strategic Leadership Program' }}
                            </h3>
                            <p class="text-gray-600 mb-4 text-sm leading-relaxed">
                                {{ $is_ar ? 'نعلن عن إطلاق برنامج تدريبي جديد في القيادة الاستراتيجية بالتعاون مع خبراء دوليين.' : 'Announcing our new strategic leadership training program.' }}
                            </p>
                        </div>
                    </div>
                @endforelse
            </div>
        </div>
    </section>

    <!-- TESTIMONIALS SECTION -->
    <section class="py-20 bg-gray-50 px-4">
        <div class="max-w-6xl mx-auto">
            <div class="text-center mb-16">
                <h2 class="text-3xl md:text-4xl font-bold mb-4 text-[#004d80]">
                    {{ $is_ar ? 'آراء وتجارب المتدربين' : 'Trainee Testimonials' }}</h2>
                <p class="text-gray-600 text-lg">
                    {{ $is_ar ? 'ماذا يقول خريجونا ومتدربونا عن تجربتهم في بروز' : 'What our graduates and trainees say about their journey' }}
                </p>
            </div>
            <div class="grid md:grid-cols-3 gap-8">
                <div class="bg-white p-8 rounded-3xl shadow-lg card-hover border-t-4 border-orange">
                    <div class="flex items-center gap-4 mb-4">
                        <div
                            class="w-14 h-14 bg-gradient-to-br from-[#004d80] to-orange rounded-full flex items-center justify-center text-white font-bold text-lg">
                            M.A</div>
                        <div>
                            <h4 class="font-bold text-[#004d80]">{{ $is_ar ? 'محمد أحمد' : 'Mohamed Ahmed' }}</h4>
                            <p class="text-xs text-gray-500">
                                {{ $is_ar ? 'دبلوم القيادة والإدارة' : 'Leadership Diploma' }}</p>
                        </div>
                    </div>
                    <div class="flex text-amber-400 mb-3 text-sm">
                        <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
                            class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
                            class="fa-solid fa-star"></i>
                    </div>
                    <p class="text-gray-600 text-sm leading-relaxed">
                        {{ $is_ar ? 'تجربة رائعة! المحتوى غني والمدربون محترفون جداً. استفدت كثيراً وحصلت على شهادة معتمدة ساعدتني في تطوير مسيرتي المهنية.' : 'Fantastic experience! High quality content and expert instructors. Helped me boost my career significantly.' }}
                    </p>
                </div>

                <div class="bg-white p-8 rounded-3xl shadow-lg card-hover border-t-4 border-[#004d80]">
                    <div class="flex items-center gap-4 mb-4">
                        <div
                            class="w-14 h-14 bg-gradient-to-br from-orange to-[#004d80] rounded-full flex items-center justify-center text-white font-bold text-lg">
                            S.A</div>
                        <div>
                            <h4 class="font-bold text-[#004d80]">{{ $is_ar ? 'سارة عبدالله' : 'Sarah Abdullah' }}</h4>
                            <p class="text-xs text-gray-500">
                                {{ $is_ar ? 'دورة التسويق الرقمي' : 'Digital Marketing Course' }}</p>
                        </div>
                    </div>
                    <div class="flex text-amber-400 mb-3 text-sm">
                        <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
                            class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
                            class="fa-solid fa-star"></i>
                    </div>
                    <p class="text-gray-600 text-sm leading-relaxed">
                        {{ $is_ar ? 'المنصة سهلة الاستخدام والدعم ممتاز. أحببت المرونة في التعلم وإمكانية العودة للمحتوى في أي وقت.' : 'Very easy to use platform with great support. I love the flexible schedule. Highly recommended!' }}
                    </p>
                </div>

                <div class="bg-white p-8 rounded-3xl shadow-lg card-hover border-t-4 border-orange">
                    <div class="flex items-center gap-4 mb-4">
                        <div
                            class="w-14 h-14 bg-gradient-to-br from-[#004d80] to-orange rounded-full flex items-center justify-center text-white font-bold text-lg">
                            K.M</div>
                        <div>
                            <h4 class="font-bold text-[#004d80]">{{ $is_ar ? 'خالد محمود' : 'Khaled Mahmoud' }}</h4>
                            <p class="text-xs text-gray-500">{{ $is_ar ? 'الماجستير المهني' : 'Professional Master' }}
                            </p>
                        </div>
                    </div>
                    <div class="flex text-amber-400 mb-3 text-sm">
                        <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
                            class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
                            class="fa-solid fa-star"></i>
                    </div>
                    <p class="text-gray-600 text-sm leading-relaxed">
                        {{ $is_ar ? 'برنامج الماجستير المهني متميز جداً. المنهج شامل والمشرفون أكاديميون من الطراز الأول.' : 'Extremely distinguished doctorate program with top-tier academic supervisors.' }}
                    </p>
                </div>
            </div>
        </div>
    </section>

    <!-- CONTACT US SECTION -->
    <section id="contact" class="py-20 bg-gradient-to-br from-[#004d80] to-navy-dark text-white px-4">
        <div class="max-w-5xl mx-auto">
            <div class="text-center mb-12">
                <span
                    class="text-orange font-bold text-sm uppercase tracking-wider">{{ $is_ar ? 'تواصل معنا' : 'Get In Touch' }}</span>
                <h2 class="text-3xl md:text-4xl font-bold mt-1 mb-4">
                    {{ $is_ar ? 'سعداء بتواصلك واستفساراتك' : 'We are here to answer all your questions' }}</h2>
                <p class="text-gray-200 text-lg max-w-2xl mx-auto">
                    {{ $is_ar ? 'ارسل لنا استفسارك أو طلب التسجيل وسيقوم فريق القبول بالرد عليك فوراً' : 'Fill out the form below and our admissions team will get back to you shortly' }}
                </p>
            </div>

            <div class="bg-white/10 backdrop-blur-md rounded-3xl p-8 md:p-12 border border-white/15 shadow-2xl">
                <form action="{{ route('contact.us') }}" method="post" class="space-y-6">
                    @csrf
                    <div class="grid md:grid-cols-2 gap-6">
                        <div>
                            <label class="block text-sm font-bold mb-2">{{ $is_ar ? 'الاسم الكامل' : 'Full Name' }}
                                *</label>
                            <input type="text" name="name" required
                                class="w-full px-4 py-3 rounded-xl bg-white/10 border border-white/20 text-white placeholder-gray-300 focus:outline-none focus:border-orange transition-colors"
                                placeholder="{{ $is_ar ? 'أدخل اسمك الكامل' : 'Enter your name' }}" />
                        </div>
                        <div>
                            <label
                                class="block text-sm font-bold mb-2">{{ $is_ar ? 'البريد الإلكتروني' : 'Email Address' }}
                                *</label>
                            <input type="email" name="email" required
                                class="w-full px-4 py-3 rounded-xl bg-white/10 border border-white/20 text-white placeholder-gray-300 focus:outline-none focus:border-orange transition-colors"
                                placeholder="name@example.com" />
                        </div>
                    </div>
                    <div class="grid md:grid-cols-2 gap-6">
                        <div>
                            <label
                                class="block text-sm font-bold mb-2">{{ $is_ar ? 'رقم الهاتف / الواتساب' : 'Phone / WhatsApp' }}
                                *</label>
                            <input type="tel" name="phone" required
                                class="w-full px-4 py-3 rounded-xl bg-white/10 border border-white/20 text-white placeholder-gray-300 focus:outline-none focus:border-orange transition-colors"
                                placeholder="+143-52-9933631" dir="ltr" />
                        </div>
                        <div>
                            <label
                                class="block text-sm font-bold mb-2">{{ $is_ar ? 'البرنامج أو التخصص المهتم به' : 'Program of Interest' }}</label>
                            <select name="subject"
                                class="w-full px-4 py-3 rounded-xl bg-navy-dark border border-white/20 text-white focus:outline-none focus:border-orange transition-colors">
                                <option value="courses">{{ $is_ar ? 'الدورات التدريبية المتاحة' : 'Available Courses' }}
                                </option>
                                <option value="bootcamps">
                                    {{ $is_ar ? 'دبلومات الماجستير المهني' : 'Master\'s Diplomas' }}</option>
                                <option value="masters">{{ $is_ar ? 'الماجستير المهني' : 'Professional Master\'s' }}
                                </option>
                                <option value="doctorate">{{ $is_ar ? 'الدكتوراة المهنية' : 'Professional Doctorate' }}
                                </option>
                                <option value="alumni">{{ $is_ar ? 'نادي بروز للخريجين' : 'Alumni Club' }}</option>
                            </select>
                        </div>
                    </div>
                    <div>
                        <label class="block text-sm font-bold mb-2">{{ $is_ar ? 'رسالتك أو استفسارك' : 'Your Message' }}
                            *</label>
                        <textarea name="message" rows="4" required
                            class="w-full px-4 py-3 rounded-xl bg-white/10 border border-white/20 text-white placeholder-gray-300 focus:outline-none focus:border-orange transition-colors resize-none"
                            placeholder="{{ $is_ar ? 'اكتب تفاصيل استفسارك هنا...' : 'Type your message details...' }}"></textarea>
                    </div>
                    <button type="submit"
                        class="w-full bg-orange hover:bg-orange-dark text-white px-8 py-4 rounded-full font-bold text-lg shadow-xl transition-all transform hover:-translate-y-1">
                        {{ $is_ar ? 'إرسال الطلب' : 'Send Application' }}
                    </button>
                </form>
            </div>

            <div class="grid md:grid-cols-3 gap-6 mt-12">
                <div class="text-center p-6 bg-white/10 backdrop-blur-sm rounded-2xl border border-white/10">
                    <i class="fa-solid fa-phone text-2xl text-orange mb-3"></i>
                    <h4 class="font-bold mb-1">{{ $is_ar ? 'الهاتف المباشر' : 'Phone' }}</h4>
                    <p class="text-sm text-gray-200" dir="ltr">{{ get_settings('phone') }}</p>
                </div>
                <div class="text-center p-6 bg-white/10 backdrop-blur-sm rounded-2xl border border-white/10">
                    <i class="fa-solid fa-envelope text-2xl text-orange mb-3"></i>
                    <h4 class="font-bold mb-1">{{ $is_ar ? 'البريد الإلكتروني' : 'Email' }}</h4>
                    <p class="text-sm text-gray-200">{{ get_settings('system_email') }}</p>
                </div>
                <div class="text-center p-6 bg-white/10 backdrop-blur-sm rounded-2xl border border-white/10">
                    <i class="fa-solid fa-clock text-2xl text-orange mb-3"></i>
                    <h4 class="font-bold mb-1">{{ $is_ar ? 'ساعات العمل' : 'Working Hours' }}</h4>
                    <p class="text-sm text-gray-200">
                        {{ $is_ar ? 'الأحد - الخميس (9 AM - 5 PM)' : 'Sun - Thu (9 AM - 5 PM)' }}</p>
                </div>
            </div>
        </div>
    </section>

    <!-- FOOTER -->
    <footer class="bg-[#002b48] text-white py-12 border-t-4 border-orange">
        <div class="max-w-7xl mx-auto px-4">
            <div class="grid md:grid-cols-4 gap-8 mb-10">
                <div>
                    <div class="flex items-center gap-3 mb-4">
                        <img src="https://prominence.academy/public/uploads/log-x.jpeg" class="w-14 h-14 rounded-lg"
                            alt="Logo" />
                        <div>
                            <h3 class="text-xl font-bold">{{ $is_ar ? 'أكاديمية بروز' : 'Boroz Academy' }}</h3>
                            <p class="text-xs text-gray-400">P.A.M.T</p>
                        </div>
                    </div>
                    <p class="text-sm text-gray-300 leading-relaxed">
                        {{ $is_ar ? 'نصقل مهاراتك اليوم لتبرُز وتشرق غداً. منصة تدريب مهنية وأكاديمية متكاملة.' : 'Honing your skills today to stand out and shine tomorrow.' }}
                    </p>
                </div>

                <div>
                    <h4 class="font-bold mb-4 text-orange">{{ $is_ar ? 'روابط سريعة' : 'Quick Links' }}</h4>
                    <ul class="space-y-2 text-sm text-gray-300">
                        <li><a href="#home"
                                class="hover:text-orange transition-colors">{{ $is_ar ? 'الرئيسية' : 'Home' }}</a></li>
                        <li><a href="#about"
                                class="hover:text-orange transition-colors">{{ $is_ar ? 'نبذة عن الأكاديمية' : 'About Academy' }}</a>
                        </li>
                        <li><a href="{{ route('courses') }}"
                                class="hover:text-orange transition-colors">{{ $is_ar ? 'جميع الدورات' : 'All Courses' }}</a>
                        </li>
                        <li><a href="{{ route('bootcamps') }}"
                                class="hover:text-orange transition-colors">{{ $is_ar ? 'دبلومات الماجستير المهني' : 'Master\'s Diplomas' }}</a>
                        </li>
                    </ul>
                </div>

                <div>
                    <h4 class="font-bold mb-4 text-orange">{{ $is_ar ? 'أبرز التصنيفات والبرامج' : 'Top Categories & Programs' }}</h4>
                    <ul class="space-y-2 text-sm text-gray-300">
                        @foreach (top_categories() as $top_cat)
                            <li>
                                <a href="{{ route('courses', $top_cat->slug) }}"
                                    class="hover:text-orange transition-colors">{{ ucfirst($top_cat->title) }}</a>
                            </li>
                        @endforeach
                        <li><a href="/#masters"
                                class="hover:text-orange transition-colors">{{ $is_ar ? 'الماجستير المهني' : 'Professional Master\'s' }}</a>
                        </li>
                        <li><a href="/#doctorate"
                                class="hover:text-orange transition-colors">{{ $is_ar ? 'الدكتوراة المهنية' : 'Professional Doctorate' }}</a>
                        </li>
                        <li><a href="/#graduates-club"
                                class="hover:text-orange transition-colors">{{ $is_ar ? 'نادي بروز للخريجين' : 'Alumni Club' }}</a>
                        </li>
                    </ul>
                </div>

                <div>
                    <h4 class="font-bold mb-4 text-orange">{{ $is_ar ? 'تواصل معنا' : 'Connect With Us' }}</h4>
                    <div class="flex gap-3 mb-4">
                        @if(get_frontend_settings('facebook'))
                            <a href="{{ get_frontend_settings('facebook') }}" target="_blank"
                                class="w-10 h-10 bg-white/10 rounded-full flex items-center justify-center hover:bg-orange transition-colors"><i
                                    class="fa-brands fa-facebook-f"></i></a>
                        @endif
                        @if(get_frontend_settings('twitter'))
                            <a href="{{ get_frontend_settings('twitter') }}" target="_blank"
                                class="w-10 h-10 bg-white/10 rounded-full flex items-center justify-center hover:bg-orange transition-colors"><i
                                    class="fa-brands fa-x-twitter"></i></a>
                        @endif
                        @if(get_frontend_settings('linkedin'))
                            <a href="{{ get_frontend_settings('linkedin') }}" target="_blank"
                                class="w-10 h-10 bg-white/10 rounded-full flex items-center justify-center hover:bg-orange transition-colors"><i
                                    class="fa-brands fa-linkedin-in"></i></a>
                        @endif
                    </div>
                    <p class="text-xs text-gray-400">
                        {{ $is_ar ? 'تابع منصاتنا الرسمية لأحدث الأخبار' : 'Follow our official channels for latest updates' }}
                    </p>
                </div>
            </div>

            <div class="border-t border-white/10 pt-8 flex flex-col md:flex-row items-center justify-between gap-4 text-center md:text-right">
                <ul class="flex flex-wrap items-center justify-center md:justify-start gap-4 text-xs text-gray-300">
                    <li><a href="{{ route('about.us') }}" class="hover:text-orange transition-colors">{{ $is_ar ? 'نبذة عنا' : 'About Us' }}</a></li>
                    <li><a href="{{ route('privacy.policy') }}" class="hover:text-orange transition-colors">{{ $is_ar ? 'سياسة الخصوصية' : 'Privacy Policy' }}</a></li>
                    <li><a href="{{ route('terms.condition') }}" class="hover:text-orange transition-colors">{{ $is_ar ? 'الشروط والأحكام' : 'Terms & Conditions' }}</a></li>
                    <li><a href="{{ route('refund.policy') }}" class="hover:text-orange transition-colors">{{ $is_ar ? 'سياسة الاسترجاع' : 'Refund Policy' }}</a></li>
                    <li><a href="{{ route('cookie.policy') }}" class="hover:text-orange transition-colors">{{ $is_ar ? 'سياسة ملفات تعريف الارتباط' : 'Cookie Policy' }}</a></li>
                    <li><a href="{{ route('faq') }}" class="hover:text-orange transition-colors">{{ $is_ar ? 'الأسئلة الشائعة' : 'FAQ' }}</a></li>
                </ul>
                <p class="text-sm text-gray-300 mb-0">
                    &copy; {{ date('Y') }}
                    {{ $is_ar ? 'جميع الحقوق محفوظة - تم التطوير بواسطة' : 'All Rights Reserved - Developed by' }}
                    <a href="https://zynqor.org/" target="_blank"
                        class="text-orange font-bold hover:underline">Zynqor</a>
                </p>
            </div>
        </div>
    </footer>

    <!-- WHATSAPP FLOAT BUTTON -->
    <a href="https://wa.me/{{ preg_replace('/[^0-9]/', '', get_settings('phone')) }}" target="_blank" class="whatsapp-float">
        <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='60' height='60' viewBox='0 0 24 24' fill='%2325D366'%3E%3Cpath d='M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.890-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413Z'/%3E%3C/svg%3E"
            alt="WhatsApp" class="w-16 h-16 drop-shadow-2xl" />
    </a>

    <script>
        // Mobile menu toggle
        const mobileMenuBtn = document.getElementById('mobile-menu-btn');
        const mobileMenu = document.getElementById('mobile-menu');
        if (mobileMenuBtn && mobileMenu) {
            mobileMenuBtn.addEventListener('click', () => {
                mobileMenu.classList.toggle('active');
            });
        }

        // Dropdown toggle function
        function toggleDropdown(dropdownId) {
            const dropdown = document.getElementById(dropdownId);
            const arrow = document.getElementById(dropdownId.replace('-dropdown', '-arrow'));
            if (dropdown) dropdown.classList.toggle('active');
            if (arrow) arrow.classList.toggle('rotated');
        }

        // Smooth scrolling for anchor links
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                const targetId = this.getAttribute('href');
                if (targetId && targetId !== '#') {
                    const target = document.querySelector(targetId);
                    if (target) {
                        e.preventDefault();
                        target.scrollIntoView({ behavior: 'smooth', block: 'start' });
                        if (mobileMenu) mobileMenu.classList.remove('active');
                    }
                }
            });
        });
    </script>
</body>

</html>