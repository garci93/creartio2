<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('nombre');
            $table->string('email')->unique();
            $table->string('rol');
            $table->string('nom_completo');
            $table->string('biografia')->nullable();
            $table->string('idioma')->nullable();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->rememberToken();
            $table->timestamps();
        });
    }

    REATE TABLE users (
        id            bigserial       PRIMARY KEY
      , nombre        VARCHAR(255)    NOT NULL UNIQUE
      , email         VARCHAR(255)    NOT NULL
      , rol           VARCHAR(255)    NOT NULL
      , nom_completo  VARCHAR(255)    NOT NULL
      , biografia     VARCHAR(255)
      , idioma        VARCHAR(255)
      , auth_key      VARCHAR(255)
      , password      VARCHAR(255)    NOT NULL
  
  
      $table->id();
              $table->string('nombre');
              $table->string('apellidos');
              $table->string('nickname');
              $table->string('email')->unique();
              $table->timestamp('email_verified_at')->nullable();
              $table->string('password');
              $table->rememberToken();
              $table->foreignId('current_team_id')->nullable();
              $table->string('profile_photo_path', 2048)->nullable();
              $table->timestamps();
  );

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}
