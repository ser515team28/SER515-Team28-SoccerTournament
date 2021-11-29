<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="util.ConnectionProvider,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/includes/head.jsp"%>
</head>
<body style="background-color: #f8f9fa !important;">
    <%@include file="/includes/header.jsp"%>
    <main role="main" class="container"> <%@include file="/includes/msg.jsp"%>
    <div class="card">
        <div class="card-header text-white shadow bg-dark">
            <h2 class="float-left">Add Tournament</h2>
        </div>
        <div class="card-body">
            <form action="TournamentAdd" method="post">
                <div class="form-group">
                    <label for="name" class="control-label">Tournament Name</label> <input type="text" name="name" id="name" class="form-control"
                        required>
                </div>
                
                <div class="form-group">
                    <label for="email" class="control-label">Start Date</label> 
                    <input type="date" id="start" name="tournament_start" class="form-control" >
                </div>
                <div class="form-group">
                    <label for="email" class="control-label">End Date</label> 
                    <input type="date" id="end" name="tournament_end" class="form-control" >
                </div>
                
                
                <div class="form-group">
                    <label for="position" class="control-label">Participating Teams</label>
                    <br>
                    <%
                    	Connection con = ConnectionProvider.getConnection();
                    	PreparedStatement ps = con.prepareStatement("select TeamName,TeamID from team_mst");
                    	ResultSet rs = ps.executeQuery();
                    	while (rs.next())
                        {
                            
                        %>
                        
                        <input type="checkbox" id=<%=rs.getInt(2)%>  value="<%=rs.getString(1)%>">
						<label for="vehicle1"><%=rs.getString(1)%></label><br>
                        
                        <%   
                        }
                    %>
                </div>
                
                <div class="form-group">
                
                    <label for="position" class="control-label">Participating Referees</label>
                    <br>
                    <%
                    	
                    	ps = con.prepareStatement("select name,id from users where user_type=1");
                    	rs = ps.executeQuery();
                    	while (rs.next())
                        {
                            
                        %>
                        
                        <input type="checkbox" id=<%=rs.getInt(2)%>  value="<%=rs.getString(1)%>">
						<label for="vehicle1"><%=rs.getString(1)%></label><br>
                        
                        <%   
                        }
                    %>
                </div>
                
                	
                
                
                
                <div class="form-group">
                    <input type="submit" class="btn btn-success btn-lg btn-block" value="Add Tournament">
                </div>
            </form>
        </div>
    </div>
    </main>
    
    <br><br><br>

    <%@include file="/includes/footer.jsp"%>
</body>
</html>