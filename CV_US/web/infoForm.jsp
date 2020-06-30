<!DOCTYPE html>
<html lang="en">
<head>
    <title>CV-Generators</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="styleSheet.css">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
</head>



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
<a  href="index.jsp" class="btn btn-primary btn-lg" id="logOut" style=" float: right; border-radius: 10px;"> Log Out</a>

<div  class="login-form" id="mainform" style="width: 45%;margin-top: 10%;">
    <form action="myInfo" method="post" style="border-radius: 10px; padding-bottom: 15%;">
        <h2 id="logIn0" class="text-center" style="margin-bottom: 10%; color: rgb(11, 45, 95); font-family: fantasy;">"Please Provide us Your Info"</h2>
        <div class="form-group">
            <div class="text-left">
                <h5 style="font-weight: 600;"> Username:</h5>
                <input type="text" class="form-control" name="usr_name" placeholder="Username" required="required">
            </div>
        </div>
        <div class="form-group">
            <div class="text-left">
                <h5 style="font-weight: 600;"> First Name:</h5>
                <input type="text" class="form-control" name="usr_fname" placeholder="First Name" required="required">
            </div>
        </div>
        <div class="form-group">
            <div class="text-left">
                <h5 style="font-weight: 600;"> Last Name:</h5>
                <input type="text" class="form-control" name="usr_lname" placeholder="Last Name" required="required">
            </div>
        </div>
        <div class="form-group">
            <div class="text-left">
                <h5 style="font-weight: 600;"> Email Address:</h5>
                <input type="email" class="form-control" name="usr_email" placeholder="Email" required="required">
            </div>
        </div>
        <div class="form-group">
            <div class="text-left">
                <h5 style="font-weight: 600;"> Contact No:</h5>
                <input type="number" class="form-control" name="usr_contact" placeholder="0123456789" required="required">
            </div>
        </div>
        <div class="form-group">
        <div class="text-left">
            <h5 style="font-weight: 600;"> Age:</h5>
            <input type="number" class="form-control" name="usr_age" placeholder="" required="required">
        </div>
</div>
        <div class="form-group">
            <div class="text-left">
                <h5 style="font-weight: 600;"> Home Address:</h5>
                <input type="text" class="form-control" name="usr_address"  placeholder="H.No.31 Block A, Wapda Town Lahore,Punjab,Pakistan." required="required" style="height: 140px;">
            </div>
        </div>
        <div class="form-group">
            <div class="text-left">
                <h5 style="font-weight: 600;"> Qualification:</h5>
                <input type="text" class="form-control" name="usr_qual" placeholder="PhD in Computer Science And PhD in Big Data" required="required" style="height: 140px;">
            </div>
        </div>
        <div class="form-group">
            <div class="text-left">
                <h5 style="font-weight: 600;"> Work Experience:</h5>
                <input type="text" class="form-control" name="usr_work" placeholder="Worked in Anonymous League for 2 years." required="required" style="height: 140px;">
            </div>
        </div>
        <div class="form-group">
            <div class="text-left">
                <h5 style="font-weight: 600;"> Aims And Goals:</h5>
                <input type="text" class="form-control" name="usr_aims" placeholder=" " required="required" style="height: 140px;">
            </div>
        </div>
        <div class="form-group">
            <div class="text-left">
                <h5 style="font-weight: 600;"> Technical Skills:</h5>
                <input type="text" class="form-control" name="usr_skills" placeholder=" " required="required" style="height: 140px;">
            </div>
        </div>
        <div class="form-group">
            <div class="text-left">
                <h5 style="font-weight: 600;"> Independent Courses:</h5>
                <input type="text" class="form-control" name="usr_courses" placeholder=" " required="required" style="height: 140px;">
            </div>
        </div>
        <div class="form-group">
            <div class="text-left">
                <h5 style="font-weight: 600;"> Others:</h5>
                Expected Salary: <input type="text" class="form-control" name="usr_salary" placeholder=" " required="required">
                Area of Interest: <input type="text" class="form-control" name="usr_interest" placeholder=" " required="required">
            </div>
        </div>
        <div class="form-group">
            <div class="text-left">
                <h5 style="font-weight: 600;"> Additional Awards/Certificates: </h5>
                <input type="text" class="form-control" name="usr_certificates" placeholder=" " required="required" style="height: 140px;">
            </div>
        </div>
        <div class="form-group">
            <button id="logIn" type="submit" class="btn btn-warning btn-lg" style="float: right; margin-top: 5%;"> Save & Next  </button>
        </div>
        
        
    </form>

</div>


<footer>
    <div class="container-fluid bg-primary py-3" style="margin-top:70vh; width: 100%;">
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
  