/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.61
 * Generated at: 2021-11-11 21:19:57 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.referee;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import util.ConnectionProvider;
import java.sql.*;

public final class refereeRegistration_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(4);
    _jspx_dependants.put("/includes/head.jsp", Long.valueOf(1635639912000L));
    _jspx_dependants.put("/includes/msg.jsp", Long.valueOf(1635639912000L));
    _jspx_dependants.put("/includes/footer.jsp", Long.valueOf(1635639912000L));
    _jspx_dependants.put("/includes/header.jsp", Long.valueOf(1635735752000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("util.ConnectionProvider");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<meta charset=\"utf-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("\r\n");
      out.write("<title>Twenty Eight Soccer Association</title>\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\" >\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css\">\r\n");
      out.write("\r\n");
      out.write("<!-- Global site tag (gtag.js) - Google Analytics -->\r\n");
      out.write("<script src=\"https://www.googletagmanager.com/gtag/js?id=UA-162007775-1\"></script>\r\n");
      out.write("<script>\r\n");
      out.write("  window.dataLayer = window.dataLayer || [];\r\n");
      out.write("  function gtag(){dataLayer.push(arguments);}\r\n");
      out.write("  gtag('js', new Date());\r\n");
      out.write("\r\n");
      out.write("  gtag('config', 'UA-162007775-1');\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("<link href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\" >\r\n");
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write("#myBtn {\r\n");
      out.write("  display: none; /* Hidden by default */\r\n");
      out.write("  position: fixed; /* Fixed/sticky position */\r\n");
      out.write("  bottom: 20px; /* Place the button at the bottom of the page */\r\n");
      out.write("  right: 30px; /* Place the button 30px from the right */\r\n");
      out.write("  z-index: 99; /* Make sure it does not overlap */\r\n");
      out.write("  border: none; /* Remove borders */\r\n");
      out.write("  outline: none; /* Remove outline */\r\n");
      out.write("  background-color: red; /* Set a background color */\r\n");
      out.write("  color: white; /* Text color */\r\n");
      out.write("  cursor: pointer; /* Add a mouse pointer on hover */\r\n");
      out.write("  padding: 15px; /* Some padding */\r\n");
      out.write("  border-radius: 10px; /* Rounded corners */\r\n");
      out.write("  font-size: 18px; /* Increase font size */\r\n");
      out.write("  z-index: 1031;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#myBtn:hover {\r\n");
      out.write("  background-color: #555; /* Add a dark-grey background on hover */\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body style=\"background-color: #f8f9fa !important;\">\r\n");
      out.write("    ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<button onclick=\"topFunction()\" id=\"myBtn\" title=\"Go to top\"><i class=\"fa fa-arrow-up\"></i></button>\r\n");
      out.write("\r\n");
      out.write("<nav class=\"navbar navbar-expand-lg navbar-dark bg-primary sticky-top shadow p-3 mb-5\">\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <a class=\"navbar-brand\" href=\"");
      out.print(request.getContextPath());
      out.write("\"><img src=\"");
      out.print(request.getContextPath());
      out.write("/logo.png\"></a>\r\n");
      out.write("        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\"\r\n");
      out.write("            aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("            <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("        </button>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n");
      out.write("            <ul class=\"navbar-nav mr-auto\">\r\n");
      out.write("\r\n");
      out.write("                ");

                	if (session.getAttribute("usertype") != null) {
                		if ((int) session.getAttribute("usertype") == 2) {
                        
      out.write("\r\n");
      out.write("                <li class=\"nav-item\"><a class=\"nav-link\" href=\"");
      out.print(request.getContextPath());
      out.write("/admin/home.jsp\">Home</a></li>\r\n");
      out.write("                <li class=\"nav-item\"><a class=\"nav-link\" href=\"");
      out.print(request.getContextPath());
      out.write("/admin/user/show.jsp\">Users</a></li>\r\n");
      out.write("                <li class=\"nav-item dropdown\">\r\n");
      out.write("                    <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown2\" role=\"button\"\r\n");
      out.write("                    data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\"> Tournaments </a>\r\n");
      out.write("                    <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown2\">\r\n");
      out.write("                        <a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/admin/complaint/unassigned.jsp\">Unassigned Complaint</a>\r\n");
      out.write("                        <div class=\"dropdown-divider\"></div>\r\n");
      out.write("                        <a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/admin/report/pending.jsp\">Pending Assigned Complaint Report</a>\r\n");
      out.write("                        <a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/admin/report/days.jsp\">Date range Report</a>\r\n");
      out.write("                        <a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/admin/report/departments.jsp\">Department wise Complaint Report</a>\r\n");
      out.write("                        <a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/admin/report/facultys.jsp\">Faculty wise Complaint Report</a>\r\n");
      out.write("                        <a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/admin/report/categories.jsp\">Category wise Complaint Report</a>\r\n");
      out.write("                        <div class=\"dropdown-divider\"></div>\r\n");
      out.write("                        <div class=\"dropdown-item\">\r\n");
      out.write("                            <form action=\"");
      out.print(request.getContextPath());
      out.write("/admin/complaint/view.jsp\">\r\n");
      out.write("                                <div class=\"input-group mb-3\">\r\n");
      out.write("                                  <input type=\"number\" class=\"form-control\" placeholder=\"Complaint ID\" aria-label=\"Complaint ID\" aria-describedby=\"button-addon2\" name=\"id\" required>\r\n");
      out.write("                                  <div class=\"input-group-append\">\r\n");
      out.write("                                    <button class=\"btn btn-outline-secondary\" type=\"submit\" id=\"button-addon2\">Search</button>\r\n");
      out.write("                                  </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </form>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li class=\"nav-item dropdown\">\r\n");
      out.write("                    <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown2\" role=\"button\"\r\n");
      out.write("                    data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\"> Coaches </a>\r\n");
      out.write("                    <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown2\">\r\n");
      out.write("                        <a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/coach/coachRegistration.jsp\">Registration</a>\r\n");
      out.write("                        <a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/coach/teamRegistration.jsp\">Register Team</a>\r\n");
      out.write("                        <a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/coach/playerDetails.jsp\">Register Players</a>\r\n");
      out.write("    \r\n");
      out.write("                    </div>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li class=\"nav-item dropdown\">\r\n");
      out.write("                    <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown2\" role=\"button\"\r\n");
      out.write("                    data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\"> Sponsor </a>\r\n");
      out.write("                    <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown2\">\r\n");
      out.write("                        <a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/sponsor/sponsor.jsp\">Sponsors</a>\r\n");
      out.write("                        <a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/sponsor/sponsorship.jsp\">Sponsorship</a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </li>\r\n");
      out.write("               \r\n");
      out.write("                <li class=\"nav-item\"><a class=\"nav-link\" href=\"");
      out.print(request.getContextPath());
      out.write("/admin/category/show.jsp\">Teams</a></li>\r\n");
      out.write("                <li class=\"nav-item\"><a class=\"nav-link\" href=\"");
      out.print(request.getContextPath());
      out.write("/admin/article/show.jsp\">Articles</a></li>\r\n");
      out.write("                \r\n");
      out.write("                <li class=\"nav-item\"><a class=\"nav-link\" href=\"");
      out.print(request.getContextPath());
      out.write("/admin/faq/show.jsp\">FAQ</a></li>\r\n");
      out.write("                       ");

                	   }
                		else if ((int) session.getAttribute("usertype") == 0) {
                        
      out.write("\r\n");
      out.write("                        \r\n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"");
      out.print(request.getContextPath());
      out.write("/announcements\">Announcements</a></li>\r\n");
      out.write("                        <li class=\"nav-item dropdown\">\r\n");
      out.write("\t\t                    <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown2\" role=\"button\"\r\n");
      out.write("\t\t                    \tdata-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\"> Coaches </a>\r\n");
      out.write("\t\t                    <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown2\">\r\n");
      out.write("\t\t                        <a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/coach/coachRegistration.jsp\">Registration</a>\r\n");
      out.write("\t\t                        <a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/coach/teamRegistration.jsp\">Register Team</a>\r\n");
      out.write("\t\t                        <a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/coach/playerDetails.jsp\">Register Players</a>\r\n");
      out.write("\t\t    \r\n");
      out.write("\t\t                    </div>\r\n");
      out.write("\t                \t</li>\r\n");
      out.write("                \t\t<li class=\"nav-item dropdown\">\r\n");
      out.write("                    \t\t<a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown2\" role=\"button\"\r\n");
      out.write("                    \t\t\tdata-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\"> Sponsor </a>\r\n");
      out.write("                    \t\t<div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown2\">\r\n");
      out.write("                        \t\t<a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/sponsor/sponsor.jsp\">Sponsors</a>\r\n");
      out.write("                        \t\t<a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/sponsor/sponsorship.jsp\">Sponsorship</a>\r\n");
      out.write("                    \t\t</div>\r\n");
      out.write("                \t\t</li>\r\n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"");
      out.print(request.getContextPath());
      out.write("/faq.jsp\">FAQ</a></li>\r\n");
      out.write("                        ");
         
                        }
                		
                		else if ((int) session.getAttribute("usertype") == 3) {
                            
      out.write("\r\n");
      out.write("                            \r\n");
      out.write("                            <li class=\"nav-item\"><a class=\"nav-link\" href=\"");
      out.print(request.getContextPath());
      out.write("/announcements\">Announcements</a></li>\r\n");
      out.write("                            <li class=\"nav-item dropdown\">\r\n");
      out.write("                        <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown2\" role=\"button\"\r\n");
      out.write("                        data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\"> Coaches </a>\r\n");
      out.write("                        <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown2\">\r\n");
      out.write("                            <a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/coach/coachRegistration.jsp\">Registration</a>\r\n");
      out.write("                            <a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/coach/teamRegistration.jsp\">Register Team</a>\r\n");
      out.write("                            <a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/coach/playerDetails.jsp\">Register Players</a>\r\n");
      out.write("        \r\n");
      out.write("                        </div>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    \t\t<li class=\"nav-item dropdown\">\r\n");
      out.write("                    \t\t<a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown2\" role=\"button\"\r\n");
      out.write("                    \t\t\tdata-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\"> Sponsor </a>\r\n");
      out.write("                    \t\t<div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown2\">\r\n");
      out.write("                        \t\t<a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/sponsor/sponsor.jsp\">Sponsors</a>\r\n");
      out.write("                        \t\t<a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/sponsor/sponsorship.jsp\">Sponsorship</a>\r\n");
      out.write("                    \t\t</div>\r\n");
      out.write("                \t\t</li>\r\n");
      out.write("                            <li class=\"nav-item\"><a class=\"nav-link\" href=\"");
      out.print(request.getContextPath());
      out.write("/faq.jsp\">FAQ</a></li>\r\n");
      out.write("                            ");
         
                            }
                        else if ((int) session.getAttribute("usertype") == 1) {
                        
      out.write("\r\n");
      out.write("                       \r\n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"");
      out.print(request.getContextPath());
      out.write("/announcements\">Announcements</a></li>\r\n");
      out.write("                        <li class=\"nav-item dropdown\">\r\n");
      out.write("                    \t\t<a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown2\" role=\"button\"\r\n");
      out.write("                    \t\t\tdata-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\"> Sponsor </a>\r\n");
      out.write("                    \t\t<div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown2\">\r\n");
      out.write("                        \t\t<a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/sponsor/sponsor.jsp\">Sponsors</a>\r\n");
      out.write("                        \t\t<a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/sponsor/sponsorship.jsp\">Sponsorship</a>\r\n");
      out.write("                    \t\t</div>\r\n");
      out.write("                \t\t</li>\r\n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"");
      out.print(request.getContextPath());
      out.write("/faq.jsp\">FAQ</a></li>\r\n");
      out.write("                        ");
         
                        }
                	}
                    else
                    {
                        
      out.write("\r\n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"");
      out.print(request.getContextPath());
      out.write("/admin/home.jsp\">Home</a></li>\r\n");
      out.write("                         <li class=\"nav-item dropdown\">\r\n");
      out.write("                    \t\t\t<a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown2\" role=\"button\"\r\n");
      out.write("                   \t\t\t\t\t data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\"> Coaches </a>\r\n");
      out.write("                    \t\t\t<div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown2\">\r\n");
      out.write("                        \t\t\t<a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/coach/coachRegistration.jsp\">Registration</a>\r\n");
      out.write("                        \t\t</div>\r\n");
      out.write("                        </li>\t\r\n");
      out.write("                        <li class=\"nav-item dropdown\">\r\n");
      out.write("                    \t\t\t<a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown2\" role=\"button\"\r\n");
      out.write("                   \t\t\t\t\t data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\"> Referee </a>\r\n");
      out.write("                    \t\t\t<div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown2\">\r\n");
      out.write("                        \t\t\t<a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/referee/refereeRegistration.jsp\">Registration</a>\r\n");
      out.write("                        \t\t</div>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"nav-item dropdown\">\r\n");
      out.write("                    \t\t<a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown2\" role=\"button\"\r\n");
      out.write("                    \t\t\tdata-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\"> Sponsor </a>\r\n");
      out.write("                    \t\t<div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown2\">\r\n");
      out.write("                        \t\t<a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/sponsor/sponsor.jsp\">Sponsors</a>\r\n");
      out.write("                        \t\t<a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/sponsor/sponsorship.jsp\">Sponsorship</a>\r\n");
      out.write("                    \t\t</div>\r\n");
      out.write("                \t\t</li>\r\n");
      out.write("                \t\t<li class=\"nav-item dropdown\">\r\n");
      out.write("                    \t\t<a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown2\" role=\"button\"\r\n");
      out.write("                    \t\t\tdata-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\"> About Us </a>\r\n");
      out.write("                    \t\t<div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown2\">\r\n");
      out.write("                        \t\t<a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/aboutUs/info.jsp\">Info</a>\r\n");
      out.write("                        \t\t<a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/aboutUs/jobs.jsp\">Apply Jobs</a>\r\n");
      out.write("                    \t\t</div>\r\n");
      out.write("                \t\t</li>\r\n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"");
      out.print(request.getContextPath());
      out.write("/faq.jsp\">FAQ</a></li>\r\n");
      out.write("                        \r\n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"");
      out.print(request.getContextPath());
      out.write("/index.jsp\">Login</a></li>\r\n");
      out.write("                        ");

                    }
                
      out.write("\r\n");
      out.write("                \r\n");
      out.write("            </ul>\r\n");
      out.write("            ");

            	if (session.getAttribute("usertype") != null) {
                
      out.write("\r\n");
      out.write("                <ul class=\"navbar-nav my-2 my-lg-0\">\r\n");
      out.write("                    <li class=\"nav-item dropdown\">\r\n");
      out.write("                        <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\"\r\n");
      out.write("                        data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\"> ");
      out.print(session.getAttribute("name"));
      out.write(" </a>\r\n");
      out.write("                        <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\r\n");
      out.write("                            <a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/user/changepassword.jsp\">Change Password</a>\r\n");
      out.write("                            <div class=\"dropdown-divider\"></div>\r\n");
      out.write("                            <a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/feedback.jsp\">Feedback</a>\r\n");
      out.write("                            <a class=\"dropdown-item\" href=\"");
      out.print(request.getContextPath());
      out.write("/Logout\">Logout</a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("                ");

            	}
            
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</nav>\r\n");
      out.write("\r\n");
      out.write("    <main role=\"main\" class=\"container\"> ");
      out.write('\r');
      out.write('\n');

if(session.getAttribute("msg") != null) {
    out.write("<div class='alert "+session.getAttribute("class")+"'>"+session.getAttribute("msg")+"</div>");
    session.removeAttribute("msg");
    session.removeAttribute("class");
}

      out.write("\r\n");
      out.write("    <div class=\"card\">\r\n");
      out.write("        <div class=\"card-header text-white shadow bg-dark\">\r\n");
      out.write("            <h2 class=\"float-left\">Refree Registration</h2>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"card-body\">\r\n");
      out.write("            <form action=\"refereeRegistration\" method=\"post\">\r\n");
      out.write("                <div class=\"form-group\">\r\n");
      out.write("                    <label for=\"name\" class=\"control-label\">Name</label> <input type=\"text\" name=\"name\" id=\"name\" class=\"form-control\"\r\n");
      out.write("                        required>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"form-group\">\r\n");
      out.write("                    <label for=\"email\" class=\"control-label\">E-Mail</label> <input type=\"email\" name=\"email\" id=\"email\" class=\"form-control\"\r\n");
      out.write("                        required>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"form-group\">\r\n");
      out.write("                    <label for=\"password\" class=\"control-label\">Password</label>\r\n");
      out.write("                    <input type=\"password\" name=\"password\" id=\"password\" class=\"form-control\" required>\r\n");
      out.write("                </div>\r\n");
      out.write("                \r\n");
      out.write("                \r\n");
      out.write("                <div class=\"form-group\">\r\n");
      out.write("                    <input type=\"submit\" class=\"btn btn-success btn-lg btn-block\" value=\"Add User\">\r\n");
      out.write("                </div>\r\n");
      out.write("            </form>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    </main>\r\n");
      out.write("    \r\n");
      out.write("    <br><br><br>\r\n");
      out.write("\r\n");
      out.write("    ");
      out.write("\r\n");
      out.write("<footer class=\"footer fixed-bottom py-3 bg-dark\">\r\n");
      out.write("  <div class=\"container\">\r\n");
      out.write("    <center>\r\n");
      out.write("    <span class=\"text-muted\">All Copyrights Reserved &copy; 2021 - Team #28, SER 515, Arizona State University </span>\r\n");
      out.write("  </center>\r\n");
      out.write("  </div>\r\n");
      out.write("</footer>\r\n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.4.1.slim.min.js\"  ></script>\r\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js\" ></script>\r\n");
      out.write("<script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("//Get the button:\r\n");
      out.write("mybutton = document.getElementById(\"myBtn\");\r\n");
      out.write("\r\n");
      out.write("// When the user scrolls down 20px from the top of the document, show the button\r\n");
      out.write("window.onscroll = function() {scrollFunction()};\r\n");
      out.write("\r\n");
      out.write("function scrollFunction() {\r\n");
      out.write("  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {\r\n");
      out.write("    mybutton.style.display = \"block\";\r\n");
      out.write("  } else {\r\n");
      out.write("    mybutton.style.display = \"none\";\r\n");
      out.write("  }\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("// When the user clicks on the button, scroll to the top of the document\r\n");
      out.write("function topFunction() {\r\n");
      out.write("  document.body.scrollTop = 0; // For Safari\r\n");
      out.write("  document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera\r\n");
      out.write("}\r\n");
      out.write("</script>");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
