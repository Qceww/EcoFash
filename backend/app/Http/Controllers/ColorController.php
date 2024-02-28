<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Color;


class ColorController extends Controller
{
    public function getColor(Request $request){
        $color = Color::all();

        return $color;

    }
}
