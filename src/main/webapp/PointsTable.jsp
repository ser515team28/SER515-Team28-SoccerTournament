<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="/includes/header.jsp"%>
    <%
    Connection con = ConnectionProvider.getConnection();
	PreparedStatement ps = con.prepareStatement("select count(*) from complaints where status=0");
	ResultSet rs = ps.executeQuery();
    int open = 0;
    int close = 0;
    int total = 0;
    if(rs.next()) {
     open = rs.getInt(1);   
    }
    ps = con.prepareStatement("select count(*) from complaints where status=1");
    rs = ps.executeQuery();
    if(rs.next()) {
     close = rs.getInt(1);
    }
    total = open + close;
    %>
    <main role="main" class="container"> 	
    <%@include file="/includes/msg.jsp"%>
        <div class="row row-cols-1 row-cols-md-3">
            <div class="col mb-4">
                <a href="<%=request.getContextPath()%>/tournament/upcomingTournament.jsp" style="text-decoration: none !important">
                <div class="card text-white bg-warning mb-3">
                    <div class="card-header">Upcoming Tournaments</div>
                    <div class="card-body text-center">
                        <h1 class="display-2">1</h1>
                    </div>
                </div>
                </a>
            </div>

</body>
</html>