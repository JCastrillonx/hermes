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
        Schema::disableForeignKeyConstraints();

        Schema::create('jcmi_parameters', function (Blueprint $table) {
            $table->id();
            $table->string('value', 50);
            $table->foreignId('type')->index();
            $table->longText('data')->nullable();
            $table->foreignId('addfrom')->index();
            $table->tinyInteger('active')->default(1);
            $table->timestamps();
        });

        Schema::enableForeignKeyConstraints();
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('jcmi_parameters');
    }
};
