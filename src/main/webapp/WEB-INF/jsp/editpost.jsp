<!doctype html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Basics In Java Blogspot
                    
                </h1>
         
            </div>
        </div>
        <!-- /.row -->
        
        
        
                <div class="row">
            <div class="col-md-8">
                <h3>Edit Post</h3>
                
              <c:if test="${success != null}">


                
                	<div class="alert alert-success alert-block fade in" id="successAlertAddPost">
						<button type="button" class="close" data-dismiss="alert">&times;</button>
						
						<h4>Success!</h4>
						<p>Edited successfully</p>
					</div><!-- end alert -->
					
                </c:if>
                
                <form name="sentMessage" id="contactForm" novalidate action="addpostAction.html" method="POST">
                <input type="hidden" value="${blogpost.id }" name="postId" />
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Blog Title:</label>
                            <input type="text" class="form-control" value="${blogpost.title }" name="title" id="name" required data-validation-required-message="Please enter your name.">
                            <p class="help-block"></p>
                        </div>
                    </div>
                    
                    
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Blog Body:</label>
                            <textarea rows="10" cols="100" name="content" class="form-control" id="message" required data-validation-required-message="Please enter your message" maxlength="999" style="resize:none">${blogpost.content }</textarea>
                        </div>
                    </div>
                    <div id="success"></div>
                    <!-- For success/fail messages -->
                    <button type="submit" class="btn btn-primary">Save Post</button>
                </form>
            </div>

        </div>
        <!-- /.row -->
        
        


        
        
        
        
        
             
        


 
        <!-- /.row -->

        <hr>


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
		

    <!-- jQuery Version 1.11.0 -->
    <script src="js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>