@extends('layouts.default')
@push('title', get_phrase('Verify Certificate'))
@push('meta')
<meta name="description" content="{{ get_phrase('Verify the authenticity of certificates issued by our academy') }}">
@endpush

@push('css')
<style>
    .verify-section {
        min-height: 70vh;
        padding: 60px 0;
        background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
    }

    .verify-card {
        background: #fff;
        border-radius: 16px;
        box-shadow: 0 10px 40px rgba(0, 0, 0, 0.1);
        padding: 40px;
        max-width: 600px;
        margin: 0 auto;
    }

    .verify-title {
        font-size: 28px;
        font-weight: 700;
        color: #1a1a2e;
        text-align: center;
        margin-bottom: 10px;
    }

    .verify-subtitle {
        color: #6c757d;
        text-align: center;
        margin-bottom: 30px;
    }

    .verify-form .form-control {
        height: 55px;
        border-radius: 12px;
        border: 2px solid #e9ecef;
        font-size: 16px;
        padding: 0 20px;
        transition: all 0.3s ease;
    }

    .verify-form .form-control:focus {
        border-color: var(--bs-primary);
        box-shadow: 0 0 0 4px rgba(var(--bs-primary-rgb), 0.1);
    }

    .verify-btn {
        height: 55px;
        border-radius: 12px;
        font-size: 16px;
        font-weight: 600;
        width: 100%;
        margin-top: 15px;
    }

    /* Result Cards */
    .result-card {
        border-radius: 16px;
        padding: 30px;
        margin-top: 30px;
        text-align: center;
    }

    .result-card.valid {
        background: linear-gradient(135deg, #d4edda 0%, #c3e6cb 100%);
        border: 2px solid #28a745;
    }

    .result-card.invalid {
        background: linear-gradient(135deg, #f8d7da 0%, #f5c6cb 100%);
        border: 2px solid #dc3545;
    }

    .result-card.not-found {
        background: linear-gradient(135deg, #fff3cd 0%, #ffeeba 100%);
        border: 2px solid #ffc107;
    }

    .result-icon {
        font-size: 60px;
        margin-bottom: 20px;
    }

    .result-card.valid .result-icon {
        color: #28a745;
    }

    .result-card.invalid .result-icon {
        color: #dc3545;
    }

    .result-card.not-found .result-icon {
        color: #ffc107;
    }

    .result-title {
        font-size: 22px;
        font-weight: 700;
        margin-bottom: 15px;
    }

    .result-card.valid .result-title {
        color: #155724;
    }

    .result-card.invalid .result-title {
        color: #721c24;
    }

    .result-card.not-found .result-title {
        color: #856404;
    }

    /* Certificate Details */
    .cert-details {
        background: #fff;
        border-radius: 12px;
        padding: 25px;
        margin-top: 20px;
        text-align: left;
    }

    .cert-details .detail-row {
        display: flex;
        justify-content: space-between;
        padding: 12px 0;
        border-bottom: 1px solid #e9ecef;
    }

    .cert-details .detail-row:last-child {
        border-bottom: none;
    }

    .detail-label {
        color: #6c757d;
        font-weight: 500;
    }

    .detail-value {
        color: #1a1a2e;
        font-weight: 600;
    }

    .badge-valid {
        background: #28a745;
        color: #fff;
        padding: 5px 15px;
        border-radius: 20px;
        font-size: 12px;
    }

    .badge-invalid {
        background: #dc3545;
        color: #fff;
        padding: 5px 15px;
        border-radius: 20px;
        font-size: 12px;
    }

    @media (max-width: 768px) {
        .verify-card {
            padding: 25px;
            margin: 0 15px;
        }

        .verify-title {
            font-size: 22px;
        }
    }
</style>
@endpush

@section('content')
<section class="verify-section">
    <div class="container">
        <div class="verify-card">
            <h1 class="verify-title">
                <i class="fa-solid fa-certificate me-2"></i>
                {{ get_phrase('Verify Certificate') }}
            </h1>
            <p class="verify-subtitle">
                {{ get_phrase('Enter the certificate number or identifier to verify its authenticity') }}
            </p>

            <form action="{{ route('certificate.verify.search') }}" method="POST" class="verify-form">
                @csrf
                <div class="input-group">
                    <input type="text"
                        name="certificate_identifier"
                        class="form-control"
                        placeholder="{{ get_phrase('Enter Certificate Number or ID') }}"
                        value="{{ $search_term ?? '' }}"
                        required
                        minlength="3">
                </div>
                <button type="submit" class="btn btn-primary verify-btn">
                    <i class="fa-solid fa-search me-2"></i>
                    {{ get_phrase('Verify Certificate') }}
                </button>
            </form>

            @if(isset($searched) && $searched)
            @if(isset($found) && $found && isset($certificate))
            {{-- Certificate Found --}}
            @if($is_valid)
            {{-- Valid Certificate --}}
            <div class="result-card valid">
                <div class="result-icon">
                    <i class="fa-solid fa-circle-check"></i>
                </div>
                <h3 class="result-title">{{ get_phrase('Certificate is Valid') }}</h3>
                <p>{{ get_phrase('This certificate is authentic and verified by our academy') }}</p>

                <div class="cert-details">
                    <div class="detail-row">
                        <span class="detail-label">{{ get_phrase('Certificate Number') }}</span>
                        <span class="detail-value">{{ $verification_data['certificate_number'] }}</span>
                    </div>
                    <div class="detail-row">
                        <span class="detail-label">{{ get_phrase('Student Name') }}</span>
                        <span class="detail-value">{{ $verification_data['student_name'] }}</span>
                    </div>
                    <div class="detail-row">
                        <span class="detail-label">{{ get_phrase('Course Title') }}</span>
                        <span class="detail-value">{{ $verification_data['course_title'] }}</span>
                    </div>
                    <div class="detail-row">
                        <span class="detail-label">{{ get_phrase('Issue Date') }}</span>
                        <span class="detail-value">{{ $verification_data['issued_at'] }}</span>
                    </div>
                    <div class="detail-row">
                        <span class="detail-label">{{ get_phrase('Instructor') }}</span>
                        <span class="detail-value">{{ $verification_data['instructor_name'] }}</span>
                    </div>
                    <div class="detail-row">
                        <span class="detail-label">{{ get_phrase('Status') }}</span>
                        <span class="badge-valid">{{ get_phrase('Valid') }}</span>
                    </div>
                </div>
            </div>
            @else
            {{-- Invalid/Revoked Certificate --}}
            <div class="result-card invalid">
                <div class="result-icon">
                    <i class="fa-solid fa-circle-xmark"></i>
                </div>
                <h3 class="result-title">{{ get_phrase('Certificate is Invalid') }}</h3>
                <p>{{ get_phrase('This certificate has been revoked or is no longer valid') }}</p>

                @if($verification_data['revocation_reason'])
                <div class="cert-details">
                    <div class="detail-row">
                        <span class="detail-label">{{ get_phrase('Reason') }}</span>
                        <span class="detail-value">{{ $verification_data['revocation_reason'] }}</span>
                    </div>
                </div>
                @endif
            </div>
            @endif
            @else
            {{-- Certificate Not Found --}}
            <div class="result-card not-found">
                <div class="result-icon">
                    <i class="fa-solid fa-triangle-exclamation"></i>
                </div>
                <h3 class="result-title">{{ get_phrase('Certificate Not Found') }}</h3>
                <p>{{ get_phrase('The certificate number you entered does not exist in our records') }}</p>
                <p class="small text-muted mt-3">
                    {{ get_phrase('Please check the number and try again, or contact support if you believe this is an error') }}
                </p>
            </div>
            @endif
            @endif
        </div>
    </div>
</section>
@endsection