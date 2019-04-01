<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
require_once "../config.php";
session_start();

 
// Attempt insert query execution
try{
    // Create prepared statement
    // $sql = "INSERT INTO persons (first_name, last_name, email) VALUES (:first_name, :last_name, :email)";
    // $sql = "UPDATE `users` SET `wallet`=(:walletAddr) WHERE `username` = (:username) ";
    $sql = "UPDATE `history` SET `status`= 3 ,  `driverName`=  (:driverName) , `finishTime`= (:date_time) , fare = 0.001 WHERE `passengerName` = (:passengerName) AND`startTime` = (:startTime)";
    
    $stmt = $pdo->prepare($sql);
    date_default_timezone_set("Asia/Hong_Kong");
    $current_date = date("Y-m-d H:i:s");

    // Bind parameters to statement
    $stmt->bindParam(':driverName', $_SESSION['username']);
    $stmt->bindParam(':passengerName', $_SESSION['passengerName']);
    $stmt->bindParam(':startTime', $_SESSION['startTime']);
    $stmt->bindParam(':date_time', $current_date );
    // Execute the prepared statement
    $stmt->execute();
    echo "Records inserted successfully.";
    header('Location: driver_home.php'); 
} catch(PDOException $e){
    die("ERROR: Could not able to execute $sql. " . $e->getMessage());
}
