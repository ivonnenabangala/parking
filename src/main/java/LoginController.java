
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class LoginController
 */
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String un = request.getParameter("username");
        String pw = request.getParameter("password");

// Connect to mysql(mariadb) and verify username password

        try {
            Class.forName("com.mysql.jdbc.Driver");
         // loads driver
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking", "root", "password"); // gets a new connection

            PreparedStatement ps = c.prepareStatement("select userName,passwd from admin where userName=? and passwd=?");
            ps.setString(1, un);
            ps.setString(2, pw);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                response.sendRedirect("admin.jsp");
                return;
            }
            
            return;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

}
