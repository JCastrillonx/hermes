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

        Schema::create('jcmi_timers_task', function (Blueprint $table) {
            $table->id(); $table->foreignId('task_id')->index();
            $table->string('start_time', 64);
            $table->string('end_time', 64);
            $table->foreignId('user_id')->index();
            $table->text('note')->nullable();
            $table->timestamps();
        });

        Schema::enableForeignKeyConstraints();
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('jcmi_timers_task');
    }
};
