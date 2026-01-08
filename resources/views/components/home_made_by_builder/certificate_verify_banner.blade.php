{{-- Certificate Verification Banner Section --}}
<section class="certificate-verify-section py-5">
    <div class="container">
        <div class="certificate-verify-banner">
            <div class="row align-items-center">
                <div class="col-lg-7">
                    <div class="verify-content">
                        <div class="verify-icon">
                            <i class="fa-solid fa-certificate"></i>
                        </div>
                        <h2>{{ get_phrase('Verify Certificate') }}</h2>
                        <p>{{ get_phrase('Check the authenticity of certificates issued by our academy. Enter the certificate number or scan the QR code to verify.') }}</p>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="verify-action">
                        <form action="{{ route('certificate.verify.search') }}" method="POST" class="verify-form-inline">
                            @csrf
                            <div class="input-group">
                                <input type="text"
                                    name="certificate_identifier"
                                    class="form-control"
                                    placeholder="{{ get_phrase('Enter Certificate Number') }}"
                                    required
                                    minlength="3">
                                <button type="submit" class="btn verify-btn">
                                    <i class="fa-solid fa-search me-2"></i>
                                    {{ get_phrase('Verify') }}
                                </button>
                            </div>
                        </form>
                        <a href="{{ route('certificate.verify') }}" class="verify-link mt-3">
                            <i class="fa-solid fa-arrow-right me-1"></i>
                            {{ get_phrase('Go to Verification Page') }}
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<style>
    .certificate-verify-section {
        background: linear-gradient(135deg, #1a1a2e 0%, #16213e 100%);
        margin: 40px 0;
    }

    .certificate-verify-banner {
        background: linear-gradient(135deg, rgba(255, 255, 255, 0.1) 0%, rgba(255, 255, 255, 0.05) 100%);
        border-radius: 20px;
        padding: 40px;
        border: 1px solid rgba(255, 255, 255, 0.1);
    }

    .verify-content {
        color: #fff;
    }

    .verify-icon {
        width: 70px;
        height: 70px;
        background: linear-gradient(135deg, #00d4ff 0%, #7c3aed 100%);
        border-radius: 16px;
        display: flex;
        align-items: center;
        justify-content: center;
        margin-bottom: 20px;
    }

    .verify-icon i {
        font-size: 32px;
        color: #fff;
    }

    .verify-content h2 {
        font-size: 28px;
        font-weight: 700;
        margin-bottom: 12px;
        color: #fff;
    }

    .verify-content p {
        font-size: 16px;
        color: rgba(255, 255, 255, 0.8);
        line-height: 1.6;
        margin: 0;
    }

    .verify-action {
        display: flex;
        flex-direction: column;
        align-items: flex-end;
    }

    .verify-form-inline {
        width: 100%;
    }

    .verify-form-inline .input-group {
        background: #fff;
        border-radius: 12px;
        overflow: hidden;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
    }

    .verify-form-inline .form-control {
        border: none;
        height: 55px;
        padding: 0 20px;
        font-size: 15px;
    }

    .verify-form-inline .form-control:focus {
        box-shadow: none;
    }

    .verify-form-inline .verify-btn {
        background: linear-gradient(135deg, #00d4ff 0%, #7c3aed 100%);
        color: #fff;
        border: none;
        padding: 0 30px;
        font-weight: 600;
        white-space: nowrap;
    }

    .verify-form-inline .verify-btn:hover {
        opacity: 0.9;
    }

    .verify-link {
        color: rgba(255, 255, 255, 0.8);
        text-decoration: none;
        font-size: 14px;
        display: inline-flex;
        align-items: center;
        transition: all 0.3s ease;
    }

    .verify-link:hover {
        color: #00d4ff;
    }

    @media (max-width: 991px) {
        .certificate-verify-banner {
            padding: 30px;
        }

        .verify-content {
            text-align: center;
            margin-bottom: 30px;
        }

        .verify-icon {
            margin-left: auto;
            margin-right: auto;
        }

        .verify-action {
            align-items: center;
        }
    }

    @media (max-width: 576px) {
        .verify-form-inline .input-group {
            flex-direction: column;
            border-radius: 12px;
        }

        .verify-form-inline .form-control {
            border-radius: 12px 12px 0 0;
        }

        .verify-form-inline .verify-btn {
            width: 100%;
            height: 50px;
            border-radius: 0 0 12px 12px;
        }
    }
</style>