<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ColorController;
use App\Http\Controllers\CartItemController;
use App\Http\Controllers\AddressController;
use App\Http\Controllers\RedeemedRewardController;
use App\Http\Controllers\RewardController;
use App\Http\Controllers\WishlistController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\OrderItemController;
use App\Http\Controllers\BlogController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::post('/register-user', [UserController::class, 'registerUser']);
Route::post('/login-user', [UserController::class, 'loginUser']);
Route::post('/get-products', [ProductController::class, 'getProducts']);
Route::post('/get-detailed-product', [ProductController::class, 'getDetailedProduct']);
Route::post('/update-quantity-product', [ProductController::class, 'updateQuantityProduct']);
Route::post('/get-allcolor', [ColorController::class, 'getColor']);
Route::post('/get-cart', [CartItemController::class, 'getCart']);
Route::post('/update-quantity-cart', [CartItemController::class, 'updateQuantityCart']);
Route::post('/update-checked-cart', [CartItemController::class, 'updateCheckedCart']);
Route::post('/delete-cart', [CartItemController::class, 'deleteCart']);
Route::post('/get-address', [AddressController::class, 'getAddress']);
Route::post('/get-detailed-address', [AddressController::class, 'getDetailedAddress']);
Route::post('/get-redeemed-reward', [RedeemedRewardController::class, 'getRedeemedReward']);
Route::post('/get-reward', [RewardController::class, 'getReward']);
Route::post('/get-wishlist', [WishlistController::class, 'getWishlist']);
Route::post('/create-order', [OrderController::class, 'createOrder']);
Route::post('/create-order-item', [OrderItemController::class, 'createOrderItem']);
Route::post('/get-order', [OrderController::class, 'getOrder']);
Route::post('/get-order-item', [OrderItemController::class, 'getOrderItem']);
Route::post('/get-blogs', [BlogController::class, 'getBlogs']);
Route::post('/get-detailed-blog', [BlogController::class, 'getDetailedBlog']);
