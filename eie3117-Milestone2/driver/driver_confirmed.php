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
    $sql = "UPDATE `history` SET `status`= 1 ,  `driverName`=  (:driverName) WHERE `passengerName` = (:passengerName) AND`startTime` = (:startTime)";
    
    $stmt = $pdo->prepare($sql);
    

    // Bind parameters to statement
    $stmt->bindParam(':driverName', $_SESSION['username']);
    $stmt->bindParam(':passengerName', $_SESSION['passengerName']);
    $stmt->bindParam(':startTime', $_SESSION['startTime']);
    
    // Execute the prepared statement
    $stmt->execute();
    echo "Records inserted successfully.";
    header('Location: driver_confirmed_page.php'); 
} catch(PDOException $e){
    die("ERROR: Could not able to execute $sql. " . $e->getMessage());
}
