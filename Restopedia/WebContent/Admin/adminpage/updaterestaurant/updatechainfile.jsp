<%@page import="javax.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Chainfile</title>
<%@include file="update.jsp"%>
</head>
<body class="nav-md">
    <div class="container body">
      <div class="main_container">      

        <!-- page content -->
                <div class="right_col" role="main">
        <!-- customer Master--><br><br>
        
        <div class="container">
            <a href="managecustomer.jsp" class="btn btn-primary"> <span class="glyphicon glyphicon-align-justify"></span> Manage Chainfile</a>
        </div><br>
        
        	<div class="container">
	        <div class="panel panel-primary">
	            <div class="panel-heading ">
	                <h3 class="panel-title">Update Chainfile</h3>
	            </div>
	            <div class="panel-body">
                
                <div class="col-md-12">
                    <div class="panel" style="border-color: " style="background-color: #a9a9a9">
                       
                        
                        <div class="tab-content">
                            <!-- Start Add customer Tab-->
                            
                                                     
                             <form class="form-horizontal text-left" action="${pageContext.request.contextPath }/Restaurantchainfilecontroller" method="GET">
                             	<input type="hidden" class="form-control" name="id" value="<%=request.getParameter("id")%>" >
                             	<input type="hidden" class="form-control" name="type" value="Update" >
                             	
						               <br> 
						                <div class="form-group">
						                    <label for="name" class="col-sm-3 control-label">Restaurant Name <i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="name" id="name" value="<%=request.getParameter("name")%>">
						                    </div>
						                   
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="date" class="col-sm-3 control-label">Date <i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="date" id="date"  value="<%=request.getParameter("date")%>">
						                   </div> 
						                   
						                </div>
						                   
						                 
						                        
						                
						                 <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="address" class="col-sm-3 control-label"> Address<i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="address" id="address"  value="<%=request.getParameter("address")%>">
						                    </div>
						                     
						                </div>
						                 <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="city" class="col-sm-3 control-label"> city <i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="city" id="city"  value="<%=request.getParameter("city")%>">
						                    </div>
						                     
						                </div>
						                 <div class="clearfix"></div>
						                 
						                
						                <div class="form-group">
						                    <label for="salestax" class="col-sm-3 control-label">Sales Tax<i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="salestax" id="salestax"  value="<%=request.getParameter("salestax")%>">
						                    </div>
						                     
						                </div>
						              				                
						               <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="expendituretax" class="col-sm-3 control-label">Expenditure Tax <i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="expendituretax" id="expendituretax"  value="<%=request.getParameter("expendituretax")%>">
						                    </div>
						                     
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="servicecharge" class="col-sm-3 control-label">Service Charge<i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="servicecharge" id="servicecharge"  value="<%=request.getParameter("servicecharge")%>">
						                    </div>
						                     
						                </div>
						                
						                 <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="backup" class="col-sm-3 control-label">Backup<i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="backup" id="backup"  value="<%=request.getParameter("backup")%>">
						                    </div>
						                     
						                </div>
						                
						               <div class="col-sm-6" style="float: right">
						                <input type="submit"  name="btnchainfile" class="btn btn-success" value="Update" style="" />
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