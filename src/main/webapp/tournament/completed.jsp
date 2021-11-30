<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="util.ConnectionProvider,java.sql.*"%>
<html>
<head>
<%@include file="/includes/head.jsp"%>
</head>
<body style="background-color: #f8f9fa !important;">
    <%@include file="/includes/header.jsp"%>
    <main role="main" class="container"> 
    	<%@include file="/includes/msg.jsp"%>
    	<%
	    	Connection con = ConnectionProvider.getConnection();
	    	String query="SELECT t1.TeamName,t2.TeamName,date,time,location.name from match_dlt join location on location.id=match_dlt.location JOIN team_mst AS t1 ON t1.TeamID=team1 JOIN team_mst AS t2 ON t2.TeamID=team2 where isPlayed=1";
	    	PreparedStatement ps = con.prepareStatement(query);
	    	ResultSet rs = ps.executeQuery();
	    	while (rs.next())
	        {
    	%>
    	<div class="card-group">
		  <div class="card mb-5 border-light" style="max-width: 540px;">
			  <div class="row g-0">
			    <div class="col-md-8" style="padding: 25px">
			      <div class="card-body text-right">
			        <h5 class="card-title"><%=rs.getString(1) %></h5>
			      </div>
			    </div>
			    <div class="col-md-4" style="padding: 25px">
			      <img src="<%=request.getContextPath()%>/logo.png" class="img-fluid rounded-start" alt="...">
			    </div>
			  </div>
			</div>
		  <div class="card mb-5 border-light" style="max-width: 520px;">
			  <div class="row g-0">
			  <!-- 
			  	<div class="col-md-3 text-center">
			  		<br>
			  		<h1 style="padding: 10px">3</h1>
			  	</div>
			  	 -->
			    <div class="col-md-12">
			      <div class="card-body text-center">
			        <h5 class="card-title"></h5>
			        <p class="card-text"><%=rs.getDate(3) %></p>
			        <p class="card-text"><%=rs.getString(5) %></p>
			        <p class="card-text"><small class="text-muted"><%=rs.getTime(4) %></small></p>
			      </div>
			    </div>
			    <!-- 
			    <div class="col-md-3 text-center">
			    	<br>
			  		<h1 style="padding: 10px">3</h1>
			  	</div>
			  	 -->
			  </div>
			</div>
			<div class="card-group">
		  <div class="card mb-5 border-light" style="max-width: 540px;">
			  <div class="row g-0">
			    <div class="col-md-8" style="padding: 25px">
			      <div class="card-body text-right">
			        <h5 class="card-title"><%=rs.getString(1) %></h5>
			      </div>
			    </div>
			    <div class="col-md-4" style="padding: 25px">
			      <img src="<%=request.getContextPath()%>/logo.png" class="img-fluid rounded-start" alt="...">
			    </div>
			  </div>
			</div>
		  <div class="card mb-5 border-light" style="max-width: 520px;">
			  <div class="row g-0">
			    <div class="col-md-4" style="padding: 25px">
			      <img src="<%=request.getContextPath()%>/logo.png" class="img-fluid rounded-start" alt="...">
			    </div>
			    <div class="col-md-8" style="padding: 25px">
			      <div class="card-body text-left">
			        <h5 class="card-title"><%=rs.getString(2) %></h5>
			      </div>
			    </div>
			  </div>
			</div>
		</div>
		<% 
	        }
		%>
    </main>
    <%@include file="/includes/footer.jsp"%>
</body>
</html>



