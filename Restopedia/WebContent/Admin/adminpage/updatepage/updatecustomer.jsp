<%@page import="javax.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Customer</title>
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
                            
                                                     
                             <form class="form-horizontal text-left" action="${pageContext.request.contextPath }/CustomerController" method="GET">
                             	<input type="hidden" class="form-control" name="id" value="<%=request.getParameter("id")%>" >
                             	<input type="hidden" class="form-control" name="type" value="Update" >
                             	
						               <br> 
						                <div class="form-group">
						                    <label for="Customername" class="col-sm-3 control-label">Customer Name <i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="customername" id="Customername" value="<%=request.getParameter("customername")%>">
						                    </div>
						                   
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="customercontactnumber" class="col-sm-3 control-label">Customer contact Number <i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="contactno" id="customercontactnumber"  value="<%=request.getParameter("contactno")%>">
						                   </div> 
						                   
						                </div>
						                   
						                 
						                 <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="bdate" class="col-sm-3 control-label">B'Date<i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="date" class="form-control" name="bdate" id="bdate"  value="<%=request.getParameter("bdate")%>">
						                    </div>
						                     
						                </div>
						                
						                
						                 <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="customeraddress" class="col-sm-3 control-label">Customer Address<i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="customeraddress" id="customeraddress"  value="<%=request.getParameter("customeraddress")%>">
						                    </div>
						                     
						                </div>
						                 <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="customeremail" class="col-sm-3 control-label">Customer Email <i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="email" class="form-control" name="customeremail" id="customeremail"  value="<%=request.getParameter("customeremail")%>">
						                    </div>
						                     
						                </div>
						                 <div class="clearfix"></div>
						                 
						                
						                <div class="form-group">
						                    <label for="assignedtableno" class="col-sm-3 control-label">Assigned Table No.<i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="assignedtableno" id="asssignedtableno"  value="<%=request.getParameter("assignedtableno")%>">
						                    </div>
						                     
						                </div>
						              				                
						               <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="assignedwaiterno" class="col-sm-3 control-label">Assigned Waiter No. <i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="assignedwaiterno" id="assignedwaiterno"  value="<%=request.getParameter("assignedwaiterno")%>">
						                    </div>
						                     
						                </div>
						                
						               <div class="col-sm-6" style="float: right">
						                <input type="submit"  name="btnCustomer" class="btn btn-success" value="Update" style="" />
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