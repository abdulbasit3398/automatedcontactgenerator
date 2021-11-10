<?php

namespace App\Http\Controllers\Gigi;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class GigiController extends Controller
{
    public function index(){
        return view('user.gigi.index');
    }

    public function image(Request $request){
        $src = $request->src;
        return view('user.gigi.image',compact('src'));
    }
}
