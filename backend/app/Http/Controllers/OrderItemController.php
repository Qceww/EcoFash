<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\OrderItem;


class OrderItemController extends Controller
{
    public function createOrderItem(Request $request){
        $orderItem = OrderItem::create([
            "orderId" => $request->orderId,
            "productId" => $request->productId,
            "orderQuantity" => $request->orderQuantity,
        ]);

        return response()->json(['message' => 'Order Item Created Successfully'], 200);
        // return $request;
    }

    public function getOrderItem(Request $request){

        $orderItem= OrderItem::where('orderId', $request->orderId)->get(); 


        return count($orderItem) == 0 ? null : response()->json($orderItem, 200);          
    }

}