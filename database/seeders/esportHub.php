<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class esportHub extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('users')->insert([
            'name' => Str::random(10),
            'email' => Str::random(10).'@example.com',
            'password' => Hash::make('password'),
        ]);

        DB::table('articles')->insert([
            'name' => Str::random(10),
            'content' => Str::random(10),
        ]);

        DB::table('pages')->insert([
            'name' => Str::random(10),
            'header' => Str::random(10),
            'description' => Str::random(10),
        ]);

        DB::table('rights')->insert([
            'name' => Str::random(10),
            'description' => Str::random(10),
        ]);


        DB::table('roles')->insert([
            'name' => Str::random(10),
            'description' => Str::random(10),
        ]);


        DB::table('twtich')->insert([
            'name' => Str::random(10),
        ]);


        DB::table('types')->insert([
            'name' => Str::random(10),
        ]);
    }
}
