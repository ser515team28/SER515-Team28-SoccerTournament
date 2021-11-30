<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="util.ConnectionProvider,java.sql.*"%>
<html>
<head>
<%@include file="/includes/head.jsp"%>
</head>
<body style="background-color: #f8f9fa !important;">
    <%@include file="/includes/header.jsp"%>
    <main role="main" class="container"> 
    	<%@include file="/includes/msg.jsp"%>
    	<div class="card-group">
		  <div class="card mb-5 border-light" style="max-width: 540px;">
			  <div class="row g-0">
			    <div class="col-md-8">
			      <div class="card-body text-right">
			        <h5 class="card-title">HCE</h5>
			        <p class="card-text">Hurricane Explorers</p>
			        <p class="card-text"><small class="text-muted">New York City</small></p>
			      </div>
			    </div>
			    <div class="col-md-4">
			      <img src="..." class="img-fluid rounded-start" alt="...">
			    </div>
			  </div>
			</div>
		  <div class="card mb-5 border-light" style="max-width: 540px;">
			  <div class="row g-0">
			    <div class="col-md-6">
			      <div class="card-body text-center">
			        <h5 class="card-title"></h5>
			        <p class="card-text">11/29</p>
			        <p class="card-text"><small class="text-muted">1:00 PM MST</small></p>
			      </div>
			    </div>
			  </div>
			</div>
		  <div class="card mb-5 border-light" style="max-width: 540px;">
			  <div class="row g-0">
			    <div class="col-md-4">
			      <img src="..." class="img-fluid rounded-start" alt="...">
			    </div>
			    <div class="col-md-8">
			      <div class="card-body text-left">
			        <h5 class="card-title">CHC</h5>
			        <p class="card-text">Calm Hurricane</p>
			        <p class="card-text"><small class="text-muted">Los Angeles</small></p>
			      </div>
			    </div>
			  </div>
			</div>
		</div>
    </main>
    <%@include file="/includes/footer.jsp"%>
</body>
</html>



