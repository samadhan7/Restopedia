<%@page import="javax.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Supplier</title>
<%@include file="update.jsp"%>
</head>
<body class="nav-md">
    <div class="container body">
      <div class="main_container">      

        <!-- page content -->
                <div class="right_col" role="main">
        <!-- customer Master--><br><br>
        
        <div class="container">
            <a href="managecustomer.jsp" class="btn btn-primary"> <span class="glyphicon glyphicon-align-justify"></span> Manage Customer</a>
        </div><br>
        
        	<div class="container">
	        <div class="panel panel-primary">
	            <div class="panel-heading ">
	                <h3 class="panel-title">Update Customer</h3>
	            </div>
	            <div class="panel-body">
                
                <div class="col-md-12">
                    <div class="panel" style="border-color: " style="background-color: #a9a9a9">
                       
                        
                        <div class="tab-content">
                            <!-- Start Add customer Tab-->
                            
                                                     
                             <form class="form-horizontal text-left" action="${pageContext.request.contextPath }/SupplierController" method="GET">
                             	<input type="hidden" class="form-control" name="id" value="<%=request.getParameter("id")%>" >
                             	<input type="hidden" class="form-control" name="type" value="Update" >
                             	
						               <br> 
						                <div class="form-group">
						                    <label for="sname" class="col-sm-3 control-label">Supplier Name <i class="text-danger">*</i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="sname" id="sname" value="<%=request.getParameter("sname")%>">
						                    </div>
						                   
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="email" class="col-sm-3 control-label">Supplier Email <i class="text-danger">*</i></label>
						                    <div class="col-sm-5">
						                    <input type="email" class="form-control" name="email" id="email"  value="<%=request.getParameter("email")%>">
						                    </div>
						                     
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="contact" class="col-sm-3 control-label">Supplier Contact No.<i class="text-danger">*</i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="contact" id="contact" value="<%=request.getParameter("contact")%>" >
						                    </div>
						                  
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="address" class="col-sm-3 control-label">Supplier Address</label>
						                    <div class="col-sm-5">
						                    <textarea rows="4" cols="48" name="address" id="address" value="<%=request.getParameter("address")%>"></textarea>
						                    </div>
						                </div>
						                    
						                <div class="clearfix"></div>
						                <div class="form-group">
						                    <label for="details" class="col-sm-3 control-label">Supplier Details</label>
						                    <div class="col-sm-5">
						                        <textarea rows="4" cols="48" name="details" id="details" value="<%=request.getParameter("details")%>"></textarea>
						                    </div>
						                </div>              
						                
						                
						                <div class="col-sm-6" style="float: right">
						                <button type="submit" class="btn btn-primary" name="btnSupplier" value="Update" style="">Save</button>
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