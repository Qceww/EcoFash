<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Product;
use App\Models\Color;
use App\Models\CartItem;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $productArray = [
            [
                'productName' => 'Felix',
                'productPrice' => 1,
                'productDescription' => 'BB 71',
                'productColorId1' => 1,
                'productColorId2' => 2,
                'productColorId3' => 3,
                'picture1' => 'images/Home_page_1.png',
                'picture2' => 'images/Home_page_1.png',
                'picture3' => 'images/Home_page_1.png',
                'productQuantity' => 10,
            ],
            [
                'productName' => 'MS',
                'productPrice' => 1,
                'productDescription' => 'BB 49',
                'productColorId1' => 1,
                'productColorId2' => 2,
                'productColorId3' => 3,
                'picture1' => 'images/Home_page_1.png',
                'picture2' => 'images/Home_page_1.png',
                'picture3' => 'images/Home_page_1.png',
                'productQuantity' => 20,
            ],
        ];

        $colorIdArray = [
            [
                'hexacolor' => '#FFF046'
            ],
            [
                'hexacolor' => '#FFF023'
            ],
            [
                'hexacolor' => '#FFFF0F'
            ],
        ];


        $userArray = [
            [
                'firstName' => 'Michael',
                'lastName' => 'Felix',
                'email' => 'mf@gmail.com',
                'phone' => '12345678',
                'password' => 'MF',
            ],
        ];

        $cartItemArray = [
            [
                'customerId' => 1,
                'productId' => 3,
                'cartQuantity' => 1,
                'isChecked' => false,
            ],
        ];

        foreach ($colorIdArray as $color) {
            Color::create($color);
        }

        foreach ($productArray as $product) {
            Product::create($product);
        }
        
        foreach ($userArray as $user) {
            User::create($user);
        }

        foreach ($cartItemArray as $cartItem) {
            CartItem::create($cartItem);
        }

        User::factory(5)->create();
        Color::factory(100)->create();
        Product::factory(50)->create();
    }
}
