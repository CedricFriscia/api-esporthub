<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Article;
use App\Models\Page;
use App\Models\Rights;
use App\Models\Links;
use App\Models\Types;
use App\Models\Roles;
use App\Models\User;

class EsportData extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Article::factory()->count(10)->create();
        Page::factory()->count(10)->create();
        Types::factory()->count(10)->create();
        User::factory()->count(10)->create();
        Links::factory()->count(10)->create();
    }
}
