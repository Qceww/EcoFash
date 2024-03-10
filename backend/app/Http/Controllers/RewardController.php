<?php

namespace App\Http\Controllers;
use App\Models\Reward;

use Illuminate\Http\Request;

class RewardController extends Controller
{
    public function getReward(Request $request){

        $reward= Reward::all(); 

        return response()->json($reward, 200);
    }
}
