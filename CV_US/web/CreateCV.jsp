<!DOCTYPE html>
<html lang="en">
<head>
    <title>CV-Generators</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="styleSheet.css">

    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
</head>


<body style="background: rgba(115,162,212,0.53)">


<!--navbar-->
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
    <a class="navbar-brand" href="index.jsp" style="font-family: 'Courier New', Courier, monospace;">
        <img src="./images/b.png" alt="logo" style="width: 50px;">  CV Generator
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav" >
            <li class="nav-item">
                <a class="nav-link" href="index.jsp" style="border: 1px solid white; border-radius: 10px; text-align: center;">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#" style="border: 1px solid white; border-radius: 10px; text-align: center;">About</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="contact.jsp" style="border: 1px solid white; border-radius: 10px; text-align: center;"> Contact</a>
            </li>
        </ul>
    </div>
</nav>
<br>
<!--Logout button-->
<a  href="index.jsp" class="btn btn-primary btn-lg" id="logOut" style="visibility: visible; float: right;margin-right: 5px; border-radius: 10px;"> Log Out</a>



<!--Create a Cv-->
<div  id="creator" style="margin-top:10%;margin-left:30%;margin-right:30%;width: 40%; border-radius: 20%;padding: 20px;" class="btn btn-dark" >
    <h1 class="glow">
        <a href="infoForm.jsp"> Create a CV now</a>
    </h1>
</div>






<footer>
    <div class="container-fluid bg-primary py-3" style="margin-top: 100vh;">
        <div class="container">
            <div class="row">
                <div class="col-md-7">
                    <div class="row py-0">
                        <div class="col-sm-1 hidden-md-down">
                            <a class="bg-circle bg-info" href="#">
                                <i class="fa fa-2x fa-fw fa-address-card" aria-hidden="true "></i>
                            </a>
                        </div>
                        <div class="col-sm-11 text-white">
                            <div><h4>CV Generators</h4>
                                <p>CV_Generators.com</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="d-inline-block">
                        <div class="bg-circle-outline d-inline-block" style="background-color:#3b5998">
                            <a href="https://www.facebook.com/"><i class="fa fa-2x fa-fw fa-facebook text-white"></i>
                            </a>
                        </div>
                        <div class="bg-circle-outline d-inline-block" style="background-color:#4099FF">
                            <a href="https://twitter.com/">
                                <i class="fa fa-2x fa-fw fa-twitter text-white"></i></a>
                        </div>

                        <div class="bg-circle-outline d-inline-block" style="background-color:#0077B5">
                            <a href="https://www.linkedin.com/company/">
                                <i class="fa fa-2x fa-fw fa-linkedin text-white"></i></a>
                        </div>
                        <div class="bg-circle-outline d-inline-block" style="background-color:#d34836">
                            <a href="https://www.google.com/">
                                <i class="fa fa-2x fa-fw fa-google text-white"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!--/.footer-->
<p class="text-center">Copyright © CV Generators Plugin 2020. All right reserved. </p>
<!--/.footer-bottom-->

</body>

</html>