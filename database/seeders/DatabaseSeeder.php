<?php

namespace Database\Seeders;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

        User::create([
            'name' => 'Junico Tandiago',
            'username' => 'junicotandiago',
            'email' => 'junicotandiago@gmail.com',
            'password' => bcrypt('password')
        ]);

        User::factory(3)->create();

      

        // User::create([
        //     'name' => 'Niki Ramadhan',
        //     'email' => 'nikiramadhan@gmail',
        //     'password' => bcrypt('12345')
        // ]);

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming',
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal',
        ]);

        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug'  => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        //     'body'  => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores deserunt alias nam est. Laudantium saepe ipsa quae hic accusantium delectus neque architecto tempora enim rerum cupiditate eaque doloremque illum vero officiis perspiciatis maiores molestias ullam eos similique, possimus voluptate! Sapiente corrupti, voluptate laudantium obcaecati soluta provident hic a repellat. Eius dolorem sint, a consectetur repudiandae sunt harum tempora id animi architecto impedit quibusdam debitis blanditiis quidem ut labore necessitatibus nisi eos non. Ullam mollitia distinctio architecto quia necessitatibus quidem! Alias, accusamus dignissimos cum numquam quaerat libero quae fuga iste blanditiis labore, ipsam similique impedit eligendi beatae, fugit sit voluptatem illo.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        //  Post::create([
        //     'title' => 'Judul Keuda',
        //     'slug'  => 'judul-kedua',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        //     'body'  => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores deserunt alias nam est. Laudantium saepe ipsa quae hic accusantium delectus neque architecto tempora enim rerum cupiditate eaque doloremque illum vero officiis perspiciatis maiores molestias ullam eos similique, possimus voluptate! Sapiente corrupti, voluptate laudantium obcaecati soluta provident hic a repellat. Eius dolorem sint, a consectetur repudiandae sunt harum tempora id animi architecto impedit quibusdam debitis blanditiis quidem ut labore necessitatibus nisi eos non. Ullam mollitia distinctio architecto quia necessitatibus quidem! Alias, accusamus dignissimos cum numquam quaerat libero quae fuga iste blanditiis labore, ipsam similique impedit eligendi beatae, fugit sit voluptatem illo.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        //  Post::create([
        //     'title' => 'Judul Ketiga',
        //     'slug'  => 'judul-ketiga',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        //     'body'  => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores deserunt alias nam est. Laudantium saepe ipsa quae hic accusantium delectus neque architecto tempora enim rerum cupiditate eaque doloremque illum vero officiis perspiciatis maiores molestias ullam eos similique, possimus voluptate! Sapiente corrupti, voluptate laudantium obcaecati soluta provident hic a repellat. Eius dolorem sint, a consectetur repudiandae sunt harum tempora id animi architecto impedit quibusdam debitis blanditiis quidem ut labore necessitatibus nisi eos non. Ullam mollitia distinctio architecto quia necessitatibus quidem! Alias, accusamus dignissimos cum numquam quaerat libero quae fuga iste blanditiis labore, ipsam similique impedit eligendi beatae, fugit sit voluptatem illo.',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
    }
}
