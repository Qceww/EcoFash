<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CartItem;


class CartItemController extends Controller
{
    public function getCart(Request $request){

        $cart= CartItem::where('customerId', $request->customerId)->get(); 

        return count($cart) == 0 ? null : response()->json($cart, 200);
        // return $request;
    }

    public function updateQuantityCart(Request $request){

        $cart= CartItem::where('cartId', $request->cartId)->update(['cartQuantity' => $request->cartQuantity]); 

        return response()->json(200);
        // return $request;
    }

    public function updateCheckedCart(Request $request){

        $cart= CartItem::where('cartId', $request->cartId)->update(['isChecked' => $request->isChecked]); 
        
        return response()->json(200);
        // return $request;
    }
    
    public function deleteCart(Request $request){
        
        $cart= CartItem::where('cartId', $request->cartId)->delete(); 
        
        // return response()->json(200);
        return $request;
    }
}
