<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="util.ConnectionProvider,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/includes/head.jsp"%>
</head>
<body style="background-color: #f8f9fa !important;">
    <%@include file="/includes/header.jsp"%>
    
    <main role="main" class="container"> 	
        <%@include file="/includes/msg.jsp"%>
        <div class="row row-cols-1 row-cols-md-3">
            <div class="col mb-4">
                <div class="card text-white bg-warning mb-3">
                    <div class="card-header">Upcoming Tournaments</div>
                    <div class="card-body text-center">
                        <a href="<%=request.getContextPath()%>/tournament/upcoming.jsp"><img  class="display-1" src="<%=request.getContextPath()%>/logo.png"></a>
                    </div>
                    <div class="card-body text-center">
                        <h4 class="display-5">SOCCER CUP 2021</h4>
                    </div>
                    
                </div>
            </div>
          
        </div>
    </main>
    <%@include file="/includes/footer.jsp"%>
</body>
</html>