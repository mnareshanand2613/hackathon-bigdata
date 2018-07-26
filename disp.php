<?php
require "dbconnect.php";
?>

<!DOCTYPE html>
<html>
    <head>
    <style>
    body{
        background-color: #F8F8FF;
    }
    .navi{
        background-color: #556B2F;
    }
    .tit{
        font-family: 'Roboto', sans-serif;
        font-size: 40px;
        color: #FFE4E1;
    }
    .card {
        margin: 0 auto;
        float: none;
        margin-bottom: 10px; 
        background-color:#FFDAB9;
    }
    </style>
    </head>
<body>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<div class="samp">
    <nav class="navbar-dark bg-dark navbar-expand-lg ">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <a class="navbar-brand" href="#">
                    <img src="s.png" class="image" alt="logo" style="width:120px;">
                </a>
                <p class="tit">TRAVEL ANALYSIS</p>
            </ul>

        </div>
    </nav>

    <main>

        <center>

            <div class="row" style="padding-top: 100px" align="center">
                <div class="card" style="width: 18rem;">
                    <div class="card-body">
                        <form name="form" method="post" action="data.php">
                        <input class="form-control form-control-lg" type="text" placeholder="Source" name="src" id="src" /><br>
                        <input class="form-control form-control-lg" type="text" placeholder="Destination" name="dest" id="dest" /><br>
                        <input class="btn btn-primary" type="submit" name="submit" value="SUBMIT" id="submit" />
                        </form><br>
                        <form name="form1" method="post" action="data1.php">
                        <input class="btn btn-primary" type="submit" name="submit" value="MODE" id="submit" />
                        </form>   
                    </div>
                </div>
            </div>
        </center>
    </main>
</div>

<?php
session_start();
$src = isset($_POST['src']) ? $_POST['src'] : "";
$_SESSION['src'] = $src;
$dest = isset($_POST['dest']) ? $_POST['dest'] : "";
$_SESSION['dest'] = $dest;
$mode = isset($_POST['mode']) ? $_POST['mode'] : "";
$_SESSION['mode'] = $mode;
?>

</body>
</html