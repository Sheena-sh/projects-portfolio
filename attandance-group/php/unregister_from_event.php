
<?php
//<!-- MADE BY JOCEL AUSTRIA -->
//<!-- MODIFIED BY LAWRENCE MIGUEL II -->
//<!-- This code serves as an endpoint for a user to unregister themselves from an event. 
//The user's ID is retrieved from the session data, and the eventID is received from a POST request. 
//The unregisterUserFromEvent function then executes a SQL query to delete the corresponding 
//registration record from the USEREVENT table in the database. 
//By unregistering the user, they are effectively removed from the list of attendees for the specified event. -->

include_once "./config/checkUserEventRegistration.php";

session_start(); // Start the session if not already started

// Assume you have a function to establish a database connection
include_once "config/dbconfig.php";

function unregisterUserFromEvent($userID, $eventID, $conn)
{
    // Delete the registration record from the USEREVENT table
    $deleteQuery = "DELETE FROM userevent WHERE userID = ? AND eventID = ?";
    $stmt = $conn->prepare($deleteQuery);
    $stmt->bind_param("ss", $userID, $eventID);

    return $stmt->execute();
}

// Assume you have the user's ID stored in $userID
$userID = $_SESSION['user_id']; // Replace with the actual user ID

// Assume you passed the eventID through POST
$postData = json_decode(file_get_contents("php://input"), true);

// Log the entire POST data
error_log('Received POST data: ' . print_r($postData, true));

// Retrieve the eventID
$eventID = $postData['eventID'];
// Log the value of eventID
error_log("Received eventID: $eventID");

// Check if the user is registered
if (checkUserRegistration($userID, $eventID)) {
    // If registered, proceed with unregistration logic
    // Assume $conn is the database connection
    if (!isset($conn)) {
        echo json_encode(['success' => false, 'message' => 'Internal server error']);
        exit;
    }

    if ($conn) {
        // Call the function to handle unregistration
        if (unregisterUserFromEvent($userID, $eventID, $conn)) {
            // Respond with success message or any relevant data
            echo json_encode(['success' => true, 'message' => 'Unregistration successful']);
        } else {
            // Respond with an error message
            echo json_encode(['success' => false, 'message' => 'Unregistration failed']);
        }

        // Close the database connection
        $conn->close();
    } else {
        // Respond with an error message if the database connection couldn't be established
        echo json_encode(['success' => false, 'message' => 'Internal server error']);
    }
} else {
    // If not registered, respond with a message
    echo json_encode(['success' => false, 'message' => 'User is not registered for this event']);
}
?>
