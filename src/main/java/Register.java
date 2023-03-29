import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
 private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }
 
 /**
 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
 */
 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 // TODO Auto-generated method stub
 response.getWriter().append("Served at: ").append(request.getContextPath());
 }
 
 /**
 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
 */
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 String name=request.getParameter("name");
 String contact=request.getParameter("contact");
 String vehicleType=request.getParameter("vehicleType");
 String plateNo=request.getParameter("plateNo");
 String street=request.getParameter("street");
 
 
 try {
     Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root","password");
         Statement stmt = con.createStatement();
         stmt.executeUpdate("insert into driver (name,contact,street)values('"+name+"','"+contact+"','"+street+"') ");
         stmt.executeUpdate("insert into vehicle (plateNo,vehicleType)values('"+plateNo+"','"+vehicleType+"') ");
         System.out.println("Data is inserted successfully in both tables");
   } catch (ClassNotFoundException e) {
     // TODO Auto-generated catch block
	   
     e.printStackTrace();
   } catch (SQLException e) {
     // TODO Auto-generated catch block
     e.printStackTrace();
     //System.out.print("Data not entered");
   }
 
  	response.sendRedirect("location.jsp");
  	return;
 }
 
}