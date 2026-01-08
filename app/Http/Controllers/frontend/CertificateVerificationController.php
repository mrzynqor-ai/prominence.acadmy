<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use App\Models\Certificate;
use Illuminate\Http\Request;

class CertificateVerificationController extends Controller
{
    /**
     * Display the certificate verification page.
     */
    public function index()
    {
        return view('frontend.default.certificate.verify');
    }

    /**
     * Verify a certificate by identifier (via URL/QR Code).
     */
    public function verify($identifier)
    {
        $certificate = Certificate::with(['user', 'course.user'])
            ->where('identifier', $identifier)
            ->orWhere('certificate_number', $identifier)
            ->first();

        if (!$certificate) {
            return view('frontend.default.certificate.verify', [
                'searched' => true,
                'found' => false,
                'message' => __('certificate.certificate_not_found'),
            ]);
        }

        return view('frontend.default.certificate.verify', [
            'searched' => true,
            'found' => true,
            'certificate' => $certificate,
            'is_valid' => $certificate->isValid(),
            'verification_data' => $this->getVerificationData($certificate),
        ]);
    }

    /**
     * Search for a certificate by number (via form submission).
     */
    public function search(Request $request)
    {
        $request->validate([
            'certificate_identifier' => 'required|string|min:3',
        ]);

        $identifier = trim($request->certificate_identifier);

        $certificate = Certificate::with(['user', 'course.user'])
            ->where('identifier', $identifier)
            ->orWhere('certificate_number', $identifier)
            ->first();

        if (!$certificate) {
            return view('frontend.default.certificate.verify', [
                'searched' => true,
                'found' => false,
                'search_term' => $identifier,
                'message' => __('certificate.certificate_not_found'),
            ]);
        }

        return view('frontend.default.certificate.verify', [
            'searched' => true,
            'found' => true,
            'search_term' => $identifier,
            'certificate' => $certificate,
            'is_valid' => $certificate->isValid(),
            'verification_data' => $this->getVerificationData($certificate),
        ]);
    }

    /**
     * Get verification data for a certificate.
     */
    private function getVerificationData(Certificate $certificate)
    {
        $course = $certificate->course;
        $student = $certificate->user;
        $instructor = $course->user ?? null;

        return [
            'certificate_number' => $certificate->certificate_number ?? $certificate->identifier,
            'student_name' => $student->first_name . ' ' . $student->last_name,
            'course_title' => $course->title ?? 'N/A',
            'issued_at' => $certificate->formatted_issued_at,
            'instructor_name' => $instructor ? ($instructor->first_name . ' ' . $instructor->last_name) : 'N/A',
            'is_valid' => $certificate->isValid(),
            'revocation_reason' => $certificate->revocation_reason,
        ];
    }
}
