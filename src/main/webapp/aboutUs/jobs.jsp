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
            <h2 class="float-left">Careers & Jobs</h2>
        </div>
        <div class="card-body">
	        <div class="card mb-3">
			      <div class="card-body">
			        <h5 class="card-title">Volunteer</h5>
			        <p class="card-text">Volunteers are an important part of our success as the nations largest league and tournament host. We offer multiple opportunities to give back to the beautiful game. If interested in volunteering for any of the below positions,...</p>
			        <a href="<%=request.getContextPath()%>/coach/playerDetails.jsp" class="card-text"><small class="text-muted">read more</small></a>
			      </div>
			    </div>
			    <div class="card mb-3">
			      <div class="card-body">
			        <h5 class="card-title">Referee</h5>
			        <p class="card-text">We currently contracting new and experienced certified referees. Refereeing is a great way to be involved in soccer in a positive way and earn additional money. Join the referee pool for...</p>
			        <a href="<%=request.getContextPath()%>/coach/playerDetails.jsp" class="card-text"><small class="text-muted">read more</small></a>
			      </div>
			    </div>
			  </div>
			</div>
        </div>
    </div>
    <br><br><br>
    </main>
    <%@include file="/includes/footer.jsp"%>
</body>
</html>
