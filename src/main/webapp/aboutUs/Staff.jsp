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
            <h2 class="float-left">Staff</h2>
            
        </div>
        <div class="card-body">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">Designation</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                    	Connection con = ConnectionProvider.getConnection();
                    	PreparedStatement ps = con.prepareStatement("select * from users order by id desc");
                    	ResultSet rs = ps.executeQuery();
                    	while (rs.next())
                        {
                        %>
                        <tr>
                            <th scope="row"><%=rs.getString(3)%></th>
                            <td><%=rs.getString(4)%></td>
                          
                            <%
                            if(rs.getInt(6)==0)
                            {
                    		%>
                    		<td>Coach</td>
                            <%
                            }
                            %>
                          <%
                            if(rs.getInt(6)==1)
                            {
                    		%>
                    		<td>Referee</td>
                            <%
                            }
                            %>
                            <%
                            if(rs.getInt(6)==2)
                            {
                    		%>
                    		<td>Tournament Admin</td>
                            <%
                            }
                            %>
                        </tr>
                        <%   
                        }
                    %>
                </tbody>
            </table>
        </div>
    </div>
    <br><br>
    </main>
    <%@include file="/includes/footer.jsp"%>
</body>
</html>