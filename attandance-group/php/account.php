
<?php
//MADE BY Lawrence Miguel and design by Ron Vanzuela-->
//This code is designed to handle the backend authentication and personalization for the EventHub website. 
//It includes an authentication check, which ensures only authenticated users can access the dashboard. 
//By retrieving the user's ID from the session and fetching their attendance history from the database, 
//the code generates a personalized dashboard displaying the events the user has attended. -->

// Include authentication check
include 'config/check_auth.php';

// Check authentication
isAuthenticated();

// Include database configuration
include 'config/dbconfig.php';

// Function to get user by ID using MySQLi
function getUserById($userID, $conn)
{
    $query = "SELECT * FROM USER WHERE userID = ?";

    // Prepare the statement
    $stmt = $conn->prepare($query);

    // Bind the parameters
    $stmt->bind_param("i", $userID);

    // Execute the query
    $stmt->execute();

    // Get the result
    $result = $stmt->get_result();

    // Fetch the user data
    $user = $result->fetch_assoc();

    // Close the statement
    $stmt->close();

    return $user;
}

// Get user ID from session
$userID = $_SESSION['user_id'];



// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch user information
$user = getUserById($userID, $conn);
?>

<!DOCTYPE html>
<html lang="en">
<?php include 'includes/head.php'; ?>

<body>
    <?php include 'includes/navbar.php'; ?>

    <div class="container mt-5">
        <h1 class="text-center mb-4">Account Information</h1>

        <?php if ($user): ?>
            <div class="card mx-auto" style="max-width: 400px; border-radius: 15px; background-color: #93e2bb;">
                <div class="card-body text-black">
                    <h5 class="card-title text-center mb-4">User Information</h5>

                    <!-- Display read-only user information -->
                    <div id="readOnlyInfo">
                        <?php foreach (['username', 'firstName', 'lastName', 'email'] as $field): ?>
                            <div class="mb-3">
                                <label class="form-label"><?= ucfirst($field); ?>:</label>
                                <div class="form-control"><?= $user[$field]; ?></div>
                            </div>
                        <?php endforeach; ?>
                    </div>

                    <!-- Display editable user information -->
                    <form id="editProfileForm" action="update_user.php" method="post" style="display: none;">
                        <input type="hidden" name="userID" value="<?= $user['userID']; ?>">

                        <?php foreach (['username', 'firstName', 'lastName', 'email'] as $field): ?>
                            <div class="mb-3">
                                <label for="<?= $field; ?>" class="form-label"><?= ucfirst($field); ?>:</label>
                                <input type="<?= ($field === 'email') ? 'email' : 'text'; ?>" class="form-control" id="<?= $field; ?>" name="<?= $field; ?>" value="<?= $user[$field]; ?>" required>
                            </div>
                        <?php endforeach; ?>

                        <div class="mb-3">
                            <label for="currentPassword" class="form-label">Current Password:</label>
                            <input type="password" class="form-control" id="currentPassword" name="currentPassword" required>
                        </div>

                        <div class="mb-3">
                            <label for="newPassword" class="form-label">New Password:</label>
                            <input type="password" class="form-control" id="newPassword" name="newPassword">
                            <small class="text-muted">Leave this blank if you don't want to change your password.</small>
                        </div>

                        <div class="mb-3">
                            <label for="confirmPassword" class="form-label">Confirm New Password:</label>
                            <input type="password" class="form-control" id="confirmPassword" name="confirmPassword">
                        </div>

                        <div class="text-center mt-3">
                            <button type="submit" class="btn btn-primary" name="applyChanges">Apply Changes</button>
                        </div>
                    </form>

                    <!-- "Edit Profile" button to toggle between read-only and editable states -->
                    <div class="text-center mt-3">
                        <button class="btn btn-secondary" onclick="toggleEditProfile()">Edit Profile</button>
                    </div>
                </div>
            </div>
        <?php else: ?>
            <p class="text-center">User not found.</p>
        <?php endif; ?>
    </div>

    <?php include 'includes/footer.php'; ?>

    <script>
        function toggleEditProfile() {
            const readOnlyInfo = document.getElementById('readOnlyInfo');
            const editProfileForm = document.getElementById('editProfileForm');

            if (readOnlyInfo && editProfileForm) {
                readOnlyInfo.style.display = readOnlyInfo.style.display === 'none' ? 'block' : 'none';
                editProfileForm.style.display = editProfileForm.style.display === 'none' ? 'block' : 'none';
            }
        }
    </script>
</body>

</html>