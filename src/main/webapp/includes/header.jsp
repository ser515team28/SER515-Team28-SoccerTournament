<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<button onclick="topFunction()" id="myBtn" title="Go to top"><i class="fa fa-arrow-up"></i></button>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary sticky-top shadow p-3 mb-5">
    <div class="container">
        <a class="navbar-brand" href="<%=request.getContextPath()%>"><img src="<%=request.getContextPath()%>/logo.png"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">

                <%
                	if (session.getAttribute("usertype") != null) {
                		if ((int) session.getAttribute("usertype") == 2) {
                        %>
                <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/admin/user/show.jsp">Users</a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Tournaments </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                        <a class="dropdown-item" href="<%=request.getContextPath()%>/tournaments/createTournament.jsp">Create Tournament</a>
                        <a class="dropdown-item" href="<%=request.getContextPath()%>/tournaments/scheduleMatches.jsp">Schedule Matches</a>
                        
                        
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Coaches </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                        <a class="dropdown-item" href="<%=request.getContextPath()%>/coach/coachRegistration.jsp">Registration</a>
                        <a class="dropdown-item" href="<%=request.getContextPath()%>/coach/teamRegistration.jsp">Register Team</a>
                        <a class="dropdown-item" href="<%=request.getContextPath()%>/coach/playerDetails.jsp">Register Players</a>
    
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Sponsor </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                        <a class="dropdown-item" href="<%=request.getContextPath()%>/sponsor/sponsor.jsp">Sponsors</a>
                        <a class="dropdown-item" href="<%=request.getContextPath()%>/sponsor/sponsorship.jsp">Sponsorship</a>
                    </div>
                </li>
               
                <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/admin/category/show.jsp">Teams</a></li>
                <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/admin/article/show.jsp">Articles</a></li>
                
                <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/admin/faq/show.jsp">FAQ</a></li>
                       <%
                	   }
                		else if ((int) session.getAttribute("usertype") == 0) {
                        %>
                        
                        <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/announcements">Announcements</a></li>
                        <li class="nav-item dropdown">
		                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button"
		                    	data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Coaches </a>
		                    <div class="dropdown-menu" aria-labelledby="navbarDropdown2">
		                        <a class="dropdown-item" href="<%=request.getContextPath()%>/coach/coachRegistration.jsp">Registration</a>
		                        <a class="dropdown-item" href="<%=request.getContextPath()%>/coach/teamRegistration.jsp">Register Team</a>
		                        <a class="dropdown-item" href="<%=request.getContextPath()%>/coach/playerDetails.jsp">Register Players</a>
		    
		                    </div>
	                	</li>
                		<li class="nav-item dropdown">
                    		<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button"
                    			data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Sponsor </a>
                    		<div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                        		<a class="dropdown-item" href="<%=request.getContextPath()%>/sponsor/sponsor.jsp">Sponsors</a>
                        		<a class="dropdown-item" href="<%=request.getContextPath()%>/sponsor/sponsorship.jsp">Sponsorship</a>
                    		</div>
                		</li>
                        <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/faq.jsp">FAQ</a></li>
                        <%         
                        }
                		
                		else if ((int) session.getAttribute("usertype") == 3) {
                            %>
                            
                            <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/announcements">Announcements</a></li>
                            <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Coaches </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                            <a class="dropdown-item" href="<%=request.getContextPath()%>/coach/coachRegistration.jsp">Registration</a>
                            <a class="dropdown-item" href="<%=request.getContextPath()%>/coach/teamRegistration.jsp">Register Team</a>
                            <a class="dropdown-item" href="<%=request.getContextPath()%>/coach/playerDetails.jsp">Register Players</a>
        
                        </div>
                    </li>
                    		<li class="nav-item dropdown">
                    		<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button"
                    			data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Sponsor </a>
                    		<div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                        		<a class="dropdown-item" href="<%=request.getContextPath()%>/sponsor/sponsor.jsp">Sponsors</a>
                        		<a class="dropdown-item" href="<%=request.getContextPath()%>/sponsor/sponsorship.jsp">Sponsorship</a>
                    		</div>
                		</li>
                            <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/faq.jsp">FAQ</a></li>
                            <%         
                            }
                        else if ((int) session.getAttribute("usertype") == 1) {
                        %>
                       
                        <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/announcements">Announcements</a></li>
                        <li class="nav-item dropdown">
                    		<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button"
                    			data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Sponsor </a>
                    		<div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                        		<a class="dropdown-item" href="<%=request.getContextPath()%>/sponsor/sponsor.jsp">Sponsors</a>
                        		<a class="dropdown-item" href="<%=request.getContextPath()%>/sponsor/sponsorship.jsp">Sponsorship</a>
                    		</div>
                		</li>
                        <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/faq.jsp">FAQ</a></li>
                        <%         
                        }
                	}
                    else
                    {
                        %>
                        <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>">Home</a></li>
                         <li class="nav-item dropdown">
                    			<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button"
                   					 data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Coaches </a>
                    			<div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                        			<a class="dropdown-item" href="<%=request.getContextPath()%>/coach/coachRegistration.jsp">Registration</a>
                        		</div>
                        </li>	
                        <li class="nav-item dropdown">
                    			<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button"
                   					 data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Referee </a>
                    			<div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                        			<a class="dropdown-item" href="<%=request.getContextPath()%>/referee/refereeRegistration.jsp">Registration</a>
                        		</div>
                        </li>
                        <li class="nav-item dropdown">
                    		<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button"
                    			data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Sponsor </a>
                    		<div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                        		<a class="dropdown-item" href="<%=request.getContextPath()%>/sponsor/sponsor.jsp">Sponsors</a>
                        		<a class="dropdown-item" href="<%=request.getContextPath()%>/sponsor/sponsorship.jsp">Sponsorship</a>
                    		</div>
                		</li>
                		<li class="nav-item dropdown">
                    		<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button"
                    			data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> About Us </a>
                    		<div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                        		<a class="dropdown-item" href="<%=request.getContextPath()%>/aboutUs/info.jsp">Info</a>
                        		<a class="dropdown-item" href="<%=request.getContextPath()%>/aboutUs/jobs.jsp">Apply Jobs</a>
                    		</div>
                		</li>
                        <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/faq.jsp">FAQ</a></li>
                        
                        <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/index.jsp">Login</a></li>
                        <%
                    }
                %>
                
            </ul>
            <%
            	if (session.getAttribute("usertype") != null) {
                %>
                <ul class="navbar-nav my-2 my-lg-0">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <%=session.getAttribute("name")%> </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="<%=request.getContextPath()%>/user/changepassword.jsp">Change Password</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="<%=request.getContextPath()%>/feedback.jsp">Feedback</a>
                            <a class="dropdown-item" href="<%=request.getContextPath()%>/Logout">Logout</a>
                        </div>
                    </li>
                </ul>
                <%
            	}
            %>
        </div>
    </div>
</nav>
