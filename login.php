<?php 

session_start();
if(isset($_SESSION['admin_logged_in']))
{
    header("location: index.php");
    exit;
}

include "connection.php";


if(isset($_POST['submit']))
{
    $secrete_id = $_POST['secrete_id'];
    $password = md5($_POST['password']);

    $stmt = $con->prepare("SELECT secrete_id, password FROM admin WHERE secrete_id=? AND password=? limit 1");
    $stmt->bind_param("ss", $secrete_id, $password);
    if($stmt->execute())
    {
        $stmt->bind_result($secrete_id, $password);
        $stmt->store_result();

        if($stmt->num_rows() == 1)
        {
            $stmt->fetch();

            $_SESSION['secrete_id'] = $secrete_id;
            $_SESSION['password'] = $password;
            $_SESSION['admin_logged_in'] = true;

            header("location: dindex.php?success_message=Welcome back");
        }
        else
        {
            header("location: login.php?error_message=Check your input and try again!");
        }
    }
    else
    {
        header("location: login.php?error_message=Failed to login, try again!");
    }
}


?>




<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="shortcut icon" href="img/icons/icon-48x48.png" />
    <link href="css/app.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
</head>

<body>
    <main class="content">
        <div class="container-fluid p-0">

            <h1 class="h3 mb-3 text-center">Admin</h1>

            <div class="row">
                <div class="col-12">
                    <?php include "messages.php";?>
                    <form class="w-50 mx-auto" role="form" action="login.php" method="POST">
                        <div class="form-group">
                            <label for="blog-title">Secrete id:</label>
                            <input type="text" class="form-control" id="" name="secrete_id">
                        </div>
                        <div class="form-group">
                            <label for="blog-content">Password:</label>
                            <input type="password" class="form-control" id="" name="password">
                        </div>
                        <button type="submit" class="btn btn-primary btn-sm my-2" name="submit">Login</button>
                    </form>
                </div>
            </div>

        </div>
    </main>

</body>

</html>