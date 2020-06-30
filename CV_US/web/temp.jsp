<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.*" %>
<html lang="en">
<head>
    <title>CV-Generators</title>
    <link type="text/css" rel="stylesheet" href="style1.css"/>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <title></title>
</head>
<body>
<div style="width:60%;margin-left: 20%;" >
<%
    String username= request.getParameter("username");
    String my_name = "Sherlock Holmes";
    String my_age ="35";
    String my_email ="sherlock_s@gmail.com";
    String my_contact="03145670112";
    String my_address="221 B, Baker's Street, London";
    String my_qual= "MS law enforcemnent";
    String my_work="As a Consulting detective at The Museum, as a Private Detective at Mycroft's company";
    String my_aims="To promote justice, to serve the state";
    String my_skills="Excellent at Reading people's minds, Following after clues";
    String my_courses="Law and order, Intuition";
    String my_certificates="Award for protecting the town, Scored highest in LSATs";
    String my_salary="1000$";
    String my_interest="Mystery Cases, Identity Cases, Robbery Cases";
%>
    <div id="header">
        <div class="intro">
            <p id="name1"><%=my_name%></p>
        </div>
    </div>
    <div class="right">
        <ul  class="fa-ul" id="outer-list">
            <li class="my-list"> <i class="fa fa-star fa-fw fa-lg fa-3x list-bullet" aria-hidden="true"></i>Personal Information</li>
            <p>
            <ul class="sub-lists">
            Age :<li id="agen"> <%= my_age%> </li>
            Email : <li id="emailn"> <%= my_email%> </li>
            Contact: <li id="contactn"><%=my_contact%> </li>
            Address: <li id="addressn" > <%=my_address%> </li>
            </ul>
            </p>
            <li class="my-list"> <i class="fa fa-briefcase fa-fw fa-lg fa-3x list-bullet" aria-hidden="true"></i>Professional Experience </li>
            <ul class="sub-lists">
                <li id="work-exp"><%=my_work%>></li>
            </ul>
            <li class="my-list"> <i class="fa fa-pencil fa-fw fa-lg fa-3x list-bullet" aria-hidden="true"></i>Educational Qualifications</li>
            <table style="margin-left: 5em">
                <ul class="sub-lists">
                <li id="qual"> <%=my_qual%> </li>
            </table>
            <li class="my-list"> <i class="fa fa-book fa-fw fa-lg fa-3x list-bullet" aria-hidden="true"></i>Independent Courses</li>
            <p>
            <ul class="sub-lists">
                <li id="coursen"><%=my_courses%>></li>
            </ul>
            <li class="my-list"><i class="fa fa-cog fa-fw fa-lg fa-3x list-bullet" aria-hidden="true"></i>Technical Skills</li>
            <p>
            <ul class="sub-lists">
                <li id="skilln"> <%=my_skills%></li></ul>
            </p>
            <li class="my-list"><i class="fa fa-trophy fa-fw fa-lg fa-3x list-bullet" aria-hidden="true"></i>Certifications / Awards:</li>
            <p>
            <ul class="sub-lists">
                <li id="certn"> <%=my_certificates%></li>
            </ul>
            </p>
            <li class="my-list"><i class="fa fa-star fa-fw fa-lg fa-3x list-bullet" aria-hidden="true"></i>Other Information</li>
            <p>
            <ul class="sub-lists">
            Expected Salary: <li id="salaryn">
                     <%=my_salary%></li>
            Area of Interest: <li id="interestn">
                   <%=my_interest%></li>
            </ul>
            </p>
            <li class="my-list"><i class="fa fa-star fa-fw fa-lg fa-3x list-bullet" aria-hidden="true"></i>Declaration</li>
            <p style="margin-left: 4em">
                I hereby declare that the details furnished above are true and correct to the best of my knowledge and belief.</p>
    </div>
    </ul>
    <%
        try
        {

            String dbDriver = "com.mysql.jdbc.Driver";
            String dbURL = "jdbc:mysql://localhost:3306/";
            // Database name to access
            String dbName = "cv_site";
            String dbUsername = "root";
            String dbPassword = "8080";
            Class.forName(dbDriver);
            Connection con = DriverManager.getConnection(dbURL + dbName,
                    dbUsername,
                    dbPassword);
            Statement stm=con.createStatement();
            String myQuery="Select FName,LName,Age,Email,ContactNo,Aims,workExp,Salary,Qualification,Courses,Interest,Certificates,Skill from cvinfo where Username='"+username+"'";
            ResultSet rs=stm.executeQuery(myQuery);
            if (rs.next())
            {
              my_name=rs.getString(1)+" "+rs.getString(2);
              my_age=rs.getString(3);
              my_email=rs.getString(4);
              my_contact=rs.getString(5);
              my_aims=rs.getString(6);
              my_work=rs.getString(7);
              my_salary=rs.getString(8);
              my_qual=rs.getString(9);
              my_courses=rs.getString(10);
              my_interest=rs.getString(11);
              my_certificates=rs.getString(12);
              my_skills=rs.getString(13);

            }
        }
        catch (ClassNotFoundException ex) {
        ex.printStackTrace();
        }
        catch (SQLException se) {
        //Handle errors for JDBC
        out.println(se.getMessage());
        }

    %>
    <div id="footer"> </div>
    <button class="btn btn-danger btn-lg" style="margin-top:5%;margin-bottom: 5%;float: right;">
        <a href="chooseTemp.jsp"> Go Back </a> </button>

        <input type="hidden" name="username" value=<%=username%>>
    <button  class="btn btn-primary btn-lg" onclick="fillData()" style="margin-top:5%; margin-bottom: 5%;float: right;"> CREATE!</button>
</div>
<script>
    function fillData()
    {
        document.getElementById("name1").innerText="<%=my_name%>";
        document.getElementById("agen").innerText="<%=my_age%>";
        document.getElementById("contactn").innerText="<%=my_contact%>";
        document.getElementById("emailn").innerText="<%=my_email%>";
        document.getElementById("addressn").innerText="<%=my_address%>";
        document.getElementById("qual").innerText="<%=my_qual%>";
        document.getElementById("work-exp").innerText="<%=my_work%>";
        document.getElementById("interestn").innerText="<%=my_interest%>";
        document.getElementById("salaryn").innerText="<%=my_salary%>";
        document.getElementById("coursen").innerText="<%=my_courses%>";
        document.getElementById("certn").innerText="<%=my_certificates%>";
        document.getElementById("skilln").innerText="<%=my_skills%>";


    }
</script>
</body>
</html>