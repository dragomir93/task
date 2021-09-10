<?php

namespace Tests\Feature;
use Tests\TestCase;

class ArticleTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function testGetArticles()
    {
        $response = $this->get('http://127.0.0.1:8000/api/getAllArticles');     

        if ($response == true) {

            $response->assertStatus(200);

        } else {

            $response->assertStatus(400);

        }
    }

        /**
     * A basic feature test example.
     *
     * @return void
     */
    public function testGetArticleById()
    {
        $faker = \Faker\Factory::create();
        $article = $faker->numberBetween(1,3);
        $response = $this->get('http://127.0.0.1:8000/api/article/'.$article);

        if ($response == true) {

            $response->assertStatus(200);
    
        } else {
    
            $response->assertStatus(400);
    
        }
    }   

    public function testInsertArticle()
    {
        $faker = \Faker\Factory::create();

        $article = [
            "title" => "Adidas Diabloo",
            "description" => $faker->sentence,
            "image" => "image/adidas.jpg",
            "price" => $faker->numberBetween(30,300)
        ];

        $this->json('POST', 'http://127.0.0.1:8000/api/add/article', $article, ['Content-Type' => 'application/json'])
            ->assertStatus(200)
            ->assertJsonStructure([
                "data" => 
                [
                    'id',
                    'title',
                    'description',
                    'image',
                    'price',
                ]
            ]);
    }

    public function testUpdateArticle()
    {
        $faker = \Faker\Factory::create();

        $article_id = 35;

        $article = [
            "title" => "Adidas Testttt123",
            "description" => $faker->sentence,
            "image" => "image/adidastest.jpg",
            "price" => $faker->numberBetween(30,300)
        ];

        $this->json('PUT', 'http://127.0.0.1:8000/api/update/article/'.$article_id, $article, ['Content-Type' => 'application/json'])
            ->assertStatus(200);
    }


    public function testDeleteArticle()
    {
     
        $article_id = 27;

        $this->json('DELETE', 'http://127.0.0.1:8000/api/delete/article/' . $article_id, [], ['Content-Type' => 'application/json'])
            ->assertStatus(200);
    }
}
