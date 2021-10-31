package coachController;


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

/**
 * Servlet implementation class UserAdd
 */
public class AddTeam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddTeam() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		try{  
            Connection con=ConnectionProvider.getConnection() ;  
            PreparedStatement ps=con.prepareStatement("select IFNULL(max(TeamID),0) from team_mst");
			
			ResultSet rs=ps.executeQuery();
			int max=0;
			if(rs.next())
			{
				max=rs.getInt(1);
				max++;
			}
            
			ps=con.prepareStatement("Insert into player_mst values(?,?,?,?,?,?,?,?)");
		
			ps.setInt(1, max);
			ps.setString(2,	request.getParameter("teamname"));
			ps.setString(3, request.getParameter("teamcode"));
			ps.setString(4, request.getParameter("clubcode"));
			ps.setString(5, request.getParameter("city"));
			ps.setString(6, "logo.png");
			ps.setInt(7, Integer.parseInt((String)session.getAttribute("id")));
			ps.setInt(8,0);
			
			ps.executeUpdate();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
		session.setAttribute("msg", "Player added successfully.");
		session.setAttribute("class", "alert-success");
		response.sendRedirect(request.getContextPath() + "/coach/playerDetails.jsp");
	}

}