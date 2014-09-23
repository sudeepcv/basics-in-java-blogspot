<%@ page language="java"  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> 
    <%@ page import="java.util.Date" %>
    <%@ page import ="java.text.SimpleDateFormat" %>  
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
     <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Basics In Java Blogspot</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="css/custom.css" rel="stylesheet" />
    
    <link href="css/typeahead.js-bootstrap.css" rel="stylesheet" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- <a class="navbar-brand" href="index.html">Start Bootstrap</a> -->
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                	
                	<li class="active">
                		<a href="">Home</a>
                		
                		
                		</li>
                    <li>
                        <a href="about.html">About</a>
                    </li>
                
                    <li>
                        <a href="contact.html">Contact</a>
                    </li>
                    
                      <li>
                        <a href="adminhome.html">AdminHome</a>
                    </li>
        
           
             
             <li>
             	<form class="navbar-form navbar-left" role="search" action="searchBlog.html" method="post">
  <div class="form-group">
    <input type="text" name="blogTitle" id="type-ahead" class="form-control" placeholder="Search Blog">
  </div> 


  <button class="btn btn-default" type="submit">
<span class="glyphicon glyphicon-search"></span>
</button>
</form>
             </li>
             
             
             
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">
    
    

        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Basics In Java Blogspot
                    
                </h1>
         
            </div>
        </div>
        <!-- /.row -->

                <!-- Blog Post Row -->
    
                
  <c:forEach items="${searchResult}" var="allPosts">              
        <div class="row">
            <div class="col-md-1 text-center">
<c:set var="postDate" value="${allPosts.date}" />   
 <c:set var="fulConten" value="${allPosts.content}"/>
<c:set var="contentlill" value="${fn:substring(fulConten,0,335)}.." />
            	
                <p class=""><h2><b><fmt:formatDate pattern="dd" value="${postDate}" /></b></h2></p>
                <p><b><fmt:formatDate pattern="MMMM" value="${postDate}" /></b></p>
                <p><b><fmt:formatDate pattern="yyyy" value="${postDate}" /></b></p>
                
               
            </div>
       
            <div class="col-md-11">
                <h3>
                    <a href="${allPosts.title}.html"><b>${allPosts.title}</b></a>
                </h3>
             
                <p>${contentlill }</p>
              
                <div>
               <a class="btn btn-primary" href="${allPosts.title}.html">Read More <i class="fa fa-angle-right"></i></a>   	               
                <div class="pull-right">
                <ul class="list-inline">
                	<a href="#"><i class="fa fa-clock-o"></i></a> 
                	<li><a href="#">4 Days Ago</a></li>
                	<li><a href="#"><i class="glyphicon glyphicon-comment"></i> 7 Comments</a></li>
                	<li><a href="#"><i class="glyphicon glyphicon-share"></i> 56 Shares</a></li></ul>
                	</div>
               </div>
            </div>
        </div>
        
        
      </c:forEach>  
        <!-- /.row -->

        <hr>


        <!-- Pager -->
        <div class="row">
            <ul class="pager">
                <li class="previous"><a href="#">&larr; Older</a>
                </li>
                <li class="next"><a href="#">Newer &rarr;</a>
                </li>
            </ul>
        </div>
        <!-- /.row -->

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p class="text-center">Copyright &copy; Your Website 2014</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery Version 1.11.0 -->
    <script src="js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    
    <script src="js/typeahead.min.js"></script>
    
    <script>
    $(document).ready(function(){
    	
    	/*$(document).on('typeahead:opened', function(event, datum) {
    		
    		  var width = $(event.target).width();
    		  $('.tt-dropdown-menu').width(width);
    		});
    	*/
        $(function () {
            $('#type-ahead').typeahead(
    {
        name: 'blog-title',
        remote: {
            url: 'getBlogTitles.json?q=%QUERY'
        }
    }
);

});
        
    	
    });
    
   
    </script>

</body>

</html>