
<!DOCTYPE html>
<html data-bs-theme="light" lang="en">

<?php 
//<!-- MADE BY Lawrence Miguel II-->
//<!-- This code is used as a welcome header for the EventHub website. 
//It introduces the website's features and purpose, emphasizing the 
//importance of simplifying event management. It encourages users to 
//engage in events or organize events seamlessly. -->


include('includes/head.php'); ?>
<?php include('api/event-list/view-public-events.php'); ?>

<body>
    <?php include('includes/navbar.php'); ?>

    <header class="bg-light">
        <div class="container py-5">
            <div class="row py-5">
                <div class="col-md-6 text-center text-md-start d-flex d-sm-flex d-md-flex justify-content-center align-items-center justify-content-md-start align-items-md-center justify-content-xl-end mb-4">
                    <div style="max-width: 450px;">
                        <p class="fw-bold text-success mb-2">Welcome to Event Flow -</p>
                        <h2 class="fw-bold">&nbsp;Your Gateway to Seamless Event Management!</h2>
                        <p class="my-3" style="text-align: justify;">At Event Flow, we bring people together by
                            simplifying the entire event management process. Whether you are a participant eager to
                            engage in exciting events or an organizer striving for a hassle-free experience, Event Flow is
                            your one-stop solution.</p>
                        <form class="d-flex justify-content-center flex-wrap justify-content-md-start flex-lg-nowrap" method="post">
                            <div class="my-2 me-2"></div>
                            <div class="my-2"></div>
                        </form>
                    </div>
                </div>
                <div class="col-md-6 mb-4">
                    <div class="p-5 mx-lg-5" style="background: url(&quot;assets/img/blob.svg&quot;) center / contain no-repeat;"><img class="rounded img-fluid shadow w-100 fit-cover" style="min-height: 300px;" src="assets/img/phone-screen.png"></div>
                </div>
            </div>
        </div>
    </header>
    <section class="py-5" id="public_events_section">
    <div class="container">
        <div class="row mb-3">
            <div class="col-12 text-center">
                <p class="fw-bold text-success mb-2">Events</p>
                <h2 class="fw-bold">View Public Events</h2>
            </div>
        </div>

        <div class="row mb-3">
            <div class="col-12">
                <div class="input-group">
                    <input type="text" class="form-control" id="searchInput" placeholder="Search by event code or name...">
                    <button class="btn btn-primary" type="button" id="searchButton"><i class="fas fa-search"></i> SEARCH</button>
                </div>
            </div>
        </div>

        <div class="row mb-3">
            <div class="col-12">
                <div class="mb-3">
                    <label for="sort" class="form-label">Sort:</label>
                    <select id="sort" class="form-select">
                        <option value="1">Ascending</option>
                        <option value="2">Descending</option>
                    </select>
                </div>
            </div>
        </div>

        <div class="row mb-3">
            <div class="col-12">
                <div class="table-responsive">
                    <table class="table table-hover" id="eventsTable">
                        <thead>
                            <tr>
                                <th>Event Name</th>
                                <th>Description</th>
                                <th>Start-Date</th>
                                <th>End-Date</th>
                                <th>Venue</th>
                                <th>Action</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($publicEvents as $event) : ?>
                                <tr>
                                    <td><?php echo $event['eventName']; ?></td>
                                    <td><?php echo $event['eventDescription']; ?></td>
                                    <td><?php echo $event['eventStartDate']; ?></td>
                                    <td><?php echo $event['eventEndDate']; ?></td>
                                    <td><?php echo $event['eventVenue']; ?></td>
                                    <td><?php echo $event['status']; ?></td>
                                    <td class="text-center">
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

    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script>
        $(document).ready(function () {
            // Add event listener for search button
            $('#searchButton').click(function () {
                var searchText = $('#searchInput').val().toLowerCase();
                filterTable(searchText);
            });

            // Add event listener for sort select
            $('#sort').change(function () {
                var sortOrder = $(this).val() === '1' ? 'asc' : 'desc';
                sortTable(sortOrder);
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

        // Function to sort the table based on selected order
        function sortTable(sortOrder) {
            var rows = $('#eventsTable tbody tr').get();

            rows.sort(function (a, b) {
                var keyA = $(a).children('td:eq(0)').text().toLowerCase();
                var keyB = $(b).children('td:eq(0)').text().toLowerCase();

                if (sortOrder === 'asc') {
                    return keyA.localeCompare(keyB);
                } else {
                    return keyB.localeCompare(keyA);
                }
            });

            $.each(rows, function (index, row) {
                $('#eventsTable tbody').append(row);
            });
        }
    </script>
</section>


    <section class="py-5">
        <div class="container text-center py-5">
            <p class="mb-4" style="font-size: 1.6rem;">We make event management and tracking easy</p><a href="#"> <img class="m-3" src="assets/img/brands/facebook.png"></a><a href="#"> <img class="m-3" src="assets/img/brands/twitter.png"></a>
        </div>
    </section>
    <section>
        <div class="container bg-light py-5">
            <div class="row">
                <div class="col-md-8 col-xl-6 text-center mx-auto">
                    <p class="fw-bold text-success mb-2">What EventFlow Offers</p>
                    <h3 class="fw-bold">Experience Seamless Event Management Experience</h3>
                </div>
            </div>
            <div class="py-5 p-lg-5">
                <div class="row row-cols-1 row-cols-md-2 mx-auto" style="max-width: 900px;">
                    <div class="col mb-5">
                        <div class="card shadow-sm">
                            <div class="card-body px-4 py-5 px-md-5">
                                <div class="bs-icon-lg d-flex justify-content-center align-items-center mb-3 bs-icon" style="top: 1rem;right: 1rem;position: absolute;"></div>
                                <h5 class="fw-bold card-title">Explore Exciting Events</h5>
                                <p class="text-muted card-text mb-4">Discover a diverse range of events on our
                                    platform.<br><br>From public gatherings to exclusive happenings, find the perfect
                                    events tailored to your interests.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card shadow-sm">
                            <div class="card-body px-4 py-5 px-md-5">
                                <div class="bs-icon-lg d-flex justify-content-center align-items-center mb-3 bs-icon" style="top: 1rem;right: 1rem;position: absolute;"></div>
                                <h5 class="fw-bold card-title">Effortless Registration:</h5>
                                <p class="text-muted card-text mb-4">Quickly register for events with just a few
                                    clicks.<br><br>Seamlessly manage your event attendance and stay up-to-date with your
                                    registered events.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-4">
                        <div class="card shadow-sm">
                            <div class="card-body px-4 py-5 px-md-5">
                                <div class="bs-icon-lg d-flex justify-content-center align-items-center mb-3 bs-icon" style="top: 1rem;right: 1rem;position: absolute;"></div>
                                <h5 class="fw-bold card-title">User-Friendly Interface:</h5>
                                <p class="text-muted card-text mb-4">Enjoy an intuitive and user-friendly
                                    interface.<br><br>Easily navigate through event details, evaluations, and more
                                    without any technical hassle.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-4">
                        <div class="card shadow-sm">
                            <div class="card-body px-4 py-5 px-md-5">
                                <div class="bs-icon-lg d-flex justify-content-center align-items-center mb-3 bs-icon" style="top: 1rem;right: 1rem;position: absolute;"></div>
                                <h5 class="fw-bold card-title">Attendance Made Simple:</h5>
                                <p class="text-muted card-text mb-4">Attend events stress-free with our QR code
                                    generation and scanning tools.<br><br>Easily confirm your attendance through QR code
                                    scanning</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="container py-5">
            <div class="mx-auto" style="max-width: 900px;">
                <div class="row row-cols-1 row-cols-md-2 d-flex justify-content-center">
                    <div class="col mb-4">
                        <div class="card bg-primary-light">
                            <div class="card-body text-center px-4 py-5 px-md-5">
                                <p class="fw-bold text-primary card-text mb-2">Explore Events</p>
                                <h5 class="fw-bold card-title mb-3">Browse through our event catalog to find the perfect
                                    match for your interests.</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-4">
                        <div class="card bg-secondary-light">
                            <div class="card-body text-center px-4 py-5 px-md-5">
                                <p class="fw-bold text-secondary card-text mb-2">Register:</p>
                                <h5 class="fw-bold card-title mb-3">Register for events with a simple
                                    click.<br><br>Receive event confirmations and updates directly in your account.</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-4">
                        <div class="card bg-info-light">
                            <div class="card-body text-center px-4 py-5 px-md-5">
                                <p class="fw-bold text-info card-text mb-2">Event Day:</p>
                                <h5 class="fw-bold card-title mb-3">Attend events stress-free with QR code
                                    confirmation.<br><br>Engage with event resources and evaluate your experience.</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="py-5">
        <div class="container py-5">
            <div class="row mb-5">
                <div class="col-md-8 col-xl-6 text-center mx-auto">
                    <p class="fw-bold text-success mb-2">The Team</p>
                    <h2 class="fw-bold"><strong>About Us</strong></h2>
                    <p class="text-muted">Meet us</p>
                </div>
            </div>
            <div class="row row-cols-1 row-cols-sm-2 row-cols-lg-3 d-sm-flex justify-content-sm-center">
                <div class="col mb-4">
                    <div class="d-flex flex-column align-items-center align-items-sm-start">
                        <p class="bg-light border rounded border-light p-4">Banana cue Cooker</p>
                        <div class="d-flex"><img class="rounded-circle flex-shrink-0 me-3 fit-cover" width="50" height="50" src="assets/img/team/bonnie.png">
                            <div>
                                <p class="fw-bold text-primary mb-0">Jocel Austria</p>
                                <p class="text-muted mb-0">Noise</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col mb-4">
                    <div class="d-flex flex-column align-items-center align-items-sm-start">
                        <p class="bg-light border rounded border-light p-4">Front-end developer</p>
                        <div class="d-flex"><img class="rounded-circle flex-shrink-0 me-3 fit-cover" width="50" height="50" src="assets/img/team/xanthe.jpeg">
                            <div>
                                <p class="fw-bold text-primary mb-0">Xanthe Solano</p>
                                <p class="text-muted mb-0">Noise</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col mb-4">
                    <div class="d-flex flex-column align-items-center align-items-sm-start">
                        <p class="bg-light border rounded border-light p-4">Nisi sit justo faucibus nec ornare amet,
                            tortor torquent. Blandit class dapibus, aliquet morbi.</p>
                        <div class="d-flex"><img class="rounded-circle flex-shrink-0 me-3 fit-cover" width="50" height="50" src="assets/img/team/avatar5.jpg">
                            <div>
                                <p class="fw-bold text-primary mb-0">Sheena Emocling</p>
                                <p class="text-muted mb-0">Noise</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col mb-4">
                    <div class="d-flex flex-column align-items-center align-items-sm-start">
                        <p class="bg-light border rounded border-light p-4">Nisi sit justo faucibus nec ornare amet,
                            tortor torquent. Blandit class dapibus, aliquet morbi.</p>
                        <div class="d-flex"><img class="rounded-circle flex-shrink-0 me-3 fit-cover" width="50" height="50" src="assets/img/team/avatar5.jpg">
                            <div>
                                <p class="fw-bold text-primary mb-0">Ron Andrei Vanzuela</p>
                                <p class="text-muted mb-0">Noise</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col mb-4">
                    <div class="d-flex flex-column align-items-center align-items-sm-start">
                        <p class="bg-light border rounded border-light p-4">Coding is fun!!! ,3</p>
                        <div class="d-flex"><img class="rounded-circle flex-shrink-0 me-3 fit-cover" width="50" height="50" src="assets/img/team/lawrence.jpg">
                            <div>
                                <p class="fw-bold text-primary mb-0">Lawrence Miguel II</p>
                                <p class="text-muted mb-0">Software Engineer</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col mb-4">
                    <div class="d-flex flex-column align-items-center align-items-sm-start">
                        <p class="bg-light border rounded border-light p-4">Nisi sit justo faucibus nec ornare amet,
                            tortor torquent. Blandit class dapibus, aliquet morbi.</p>
                        <div class="d-flex"><img class="rounded-circle flex-shrink-0 me-3 fit-cover" width="50" height="50" src="assets/img/team/avatar5.jpg">
                            <div>
                                <p class="fw-bold text-primary mb-0">Elisha Ordoña</p>
                                <p class="text-muted mb-0">Noise</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <?php include('includes/footer.php'); ?>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/bold-and-light.js"></script>
</body>

</html>