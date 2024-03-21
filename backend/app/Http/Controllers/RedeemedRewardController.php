<?php

namespace App\Http\Controllers;
use App\Models\RedeemedReward;
use App\Models\User;

use Illuminate\Http\Request;

class RedeemedRewardController extends Controller
{
    public function getRedeemedReward(Request $request){

        // $address= Address::select('addressId', 'customerId', 'addressName', 'addressDetail', 'phone')->where('customerId', $request->customerId); 
        $reward= RedeemedReward::where('customerId', $request->customerId)->get(); 

        

        return count($reward) == 0 ? null : response()->json($reward, 200);          
        // return $request;
    }

    public function exchangeNewReward(Request $request){

        $reward= RedeemedReward::create([
            "customerId" => $request->customerId,
            "rewardId" => $request->rewardId,
            "rewardQuantity" => $request->rewardQuantity,
        ]); 

        $user = User::where('userId', $request->customerId)->first();
        if ($user) {
            $currentPoint = $user->memberPoint;
            $currentUser= User::where('userId', $user->userId)->update(['memberPoint' => $currentPoint - $request->rewardCost]);
        }
        
        
        return $currentUser;          
    }

    public function exchangeReward(Request $request){

        $currentReward = RedeemedReward::where('redeemId', $request->redeemId)->first();
        if ($currentReward) {
            $currentQuantity = $currentReward->rewardQuantity;
            $reward= RedeemedReward::where('redeemId', $request->redeemId)->update(['rewardQuantity' => $currentQuantity + 1]);
        }

        $user = User::where('userId', $currentReward->customerId)->first();
        if ($user) {
            $currentPoint = $user->memberPoint;
            $currentUser= User::where('userId', $user->userId)->update(['memberPoint' => $currentPoint - $request->rewardCost]);
        }

        

        // return response()->json(200);          
        return $currentUser;
    }
}
