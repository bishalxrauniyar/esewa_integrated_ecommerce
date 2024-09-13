<?php
    session_start();
    if (!isset($_SESSION['email'])) {
        header("Location: ../login_page.php");
        exit();
    } else {
        include "../connection/connection.php";
        
        // Retrieve the logged-in user's email
        $userEmail = $_SESSION['email'];

         // Retrieve user ID from the session
        $userEmail = $_SESSION['email'];
        $queryUser = "SELECT id FROM users WHERE email = '$userEmail'";
        $resultUser = mysqli_query($conn, $queryUser);
        $rowUser = mysqli_fetch_assoc($resultUser);
        $userId = $rowUser['id'];

        // Query to get the tuser booking count
        $query = "SELECT COUNT(*) as user_my_booking_count FROM bookings 
                  WHERE user_id = (SELECT id FROM users WHERE email = '$userEmail')";
        $result = mysqli_query($conn, $query);
        $row = mysqli_fetch_assoc($result);
        $userMyBookingCount = $row['user_my_booking_count'];

        // If no bookings found, set the count to 0
        if ($userMyBookingCount === null) {
            $userMyBookingCount = 0;
        }

        // Count the number of bikes on gallery
        $query = "SELECT COUNT(*) AS bike_count FROM gallery";
        $result = mysqli_query($conn, $query);
        $row = mysqli_fetch_assoc($result);
        $bikeCount = $row['bike_count'];
    }

    // Check if user is not logged in, redirect to login page
    if (!isset($_SESSION['email'])) {
        header("Location: ../index.php");
        exit();
    }
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Dashboard</title>
    <link rel="stylesheet" href="users_dash.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link rel='stylesheet' href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css'>
</head>
<body>
    <div class="dashboard">
        <section id="sidebar">
            <div class="icon1">
                <img src="users_img/users.png" alt="Logo1">
            </div>
            <ul class="side-menu top">
                <li>
                    <a href="user_index.php">
                        <i class='bx bxs-home'></i>
                        <span class="text">Home</span>
                    </a>
                </li>
                <li>
                    <a href="users_dash.php">
                        <i class='bx bxs-dashboard'></i>
                        <span class="text">Profile</span>
                    </a>
                </li>
                <li>
                    <a href="my_booking.php">
                        <i class='bx bxs-calendar-alt'></i>
                        <span class="text">My Bookings</span>
                    </a>
                </li>
            </ul>
            <ul class="side-menu">
                <li>
                    <a href="../connection/logout.php" class="logout" onclick="return confirm('Are you sure you want to log out?')">
                        <i class='bx bxs-log-out-circle'></i>
                        <span class="text">Logout</span>
                    </a>
                </li>
            </ul>
        </section>

        <section class="main">
            <section class="right-upper">
                <div class="right_about">
                    <div>
                        <p><?php echo $_SESSION['email']; ?></p>
                    </div>
                    <div class="profile">
                        <img src="users_img/user-logo.png" alt="Avatar" class="avatar">
                    </div>
                    <!-- <div class="notification_icon">
                        <button class="notification_btn" title="Notification">
                            <a href="#"><span class="material-symbols-outlined">notifications</span></a>
                        </button>
                    </div> -->
                </div>
            </section>
            <section class="right-lower">
                <ul class="box-info">
                    <li>
                        <i class='bx bx-calendar bx-icon'></i>
                        <span class="text">
                            <h3><?php echo $userMyBookingCount; ?></h3>
                            <p>My<br>Bookings</p>
                        </span>
                    </li>
                    <li>
                        <i class='bx bx-wallet bx-icon'></i>
                        <span class="text">
                            <h3><?php echo $bikeCount; ?></h3>
                            <p>Total<br>Bikes</p>
                        </span>
                    </li>
                </ul>
                <section class="admin-table">
                    <h2>My Bookings</h2>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Bike Name</th>
                                <th>Price</th>
                                <th>Time</th>
                                <th>Start Date</th>
                                <th>End Date</th>
                                <th>Status</th>
                                <th colspan="2">Action</th>
                                <!-- Add more columns as per your admin table structure -->
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                                // Retrieve the booking details for the current user
                                $query = "SELECT * FROM bookings WHERE user_id = '$userId'";
                                $result = mysqli_query($conn, $query);

                                // Check if the query returned any rows
                                if (mysqli_num_rows($result) > 0) {
                                    while ($row = mysqli_fetch_assoc($result)) {
                                        $bikeName = $row['bike_name'];
                                        $bikePrice = $row['price'];
                                        $bookingTime = $row['time'];
                                        $startDate = $row['start_date'];
                                        $endDate = $row['end_date'];
                                        $bookingStatus = $row['status'];
                                        $bookingId = $row['id'];

                                        // Add the booking information to the table
                                        echo "<tr>";
                                        echo "<td>" . $bikeName . "</td>";
                                        echo "<td>" . $bikePrice . "</td>";
                                        echo "<td>" . $bookingTime . "</td>";
                                        echo "<td>" . $startDate . "</td>";
                                        echo "<td>" . $endDate . "</td>";
                                        echo "<td>" . $bookingStatus . "</td>";
                                        // echo "<td><a href='edit_booking.php?id=" . $bookingId . "'><button class='button-edit'>Edit</button></a></td>";
                                        echo "<td><a href='delete_booking.php?id=" . $bookingId . "'><button class='button-delete'>Delete</button></a></td>";

                                        echo "</tr>";

                                        // Check if the bike associated with the booking is out of stock
                                        $bikeCode = $row['bike_code'];
                                        $checkQtyQuery = "SELECT qty FROM specifications WHERE code = '$bikeCode'";
                                        $resultQty = mysqli_query($conn, $checkQtyQuery);
                                        $rowQty = mysqli_fetch_assoc($resultQty);
                                        $quantity = $rowQty['qty'];

                                        if ($quantity === 0) {
                                        $bookingStatus = 'Out of Stock';  // Update the booking status
                                        }
                                    }
                                } else {
                                    echo "<tr><td colspan='7'>No booking information found.</td></tr>";
                                }
                            ?>
                        </tbody>
                    </table>
                </section>
            </section>
        </section>
    </div>
    
</body>
</html>

