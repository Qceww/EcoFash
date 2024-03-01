<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Address;

class AddressController extends Controller
{
    //    
    public function getAddress(Request $request){

        // $address= Address::select('addressId', 'customerId', 'addressName', 'addressDetail', 'phone')->where('customerId', $request->customerId); 
        $address= Address::where('customerId', $request->customerId)->get(); 



        return count($address) == 0 ? null : response()->json($address, 200);          
        // return $request;
    }
}
