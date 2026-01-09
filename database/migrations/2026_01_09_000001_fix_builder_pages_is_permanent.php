<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

return new class extends Migration
{
    /**
     * Run the migrations.
     * This migration fixes the is_permanent flag for all pre-built themes
     * so they can be properly loaded from home_permanent_templates directory.
     */
    public function up(): void
    {
        // List of identifiers that have templates in home_permanent_templates
        $permanentTemplates = [
            'elegant',
            'kindergarden',
            'cooking',
            'university',
            'language',
            'development',
            'marketplace',
            'meditation'
        ];

        // Update is_permanent to 1 for all pages that have permanent templates
        DB::table('builder_pages')
            ->whereIn('identifier', $permanentTemplates)
            ->update(['is_permanent' => 1]);
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        // Revert is_permanent to 0
        $permanentTemplates = [
            'elegant',
            'kindergarden',
            'cooking',
            'university',
            'language',
            'development',
            'marketplace',
            'meditation'
        ];

        DB::table('builder_pages')
            ->whereIn('identifier', $permanentTemplates)
            ->update(['is_permanent' => 0]);
    }
};
