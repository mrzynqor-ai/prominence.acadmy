<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('bootcamp_categories', function (Blueprint $table) {
            $table->id();
            $table->string('title')->nullable();
            $table->string('slug')->nullable();
            $table->timestamps();
        });

        Schema::create('bootcamps', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id')->nullable();
            $table->string('title')->nullable();
            $table->string('slug')->nullable();
            $table->unsignedBigInteger('category_id')->nullable();
            $table->text('description')->nullable();
            $table->text('short_description')->nullable();
            $table->integer('is_paid')->nullable();
            $table->float('price', 10, 2)->nullable();
            $table->integer('discount_flag')->nullable();
            $table->float('discounted_price', 10, 2)->nullable();
            $table->timestamp('publish_date')->nullable();
            $table->string('thumbnail')->nullable();
            $table->text('faqs')->nullable();
            $table->text('requirements')->nullable();
            $table->text('outcomes')->nullable();
            $table->text('meta_keywords')->nullable();
            $table->text('meta_description')->nullable();
            $table->integer('status')->default(0);
            $table->integer('pending')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('bootcamps');
        Schema::dropIfExists('bootcamp_categories');
    }
};
