
<?php

//<!-- MADE BY JOCEL AUSTRIA -->
//<!-- MODIFIED BY LAWRENCE MIGUEL II-->
//<!-- This code effectively retrieves and displays event data from a database using a user-friendly search function. 
//By storing the entered search term using the POST method, the code ensures accurate data retrieval. 
//The SQL query searches for the matching event using the search term, storing the event data in an array and 
//displaying it using a while loop. Overall, this code optimizes the retrieval and display of event data, enhancing user experience. -->

session_start();

if (!isset($_SESSION['username'])) {
    header("Location: login_page.php");
    exit();
}

include "config/dbconfig.php";
include "crud_for_eventList/view.php";

// Check if the search form is submitted
if (isset($_POST['search'])) {
    $searchTerm = mysqli_real_escape_string($conn, $_POST['search']);
    $sql = "SELECT e.eventID, e.eventName, e.eventStartDate, e.eventVenue, e.status 
            FROM event e 
            INNER JOIN userevent ue ON e.eventID = ue.eventID 
            INNER JOIN user u ON u.userID = ue.userID
            WHERE e.eventID LIKE '%$searchTerm%' OR e.eventName LIKE '%$searchTerm%'";
    $result = mysqli_query($conn, $sql);

    $events = array();

    if ($result) {
        $num_rows = mysqli_num_rows($result);
        if ($num_rows > 0) {
            while ($event = mysqli_fetch_assoc($result)) {
                $events[] = $event;
            }
        }
    } else {
        // Handle the query error if needed
        error_log("Error executing search query: " . mysqli_error($conn));
    }
}

?>