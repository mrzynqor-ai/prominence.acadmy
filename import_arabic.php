<?php

/**
 * Arabic Translation Import Script
 * 
 * How to use:
 * 1. Make sure arabic_part1_core.json is in the same folder
 * 2. Run: php import_arabic.php
 * 3. Delete this file after import
 */

require __DIR__ . '/vendor/autoload.php';
$app = require_once __DIR__ . '/bootstrap/app.php';
$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);
$kernel->bootstrap();

use Illuminate\Support\Facades\DB;

echo "=== Arabic Translation Import Script ===\n\n";

// Read translations from JSON file
$jsonFile = __DIR__ . '/arabic_part1_core.json';

if (!file_exists($jsonFile)) {
    echo "ERROR: arabic_part1_core.json not found!\n";
    echo "Make sure the file is in: $jsonFile\n";
    exit(1);
}

$jsonContent = file_get_contents($jsonFile);
$translations = json_decode($jsonContent, true);

if (json_last_error() !== JSON_ERROR_NONE) {
    echo "ERROR: Invalid JSON file!\n";
    echo "Error: " . json_last_error_msg() . "\n";
    exit(1);
}

echo "Loaded " . count($translations) . " translations from JSON file.\n\n";

// Check if Arabic language exists
$arabicLang = DB::table('languages')->where('name', 'Arabic')->first();

if (!$arabicLang) {
    echo "Creating Arabic language...\n";
    $arabicId = DB::table('languages')->insertGetId([
        'name' => 'Arabic',
        'direction' => 'rtl',
        'created_at' => now(),
        'updated_at' => now()
    ]);
    echo "Arabic language created with ID: $arabicId\n";
} else {
    $arabicId = $arabicLang->id;
    echo "Arabic language found with ID: $arabicId\n";

    // Update direction to RTL
    DB::table('languages')->where('id', $arabicId)->update(['direction' => 'rtl']);
    echo "Direction set to RTL\n";
}

echo "\nImporting translations...\n";

$imported = 0;
$updated = 0;
$errors = 0;

foreach ($translations as $phrase => $translated) {
    try {
        if (!is_string($phrase) || !is_string($translated)) {
            $errors++;
            continue;
        }

        $existing = DB::table('language_phrases')
            ->where('language_id', $arabicId)
            ->where('phrase', $phrase)
            ->first();

        if ($existing) {
            DB::table('language_phrases')
                ->where('id', $existing->id)
                ->update([
                    'translated' => $translated,
                    'updated_at' => now()
                ]);
            $updated++;
        } else {
            DB::table('language_phrases')->insert([
                'language_id' => $arabicId,
                'phrase' => $phrase,
                'translated' => $translated,
                'created_at' => now(),
                'updated_at' => now()
            ]);
            $imported++;
        }

        // Progress indicator every 100 items
        if (($imported + $updated) % 100 === 0) {
            echo "  Processed " . ($imported + $updated) . " phrases...\n";
        }
    } catch (Exception $e) {
        $errors++;
        echo "  Error with phrase '$phrase': " . $e->getMessage() . "\n";
    }
}

echo "\n=== Import Complete ===\n";
echo "New translations: $imported\n";
echo "Updated translations: $updated\n";
echo "Errors: $errors\n";
echo "Total processed: " . ($imported + $updated) . "\n";

// Set Arabic as default language
try {
    $existingSetting = DB::table('settings')->where('type', 'language')->first();
    if ($existingSetting) {
        DB::table('settings')->where('type', 'language')->update(['description' => 'Arabic']);
    } else {
        DB::table('settings')->insert([
            'type' => 'language',
            'description' => 'Arabic'
        ]);
    }
    echo "\n✅ Arabic set as default language!\n";
} catch (Exception $e) {
    echo "\n⚠️ Could not set default language: " . $e->getMessage() . "\n";
}

echo "\n🎉 Done! You can now delete this file.\n";
echo "   Visit your website to see the Arabic translations.\n";
