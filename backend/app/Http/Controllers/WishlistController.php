<?php

namespace App\Http\Controllers;
use App\Models\Wishlist;

use Illuminate\Http\Request;

class WishlistController extends Controller
{
    public function getWishlist(Request $request){

        $wishlist= Wishlist::where('customerId', $request->customerId)->get(); 

        return count($wishlist) == 0 ? null : response()->json($wishlist, 200);
        // return $request;
    }
}
