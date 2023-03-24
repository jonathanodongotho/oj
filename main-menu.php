<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>odongotho-jonathan</title>
    <link rel="icon" type="image/x-icon" href="assets/img/favicon.svg">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="assets/fontawesome/css/all.css">
    <link rel="stylesheet" href="assets/styles.css">
    <script src="assets/jquery.js"></script>
</head>

<body>
    <header class="header container-fluid text-center" style="background-image: url('assets/img/header.jpg');">
        <nav class="row navibar">
            <div class="col-4 navbar-brand text-start">
                <a href=""><img src="assets/img/LOGO.svg" alt="logo"></a>
            </div>

            <div class="col-8 navbar-toggle">
                <label for="menuicon" id="mainicon"><i class="fa fa-bars"></i></label>
                <input type="checkbox" id="menuicon" onclick="menuFunction()" style="display: none;">
            </div>

            <div class="col-8 navbar-nav" id="navbar-nav">
                <a href="index.php">HOME</a>
                <a href="blog.php">BLOG</a>
                <a href="devotional.php">DEVOTIONAL</a>
                <a href="learn.php">LEARN</a>
                <a href="about.php">ABOUT</a>
            </div>

        </nav>

        <div class="introduction">
            <div class="quote">
                <q>WHETHER YOU THINK YOU CAN OR YOU CAN'T, YOU'RE RIGHT</q><br>
                <cite>-Henry Ford</cite>
            </div>
            <div class="preamble">
                <h3>Learning is more interesting when we do it together!</h3>
                <a href=""><button class="btn btn-secondary btn-sm my-3">Join groups</button></a>
            </div>
        </div>

    </header>