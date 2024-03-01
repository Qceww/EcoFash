<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ColorController;
use App\Http\Controllers\CartItemController;
use App\Http\Controllers\AddressController;

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
Route::post('/get-allcolor', [ColorController::class, 'getColor']);
Route::post('/get-cart', [CartItemController::class, 'getCart']);
Route::post('/update-quantity-cart', [CartItemController::class, 'updateQuantityCart']);
Route::post('/update-checked-cart', [CartItemController::class, 'updateCheckedCart']);
Route::post('/delete-cart', [CartItemController::class, 'deleteCart']);
Route::post('/get-address', [AddressController::class, 'getAddress']);
