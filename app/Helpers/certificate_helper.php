<?php

use Illuminate\Support\Str;
use App\Models\Certificate;

if (!function_exists('generate_certificate_number')) {
    /**
     * Generate a unique certificate number.
     *
     * @return string
     */
    function generate_certificate_number()
    {
        do {
            $number = 'CERT-' . strtoupper(Str::random(8));
        } while (Certificate::where('certificate_number', $number)->exists());

        return $number;
    }
}

if (!function_exists('format_certificate_number')) {
    /**
     * Format a certificate number for display.
     *
     * @param string $number
     * @return string
     */
    function format_certificate_number($number)
    {
        // Add dashes every 4 characters for readability
        if (strlen($number) > 12 && !str_contains($number, '-')) {
            return substr($number, 0, 4) . '-' . substr($number, 4, 4) . '-' . substr($number, 8);
        }

        return $number;
    }
}

if (!function_exists('is_certificate_valid')) {
    /**
     * Check if a certificate is valid.
     *
     * @param Certificate|string $certificate Certificate model or identifier
     * @return bool
     */
    function is_certificate_valid($certificate)
    {
        if (is_string($certificate)) {
            $certificate = Certificate::where('identifier', $certificate)
                ->orWhere('certificate_number', $certificate)
                ->first();
        }

        if (!$certificate) {
            return false;
        }

        return $certificate->is_valid === true;
    }
}

if (!function_exists('get_certificate_verification_url')) {
    /**
     * Get the verification URL for a certificate.
     *
     * @param Certificate $certificate
     * @return string
     */
    function get_certificate_verification_url($certificate)
    {
        return route('certificate.verify.check', ['identifier' => $certificate->identifier]);
    }
}
