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
            <h2 class="float-left">About Us</h2>
        </div>
        <div class="card-body">
	        <table class="table table-hover">
                <thead>
                    <tr>
                    	<th scope="col">No</th>
                        <th scope="col">Title</th>
                        <th scope="col">Action</th>
                        
                    </tr>
                </thead>
                <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Volunteer</td>
                            <td><a onclick="" class="btn btn-danger" href="">Apply</a></td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Referee</td>
                            <td><a onclick="" class="btn btn-danger" href="">Apply</a></td>
                        </tr>
                </tbody>
            </table>
        </div>
    </div>
    <br><br><br>
    </main>
    <%@include file="/includes/footer.jsp"%>
</body>
</html>
