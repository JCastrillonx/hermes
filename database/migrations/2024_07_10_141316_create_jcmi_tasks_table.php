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

        Schema::create('jcmi_tasks', function (Blueprint $table) {
            $table->id();
            $table->string('subject');
            $table->text('description');
            $table->foreignId('priority')->index();
            $table->date('startdate');
            $table->date('duedate');
            $table->dateTime('datefinished')->nullable();
            $table->foreignId('addfrom')->index();
            $table->foreignId('status')->index();
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
        Schema::dropIfExists('jcmi_tasks');
    }
};
