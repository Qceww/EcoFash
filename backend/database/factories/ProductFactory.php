<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\task>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $color = array(1,2,3);
        $picture = array('images/Home_page_new_arrival_1.png', 'images/Home_page_new_arrival_2.png', 'images/Home_page_new_arrival_3.png', 'images/Home_page_new_arrival_4.png');

        return [
            'productName' => fake()->words(3,true),
            'productPrice' => fake()->randomnumber(3,true),
            'productDescription' => fake()->words(5,true),
            'productColorId1' => fake()->numberBetween(1,50),
            'productColorId2' => fake()->numberBetween(1,50),
            'productColorId3' => fake()->numberBetween(1,50),
            'picture1' => $picture[mt_rand(0,3)],
            'picture2' => $picture[mt_rand(0,3)],
            'picture3' => $picture[mt_rand(0,3)],
            'productQuantity' => fake()->randomnumber(2),
        ];
    }
}