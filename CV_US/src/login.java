import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "login",urlPatterns = "/login")
public class login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String name=request.getParameter("user");
    String password=request.getParameter("pass");
    try{

        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/cv_site","root","8080");
        Statement st=con.createStatement();
        String myQuery="Select UserName from userinfo where Username='"+name+"'and Password='"+password+"'";
        ResultSet rs=st.executeQuery(myQuery);
        if(rs.next())
        {
            request.setAttribute("err","null");
            request.getRequestDispatcher("CreateCV.jsp").forward(request,response);
        }
        else
        {
            request.setAttribute("err","username or password is incorrect");
            request.getRequestDispatcher("index.jsp").forward(request,response);
        }
        rs.close();
        st.close();

        con.close();
    } catch (ClassNotFoundException | SQLException s) {

    PrintWriter out=response.getWriter();
    out.println(s.getMessage());
    }


    }


}
