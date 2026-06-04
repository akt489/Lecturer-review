<?php 

    define('DB_HOST', 'localhost');
    define('DB_USER', 'root');
    define('DB_PASS', '');
    define('DB_NAME', 'lecturer_review');

    // set up the dsn, set up the configurations, start connection

    //setting up dsn "driver:host=hostname;dbname=databasename;charset=utf8mb4"

    $dns = "mysql:host=" . DB_HOST . ";dbname=" . DB_NAME . ";charset=utf8mb4";

    //setting up configurations, we use an array

    $options = [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        PDO::ATTR_EMULATE_PREPARES => false
    ];


    try{

        $pdo = new PDO($dns, DB_USER, DB_PASS, $options);

    }catch(PDOException $e){
        error_log("Database connection failed. " . $e->getMessage());

        die("Database connection failed. Please try again later.");
    }

?>