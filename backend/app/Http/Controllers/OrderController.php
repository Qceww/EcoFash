<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Order;


class OrderController extends Controller
{
    public function createOrder(Request $request){
        $order = Order::create([
            "customerId" => $request->customerId,
            "addressId" => $request->addressId,
            "estimatedDate" => $request->estimatedDate,
            "orderStatus" => $request->orderStatus,
        ]);

        return response()->json($order->id, 200);
        // return $request;

    }

    public function getOrder(Request $request){
        $order= Order::where('customerId', $request->customerId)->get(); 


        return count($order) == 0 ? null : response()->json($order, 200);

    }
}
