<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

return new class extends Migration
{
    /**
     * Run the migrations.
     * Update language direction values for RTL support
     */
    public function up(): void
    {
        // Set Arabic language direction to RTL
        DB::table('languages')
            ->where('name', 'like', '%arabic%')
            ->orWhere('name', 'like', '%Arabic%')
            ->update(['direction' => 'rtl']);

        // Set English language direction to LTR
        DB::table('languages')
            ->where('name', 'like', '%english%')
            ->orWhere('name', 'like', '%English%')
            ->update(['direction' => 'ltr']);

        // Set default direction for any language without direction
        DB::table('languages')
            ->whereNull('direction')
            ->orWhere('direction', '')
            ->update(['direction' => 'ltr']);
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        // Reset all directions to ltr
        DB::table('languages')
            ->update(['direction' => 'ltr']);
    }
};
