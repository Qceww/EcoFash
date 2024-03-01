<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class UserController extends Controller
{
    public function registerUser(Request $request){
        $user = User::create([
            "firstName" => $request->firstName,
            "lastName" => $request->lastName,
            "email" => $request->email,
            "phone" => $request->phone,
            "password" => $request->password,
        ]);

        return response()->json(['message' => 'User Created Successfully'], 200);

    }

    public function loginUser(Request $request){

        $user = User::where([
            'email' => $request->email,
            'password' => $request->password
        ])->first(); 

        return response()->json($user, 200);    
    }
}
