<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Login Form</title>
		<meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		
	</head>
	<body onload='document.f.j_username.focus();'>
<!--login modal-->
<div id="loginModal" class="modal show" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h1 class="text-center">Login</h1>
          
          <!--login error msg start  -->
          <c:if test="${not empty error}">
          <div role="alert" class="alert alert-danger fade in">
      <button data-dismiss="alert" class="close" type="button"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
      <h4>Your login was unsuccessful!!!</h4>
      <p>Caused: ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message }</p>

    </div>
    </c:if>
          <!--log in error msg end  -->
      </div>
      <div class="modal-body">
          <form class="form col-md-12 center-block" action="j_spring_security_check" name="f" method="post">
            <div class="form-group">
              <input type="text" class="form-control input-lg" name="j_username" placeholder="Username">
            </div>
            <div class="form-group">
              <input type="password" class="form-control input-lg" name="j_password" placeholder="Password">
            </div>
            <div class="form-group">
              <button class="btn btn-primary btn-lg btn-block">Sign In</button>
              <br>
              <span>This login form using 'spring security'. You can use Username:sudeep, Password:password to log in.!!!</span>
             <!--  <span class="pull-right"><a href="#">Register</a></span><span><a href="#">Need help?</a></span> -->
            </div>
          </form>
      </div>
      <div class="modal-footer">
          <div class="col-md-12">
          <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
		  </div>	
      </div>
  </div>
  </div>
</div>
	<!-- script references -->
		<script src="js/jquery-1.11.0.js"></script>
		<script src="js/bootstrap.min.js"></script>
	</body>
</html>