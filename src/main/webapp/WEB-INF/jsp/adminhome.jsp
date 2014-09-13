<%@ page language="java"  contentType="text/html; charset=UTF-8"
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
                <td>${allPosts.title}</td>
                <td>${allPosts.content }</td>
                <td>${allPosts.date}</td>
                <td><button type="button" class="btn btn-warning">Edit</button></td>
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

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p class="text-center">Copyright &copy; Your Website 2014</p>
                </div>
            </div>
        </footer>
        
        
        
        
            		  <div class="modal fade" id="confirm">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title">Are you sure you want to delete This Organization??</h4>
      </div>
      <div class="modal-body">
        <p>If you want to then click on yes else click on no!!&hellip;</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
        <button type="button" class="btn btn-primary" id="delete">Yes</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->



    </div>
    <!-- /.container -->

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
    	alert(postIde);    	    
    	    e.preventDefault();
    	    
    	    $('#confirm').modal({ backdrop: 'static', keyboard: false })
    	    
    	        .one('click', '#delete', function (e) {
    	        	
    	           
    	        	
    	            $.post('addpostAction.json', {postId:postId})
                    .done(function () {
                  	
                      alert('success!');
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