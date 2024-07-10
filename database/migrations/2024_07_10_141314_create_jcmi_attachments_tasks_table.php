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

        Schema::create('jcmi_attachments_tasks', function (Blueprint $table) {
            $table->id();
            $table->foreignId('task_id')->index();
            $table->string('url_attachment', 300);
            $table->foreignId('addfrom')->index();
            $table->timestamps();
        });

        Schema::enableForeignKeyConstraints();
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('jcmi_attachments_tasks');
    }
};
