<%@page import="javax.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Wastage</title>
<%@include file="update.jsp"%>
</head>
<body class="nav-md">
    <div class="container body">
      <div class="main_container">      

        <!-- page content -->
                <div class="right_col" role="main">
        <!-- customer Master--><br><br>
        
        <div class="container">
            <a href="managewastage.jsp" class="btn btn-primary"> <span class="glyphicon glyphicon-align-justify"></span> Manage Wastage</a>
        </div><br>
        
        	<div class="container">
	        <div class="panel panel-primary">
	            <div class="panel-heading ">
	                <h3 class="panel-title">Update Wastage</h3>
	            </div>
	            <div class="panel-body">
                
                <div class="col-md-12">
                    <div class="panel" style="border-color: " style="background-color: #a9a9a9">
                       
                        
                        <div class="tab-content">
                            <!-- Start Add customer Tab-->
                            
                                                     
                             <form class="form-horizontal text-left" action="${pageContext.request.contextPath }/WastageController" method="GET">
                             	<input type="hidden" class="form-control" name="id" value="<%=request.getParameter("id")%>" >
                             	<input type="hidden" class="form-control" name="type" value="Update" >
                             	
						               <br> 
						                <div class="form-group">
						                    <label for="Productname" class="col-sm-3 control-label">Product Name <i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="name" id="name" value="<%=request.getParameter("name")%>">
						                    </div>
						                   
						                </div>
						                
						               
						             
						                 <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="reason" class="col-sm-3 control-label">Reason<i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="reason" id="reason"  value="<%=request.getParameter("reason")%>">
						                    </div>
						                     
						                </div>
						                 
						                 <div class="clearfix"></div>
						                 
						                
						                <div class="form-group">
						                    <label for="quantity" class="col-sm-3 control-label">Quantity<i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="quantity" id="quantity"  value="<%=request.getParameter("quantity")%>">
						                    </div>
						                     
						                </div>
						              				                
						               <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="price" class="col-sm-3 control-label">Price <i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="price" id="price"  value="<%=request.getParameter("price")%>">
						                    </div>
						                     
						                </div>
						                
						                 
						                
						               <div class="col-sm-6" style="float: right">
						                <input type="submit"  name="btnWastage" class="btn btn-success" value="Update" style="" />
						<!--                <button type="submit" class="btn btn-success">Save and Add Another</button>-->
						                </div>
								    </form>
						    </div>
                            
                            <!-- End Update customer tab-->
                            </div>
                            
                            <!-- End Manage customer tab-->
                
               
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