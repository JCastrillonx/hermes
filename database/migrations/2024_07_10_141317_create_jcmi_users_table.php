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

        Schema::create('jcmi_users', function (Blueprint $table) {
            $table->id();
            $table->string('fullname', 100);
            $table->string('email');
            $table->string('password');
            $table->foreignId('role')->index();
            $table->string('profile_img', 300);
            $table->string('job_position');
            $table->timestamp('email_verified_at')->nullable();
            $table->tinyInteger('active')->default(1);
            $table->rememberToken();
            $table->timestamps();
            
        });

        Schema::create('jcmi_password_reset_tokens', function (Blueprint $table) {
            $table->string('email')->primary();
            $table->string('token');
            $table->timestamp('created_at')->nullable();
        });

        Schema::create('jcmi_sessions', function (Blueprint $table) {
            $table->string('id')->primary();
            $table->foreignId('user_id')->nullable()->index()->constrained('jcmi_users')->name('fk_jcmi_sessions_user_id');
            $table->string('ip_address', 45)->nullable();
            $table->text('user_agent')->nullable();
            $table->longText('payload');
            $table->integer('last_activity')->index();
        });

        Schema::enableForeignKeyConstraints();
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('jcmi_users');
        Schema::dropIfExists('jcmi_password_reset_tokens');
        Schema::dropIfExists('jcmi_sessions');
    }
};
