![WpuBlog-Capture](https://user-images.githubusercontent.com/75848911/157474044-001f46a2-b6a1-45fd-a1e8-8552e8a6d65c.JPG)

<h2>Instalasi</h2>

1. <h5>Clone Repository</h5>
    
```
    - git clone https://github.com/junicotandiago198/Laravel-Blog.git
    - cd Laravel-Blog
    - composer install
    - cp .env.example .env
```
    
2. <h5>Buka .env lalu ubah baris berikut sesuai dengan databasemu yang ingin dipakai</h5>
```
   - DB_PORT=3306
   - DB_DATABASE=laravel
   - DB_USERNAME=root
   - DB_PASSWORD=
```

3. <h5>Instalasi website</h5>
```
    - php artisan key:generate
    - php artisan migrate --seed
```

4. <h5>Jalankan website</h5>
```
    - php artisan serve
```


    
