<?php 
return [ 
    'client_id' => 'AdEiTxeQ4FpEF1bxs8qgoZAXrIsdSQNz4mnN1P1Ph0_Oy-WUzphgyVuTsM-DgHmWNFLAilPbOsVoeQNs',
	'secret' => 'EAdJFfrxWbsXmRgpAMJ-NBNXe1CAr9iZrPwdxRskCjC36ygt8VCOGy21dtCGFMmR4P6q2xNXIg9MGnDs',
    'settings' => array(
        'mode' => 'sandbox',
        'http.ConnectionTimeOut' => 1000,
        'log.LogEnabled' => true,
        'log.FileName' => storage_path() . '/logs/paypal.log',
        'log.LogLevel' => 'FINE'
    ),
];