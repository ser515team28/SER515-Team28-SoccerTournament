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
            <h2 class="float-left">Add Team</h2>
        </div>
        <div class="card-body">
            <form action="PlayerAdd" method="post">
                <div class="form-group">
                    <label for="teamname" class="control-label">Team Name</label> <input type="text" name="teamname" id="teamname" class="form-control"
                        required>
                </div>
                
                <div class="form-group">
                    <label for="teamcode" class="control-label">Team Code</label> <input type="email" name="teamcode" id="teamcode" class="form-control"
                        required>
                </div>
                <div class="form-group">
                    <label for="clubcode" class="control-label">Club Code</label>
                    <input type="number" name="clubcode" id="clubcode" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="city" class="control-label">City</label>
                    <input type="number" name="city" id="city" class="form-control" required>
                </div>
                <div class="form-group">
                    <input type="submit" class="btn btn-success btn-lg btn-block" value="Add Team">
                </div>
            </form>
        </div>
    </div>
    </main>
    <br>
    <br>
    
    <%
    Connection con = ConnectionProvider.getConnection();
    String query="select TeamID,TeamName,TeamLOGO from Team_MST where coachId=(select id from users where email=\""+ session.getAttribute("email") +"\")";
	PreparedStatement ps = con.prepareStatement((query));
	ResultSet rs = ps.executeQuery();
    
    
    %>
    <main role="main" class="container">
    <div class="card-header text-white shadow bg-dark">
            <h2 class="float-left">Registered Teams</h2>
    </div>
    </main>
    <main role="main" class="container"> 
    
  
    	
       
        
    </main>
    <%@include file="/includes/footer.jsp"%>
</body>
</html>