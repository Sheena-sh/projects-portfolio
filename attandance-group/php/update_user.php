<?php
// This file is used to update the user's information in the database.
// By: Lawrence T. Miguel II
// Include the database configuration file
include_once 'config/dbconfig.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Extract data from the form
    $userID = $_POST['userID'];
    $username = $_POST['username'];
    $firstName = $_POST['firstName'];
    $lastName = $_POST['lastName'];
    $email = $_POST['email'];
    $currentPassword = $_POST['currentPassword'];
    $newPassword = $_POST['newPassword'];
    $confirmPassword = $_POST['confirmPassword'];

    // Validate current password before making changes
    $query = "SELECT password FROM USER WHERE userID = ?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("i", $userID);
    $stmt->execute();
    $result = $stmt->get_result();
    $row = $result->fetch_assoc();
    $hashedPassword = $row['password'];

    if ($currentPassword === $hashedPassword) {
        // Current password is correct

        // Check if the new password is provided and matches the confirmation
        if (!empty($newPassword)) {
            if ($newPassword === $confirmPassword) {
                // Hash the new password


                // Update user information including the new password
                $updateQuery = "UPDATE USER SET username=?, firstName=?, lastName=?, email=?, password=? WHERE userID=?";
                $updateStmt = $conn->prepare($updateQuery);
                $updateStmt->bind_param("sssssi", $username, $firstName, $lastName, $email, $newPassword, $userID);
            } else {
                // Password confirmation mismatch
                echo "Password confirmation mismatch. Please try again.";
                exit();
            }
        } else {
            // Update user information without changing the password
            $updateQuery = "UPDATE USER SET username=?, firstName=?, lastName=?, email=? WHERE userID=?";
            $updateStmt = $conn->prepare($updateQuery);
            $updateStmt->bind_param("ssssi", $username, $firstName, $lastName, $email, $userID);
        }

        // Execute the update query
        if ($updateStmt->execute()) {
            // User information updated successfully
            // Redirect back to account.php
            header("Location: account.php");
            exit();
        } else {
            echo "Error updating user information: " . $conn->error;
        }

        // Close the update statement
        $updateStmt->close();
    } else {
        // Current password is incorrect
        echo "Incorrect current password. Please try again.";
    }

    // Close the initial statement
    $stmt->close();
} else {
    // Invalid request method
    echo "Invalid request method.";
}

// Close the database connection
$conn->close();
?>
