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
            <h2 class="float-left">Add Player</h2>
        </div>
        <div class="card-body">
            <form action="PlayerAdd" method="post">
                <div class="form-group">
                    <label for="name" class="control-label">Name</label> <input type="text" name="name" id="name" class="form-control"
                        required>
                </div>
                
                <div class="form-group">
                    <label for="email" class="control-label">E-Mail</label> <input type="email" name="email" id="email" class="form-control"
                        required>
                </div>
                <div class="form-group">
                    <label for="age" class="control-label">Age</label>
                    <input type="number" name="age" id="age" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="position" class="control-label">Position</label>
                    <select id="position" name="position" class="form-control">
                        <option value="Goalkeeper">Goalkeeper</option>
                        <option value="Defender">Defender</option>
                        <option value="MidFielder">MidFielder</option>
                        <option value="Forward">Forward</option>
                    </select>
                </div>
                <div class="form-group">
                    <input type="submit" class="btn btn-success btn-lg btn-block" value="Add Player">
                </div>
            </form>
        </div>
    </div>
    </main>
    
    <br><br><br>

    <%@include file="/includes/footer.jsp"%>
</body>
</html>