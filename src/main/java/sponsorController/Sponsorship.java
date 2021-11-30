package sponsorController;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.ConnectionProvider;


public class Sponsorship extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	public Sponsorship() {
		super();
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{  
            Connection con=ConnectionProvider.getConnection() ;  
            PreparedStatement ps=con.prepareStatement("select IFNULL(max(id),0) from sponsor");
			
			ResultSet rs=ps.executeQuery();
			int max=0;
			if(rs.next())
			{
				max=rs.getInt(1);
				max++;
			}
			
			ps=con.prepareStatement("Insert into sponsor values(?,?,?,?,?,?)");
			ps.setInt(1, max);
			ps.setString(2,	request.getParameter("business_name"));
			ps.setString(3, request.getParameter("person_name"));
			ps.setString(4, request.getParameter("email"));
			ps.setString(5, request.getParameter("phone_number"));
			ps.setString(6, request.getParameter("interest"));
			
			ps.executeUpdate();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		HttpSession session = request.getSession();
		session.setAttribute("msg", "Applied successful. You will here form tournament director soon");
		session.setAttribute("class", "alert-success");
		response.sendRedirect(request.getContextPath() + "/admin/home.jsp");
	}
}
