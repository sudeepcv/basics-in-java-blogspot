<%@ page language="java"  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> 
    <%@ page import="java.util.Date" %>
    <%@ page import ="java.text.SimpleDateFormat" %>  
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
    <%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> 
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
    <link href="css/dataTables.bootstrap.css" rel="stylesheet">
    

    <!-- Custom CSS -->
    <link href="css/custom.css" rel="stylesheet">
    
    <style>
    .table-hover tbody tr:hover td, .table-hover tbody tr:hover th {
  background-color: #B280FF;
}
    </style>

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
                <a class="navbar-brand" href="index.html">Welcome AdminUser:<sec:authentication property="name"/>!</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                	
                	<li class="active">
                		<a href="">Home</a>
                		
                		
                		</li>
                		 <li>
                        <a href="addpost.html">AddNew</a>
                    </li>
                   <li>
                        <a href="allcomments.html">Comments</a>
                    </li>
                    <li>
                        <a href="about.html">About</a>
                    </li>
                
                    <li>
                        <a href="contact.html">Contact</a>
                    </li>
        
           
             
             <li>
        <a href="j_spring_security_logout">
        	<span class="glyphicon glyphicon-log-out white"></span> Logout
        </a>

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
        <div class="col-lg-12">
        <table id="postsDataTable" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>Title</th>
                <th>Content</th>
                <th>Date</th>           
                <th>Delete</th>
                <th>Edit</th>
            </tr>
        </thead>
 
        <tfoot>
            <tr>
              <th>Title</th>
                <th>Content</th>
                <th>Date</th>           
                <th>Delete</th>
                <th>Edit</th>
            </tr>
        </tfoot>
 
        <tbody>
        
        
          <c:forEach items="${allPosts}" var="allPosts">
            <tr>
                <td><a href="${allPosts.title}.html">${allPosts.title}</a></td>
                <td>${allPosts.content }</td>
                <td>${allPosts.date}</td>
                <td><a href="editBlog.html?postId=${allPosts.id}" type="button" class="btn btn-warning">Edit</a></td>
                <td><button type="button" id="${allPosts.id} " class="btn btn-danger" name="deletePost">Delete</button></td>
                
            </tr>
             </c:forEach>
        </tbody>
    </table>
        </div>
        </div>
        

        
             
        


   

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

        
        
        
        
  <div class="modal fade" id="confirm">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title">Are you sure you want to delete This Post?</h4>
      </div>
      <div class="modal-body">
        <p>If you want to then click on yes else click on no!!&hellip;</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
        <button type="button" class="btn btn-primary" id="delete" data-dismiss="modal">Yes</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->



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
    
      <script src="js/jquery.dataTables.min.js"></script>
      <script src="js/dataTables.bootstrap.js"></script>
    
    <script>
    $(document).ready(function() {
        $('#postsDataTable').dataTable();
        
      	$('button[name="deletePost"]').on('click', function(e){
    		var postId=$(this).attr('id');
    		
    		var delTr=$(this).closest('tr');
    	      	    
    	    e.preventDefault();
    	    
    	    $('#confirm').modal({ backdrop: 'static', keyboard: false })
    	    
    	        .one('click', '#delete', function (e) {
    	        	
    	           
    	        	
    	            $.post('deletePost.json', {postId:postId})
                    .done(function (data) {
                    	delTr.remove();
                    	 console.log(data.successId);
                    })
                    .fail(function () {
                        alert('error!');
                    });
    	        	
    	        	
    	        });
    	});
        
        
    } );
    </script>
    
    
    


    

</body>

</html>