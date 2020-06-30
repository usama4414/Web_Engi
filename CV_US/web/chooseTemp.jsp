<!DOCTYPE html>
<html lang="en">
<head>

    <title>CV-Generators</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <link rel="stylesheet" href="chooseTemp.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="styleSheet.css">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
</head>

<body>
<%
    String username= request.getParameter("usr_name");
%>

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

<div class="container" style="
width: 80%; float: left;margin-top: 5%">

    <div class="jumbotron">
  
        <h1 class="hd1" style="text-align: center;">Choose a Template For Your CV</h1>
  
        <p class="lead hd1" style="text-align: center;">Do it...They all are FREE!!!!</p>
  
        <hr class="my-4">
  
        
  
    </div>
  

</div>


<div class="container1" style="width: 100%;">
  <div class="box" style="margin:5%">
    <div class="imgBox" >
      <img src="./images/cv.PNG" >
    </div>
    <div class="details">
      <div class="content">
          <form action="temp.jsp">
              <input type="hidden" name="username" value=<%=username%>>
              <button type="submit" style="background-color:Transparent; border:hidden; color:white">Preview Template</button>
          </form>
      </div>

    </div>
  </div>
  <div class="box" style="margin:5%">
    <div class="imgBox">
      <img src="./images/t2.jpg">
    </div>
    <div class="details">
      <div class="content">
        <h2><a href=""> Preview Template</a></h2>
      </div>

    </div>
  </div>
  <div class="box" style="margin:5%">	
    <div class="imgBox">
      <img src="./images/t3.jpg">
    </div>
    <div class="details">
      <div class="content">
        <h2><a href=""> Preview Template</a></h2>
        
      </div>

    </div>
  </div>
  <div class="box" style="margin:5%">
    <div class="imgBox">
      <img src="./images/t1.png">
    </div>
    <div class="details">
      <div class="content">
        <h2><a href=""> Preview Template</a></h2>
      </div>

    </div>
  </div>

  

  <div class="box" style="margin:5%">	
    <div class="imgBox">
      <img src="./images/t3.jpg">
    </div>
    <div class="details">
      <div class="content">
        <h2><a href=""> Preview Template</a></h2>
      </div>

    </div>
  </div>
  <div class="box" style="margin:5%">	
    <div class="imgBox">
      <img src="./images/t3.jpg">
    </div>
    <div class="details">
      <div class="content">
        <h2><a href=""> Preview Template</a></h2>
      </div>

    </div>
  </div>
  <div class="box" style="margin:5%">	
    <div class="imgBox">
      <img src="./images/t3.jpg">
    </div>
    <div class="details">
      <div class="content">
        <h2><a href=""> Preview Template</a></h2>
      </div>

    </div>
  </div>
</div>


<footer >
    <div class="container-fluid bg-primary py-3" style="width: 100%;margin-top: 200vh ">
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
  