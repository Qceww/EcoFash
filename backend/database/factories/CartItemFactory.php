<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\task>
 */
class CartItemFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'customerId' => fake()->numberBetween(1,5),
            'productId' => fake()->numberBetween(1,50),
            'cartQuantity' => 1,
            'isChecked' => false,
        ];
        
    }
}