<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="util.ConnectionProvider,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

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
            <h2 class="float-left">Referee Registration</h2>
        </div>
        <div class="card-body">
            <form action="refereeRegistration" method="post">
                <div class="form-group">
                    <label for="name" class="control-label">Name</label> <input type="text" name="name" id="name" class="form-control"
                        required>
                </div>
                <div class="form-group">
                    <label for="email" class="control-label">E-Mail</label> <input type="email" name="email" id="email" class="form-control"
                        required>
                </div>
                <div class="form-group">
                    <label for="password" class="control-label">Password</label>
                    <input type="password" name="password" id="password" class="form-control" required>
                </div>
                
                
                <div class="form-group">
                    <input type="submit" class="btn btn-success btn-lg btn-block" value="Add User">
                </div>
            </form>
        </div>
    </div>
    </main>
    
    <br><br><br>

    <%@include file="/includes/footer.jsp"%>
</body>
</html>