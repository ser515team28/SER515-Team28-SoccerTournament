<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="util.ConnectionProvider,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/includes/head.jsp"%>
</head>
<body>
<%
    Connection con = ConnectionProvider.getConnection();
    String query="select TeamID,TeamName,TeamLOGO from Team_MST where coachId=(select id from users where email=\""+ session.getAttribute("email") +"\")";
	PreparedStatement ps = con.prepareStatement((query));
	ResultSet rs = ps.executeQuery();
    
    
    %>
<main role="main" class="container"> 
	
    
    <% while(rs.next()){ %>
    	<div class="row row-cols-1 row-cols-md-3">
    		<h2>Acceptance Pending</h2>
            <div class="col mb-4">
                <div class="card text-white bg-warning mb-3">
                    <div  class="card-header"><%=rs.getInt(1)%></div>
                    <div class="card-body text-center">
                        <button><img src="<%=request.getContextPath()%>/<%=rs.getString(3)%>"><a href="playerDetails.jsp"/></button>
                    </div>
                    <div><%=rs.getString(2)%></div>
                </div>
            </div>
          
        </div>
               
    <%}%>
    	
       
        
    </main>
    <%@include file="/includes/footer.jsp"%>

</body>
</html>