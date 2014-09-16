<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> 
    <%@ page import="java.util.Date" %>
    <%@ page import ="java.text.SimpleDateFormat" %>  
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
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
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/custom.css" rel="stylesheet">

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
             	<form class="navbar-form navbar-left" role="search">
  <div class="form-group">
    <input type="text" class="form-control" placeholder="Search">
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

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Basics In Java Blogspot
                    
                </h1>
            
            </div>
        </div>
        <!-- /.row -->

        <!-- Content Row -->
        <div class="row">

            <!-- Blog Post Content Column -->
            <div class="col-lg-12">
            
  

                <!-- Blog Post -->

               

                <!-- Date/Time -->
                <h1>${singlePost.title}</h1>
                <p><i class="fa fa-clock-o"></i> Posted on August 24, 2013 at 9:00 PM</p>

          <hr>

                <!-- Post Content -->
                
                <p>${singlePost.content} </p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos, doloribus, dolorem iusto blanditiis unde eius illum consequuntur neque dicta incidunt ullam ea hic porro optio ratione repellat perspiciatis. Enim, iure!</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error, nostrum, aliquid, animi, ut quas placeat totam sunt tempora commodi nihil ullam alias modi dicta saepe minima ab quo voluptatem obcaecati?</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum, dolor quis. Sunt, ut, explicabo, aliquam tenetur ratione tempore quidem voluptates cupiditate voluptas illo saepe quaerat numquam recusandae? Qui, necessitatibus, est!</p>

                <hr>

                <!-- Blog Comments -->

                <!-- Comments Form -->
                <div class="well">
                    <h4>Leave a Comment:</h4>
                    
                    <form  id="commentForm" action="#" method="post" enctype="multipart/form-data">
                    	<div class="form-group">
                    		<input type="text" id="commentName" class="form-control" placeholder="Name" name="name"/>
                    	</div>

                        <div class="form-group">
                        	
                            <textarea id="commentContent" class="form-control" rows="3" name="content" placeholder="Enter content"></textarea>
                        </div>
                        <input type="hidden" name="postId" value="${singlePost.id}" />
                        <button type="submit" class="btn btn-primary" id="CommentSubmit">Submit</button>
                    </form>
                </div>

                <hr>

                <!-- Posted Comments -->

                <!-- Comment -->
             <div id="commentsId">  
       <c:forEach items="${postReport}" var="report" varStatus="i">

            
                <div class="media">
                 
                    <div class="media-body">
                        <h4 class="media-heading">${report.name}
                            
                        </h4>
                         ${report.commentContent}
                    </div>
                </div>
</c:forEach>

</div> 

            </div>



        </div>
        <!-- /.row -->

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Your Website 2014</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery Version 1.11.0 
    <script src="js/jquery-1.11.0.js"></script>-->
    <script  src="js/jquery-1.11.0.min.js"></script>

    <!-- Bootstrap Core JavaScript 
    <script src="js/bootstrap.min.js"></script>-->
    <script  src="js/bootstrap.min2.3.js"></script> 
    <script  src="js/jquery.validate.min.js"></script>
    <script>
    $(document).ready(function(){
    	
    	$("#commentForm").validate({
  		  rules: {
  		    name: {
  		      minlength: 3,
  		      maxlength:30,
  		      required: true
  		    }


  		    
  		  },
  		  showErrors: function(errorMap, errorList) {
  		    $.each(this.successList, function(index, value) {
  		      return $(value).popover("hide");
  		    });
  		    return $.each(errorList, function(index, value) {
  		      var varpopover="nice";
  		      console.log(value.message);
  		      
  		      varpopover = $(value.element).popover({
  		        trigger: "manual",
  		        placement: "top",
  		        content: value.message,
  		        template: "<div style=\"color:red;\" class=\"popover\"><div class=\"arrow\"></div><div class=\"popover-inner\"><div class=\"popover-content\"><p></p></div></div></div>"
  		      });
  		      
  varpopover.data("popover").options.content = value.message; 
  		      return $(value.element).popover("show");
  		    });
  		  },submitHandler: function(form) {
    	          alert("in submitHandler");

                var formData = $('#commentForm').serializeArray();
              

          	  $.post('addcomment.json', formData)
              .done(function () {
            	  var name=$("#commentName").val();
            	  var commentContent=$("#commentContent").val();
            	  var  htmlString="<div class=\"media\"><div class=\"media-body\"><h4 class=\"media-heading\">"+name+  
                      "</h4>"+commentContent+"</div></div>";
                      
                      $("#commentsId").prepend(htmlString);

                  alert('success!');
              })
              .fail(function () {
                  alert('error!');
              });
          	  
    		}  });
    	
    	
    	
    	
    	
    	
    	
    	
/*    	$("#CommentSubmit").click(function(e){
    		e.preventDefault();
    		
    		var formData=$("#commentForm").serializeArray();
    		
    	
    		  
    	});*/
    	
    });
    </script>
    

</body>

</html>
