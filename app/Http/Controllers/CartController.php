<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Cart;

class CartController extends Controller
{
   
    public function index()
    {
        $carts=Cart::content();
        return view('user.cart',compact('carts'));
    }

   
    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        $cart = Cart::Add([
            'id' => 1,
            'name' => 'Starter',
            'qty' => 1,
            'price' => 20,
            'weight' => 0,
            
        ]);
        return response()->json(
            [
                'success' => true,
                'count' => Cart::count(),
                'message' => 'Cart Add Successfully'
            ],
            200
        );
    }

    public function qtyUpdate(Request $request)
    {
        $rowId = $request->CartId;
      switch ($request->buttonId){
          case  'add':
              Cart::update(
                  $rowId, [
                  'qty' => $request->qty,
              ]);
              break;
          case 'reduce':
              Cart::update(
                  $rowId, [
                  'qty' => $request->qty,
              ]);

              break;

      }
      }
    public function show($id)
    {
        //
    }

  
    public function edit($id)
    {
        //
    }

   
    public function update(Request $request,$id)
    {
        //
    }

    public function destroy($id)
    {
        $rowId = explode(',', $id);

        Cart::remove($rowId[1]);
        return response()->json(
            [
                'success' => true,
                'message' => 'Cart Delete Successfully'
            ],
            200
        );
    }
}
