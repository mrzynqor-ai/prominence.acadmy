@extends('layouts.admin')
@push('title', get_phrase('Student'))
@push('meta')
@endpush
@push('css')
<style>
    .camp-badge {
        display: inline-flex;
        align-items: center;
        gap: 5px;
        padding: 4px 10px;
        border-radius: 20px;
        font-size: 11px;
        font-weight: 600;
        letter-spacing: 0.3px;
    }
    .camp-badge.active {
        background: #d1fae5;
        color: #065f46;
    }
    .camp-badge.inactive {
        background: #f3f4f6;
        color: #6b7280;
    }
    .camp-badge .dot {
        width: 6px;
        height: 6px;
        border-radius: 50%;
        display: inline-block;
    }
    .camp-badge.active .dot { background: #10b981; }
    .camp-badge.inactive .dot { background: #9ca3af; }

    .btn-camp-submit {
        background: #10b981;
        color: #fff;
        border: none;
        padding: 4px 12px;
        border-radius: 6px;
        font-size: 12px;
        font-weight: 500;
        cursor: pointer;
        transition: background 0.2s;
    }
    .btn-camp-submit:hover { background: #059669; }

    .btn-camp-cancel {
        background: #fee2e2;
        color: #b91c1c;
        border: none;
        padding: 4px 12px;
        border-radius: 6px;
        font-size: 12px;
        font-weight: 500;
        cursor: pointer;
        transition: background 0.2s;
    }
    .btn-camp-cancel:hover { background: #fecaca; }

    .camp-date {
        font-size: 11px;
        color: #6b7280;
        margin-top: 3px;
    }
</style>
@endpush

@section('content')
    <div class="ol-card radius-8px">
        <div class="ol-card-body my-3 py-12px px-20px">
            <div class="d-flex align-items-center justify-content-between gap-3 flex-wrap flex-md-nowrap">
                <h4 class="title fs-16px">
                    <i class="fi-rr-settings-sliders me-2"></i>
                    {{ get_phrase('Student List') }}
                </h4>

                <a href="{{ route('admin.student.create') }}" class="btn ol-btn-outline-secondary d-flex align-items-center cg-10px">
                    <span class="fi-rr-plus"></span>
                    <span>{{ get_phrase('Add new Student') }}</span>
                </a>
            </div>
        </div>
    </div>

    @if(session('success'))
        <div class="alert alert-success alert-dismissible fade show mt-3" role="alert">
            <i class="fi-rr-check me-2"></i> {{ session('success') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    @endif

    <div class="ol-card p-4">
        <div class="ol-card-body">

            <div class="row print-d-none mb-3 mt-3 row-gap-3">
                <div class="col-md-6 pt-2 pt-md-0">
                    <div class="custom-dropdown">
                        <button class="dropdown-header btn ol-btn-light">
                            {{ get_phrase('Export') }}
                            <i class="fi-rr-file-export ms-2"></i>
                        </button>
                        <ul class="dropdown-list">
                            <li>
                                <a class="dropdown-item" href="#" onclick="downloadPDF('.print-table', 'student-list')">
                                    <i class="fi-rr-file-pdf"></i> {{ get_phrase('PDF') }}
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="#" onclick="window.print();">
                                    <i class="fi-rr-print"></i> {{ get_phrase('Print') }}
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-6">
                    <form class="form-inline" action="{{ route('admin.student.index') }}" method="get">
                        <div class="row row-gap-3">
                            <div class="col-md-9">
                                <input type="text" class="form-control ol-form-control" name="search"
                                    value="{{ request('search') }}"
                                    placeholder="{{ get_phrase('Search user') }}" />
                            </div>
                            <div class="col-md-3">
                                <button type="submit" class="btn ol-btn-primary w-100" id="submit-button">
                                    {{ get_phrase('Search') }}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            <div class="row mt-4">
                <div class="col-md-12">

                    @if (count($students) > 0)
                        <div class="admin-tInfo-pagi d-flex justify-content-between align-items-center flex-wrap gr-15">
                            <p class="admin-tInfo">
                                {{ get_phrase('Showing') . ' ' . count($students) . ' ' . get_phrase('of') . ' ' . $students->total() . ' ' . get_phrase('data') }}
                            </p>
                        </div>

                        <div class="table-responsive course_list" id="course_list">
                            <table class="table eTable eTable-2 print-table">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">{{ get_phrase('Name') }}</th>
                                        <th scope="col">{{ get_phrase('Phone') }}</th>
                                        <th scope="col">{{ get_phrase('Enrolled Course') }}</th>
                                        <th scope="col">{{ get_phrase('Camp Status') }}</th>
                                        <th class="print-d-none" scope="col">{{ get_phrase('Camp Action') }}</th>
                                        <th class="print-d-none" scope="col">{{ get_phrase('Options') }}</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($students as $key => $row)
                                        <tr>
                                            <th scope="row">
                                                <p class="row-number">{{ ++$key }}</p>
                                            </th>

                                            {{-- Name & Email --}}
                                            <td>
                                                <div class="dAdmin_profile d-flex align-items-center min-w-200px">
                                                    <div class="dAdmin_profile_img">
                                                        <img class="img-fluid rounded-circle image-45"
                                                            width="45" height="45"
                                                            src="{{ get_image($row->photo) }}" />
                                                    </div>
                                                    <div class="ms-1">
                                                        <h4 class="title fs-14px">{{ $row->name }}</h4>
                                                        <p class="sub-title2 text-12px">{{ $row->email }}</p>
                                                    </div>
                                                </div>
                                            </td>

                                            {{-- Phone --}}
                                            <td>
                                                <div class="dAdmin_info_name min-w-150px">
                                                    <p>{{ $row->phone }}</p>
                                                </div>
                                            </td>

                                            {{-- Enrolled Courses --}}
                                            <td>
                                                {{ App\Models\Enrollment::where('user_id', $row->id)->count() }}
                                                {{ get_phrase('Courses') }}
                                            </td>

                                            {{-- Camp Status Badge --}}
                                            <td>
                                                @if ($row->camp)
                                                    <span class="camp-badge active">
                                                        <span class="dot"></span>
                                                        {{ get_phrase('In Camp') }}
                                                    </span>
                                                    @if ($row->camp_requested_at)
                                                        <div class="camp-date">
                                                            {{ get_phrase('Since') }}: {{ \Carbon\Carbon::parse($row->camp_requested_at)->format('d M Y') }}
                                                        </div>
                                                    @endif
                                                @else
                                                    <span class="camp-badge inactive">
                                                        <span class="dot"></span>
                                                        {{ get_phrase('No Camp') }}
                                                    </span>
                                                @endif
                                            </td>

                                            {{-- Camp Toggle Action --}}
                                            <td class="print-d-none">
                                                <form action="{{ route('admin.student.camp.toggle', $row->id) }}" method="POST"
                                                    onsubmit="return confirmCampToggle(this, {{ $row->camp }})">
                                                    @csrf
                                                    @if ($row->camp)
                                                        <button type="submit" class="btn-camp-cancel">
                                                            <i class="fi-rr-cross-small me-1"></i>
                                                            {{ get_phrase('Cancel Camp') }}
                                                        </button>
                                                    @else
                                                        <button type="submit" class="btn-camp-submit">
                                                            <i class="fi-rr-tent-arrow-turn-left me-1"></i>
                                                            {{ get_phrase('Submit Camp') }}
                                                        </button>
                                                    @endif
                                                </form>
                                            </td>

                                            {{-- Other Options --}}
                                            <td class="print-d-none">
                                                <div class="dropdown ol-icon-dropdown ol-icon-dropdown-transparent">
                                                    <button class="btn ol-btn-secondary dropdown-toggle" type="button"
                                                        data-bs-toggle="dropdown" aria-expanded="false">
                                                        <span class="fi-rr-menu-dots-vertical"></span>
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li>
                                                            <a class="dropdown-item" href="{{ route('admin.student.edit', $row->id) }}">
                                                                {{ get_phrase('Edit') }}
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item"
                                                                onclick="confirmModal('{{ route('admin.student.delete', $row->id) }}')"
                                                                href="javascript:void(0)">
                                                                {{ get_phrase('Remove account') }}
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    @else
                        @include('admin.no_data')
                    @endif

                    @if (count($students) > 0)
                        <div class="admin-tInfo-pagi d-flex justify-content-between align-items-center flex-wrap gr-15">
                            <p class="admin-tInfo">
                                {{ get_phrase('Showing') . ' ' . count($students) . ' ' . get_phrase('of') . ' ' . $students->total() . ' ' . get_phrase('data') }}
                            </p>
                            {{ $students->links() }}
                        </div>
                    @endif

                </div>
            </div>
        </div>
    </div>
@endsection

@push('js')
<script>
    function confirmCampToggle(form, currentCampStatus) {
        const isInCamp = currentCampStatus == 1;
        const message = isInCamp
            ? '{{ get_phrase("Are you sure you want to cancel this student's camp?") }}'
            : '{{ get_phrase("Are you sure you want to submit this student to camp?") }}';

        if (confirm(message)) {
            return true;
        }
        return false;
    }
</script>
@endpush