

<!DOCTYPE html>
<html data-bs-theme="light" lang="en">

<?php include('includes/head.php'); ?>

<?php
//MADE BY JOCEL AUSTRIA -->
//MODIFIED BY LAWRENCE MIGUEL II AND XANTHE SOLANO -->
//This code is used to display event details and its sub-events
 //in a PHP web application. The main event details are fetched from 
 //the 'event' table using the function getEventDetails($eventID). 
 //On the other hand, the sub-events associated with the main event are 
 //retrieved using the function getSubEvents($eventID). 
 //Both functions use prepared statements to avoid SQL injection. -->
include_once "./config/dbconfig.php";

function getEventDetails($eventID)
{
    global $conn;
    $sql = "SELECT * FROM event WHERE eventID = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $eventID);
    $stmt->execute();
    $result = $stmt->get_result();
    $eventDetails = $result->fetch_assoc();
    $stmt->close();
    return $eventDetails;
}

function getSubEvents($eventID)
{
    global $conn;
    $sql = "SELECT * FROM event WHERE parentEvent = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $eventID);
    $stmt->execute();
    $result = $stmt->get_result();
    $subEvents = array();
    while ($row = $result->fetch_assoc()) {
        $subEvents[] = $row;
    }
    $stmt->close();
    return $subEvents;
}


function getPosts($eventID)
{
    global $conn;
    $sql = "SELECT p.*, m.mediaType, m.fileExtension, m.mediaLink
            FROM post p
            INNER JOIN eventpost ep ON p.postID = ep.postID
            LEFT JOIN mediaresource m ON p.postID = m.postID
            WHERE ep.eventID = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $eventID);
    $stmt->execute();
    $result = $stmt->get_result();
    $posts = array();
    while ($row = $result->fetch_assoc()) {
        $posts[$row['postID']]['postDate'] = $row['postDate'];
        $posts[$row['postID']]['textContent'] = $row['textContent'];
        $posts[$row['postID']]['posterID'] = $row['posterID'];
        $posts[$row['postID']]['attachments'][] = array(
            'mediaType' => $row['mediaType'],
            'fileExtension' => $row['fileExtension'],
            'mediaLink' => $row['mediaLink']
        );
    }
    $stmt->close();
    return $posts;
}
?>

<?php
// Check if eventID is set in the URL
if (isset($_GET['eventID'])) {
    // Assume you have a function to fetch event details, subevents, and posts based on eventID
    $eventID = $_GET['eventID'];

    $eventDetails = getEventDetails($eventID);
    $subEvents = getSubEvents($eventID);
    $posts = getPosts($eventID);
?>
<?php
// Assuming $eventDetails is already defined
$currentDateTime = new DateTime(); // Current date and time

$eventStartDateTime = new DateTime($eventDetails['eventStartDate']);
$eventEndDateTime = new DateTime($eventDetails['eventEndDate']);

// Check if the current date and time are within the event start and end times
if ($currentDateTime >= $eventStartDateTime && $currentDateTime <= $eventEndDateTime) {
    // The current date and time are within the event time range
    $showGenerateQRCode = true;
} else {
    // The current date and time are outside the event time range
    $showGenerateQRCode = false;
}
?>


<?php
function absoluteURL($url)
{
    // Check if the URL is already absolute
    if (filter_var($url, FILTER_VALIDATE_URL)) {
        return $url; // Return the URL unchanged
    } else {
        // If it's a relative URL, prepend the base URL
        $baseURL = 'http://admin_module.com:4000'; // Change this to your actual base URL
        return $baseURL . '/' . $url;
    }
}
?>


<?php
include_once "config/checkUserEventRegistration.php";
?>


    <?php
    // Assume you have the user's ID stored in $userID
    $userID = isset($_SESSION['user_id']) ? $_SESSION['user_id'] : null;

    // Check if the user is registered for the current event
    $isUserRegistered = checkUserRegistration($userID, $eventID);

    ?>

    <body>
        <?php include('includes/navbar.php') ?>

        <div id="wrapper">
            <div class="d-flex flex-column" id="content-wrapper" style="backdrop-filter: opacity(0.52);">
                <div id="content" style="background: #FFFFFF; color: #333333; backdrop-filter: opacity(0.24);">



                    <!-- Start: Current Event Details -->
                    <div class="container py-4">
                        <div class="card text-center mx-auto" style="max-width: 600px;">
                            <div class="card-header bg-primary text-white">
                                <h2 class="card-title mb-0">Current Event: <?= $eventDetails['eventName'] ?></h2>
                            </div>
                            <div class="card-body">
                                <p class="card-text">Event Date: <?= $eventDetails['eventStartDate'] ?> - <?= $eventDetails['eventEndDate'] ?></p>
                                <p class="card-text">Event Venue: <?= $eventDetails['eventVenue'] ?></p>
                                <div class="mt-3">
                                    <?php if ($isUserRegistered) : ?>
                                        <?php if ($showGenerateQRCode) : ?>
                                        <button id="generateQRCodeBtn" class="btn btn-primary btn-sm" role="button" style="font-size: 18px;">
                                            Generate QR code
                                        </button>
                                    <?php endif; ?>
                                    <?php else : ?>
                                        <?php  $registrationStatus = $eventDetails['registrationStatus'];
                                        if ($registrationStatus == 1) : ?>
                                            <button class="btn btn-primary btn-sm" type="button" onclick="registerForEvent('<?= $eventDetails['eventID'] ?>')">
                                                Register for Event
                                            </button>
                                        <?php else : ?>
                                            <p class="text-muted">Event is currently unavailable for registration.</p>
                                        <?php endif; ?>
                                        <?php if (!$isUserRegistered) : ?>
                                            <p class="text-muted">Please register for the main event to access sub-events and posts.</p>
                                        <?php endif; ?>
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End: Current Event Details -->

                    <div id="qr-code" class="container">
                    </div>
                    <!-- End: Current Event Details -->

                    <!-- Start: Sub-Events in Card View -->
                    <div class="container">
                        <div class="row">
                            <?php foreach ($subEvents as $subEvent) : ?>
                                <?php
                                // Check if the user is registered for the current sub-event
                                $isUserRegisteredForSubEvent = checkUserRegistration($userID, $subEvent['eventID']);
                                ?>
                                <div class="col-md-6">
                                    
                                        <div class="card mb-4" style="box-shadow: 0px 0px 8px; margin-top: 30px; padding: 20px; background: #F5F5F5; backdrop-filter: opacity(0.49);">
                                            <div class="card-body">
                                                <h3 class="fs-3 fw-semibold text-center"><?= $subEvent['eventName'] ?></h3>
                                                <p class="text-center">Start Date: <?= $subEvent['eventStartDate'] ?></p>
                                                <p class="text-center">End Date: <?= $subEvent['eventEndDate'] ?></p>
                                                <div class="text-center">
                                                    <?php if ($isUserRegisteredForSubEvent) : ?>
                                                        <button class="btn btn-primary btn-lg fw-semibold" type="button" onclick="unregisterForEvent('<?= $subEvent['eventID'] ?>')">
                                                            Unregister
                                                        </button>
                                                    <?php else : ?>
                                                        <button class="btn btn-primary btn-lg fw-semibold" type="button" onclick="registerForEvent('<?= $subEvent['eventID'] ?>')">
                                                            Register

                                                        </button>
                                                    <?php endif; ?>
                                                    <button class="btn btn-secondary btn-lg fw-semibold" type="button" onclick="redirectToEventDetails('<?= $subEvent['eventID'] ?>')">
                                                        View
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                   
                                </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                    <!-- End: Sub-Events in Card View -->

                    <!-- Start: Posts of the Current Event -->
                    <?php if ($isUserRegistered) : ?>
                        <div class="container py-4 py-xl-5">
                            <div class="row mb-5">
                                <div class="col-md-8 col-xl-6 text-center mx-auto">
                                    <h2 style="text-shadow: 0px 0px; font-size: 44px;">Posts</h2>
                                    <?php foreach ($posts as $post) : ?>
                                        <div class="col mb-4" data-bss-hover-animate="pulse">
                                            <div class="card">
                                                <div class="card-body">
                                                    <h4 class="card-title"><?= $post['textContent'] ?></h4>
                                                    <p class="card-text"><?= $post['postDate'] ?></p>
                                                </div>
                                                <div class="card-body">
                                                    <?php
                                                    $attachments = $post['attachments'];

                                                    if (isset($attachments) && !empty($attachments)) {
                                                        echo '<ul>';
                                                        foreach ($attachments as $attachment) {
                                                            echo '<li>';

                                                            //FORMATS (add more if necessary)
                                                            $imageFormats = ['image/webp', 'image/png', 'image/jpeg', 'image/jpg', 'image/gif', 'image/bmp', 'image/tiff'];
                                                            $videoFormats = ['video/mp4', 'video/webm', 'video/ogg', 'video/mov'];
                                                            $documentFormats = ['application/pdf', 'application/msword'];

                                                            // MEDIA TYPE
                                                            if (in_array($attachment['mediaType'], $imageFormats)) {
                                                                // Display image using Bootstrap responsive class
                                                                echo '<img src="' . absoluteURL($attachment['mediaLink']) . '" alt="Image" class="img-fluid">';
                                                            } elseif (in_array($attachment['mediaType'], $videoFormats)) {
                                                                // Display video with Bootstrap responsive class
                                                                echo '<video controls width="100%" class="img-fluid">';
                                                                echo '<source src="' . absoluteURL($attachment['mediaLink']) . '" type="' . $attachment['mediaType'] . '">';
                                                                echo '</video>';
                                                            } elseif (in_array($attachment['mediaType'], $documentFormats)) {
                                                                if ($attachment['mediaType'] === 'application/pdf' || $attachment['mediaType'] === 'application/msword') {
                                                                    // Display link for PDF or Word document with absolute URL
                                                                    echo '<a href="' . absoluteURL($attachment['mediaLink']) . '" target="_blank">Download Document</a>';
                                                                } else {
                                                                    // Unsupported document type
                                                                    echo 'Unsupported Document Type';
                                                                }
                                                            } else {
                                                                // Unsupported media type with a download button
                                                                echo '<a href="' . absoluteURL($attachment['mediaLink']) . '" download>Download</a>';
                                                            }

                                                            echo '</li>';
                                                        }
                                                        echo '</ul>';
                                                    }
                                                    ?>
                                                </div>
                                            </div>
                                        </div>
                                    <?php endforeach; ?>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>

                    <!-- End: Posts of the Current Event -->

                <?php
            } else {
                // If eventID is not set in the URL, you can handle it accordingly
                echo "<p>Error: EventID is not provided.</p>";
            }
                ?>
                </div>
            </div>

            <a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a>
        </div>

        <?php include('includes/footer.php'); ?>

        <script>
           function registerForEvent(event_id) {
    console.log(event_id);

    if (confirm('Are you sure you want to register for this event?')) {
        // Make an AJAX call to register_for_event.php
        fetch('register_for_event.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    eventID: event_id,
                }),
            })
            .then(response => {
                // Read the response stream as text
                return response.text();
            })
            .then(data => {
                // Log the response body
                console.log('Response Body:', data);

                // Parse the response as JSON
                const jsonData = JSON.parse(data);

                alert(jsonData.message);
                location.reload();
            })
            .catch(error => {
                console.error('Error:', error);
            });
    } else {
        alert('Registration canceled');
    }
}

        </script>

        <script>
            function redirectToEventDetails(event_id) {
                window.location.href = '/event-details.php?eventID=' + event_id;
            }
        </script>


        <script>
            function generateQRCode() {
                // Get the event ID and user ID from the server-side variables
                const eventID = '<?= $eventDetails['eventID'] ?>';
                const userID = '<?= $userID ?>';
                const object = {
                    eventID: eventID,
                    userID: userID,
                }
                const element = document.getElementById("qr-code");
                element.innerHTML = "";
                var qrcode = new QRCode(element, {
                    text: JSON.stringify(object),
                    width: 300,
                    height: 300,
                    colorDark: "#000000",
                    colorLight: "#ffffff",
                    correctLevel: QRCode.CorrectLevel.H
                });

                element.style.display = 'flex';
                element.style.justifyContent = 'center';
                element.style.alignItems = 'center';
            }


            // Attach the generateQRCode function to the button click event
            document.querySelector('#generateQRCodeBtn').addEventListener('click', generateQRCode);
        </script>


        <script>
            function unregisterForEvent(event_id) {
                console.log('Event ID:', event_id); // Add this line to log the event_id
                if (confirm('Are you sure you want to unregister from this event?')) {
                    // Make an AJAX call to unregister_from_event.php
                    fetch('unregister_from_event.php', {
                            method: 'POST',
                            headers: {
                                'Content-Type': 'application/json',
                            },
                            body: JSON.stringify({
                                eventID: event_id,
                            }),
                        })
                        .then(response => response.json())
                        .then(data => {
                            alert(data.message); // Display the server response
                            location.reload(); // Reload the page
                        })
                        .catch(error => {
                            console.error('Error:', error);
                        });
                } else {
                    alert('Unregistration canceled');
                }
            }
        </script>
    </body>

</html>