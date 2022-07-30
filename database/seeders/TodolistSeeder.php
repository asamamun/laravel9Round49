<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker;

class TodolistSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker\Factory::create();
for ($i=0; $i < 100; $i++) { 
        DB::table('todolists')->insert([
            'name' => $faker->name(),
            'description' =>$faker->sentence(10),
            'done' => $faker->boolean(70),
        ]);           
}
    }
}
