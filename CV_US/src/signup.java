import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "signup",urlPatterns = "/signup")
public class signup extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            String fname = request.getParameter("usr_fname");
            String lname = request.getParameter("usr_lname");
            String username = request.getParameter("usr_name");
            String password = request.getParameter("usr_pass");
            String confirmPassword = request.getParameter("usr_pass_confirm");
            String email = request.getParameter("usr_email");
            String gender = request.getParameter("usr_gender");
            String address = request.getParameter("usr_address");
            if (!password.equals(confirmPassword)) {
                request.setAttribute("err", "pass");
                request.getRequestDispatcher("signup.jsp").forward(request, response);
                out.println("cant signup at the moment");
            }
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
            String myQuery="Select UserName from userinfo where Username='"+username+"'";
            ResultSet rs=stm.executeQuery(myQuery);
            if (rs.next())
            {
                PreparedStatement pst = con
                        .prepareStatement("UPDATE userinfo SET FName=?,LName=?,Password=?, Email=?,Gender=?,Address=? where UserName='" +username+ "'");
                pst.setString(1, fname);
                pst.setString(2, lname);
                pst.setString(3, password);
                pst.setString(4, email);
                pst.setString(5, gender);
                pst.setString(6, address);
                pst.executeUpdate();


            }
            else
            {
                PreparedStatement st = con
                        .prepareStatement( "INSERT INTO userinfo (FName,LName, UserName, Password, Email,Gender,Address)"  + "VALUES(?,?,?,?,?,?,?)");
                st.setString(1, fname);
                st.setString(2, lname);
                st.setString(3, username);
                st.setString(4, password);
                st.setString(5, email);
                st.setString(6, gender);
                st.setString(7, address);
                st.executeUpdate();
            }

            stm.close();
            con.close();
            request.setAttribute("err", "Succesfully Inserted");
            request.getRequestDispatcher("CreateCV.jsp").forward(request, response);

        } catch (ClassNotFoundException | SQLException se) {
            //Handle errors for JDBC
            PrintWriter out=response.getWriter();
            out.println(se.getMessage());
        }
    }


}
