import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "Info",urlPatterns = "/myInfo")
public class myInfo extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            String fname = request.getParameter("usr_fname");
            String lname = request.getParameter("usr_lname");
            String username = request.getParameter("usr_name");
            String email = request.getParameter("usr_email");
            String age = request.getParameter("usr_age");
            String contact = request.getParameter("usr_contact");
            String address = request.getParameter("usr_address");
            String work = request.getParameter("usr_work");
            String qual = request.getParameter("usr_qual");
            String aims = request.getParameter("usr_aims");
            String skill = request.getParameter("usr_skills");
            String courses = request.getParameter("usr_courses");
            String salary = request.getParameter("usr_salary");
            String interest = request.getParameter("usr_interest");
            String certificate = request.getParameter("usr_certificates");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cv_site","root","8080");
            Statement stm=con.createStatement();
            String myQuery="Select UserName from userinfo where Username='"+username+"'";
            ResultSet rs=stm.executeQuery(myQuery);
            if (rs.next())
            {
                PreparedStatement pst = con
                        .prepareStatement("UPDATE cvinfo SET FName=?,LName=?,ContactNo=?, Email=?,Qualification=?,Address=?,workExp=?,Aims=?,Skill=?,Courses=?,Salary=?,Interest=?,Certificates=?,Age=? where UserName='" +username+ "'");
                pst.setString(1, fname);
                pst.setString(2, lname);
                pst.setString(3, contact);
                pst.setString(4, email);
                pst.setString(5, qual);
                pst.setString(6, address);
                pst.setString(7, work);
                pst.setString(8, aims);
                pst.setString(9, skill);
                pst.setString(10, courses);
                pst.setString(11, salary);
                pst.setString(12, interest);
                pst.setString(13, certificate);
                pst.setString(14, age);
                pst.executeUpdate();

            }
            else
            {
                PreparedStatement st = con
                        .prepareStatement("INSERT INTO cvinfo (FName,LName,UserName,ContactNo, Email,Qualification,Address,workExp,Aims,Skill,Courses,Salary,Interest,Certificates,Age)" + "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                st.setString(1, fname);
                st.setString(2, lname);
                st.setString(3, username);
                st.setString(4, contact);
                st.setString(5, email);
                st.setString(6, qual);
                st.setString(7, address);
                st.setString(8, work);
                st.setString(9, aims);
                st.setString(10, skill);
                st.setString(11, courses);
                st.setString(12, salary);
                st.setString(13, interest);
                st.setString(14, certificate);
                st.setString(15, certificate);
                st.executeUpdate();
            }
            stm.close();
            con.close();
            request.setAttribute("err", "Succesfully Inserted");
            request.getRequestDispatcher("chooseTemp.jsp").forward(request, response);

        } catch (ClassNotFoundException | SQLException se) {
            //Handle errors for JDBC

            PrintWriter out=response.getWriter();
            out.println(se.getMessage());
        }
    }
}
