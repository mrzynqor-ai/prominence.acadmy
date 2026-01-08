<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('certificates', function (Blueprint $table) {
            $table->string('certificate_number')->unique()->nullable()->after('identifier');
            $table->timestamp('issued_at')->nullable()->after('certificate_number');
            $table->boolean('is_valid')->default(true)->after('issued_at');
            $table->text('revocation_reason')->nullable()->after('is_valid');
        });

        // Update existing certificates with certificate numbers
        DB::table('certificates')->whereNull('certificate_number')->get()->each(function ($cert) {
            DB::table('certificates')->where('id', $cert->id)->update([
                'certificate_number' => 'CERT-' . strtoupper(Str::random(8)),
                'issued_at' => $cert->created_at,
                'is_valid' => true
            ]);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('certificates', function (Blueprint $table) {
            $table->dropColumn(['certificate_number', 'issued_at', 'is_valid', 'revocation_reason']);
        });
    }
};
