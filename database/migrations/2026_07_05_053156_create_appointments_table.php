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
        Schema::create('cl_appointments', function (Blueprint $table) {
            $table->id();
            $table->string('full_name');
            $table->string('email');
            $table->string('phone', 30);
            $table->string('service');
            $table->date('appointment_date');
            $table->time('appointment_time');
            $table->string('subject')->nullable();
            $table->text('message')->nullable();
            $table->string('country')->nullable();
            $table->enum('status', [
                'Pending',
                'Confirmed',
                'Cancelled'
            ])->default('Pending');
            $table->timestamps();
        });
    }
    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('appointments');
    }
};
