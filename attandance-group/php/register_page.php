
<?php include 'config/check_auth.php'; 
$loggedInRedirect = "/";

// Check authentication
isAuthenticated($loggedInRedirect, true);


//<!-- MADE BY  Lawrence Miguel II-->
//<!-- The purpose of this code is to display a registration form to new users. 
//It allows users to input their desired username, first and last names, email, 
//and password. If a user enters invalid data, the registration process will not proceed, 
//and an error message will be displayed to the user. If the user's data is valid, 
//their information will be stored in the database, and they will be able to log in and 
//access the features of the website. -->

?>
<!DOCTYPE html>
<html data-bs-theme="light" lang="en">

<?php include('includes/head.php'); ?>

<body>
    <?php include('includes/navbar.php'); ?>
    <section class="py-5">
        <div class="container py-5">
            <div class="row mb-4 mb-lg-5">
                <div class="col-md-8 col-xl-6 text-center mx-auto">
                    <p class="fw-bold text-success mb-2">Sign up</p>
                    <h2 class="fw-bold">Welcome</h2>
                </div>
            </div>
            <div class="row d-flex justify-content-center">
                <div class="col-md-6 col-xl-4">
                    <div class="card">
                        <div class="card-body text-center d-flex flex-column align-items-center">
                            <div class="bs-icon-xl bs-icon-circle bs-icon-primary shadow bs-icon my-4"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-person">
                                    <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z">
                                    </path>
                                </svg></div>

                
                            <?php
                            
                            // Check for registration error and display it
                            if (isset($_SESSION['register_error'])) {
                                echo '<p class="text-danger">' . $_SESSION['register_error'] . '</p>';
                                unset($_SESSION['register_error']); // Clear the error message
                            }
                            
                            ?>
                            
                            <form method="post" action="config/register.php">
                                <div class="mb-3"><input class="form-control" type="text" name="username" placeholder="Username"></div>
                                <div class="mb-3"><input class="form-control" type="text" name="firstName" placeholder="First Name"></div>
                                <div class="mb-3"><input class="form-control" type="text" name="lastName" placeholder="Last Name"></div>
                                <div class="mb-3"><input class="form-control" type="email" name="email" placeholder="Email"></div>
                                <div class="mb-3"><input class="form-control" type="password" name="password" placeholder="Password"></div>
                                <div class="mb-3"><input class="form-control" type="password" name="confirmPassword" placeholder="Confirm Password"></div>
                                <div class="mb-3"><button class="btn btn-primary shadow d-block w-100" type="submit">Sign up</button></div>



                                <p class="text-muted">Already have an account?&nbsp;<a href="login_page.php">Log in</a>
                                </p>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <?php include('includes/footer.php'); ?>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/bold-and-dark.js"></script>
</body>

</html>