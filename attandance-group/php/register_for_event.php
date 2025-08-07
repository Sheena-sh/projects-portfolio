
<?php 

include_once "./config/checkUserEventRegistration.php";
?>

<?php
// register_for_event.php

session_start(); // Start the session if not already started

// Assume you have a function to establish a database connection
include_once "config/dbconfig.php";

// Create a function to check and insert user registration
function registerUserForEvent($userID, $eventID, $conn)
{
    // Insert into the USEREVENT table to register the user for the event
    $insertQuery = "INSERT INTO userevent (userID, eventID, registrationDate) VALUES (?, ?, NOW())";
    $stmt = $conn->prepare($insertQuery);
    $stmt->bind_param("ss", $userID, $eventID);

    if ($stmt->execute()) {
        // Registration successful
        return true;        
    } else {
        // Registration failed
        return false;
    }
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

// Check if the user is already registered
if (!checkUserRegistration($userID, $eventID)) {
    // If not registered, proceed with registration logic
    // Assume $conn is the database connection
    if (!isset($conn)) {
        return false;
    }

    if ($conn) {
        // Call the function to handle registration
        if (registerUserForEvent($userID, $eventID, $conn)) {
            // Respond with success message or any relevant data
            echo json_encode(['success' => true, 'message' => 'Registration successful']);
        } else {
            // Respond with an error message
            echo json_encode(['success' => false, 'message' => 'Registration failed']);
        }

        // Close the database connection
        $conn->close();
    } else {
        // Respond with an error message if the database connection couldn't be established
        echo json_encode(['success' => false, 'message' => 'Internal server error']);
    }
} else {
    // If already registered, respond with a message
    echo json_encode(['success' => false, 'message' => 'User is already registered for this event']);
}
?>
