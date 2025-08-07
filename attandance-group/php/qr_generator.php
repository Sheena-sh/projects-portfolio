

<?php

// MADE BY XANTHE SOLANO -->
// This code generates a QR code that encodes 
//the user's ID and the event's ID. When the QR code is scanned, 
//it returns this data.  , no longer used-->
require 'vendor/autoload.php';

use SimpleSoftwareIO\QrCode\Facades\QrCode;

// Fetch the data from the URL
$userid = $_GET['userid'];
$eventid = $_GET['eventid'];

// Create a new QR code using the QR code library
$qrCode = QrCode::encoding('UTF-8')
            ->size(128)
            ->generate(json_encode(['userid' => $userid, 'eventid' => $eventid]));

// Display the QR code
header('Content-Type: '.$qrCode->getContentType());
echo $qrCode->stream();