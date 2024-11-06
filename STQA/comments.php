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

// Fetch all comments along with user information
$sql = "SELECT comments.id, users.username, comments.comment, comments.created_at 
        FROM comments 
        JOIN users ON comments.user_id = users.id 
        ORDER BY comments.created_at DESC";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All Comments</title>
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f4f8;
            margin: 0;
            padding: 20px;
            display: grid;
        }
        h2 {
            color: #009688;
            text-align: center;
            margin-bottom: 20px;
        }
        .container {
            width: 800px;
            margin: auto;
            height: 80vh;
            overflow: scroll;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        .comment {
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 15px;
            margin-bottom: 15px;
            background-color: #fafafa;
        }
        .author {
            font-weight: bold;
            color: #00796b;
        }
        .content {
            margin: 10px 0;
            line-height: 1.5;
        }
        small {
            color: #666;
            font-size: 0.9em;
        }
        a.back-button {
            display: inline-block;
            margin: 20px 0;
            padding: 10px 15px;
            background-color: #00796b;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        a.back-button:hover {
            background-color: #005b47;
        }
    </style>
</head>
<body>
    <h2>All Comments</h2>
    <a href="dashboard.html" class="back-button">Back to Dashboard</a>
    <div class="container">
        <?php
        if ($result->num_rows > 0) {
            // Output each comment
            while($row = $result->fetch_assoc()) {
                echo "<div class='comment'>";
                echo "<p class='author'>" . htmlspecialchars($row['username']) . "</p>";
                echo "<p class='content'>" . nl2br(htmlspecialchars($row['comment'])) . "</p>";
                echo "<small>Posted on " . htmlspecialchars($row['created_at']) . "</small>";
                echo "</div>";
            }
        } else {
            echo "<p>No comments found.</p>";
        }
        $conn->close();
        ?>
        
    </div>
</body>
</html>
