<?php

namespace App\Models;

class Post 
{
    private static $blog_posts = [
        [
            "title"     => "Judul Post Pertama",
            "slug"      => "judul-post-pertama",
            "author"    => "Junico Tandiago",
            "body"      => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque officia eum beatae quidem tempore nobis nulla quod esse voluptatum inventore dolor recusandae veritatis velit minus eveniet, sequi, ipsum, saepe ad."
        ],

        [
            "title"     => "Judul Post Kedua",
            "slug"      => "judul-post-kedua",
            "author"    => "Niki Ramadhan",
            "body"      => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque officia eum beatae quidem tempore nobis nulla quod esse voluptatum inventore dolor recusandae veritatis velit minus eveniet, sequi, ipsum, saepe ad."
        ],
    ];

    public static function all()
    {
        return collect(self::$blog_posts);
    }

    public static function find($slug)
    {
        $posts = static::all();
          
        // Mencari Post Sesuai Dengan Slug
        // $post = [];
        // foreach($posts as $p) {
        //     if($p["slug"] === $slug){
        //         $post = $p;
        //     }
        // }

        return $posts->firstWhere('slug', $slug);
    }
}
