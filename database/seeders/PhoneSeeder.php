<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker;
use Illuminate\Support\Facades\DB;

class PhoneSeeder extends Seeder
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
                DB::table('phones')->insert([
                    'name' => $faker->name(),
                    'phone' =>$faker->phoneNumber(),                    
                ]);
                   
        }
    }
}
