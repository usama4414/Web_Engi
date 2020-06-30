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


<body >


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



<!--jumbotron-->
<div class="container" style="float: left">

  <div class="jumbotron">

    <h1 class="hd1">CV Generators!</h1>

    <p class="lead hd1">Get your CV within few seconds!!!</p>

    <hr class="my-4">

    <p class="hd1">Convey and get attention.</p>

    <p class="lead">

      <a class="btn btn-dark btn-lg" href="contact.jsp" role="button">Contact Us</a>

    </p>

  </div>


</div>

<!--Login-->
<div  class="login-form" id="mainform" style="visibility: visible; margin-top: 0px;float: right">
  <form action="login" method="Post">
    <h2 id="logIn0" class="text-center">Log in</h2>
    <div class="form-group">
      <input type="text" class="form-control" placeholder="Username"  name="user" required="required">
    </div>
    <div class="form-group">
      <input type="password" class="form-control" placeholder="Password"  name="pass" required="required">
    </div>


    <div class="form-group">
      <button id="logIn" type="submit" class="btn btn-primary btn-block" >Log in</button>
    </div>

  </form>
  <div class="form-group">
    <a id="signUp" href="signup.jsp" class="btn btn-primary btn-block">
      Create an account now.

    </a>
  </div>
</div>


<!--Logout button-->
<a  href="index.jsp" class="btn btn-primary btn-lg" id="logOut" style="visibility: hidden; float: right; border-radius: 10px;"> Log Out</a>



<!--Create a Cv-->
<div  id="creator" style="margin-top:10%;visibility:hidden;margin-left:30%;margin-right:30%;width: 40%; border-radius: 10%;padding: 20px;" class="btn btn-dark" >
  <h1 class="glow">
    <a href="infoForm.jsp"> Create a CV now</a>
  </h1>
</div>







<!--SlideShow-->
<div id="carouselExampleIndicators"
     class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="./images/1.png" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="./images/2.png" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="./images/3.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>


<!--WHAT/WHO-->
<div class="row">
  <div class="column1" style="width: 40%;margin-right:30%;margin-left: 30%;margin-top: 10%;margin-bottom: 5%">
    <div class="card" >
      <img class="card-img-top" src="./images/who.png" alt="Card image cap">
      <div class="card-body">
        <p class="card-text" style="text-align: center">Group of Developers,trying to make your life easy.</p>
      </div>
    </div>
  </div>

</div>
<div class="row">
    <div class="column1" style="width: 40%;margin-right:30%;margin-left: 30%;margin-top: 10%;margin-bottom: 5%">
        <div class="card" >
            <img class="card-img-top" src="./images/what.jpg" alt="Card image cap">
            <div class="card-body">
                <p class="card-text" style="text-align: center">Group of Developers,trying to make your life easy.</p>
            </div>
        </div>
    </div>

</div>


<footer>
  <div class="container-fluid bg-primary py-3">
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







<script>

  function createCv()
  {
    document.getElementById("mainform").style.visibility='hidden';
    document.getElementById("logOut").style.visibility='visible';
  }
</script>
</html>
