

<?php
// MADE BY JOCEL AUSTRIA -->
// MODIFIED BY LAWRENCE MIGUEL II-->
/// This code serves as a search functionality for a list of registered events. 
//The search input field allows users to enter a search term, such as the name of an event. 
//Upon clicking the search button, the SQL query is executed to find any events matching 
//the entered search term. The result is then displayed on the screen using a while loop, 
///presenting the relevant event data. -->
include 'config/check_auth.php';

// Check authentication
isAuthenticated();

include "config/dbconfig.php";
include "api/event-list/view.php";
?>

<!DOCTYPE html>
<html lang="en">

<?php include('includes/head.php'); ?>

<body>
    <?php include('includes/navbar.php'); ?>

    <div class="container mt-5">
        <div class="row">
            <div class="col-md-12">
                <div class="d-lg-flex justify-content-lg-center align-items-lg-center form-group pull-right col-lg-4">
                    <input type="text" class="form-control me-2" id="searchInput" placeholder="Enter name of event..">
                    <button class="btn btn-primary" id="searchButton">SEARCH</button>
                </div>

                <h1 class="text-center mb-4">Your Registered Events</h1>

                <div class="table-responsive">
                    <table class="table table-hover table-bordered" id="eventsTable">
                        <thead class="bill-header cs">
                            <tr>
                                <th class="col-lg-1">Event Code</th>
                                <th class="col-lg-2">Event Name</th>
                                <th class="col-lg-3">Date &amp; Time</th>
                                <th class="col-lg-2">Venue</th>
                                <th class="col-lg-2">Status</th>
                                <th class="col-lg-2">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($events as $event) : ?>
                                <tr>
                                    <td><?= $event['eventID'] ?></td>
                                    <td><?= $event['eventName'] ?></td>
                                    <td><?= $event['eventStartDate'] ?></td>
                                    <td><?= $event['eventVenue'] ?></td>
                                    <td><?= $event['status'] ?></td>
                                    <td>
                                        <a href="/event-details.php?eventID=<?= $event['eventID'] ?>" class="btn btn-primary">View</a>
                                    </td>
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
        $(document).ready(function () {
            // Add event listener for search button
            $('#searchButton').click(function () {
                var searchText = $('#searchInput').val().toLowerCase();
                filterTable(searchText);
            });
        });

        // Function to filter the table based on search input
        function filterTable(searchText) {
            $('#eventsTable tbody tr').each(function () {
                var rowText = $(this).text().toLowerCase();
                if (rowText.includes(searchText)) {
                    $(this).show();
                } else {
                    $(this).hide();
                }
            });
        }
    </script>
</body>

</html>
