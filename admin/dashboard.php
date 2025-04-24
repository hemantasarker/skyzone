
<?php
session_start();
if (!isset($_SESSION['username'])) {
    header("Location: login.php");
    exit();
}

// Auto-logout after 3 minutes of inactivity
$timeout = 180; 
if (isset($_SESSION['last_activity']) && (time() - $_SESSION['last_activity'] > $timeout)) {
    session_unset();
    session_destroy();
    header("Location: login.php");
    exit();
}
$_SESSION['last_activity'] = time();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
<h1>Welcome, Admin</h1>
<a href="logout.php">Logout</a>
</body>
</html>
        