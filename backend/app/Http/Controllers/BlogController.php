<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Blog;

class BlogController extends Controller
{
    public function getBlogs(Request $request){

        $blog= Blog::get(); 

        return response()->json($blog, 200);
    }

    public function getDetailedBlog(Request $request){


        $blog = Blog::where('blogId', $request->blogId)->first();

        return $blog;
    }
}
