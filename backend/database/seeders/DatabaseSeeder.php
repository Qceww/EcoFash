<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Carbon\Carbon;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Product;
use App\Models\Color;
use App\Models\CartItem;
use App\Models\Address;
use App\Models\Reward;
use App\Models\RedeemedReward;
use App\Models\Wishlist;

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

        $addressArray = [
            [
                'customerId' => 1,
                'addressName' => 'RTB',
                'addressDetail' => 'B332',
            ],
            [
                'customerId' => 1,
                'addressName' => 'RTB',
                'addressDetail' => 'AG09',
            ],
        ];
        $rewardArray = [
            [
                'rewardName' => 'Diskon 10',
                'expiryDate' => Carbon::now()->format('Y-m-d'),
                'cost' => 20,
                'location' => 'RTB',
            ],
            [
                'rewardName' => 'Diskon 20',
                'expiryDate' => Carbon::now()->format('Y-m-d'),
                'cost' => 20,
                'location' => 'RTB',
            ],
        ];
        $redeemedArray = [
            [
                'customerId' => 1,
                'rewardId' => 1,
                'rewardQuantity' => 1,
            ],
            [
                'customerId' => 1,
                'rewardId' => 2,
                'rewardQuantity' => 1,
            ],
        ];

        $wishlistArray = [
            [
                'wishlistId' => 1,
                'customerId' => 1,
                'productId' => 1,
            ]
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

        foreach ($addressArray as $addressItem) {
            Address::create($addressItem);
        }

        foreach ($rewardArray as $rewardItem) {
            Reward::create($rewardItem);
        }

        foreach ($redeemedArray as $redeemedItem) {
            RedeemedReward::create($redeemedItem);
        }

        foreach ($wishlistArray as $wishlistItem) {
            Wishlist::create($wishlistItem);
        }

        User::factory(5)->create();
        Color::factory(100)->create();
        Product::factory(50)->create();
    }
}
