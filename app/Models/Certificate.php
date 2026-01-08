<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Certificate extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     */
    protected $fillable = [
        'user_id',
        'course_id',
        'identifier',
        'certificate_number',
        'issued_at',
        'is_valid',
        'revocation_reason',
    ];

    /**
     * The attributes that should be cast.
     */
    protected $casts = [
        'issued_at' => 'datetime',
        'is_valid' => 'boolean',
    ];

    /**
     * Get the course that owns the certificate.
     */
    public function course()
    {
        return $this->belongsTo(Course::class);
    }

    /**
     * Get the user that owns the certificate.
     */
    public function user()
    {
        return $this->belongsTo(User::class)->withDefault();
    }

    /**
     * Scope a query to only include valid certificates.
     */
    public function scopeValid($query)
    {
        return $query->where('is_valid', true);
    }

    /**
     * Scope a query to only include invalid/revoked certificates.
     */
    public function scopeRevoked($query)
    {
        return $query->where('is_valid', false);
    }

    /**
     * Scope a query to find by identifier.
     */
    public function scopeByIdentifier($query, $identifier)
    {
        return $query->where('identifier', $identifier);
    }

    /**
     * Scope a query to find by certificate number.
     */
    public function scopeByCertificateNumber($query, $number)
    {
        return $query->where('certificate_number', $number);
    }

    /**
     * Get the formatted issued date.
     */
    public function getFormattedIssuedAtAttribute()
    {
        return $this->issued_at ? $this->issued_at->format('Y-m-d') : $this->created_at->format('Y-m-d');
    }

    /**
     * Check if the certificate is valid.
     */
    public function isValid()
    {
        return $this->is_valid === true;
    }

    /**
     * Revoke the certificate.
     */
    public function revoke($reason = null)
    {
        $this->update([
            'is_valid' => false,
            'revocation_reason' => $reason,
        ]);
    }

    /**
     * Reactivate the certificate.
     */
    public function reactivate()
    {
        $this->update([
            'is_valid' => true,
            'revocation_reason' => null,
        ]);
    }
}
