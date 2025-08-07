
<?php
//MADE BY Lawrence Miguel II  && Elisha Ordona-->
//This code serves as the backbone for the EventHub website. 
//It checks if the user is authenticated, retrieves the user's ID from the session, 
//and fetches their attendance history from the database. 
//This attendance history will be used to display the events the user 
//has attended on their personalized dashboard. -->

include 'config/check_auth.php';

// Check authentication
isAuthenticated();

include "config/dbconfig.php";

// Assuming you have a session variable storing the current user's ID
$userID = $_SESSION['user_id'];

// Fetch attendance history for the logged-in user
$query = "SELECT a.*, e.*
          FROM ATTENDANCE a
          JOIN EVENT e ON a.eventID = e.eventID
          WHERE a.userID = ?
          ORDER BY e.eventID, a.attendanceDate DESC"; // Added ORDER BY eventID

$stmt = $conn->prepare($query);
$stmt->bind_param('i', $userID); // 'i' represents integer type for the user ID
$stmt->execute();
$result = $stmt->get_result();

$attendanceHistory = [];
while ($row = $result->fetch_assoc()) {
    $attendanceHistory[] = $row;
}
?>

<!DOCTYPE html>
<html lang="en">
<?php include('includes/head.php'); ?>

<body>
    <?php include('includes/navbar.php'); ?>

    <div class="container mt-5">
        <div class="row">
            <div class="col-md-12">
                <h1 class="text-center mb-4">Attendance History</h1>

                <div class="table-responsive">
                    <table class="table table-hover table-bordered">
                        <thead class="bill-header cs">
                            <tr>
                                <th class="col-lg-2">Event Name</th>
                                <th class="col-lg-3">Date &amp; Time</th>
                                <th class="col-lg-2">Venue</th>
                                <th class="col-lg-2">Attendance Date</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $currentEventID = null; // To track the current eventID
                            foreach ($attendanceHistory as $attendance) :
                                if ($currentEventID !== $attendance['eventID']) {
                                    
                                    echo '<tr>';
                                    echo '<td colspan="1">' . $attendance['eventName'] . '</td>';
                                    echo '<td colspan="1">' . $attendance['eventStartDate'] . ' - ' . $attendance['eventEndDate'] . '</td>';
                                    echo '<td colspan="1">' . $attendance['eventVenue'] . '</td>';
                                    echo '<td colspan="1">Click To Toggle</td>'; // Attendance date for the group row is not applicable
                                    echo '</tr>';
                                    $currentEventID = $attendance['eventID'];
                                }
                            ?>
                                <tr data-eventid="<?= $attendance['eventID'] ?>">
                                    <td><?= $attendance['eventName'] ?></td>
                                    <td><?= $attendance['eventStartDate'] ?> - <?= $attendance['eventEndDate'] ?></td>
                                    <td><?= $attendance['eventVenue'] ?></td>
                                    <td><?= $attendance['attendanceDate'] ?></td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </div>

    <?php include('includes/footer.php'); ?>


    <script>
        $(document).ready(function() {
            // Hide all event rows initially
            $('tbody tr[data-eventid]').hide();

            // Toggle visibility of event rows on click
            $('tbody tr[data-eventid]').prev('tr').click(function() {
                var eventID = $(this).next('tr').data('eventid');
                $('tbody tr[data-eventid=' + eventID + ']').toggle();
            });
        });
    </script>
</body>

</html>