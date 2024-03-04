<?php

namespace App\Http\Controllers;
use App\Models\RedeemedReward;

use Illuminate\Http\Request;

class RedeemedRewardController extends Controller
{
    public function getRedeemedReward(Request $request){

        // $address= Address::select('addressId', 'customerId', 'addressName', 'addressDetail', 'phone')->where('customerId', $request->customerId); 
        $reward= RedeemedReward::where('customerId', $request->customerId)->get(); 

        

        return count($reward) == 0 ? null : response()->json($reward, 200);          
        // return $request;
    }
}
