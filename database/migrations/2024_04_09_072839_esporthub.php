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
        Schema::dropIfExists('user_articles');
        Schema::dropIfExists('page_articles');
        Schema::dropIfExists('page_twitch');
        Schema::dropIfExists('user_role');
        Schema::dropIfExists('links');
        Schema::dropIfExists('types');
        Schema::dropIfExists('rights');
        Schema::dropIfExists('roles');
        Schema::dropIfExists('articles');
        Schema::dropIfExists('pages');

        // Create 'pages' table
        Schema::create('pages', function (Blueprint $table) {
            $table->increments('id_page');
            $table->string('name')->unique(); 
            $table->string('header'); 
            $table->string('description');
            $table->timestamps(); 
        });

        // Create 'articles' table
        Schema::create('articles', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->text('content'); 
            $table->timestamps();
        });

        // Create 'roles' table
        Schema::create('roles', function (Blueprint $table) {
            $table->increments('id_role');
            $table->string('name')->unique(); 
            $table->string('description'); 
            $table->timestamps(); 
        });

        // Create 'rights' table
        Schema::create('rights', function (Blueprint $table) {
            $table->increments('id_right');
            $table->string('name')->unique(); 
            $table->string('description'); 
            $table->timestamps(); 
        });

        // Create 'types' table
        Schema::create('types', function (Blueprint $table) {
            $table->increments('id_type');
            $table->string('name')->unique(); 
            $table->timestamps(); 
        });

        // Create 'links' table
        Schema::create('links', function (Blueprint $table) {
            $table->increments('id_link'); 
            $table->string('url')->unique(); 
            $table->timestamps(); 
        });

        // Create 'user_role' table for relationship between users and roles
        Schema::create('user_role', function (Blueprint $table) {
            $table->integer('id_user'); 
            $table->integer('id_right'); 
            $table->string('name'); 
            $table->timestamps(); 
        });

        // Create 'user_articles' table for relationship between users and articles
        Schema::create('user_articles', function (Blueprint $table) {
            $table->integer('id_user'); 
            $table->integer('id_article'); 
            $table->string('name'); 
            $table->timestamps(); 
        });

        // Create 'page_articles' table for relationship between pages and articles
        Schema::create('page_articles', function (Blueprint $table) {
            $table->integer('id_page'); 
            $table->integer('id_article'); 
            $table->timestamps(); 
        });

        // Create 'page_twitch' table for relationship between pages and Twitch
        Schema::create('page_twitch', function (Blueprint $table) {
            $table->integer('id_page'); 
            $table->integer('id_twitch'); 
            $table->timestamps(); 
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        // Drop all created tables
        Schema::dropIfExists('page_twitch');
        Schema::dropIfExists('page_articles');
        Schema::dropIfExists('user_articles');
        Schema::dropIfExists('user_role'); 
        Schema::dropIfExists('twitch');
        Schema::dropIfExists('types');
        Schema::dropIfExists('rights');
        Schema::dropIfExists('roles');
        Schema::dropIfExists('articles');
        Schema::dropIfExists('pages');
    }
};
