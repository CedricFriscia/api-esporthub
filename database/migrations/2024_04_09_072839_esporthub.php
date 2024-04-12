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
        Schema::create('page_link', function (Blueprint $table) {
            $table->integer('id_page'); 
            $table->integer('id_link'); 
            $table->timestamps(); 
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        // Drop all created tables
        Schema::dropIfExists('page_links');
        Schema::dropIfExists('page_articles');
        Schema::dropIfExists('user_articles'); 
        Schema::dropIfExists('links');
        Schema::dropIfExists('types');
        Schema::dropIfExists('articles');
        Schema::dropIfExists('pages');
    }
};
