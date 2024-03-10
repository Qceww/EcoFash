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

    public function updateQuantityProduct(Request $request){

        $product = Product::where('productId', $request->productId)->first(); // Retrieve the product
        if ($product) {
            $currentQuantity = $product->productQuantity;
            $product= Product::where('productId', $request->productId)->update(['productQuantity' => ($currentQuantity - $request->productQuantity)]);
        }


        return response()->json(200);
        // return $request;
    }
}
