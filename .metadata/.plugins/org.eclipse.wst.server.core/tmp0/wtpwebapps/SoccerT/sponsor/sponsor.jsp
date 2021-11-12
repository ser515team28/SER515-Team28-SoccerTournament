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
            <h2 class="float-left">Sponsors</h2>
        </div>
        <div class="card-body">
	        <ul class="list-group list-group-flush">
				
	            <%
	            	Connection con = ConnectionProvider.getConnection();
	            	PreparedStatement ps = con.prepareStatement("select business_name from sponsor order by id desc");
	            	ResultSet rs = ps.executeQuery();
	            	while (rs.next())
	                {
	                   
	                %>
	                <li class="list-group-item"><%=rs.getString(1)%></li>
	                <%   
	                }
	            %>
	    	</ul>
        </div>
    </div>
    <br><br><br>
    </main>
    <%@include file="/includes/footer.jsp"%>
</body>
</html>



