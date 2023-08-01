<%@page import="javax.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update UserFile</title>
<%@include file="update.jsp"%>
</head>
<body class="nav-md">
    <div class="container body">
      <div class="main_container">      

        <!-- page content -->
                <div class="right_col" role="main">
        <!-- userfile Master--><br><br>
        
        <div class="container">
            <a href="managecustomer.jsp" class="btn btn-primary"> <span class="glyphicon glyphicon-align-justify"></span> Manage UserFile</a>
        </div><br>
        
        	<div class="container">
	        <div class="panel panel-primary">
	            <div class="panel-heading ">
	                <h3 class="panel-title">Update UserFile</h3>
	            </div>
	            <div class="panel-body">
                
                <div class="col-md-12">
                    <div class="panel" style="border-color: " style="background-color: #a9a9a9">
                       
                        
                        <div class="tab-content">
                            <!-- Start Add customer Tab-->
                            
                                                     
                             <form class="form-horizontal text-left" action="${pageContext.request.contextPath }/Restaurantuserfilecontroller" method="GET">
                             	<input type="hidden" class="form-control" name="id" value="<%=request.getParameter("id")%>" >
                             	<input type="hidden" class="form-control" name="type" value="Update" >
                             	
						               <br> 
						                <div class="form-group">
						                    <label for="uname" class="col-sm-3 control-label">User Name <i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="uname" id="uname" value="<%=request.getParameter("uname")%>">
						                    </div>
						                   
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="pass" class="col-sm-3 control-label">Password <i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="pass" id="pass"  value="<%=request.getParameter("pass")%>">
						                   </div> 
						                   
						                </div>
						                   
						                 
						                 
						                
						               <div class="col-sm-6" style="float: right">
						                <input type="submit"  name="btnuserfile" class="btn btn-success" value="Update" style="" />
						<!--                <button type="submit" class="btn btn-success">Save and Add Another</button>-->
						                </div>
								    </form>
						    </div>
                            
                            <!-- End Update userfile tab-->
                            </div>
                            
                            <!-- End Manage userfile tab-->
                
               
                </div>
                </div>
                </div>
		</div>
		<!-- main_container close -->
		</div>
		</div>
		<!-- container fluid close -->
		</div>
		
  </body>
</html>