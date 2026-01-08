@extends('layouts.admin')
@push('title', get_phrase('Certificate Management'))
@push('meta')
@endpush
@push('css')
<style>
    .stats-card {
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        border-radius: 12px;
        padding: 20px;
        color: #fff;
        text-align: center;
        margin-bottom: 20px;
    }

    .stats-card.valid {
        background: linear-gradient(135deg, #28a745 0%, #20c997 100%);
    }

    .stats-card.revoked {
        background: linear-gradient(135deg, #dc3545 0%, #fd7e14 100%);
    }

    .stats-card h3 {
        font-size: 32px;
        font-weight: 700;
        margin-bottom: 5px;
    }

    .stats-card p {
        margin: 0;
        opacity: 0.9;
    }

    .badge-valid {
        background: #28a745;
        color: #fff;
        padding: 5px 12px;
        border-radius: 20px;
        font-size: 12px;
    }

    .badge-revoked {
        background: #dc3545;
        color: #fff;
        padding: 5px 12px;
        border-radius: 20px;
        font-size: 12px;
    }
</style>
@endpush

@section('content')
<div class="ol-card radius-8px">
    <div class="ol-card-body my-3 py-12px px-20px">
        <div class="d-flex align-items-center justify-content-between gap-3 flex-wrap flex-md-nowrap">
            <h4 class="title fs-16px">
                <i class="fi-rr-diploma me-2"></i>
                {{ get_phrase('Certificate Management') }}
            </h4>
        </div>
    </div>
</div>

<!-- Statistics Cards -->
<div class="row mb-4">
    <div class="col-md-4">
        <div class="stats-card">
            <h3>{{ $stats['total'] }}</h3>
            <p>{{ get_phrase('Total Certificates') }}</p>
        </div>
    </div>
    <div class="col-md-4">
        <div class="stats-card valid">
            <h3>{{ $stats['valid'] }}</h3>
            <p>{{ get_phrase('Valid Certificates') }}</p>
        </div>
    </div>
    <div class="col-md-4">
        <div class="stats-card revoked">
            <h3>{{ $stats['revoked'] }}</h3>
            <p>{{ get_phrase('Revoked Certificates') }}</p>
        </div>
    </div>
</div>

<div class="ol-card p-4">
    <div class="ol-card-body">
        <!-- Search and Filter -->
        <div class="row print-d-none mb-3 mt-3 row-gap-3">
            <div class="col-md-6 pt-2 pt-md-0">
                <div class="custom-dropdown">
                    <button class="dropdown-header btn ol-btn-light">
                        {{ get_phrase('Export') }}
                        <i class="fi-rr-file-export ms-2"></i>
                    </button>
                    <ul class="dropdown-list">
                        <li>
                            <a class="dropdown-item" href="#" onclick="downloadPDF('.print-table', 'certificates-list')">
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
                <form class="form-inline" action="{{ route('admin.certificates') }}" method="get">
                    <div class="row row-gap-3">
                        <div class="col-md-4">
                            <select name="status" class="form-control ol-form-control">
                                <option value="">{{ get_phrase('All Status') }}</option>
                                <option value="valid" {{ request('status') == 'valid' ? 'selected' : '' }}>{{ get_phrase('Valid') }}</option>
                                <option value="revoked" {{ request('status') == 'revoked' ? 'selected' : '' }}>{{ get_phrase('Revoked') }}</option>
                            </select>
                        </div>
                        <div class="col-md-5">
                            <input type="text" class="form-control ol-form-control" name="search" value="{{ request('search') }}" placeholder="{{ get_phrase('Search certificate, student, course...') }}" />
                        </div>
                        <div class="col-md-3">
                            <button type="submit" class="btn ol-btn-primary w-100">{{ get_phrase('Search') }}</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <div class="row mt-4">
            <div class="col-md-12">
                @if (count($certificates) > 0)
                <div class="admin-tInfo-pagi d-flex justify-content-between justify-content-center align-items-center flex-wrap gr-15">
                    <p class="admin-tInfo">
                        {{ get_phrase('Showing') . ' ' . count($certificates) . ' ' . get_phrase('of') . ' ' . $certificates->total() . ' ' . get_phrase('data') }}
                    </p>
                </div>
                <div class="table-responsive course_list" id="course_list">
                    <table class="table eTable eTable-2 print-table">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">{{ get_phrase('Certificate Number') }}</th>
                                <th scope="col">{{ get_phrase('Student') }}</th>
                                <th scope="col">{{ get_phrase('Course') }}</th>
                                <th scope="col">{{ get_phrase('Issue Date') }}</th>
                                <th scope="col">{{ get_phrase('Status') }}</th>
                                <th class="print-d-none" scope="col">{{ get_phrase('Actions') }}</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($certificates as $key => $certificate)
                            <tr>
                                <th scope="row">
                                    <p class="row-number">{{ $certificates->firstItem() + $key }}</p>
                                </th>
                                <td>
                                    <code>{{ $certificate->certificate_number ?? $certificate->identifier }}</code>
                                </td>
                                <td>
                                    <div class="dAdmin_profile d-flex align-items-center min-w-150px">
                                        <div class="dAdmin_profile_img">
                                            <img class="img-fluid rounded-circle image-35" width="35" height="35" src="{{ get_image($certificate->user->photo ?? '') }}" />
                                        </div>
                                        <div class="ms-2">
                                            <h4 class="title fs-14px">{{ $certificate->user->name ?? 'N/A' }}</h4>
                                            <p class="sub-title2 text-12px">{{ $certificate->user->email ?? '' }}</p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="min-w-200px">
                                        <p class="text-truncate" style="max-width: 200px;">{{ $certificate->course->title ?? 'N/A' }}</p>
                                    </div>
                                </td>
                                <td>
                                    {{ $certificate->issued_at ? $certificate->issued_at->format('Y-m-d') : $certificate->created_at->format('Y-m-d') }}
                                </td>
                                <td>
                                    @if($certificate->is_valid)
                                    <span class="badge-valid">{{ get_phrase('Valid') }}</span>
                                    @else
                                    <span class="badge-revoked">{{ get_phrase('Revoked') }}</span>
                                    @endif
                                </td>
                                <td class="print-d-none">
                                    <div class="dropdown ol-icon-dropdown ol-icon-dropdown-transparent">
                                        <button class="btn ol-btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                            <span class="fi-rr-menu-dots-vertical"></span>
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li>
                                                <a class="dropdown-item" href="{{ route('certificate.verify.check', $certificate->identifier) }}" target="_blank">
                                                    <i class="fi-rr-eye me-2"></i>{{ get_phrase('View') }}
                                                </a>
                                            </li>
                                            @if($certificate->is_valid)
                                            <li>
                                                <a class="dropdown-item text-danger" href="javascript:void(0)"
                                                    onclick="showRevokeModal({{ $certificate->id }})">
                                                    <i class="fi-rr-ban me-2"></i>{{ get_phrase('Revoke') }}
                                                </a>
                                            </li>
                                            @else
                                            <li>
                                                <form action="{{ route('admin.certificates.reactivate', $certificate->id) }}" method="POST" style="display:inline;">
                                                    @csrf
                                                    <button type="submit" class="dropdown-item text-success">
                                                        <i class="fi-rr-check me-2"></i>{{ get_phrase('Reactivate') }}
                                                    </button>
                                                </form>
                                            </li>
                                            @endif
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

                @if (count($certificates) > 0)
                <div class="admin-tInfo-pagi d-flex justify-content-between justify-content-center align-items-center flex-wrap gr-15">
                    <p class="admin-tInfo">
                        {{ get_phrase('Showing') . ' ' . count($certificates) . ' ' . get_phrase('of') . ' ' . $certificates->total() . ' ' . get_phrase('data') }}
                    </p>
                    {{ $certificates->appends(request()->query())->links() }}
                </div>
                @endif
            </div>
        </div>
    </div>
</div>

<!-- Revoke Modal -->
<div class="modal fade" id="revokeModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form id="revokeForm" method="POST">
                @csrf
                <div class="modal-header">
                    <h5 class="modal-title">{{ get_phrase('Revoke Certificate') }}</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label class="form-label">{{ get_phrase('Revocation Reason') }} ({{ get_phrase('Optional') }})</label>
                        <textarea name="revocation_reason" class="form-control" rows="3" placeholder="{{ get_phrase('Enter reason for revoking this certificate...') }}"></textarea>
                    </div>
                    <p class="text-danger small">
                        <i class="fi-rr-exclamation me-1"></i>
                        {{ get_phrase('This action will mark the certificate as invalid. The student will no longer be able to use this certificate.') }}
                    </p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">{{ get_phrase('Cancel') }}</button>
                    <button type="submit" class="btn btn-danger">{{ get_phrase('Revoke Certificate') }}</button>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection

@push('js')
<script>
    function showRevokeModal(certificateId) {
        var modal = new bootstrap.Modal(document.getElementById('revokeModal'));
        document.getElementById('revokeForm').action = '{{ url("admin/certificates") }}/' + certificateId + '/revoke';
        modal.show();
    }
</script>
@endpush