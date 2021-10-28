<?php

namespace App\Http\Controllers;

use SoapClient;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return redirect()->route('dashboard');
    }
    public function test()
    {
        
     
        // Create a new SOAP client
        $client = new SoapClient('https://ws.cdyne.com/phoneverify/phoneverify.asmx?wsdl');
        
        // Specify required info to send a text message
        $param = array(
          'PhoneNumbers' => array('17575449510', '18009843710','03247763398'),
          'LicenseKey' => '8760a4dd-e40f-4ea1-930e-03e3efcce037'
        );
        
        $result = $client->CheckPhoneNumbers($param);
        
        // View the response from CDYNE
        dd($result);
        
        
    }
}
