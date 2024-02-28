<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Color;


class ProductController extends Controller
{
    public function getProducts(Request $request){

        $product= Product::get(); 

        return response()->json($product, 200);
    }

    public function getDetailedProduct(Request $request){


        $product = Product::where('productId', $request->productId)->first();

        return $product;
    }
}
