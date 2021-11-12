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
            <h2 class="float-left">Players</h2>
            <a class="anchor btn-success btn-lg float-right" href="addPlayers.jsp" style="text-decoration: none;"> <i class="fa fa-plus"></i> Add
                Player
            </a>
        </div>
        <div class="card-body">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">Position</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                    	Connection con = ConnectionProvider.getConnection();
                    	PreparedStatement ps = con.prepareStatement("select playerid,name,position from player_mst order by playerid desc");
                    	ResultSet rs = ps.executeQuery();
                    	while (rs.next())
                        {
                           
                        %>
                        <tr>
                            <th scope="row"><%=rs.getInt(1)%></th>
                            <td><%=rs.getString(2)%></td>
                            <td><%= rs.getString(3) %></td>
                            <td><a onclick="return confirm('Are you sure you want to delete it?');" class="btn btn-danger" href="UserDelete?id=<%= rs.getInt(1) %>" role="button">Delete</a></td>
                        </tr>
                        <%   
                        }
                    %>
                </tbody>
            </table>
        </div>
    </div>
    <br><br><br>
    </main>
    <%@include file="/includes/footer.jsp"%>
</body>
</html>



