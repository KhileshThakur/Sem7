<?php
session_start();

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "covid19_info";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (isset($_SESSION['user_id']) && $_SERVER['REQUEST_METHOD'] == 'POST') {
    $user_id = $_SESSION['user_id'];
    $comment = $_POST['comment'];

    $stmt = $conn->prepare("INSERT INTO comments (user_id, comment) VALUES (?, ?)");
    $stmt->bind_param("is", $user_id, $comment);

    if ($stmt->execute()) {
        echo "Comment added successfully. <a href='dashboard.html'>Dashboard</a>";
    } else {
        echo "Error: " . $stmt->error;
    }

    $stmt->close();
} else {
    echo "You must be logged in to comment.";
}

$conn->close();
?>