<?php

namespace Database\Seeders;

use Carbon\Carbon;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $password = 'geheim';
        $hashed = Hash::make($password);

        DB::table('users')->insert([
            'username' => 'JorisWulms',
            'firstname' => 'Joris',
            'lastname' => 'Wulms',
            'email' => 'joris@gmail.com',
            'password' => $hashed,
            'dateofbirth' => '2004-10-05',
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now(),
        ]);

        DB::table('users')->insert([
            'username' => 'RaúlZande',
            'firstname' => 'Raúl',
            'lastname' => 'van der Zande',
            'email' => 'raúl@gmail.com',
            'password' => $hashed,
            'dateofbirth' => '2000-01-06',
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now(),
        ]);

        DB::table('users')->insert([
            'username' => 'MarijnSlaats',
            'firstname' => 'Marijn',
            'lastname' => 'Slaats',
            'email' => 'marijn@gmail.com',
            'password' => $hashed,
            'dateofbirth' => '2003-12-04',
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now(),
        ]);
    }
}
