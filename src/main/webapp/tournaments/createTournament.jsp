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
            <form action="TournamentAdd" method="post">
                <div class="form-group">
                    <label for="name" class="control-label">Name</label> <input type="text" name="name" id="name" class="form-control"
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
                    <label for="position" class="control-label">Position</label>
                    <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike">
					<label for="vehicle1"> RCB</label><br>
					<input type="checkbox" id="vehicle2" name="vehicle2" value="Car">
					<label for="vehicle2"> CSK</label><br>
					<input type="checkbox" id="vehicle3" name="vehicle3" value="Boat">
					<label for="vehicle3"> MI</label><br>
                </div>
                
                <div class="form-group">
                    <label for="position" class="control-label">Position</label>
                    <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike">
					<label for="vehicle1"> RCB</label><br>
					<input type="checkbox" id="vehicle2" name="vehicle2" value="Car">
					<label for="vehicle2"> CSK</label><br>
					<input type="checkbox" id="vehicle3" name="vehicle3" value="Boat">
					<label for="vehicle3"> MI</label><br>
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