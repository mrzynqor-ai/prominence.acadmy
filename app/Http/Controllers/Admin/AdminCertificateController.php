<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Certificate;
use Illuminate\Http\Request;

class AdminCertificateController extends Controller
{
    /**
     * Display a listing of all certificates.
     */
    public function index(Request $request)
    {
        $query = Certificate::with(['user', 'course']);

        // Search functionality
        if ($request->filled('search')) {
            $search = $request->search;
            $query->where(function ($q) use ($search) {
                $q->where('certificate_number', 'like', "%{$search}%")
                    ->orWhere('identifier', 'like', "%{$search}%")
                    ->orWhereHas('user', function ($userQuery) use ($search) {
                        $userQuery->where('first_name', 'like', "%{$search}%")
                            ->orWhere('last_name', 'like', "%{$search}%")
                            ->orWhere('email', 'like', "%{$search}%");
                    })
                    ->orWhereHas('course', function ($courseQuery) use ($search) {
                        $courseQuery->where('title', 'like', "%{$search}%");
                    });
            });
        }

        // Filter by status
        if ($request->filled('status')) {
            if ($request->status === 'valid') {
                $query->valid();
            } elseif ($request->status === 'revoked') {
                $query->revoked();
            }
        }

        // Statistics
        $stats = [
            'total' => Certificate::count(),
            'valid' => Certificate::valid()->count(),
            'revoked' => Certificate::revoked()->count(),
        ];

        $certificates = $query->latest()->paginate(20);

        return view('admin.certificate.certificates', compact('certificates', 'stats'));
    }

    /**
     * Revoke a certificate.
     */
    public function revoke(Request $request, $id)
    {
        $request->validate([
            'revocation_reason' => 'nullable|string|max:500',
        ]);

        $certificate = Certificate::findOrFail($id);
        $certificate->revoke($request->revocation_reason);

        return redirect()->back()->with('success', __('certificate.certificate_revoked'));
    }

    /**
     * Reactivate a certificate.
     */
    public function reactivate($id)
    {
        $certificate = Certificate::findOrFail($id);
        $certificate->reactivate();

        return redirect()->back()->with('success', __('certificate.certificate_reactivated'));
    }

    /**
     * View certificate details.
     */
    public function show($id)
    {
        $certificate = Certificate::with(['user', 'course.user'])->findOrFail($id);

        return view('admin.certificate.show', compact('certificate'));
    }
}
