{{-- filter.blade.php --}}
@php
    $categories = App\Models\BootcampCategory::get();
    $active_category = request()->route()->parameter('category');
    $route_queries = request()->query();
    $route_queries = collect($route_queries)->except('page')->all();
@endphp

<style>
/* ── PROMINENCE FILTER (pa-filter) ── */
.pa-filter {
    display: flex; flex-direction: column; gap: 20px;
}

.pa-filter__card {
    background: var(--pa-white);
    border-radius: 12px;
    box-shadow: var(--pa-shadow);
    overflow: hidden;
    border: 1px solid rgba(0, 0, 0, 0.03);
}

.pa-filter__head {
    padding: 15px 20px;
    border-bottom: 1px solid var(--pa-blue-light);
    display: flex; align-items: center; gap: 10px;
}
.pa-filter__head i { color: var(--pa-orange); font-size: 16px; }
.pa-filter__head-title { font-size: 15px; font-weight: 800; color: var(--pa-blue-deep); }

.pa-filter__body { padding: 20px; }

.pa-filter__search-wrap { position: relative; }
.pa-filter__search-input {
    width: 100%; padding: 12px 15px 12px 45px;
    background: var(--pa-bg); border: 1px solid var(--pa-blue-light);
    border-radius: 10px; font-size: 14px; font-family: var(--pa-font); outline: none;
}
.pa-filter__search-btn {
    position: absolute; left: 15px; top: 50%; transform: translateY(-50%);
    background: none; border: none; color: var(--pa-blue-mid); cursor: pointer;
}

.pa-filter__list { list-style: none; padding: 0; margin: 0; }
.pa-filter__item { margin-bottom: 5px; }
.pa-filter__item a {
    display: flex; justify-content: space-between; align-items: center;
    padding: 10px 12px; border-radius: 8px; font-size: 14px; color: var(--pa-text);
    text-decoration: none; transition: all 0.3s;
}
.pa-filter__item a:hover, .pa-filter__item--active a {
    background: var(--pa-blue-light); color: var(--pa-blue-mid); font-weight: 700;
}
.pa-filter__count {
    background: var(--pa-white); padding: 2px 8px; border-radius: 6px; font-size: 11px;
}

.pa-filter__opt { display: flex; align-items: center; gap: 10px; margin-bottom: 12px; font-size: 14px; cursor: pointer; }
.pa-filter__opt input { accent-color: var(--pa-orange); width: 16px; height: 16px; }

</style>

<div class="pa-filter">
    {{-- Search --}}
    <div class="pa-filter__card">
        <div class="pa-filter__head">
            <i class="fas fa-search"></i>
            <span class="pa-filter__head-title">البحث عن برنامج</span>
        </div>
        <div class="pa-filter__body">
            <form action="{{ route('bootcamps') }}" method="get">
                <div class="pa-filter__search-wrap">
                    <input class="pa-filter__search-input" type="text" name="search" placeholder="ابحث هنا..." value="{{ request('search') }}">
                    <button type="submit" class="pa-filter__search-btn"><i class="fas fa-search"></i></button>
                </div>
            </form>
        </div>
    </div>

    {{-- Categories --}}
    <div class="pa-filter__card">
        <div class="pa-filter__head">
            <i class="fas fa-th-large"></i>
            <span class="pa-filter__head-title">التصنيفات</span>
        </div>
        <div class="pa-filter__body">
            <ul class="pa-filter__list">
                <li class="pa-filter__item {{ !request('category') ? 'pa-filter__item--active' : '' }}">
                    <a href="{{ route('bootcamps') }}">
                        <span>كل البرامج</span>
                    </a>
                </li>
                @foreach ($categories as $category)
                    <li class="pa-filter__item {{ request('category') == $category->slug ? 'pa-filter__item--active' : '' }}">
                        <a href="{{ route('bootcamps', ['category' => $category->slug]) }}">
                            <span>{{ $category->title }}</span>
                            <span class="pa-filter__count">{{ count_bootcamps_by_category($category->id) }}</span>
                        </a>
                    </li>
                @endforeach
            </ul>
        </div>
    </div>

    {{-- Level --}}
    <div class="pa-filter__card">
        <div class="pa-filter__head">
            <i class="fas fa-signal"></i>
            <span class="pa-filter__head-title">المستوى</span>
        </div>
        <div class="pa-filter__body">
            <label class="pa-filter__opt"><input type="checkbox"><span>مبتدئ</span></label>
            <label class="pa-filter__opt"><input type="checkbox"><span>متوسط</span></label>
            <label class="pa-filter__opt"><input type="checkbox"><span>متقدم</span></label>
        </div>
    </div>
</div>
 