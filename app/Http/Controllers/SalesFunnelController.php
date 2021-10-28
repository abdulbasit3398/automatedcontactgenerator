<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SalesFunnelController extends Controller
{
    public function custom_sales_funnels()
    {
        return view('user.sales_funnel.custom_sales_funnel');
    }
}
