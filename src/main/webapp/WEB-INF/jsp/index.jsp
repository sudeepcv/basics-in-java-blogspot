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
    <link href="css/bootstrap.css" rel="stylesheet" />

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
                        <a data-toggle="modal" data-target="#aboutMeModal" >About</a>
                    </li>
                
                    <li>
                        <a href="contact.html">Contact</a>
                    </li>
                    
                      <li>
                        <a href="adminhome.html">AdminHome</a>
                    </li>
        
           
             
             <li>
             	<form class="navbar-form navbar-left" action="searchBlog.html" method="post" role="search">
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
    
                
  <c:forEach items="${allPosts}" var="allPosts">              
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
                	<li><a href="#">
                	
                	
            
                	<abbr class="timeago" title="${allPosts.date}">${postDate}</abbr>
                	</a></li>
                	
                	<li><a href="#"><i class="glyphicon glyphicon-comment"></i> ${fn:length(allPosts.comments)} Comments</a></li>
                	
                	</div>
               </div>
            </div>
        </div>
        
         <hr>
      </c:forEach>  
        <!-- /.row -->

       

        <!-- /.row -->

      


    </div>
    <!-- /.container -->
    
    <footer>
			<div class="container">
				<div class="row">
					<div class="col-sm-2">
					<h6>Copyright &copy; 2014 </h6>
					</div><!-- end col-sm-2 -->
					
					<div class="col-sm-4">
						<h6>About Me</h6>
						<p>I am simply a human with emotions, needs, fears. I have a past and a future. I am far from perfect and I am not the worst failure in the world either!!! </p>
					</div><!-- end col-sm-4 -->
					
					<div class="col-sm-2">
						<h6>Navigation</h6>
						<ul class="unstyled">
							<li><a href="#">Home</a></li>
							<li><a href="#">Services</a></li>
							<li><a href="#">Links</a></li>
							<li><a href="#">Contact</a></li>
						</ul>
					</div><!-- end col-sm-2 -->
					
					<div class="col-sm-2">
						<h6>Portfolio</h6>
						<ul class="unstyled">
							<li><a href="http://sudeep-cv.tk">Portfolio</a></li>
							<li><a href="http://www.linkedin.com/in/sudeepcv">Linkedin Profile</a></li>
							<li><a href="http://apps.facebook.com/thamasha/">Face Book application</a></li>
						<li><a href="http://www.zend.com/en/store/education/certification/yellow-pages.php#show-ClientCandidateID=ZEND019003">Yellow page</a></li>
						</ul>
					</div><!-- end col-sm-2 -->
					
					<div class="col-sm-2">
						<h6>Coded with <span class="glyphicon glyphicon-heart"></span> by Sudeep cv</h6>
					</div><!-- end col-sm-2 -->
				</div><!-- end row -->
			</div><!-- end container -->
		</footer>
		
		
		<!-- about me modal start -->
		<!-- Modal -->

<div class="modal fade" id="aboutMeModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">About Me</h4>
      </div>
      <div class="modal-body">
        <p>I'm hard-working,determined and enthusiastic both during working time as well as outside of work. I enjoy teamwork because i like working things out with other people,generating ideas and solving problems together.But i can also work on my own very effectively with out being closely supervised. I work very well under pressure,and like working to deadlines. I take a great deal of pride in my work, and like to do the best job i can of anything tackle. I enjoy dealing with customers, and get a real kick out of solving their problems, or dealing successfully with complaints. And i enjoy the challenge of finding a slolution to a difficult problem and making it work. I get a real kick out of that, even if it takes several attempts to get it right.But i have a 'can do' attitude, and put in a lot of effort to make sure things work out well in the end. I try to make sure that i keep a good balance between my work and personal life. </p>
      <p>I think I'm really 'self-motivated'. I like doing a good job of everything i tackle,and that includes both my work and my hobbies. I'm a hard-wrking,loyal and determined employee.I take great pride in my work, and like to get results.and i like to encourage and suppport others to achieve real success too. As for weaknesses,I've worked hard in the past to deal with anything which has caused even minor problems at work.I've always taken advice from expert programmers during appraisals to improve my work prformance. So,i don't think i have any real weaknessess.Some colleagues might say that I'm too meticulous-but that's only because i want to do a good job and get things right</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div>
<!-- about me modal end -->
		
		

    <!-- jQuery Version 1.11.0 -->
    <script src="js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    
    <script src="js/typeahead.min.js"></script>
    <script src="js/jquery.timeago.js"></script>
    
    <script>
    $(document).ready(function(){
    	jQuery("abbr.timeago").timeago();
    	
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