<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Restaurant list</title>

<%@include file="restaurant.jsp"%>
</head>
<body class="nav-md">
    <div class="container body">
    
      <div class="main_container">
        
        <!-- page content -->
        <div class="right_col" role="main">
        <!-- Restaurant Maintainance--><br><br>
        	<div class="container">
	        <div class="panel panel-primary">
	            <div class="panel-heading ">
	                <h3 class="panel-title">Restaurant List</h3>
	            </div>
	            <div class="panel-body">
                
                <div class="col-md-12">
                    <div class="panel" style="border-color: " style="background-color: #a9a9a9">
                        <ul class="nav nav-tabs" style="border-bottom-color: blue">
                            
                            <li class="nav-item">
                                <a href="#manage" class="nav-links" role="tab" data-toggle="tab"><button type="button" class="btn btn-warning">Manage Restaurant</button></a>
                            </li>
                           
                           
                            
                        </ul>
                        
                        <div class="tab-content">
                           
                            
                            <!-- Start  manage restaurant File tab-->
                            
                          
                           <br><br>
                                <div class="row">
                                <div class="col-md-4">
				                    <form class="form-horizontal">
				                    <div class="form-group">
				                        <label class="col-sm-2 control-label">Search</label>
				                    <div class="col-sm-9">
				                        <input type="search" name="search" id="search" class="form-control">
				                    </div>
				                    </div>
				                    </form>
				                </div>
                                </div>
                                
                                <div class="row">
				                <div class="table-responsive" style="margin-top: 10px">
				                    <table class="table table-bordered table-striped table-hover">
				                        <thead>
				                            <tr>
				                                <th class="text-center">SL.</th>
				                                <th class="text-center">Restaurant Name</th>
				                                <th class="text-center">Restaurant Address</th>
				                                  <th class="text-center">Restaurant Turnover</th>
				                                <th class="text-center">Owner Name</th>
				                                  <th class="text-center">Owner contact No.</th>
				                                <th class="text-center">Owner Mail id</th>
				                                 <th class="text-center">Owner Address</th>
				                                 <th class="text-center">Owner Details</th>
				                                <th class="text-center">Action</th>
				                            </tr>
				                        </thead>
				                         <tbody>
				                            <tr>
				                                <td>1</td>
				                                <td>101</td>
				                                <td>soup</td>
				                                <td>Starter</td>
				                                 <td></td>
				                                <td>150</td>
				                                <td>1</td>
				                                <td></td>
				                                <td></td>
				                           
				                                <td>
				                                    <center>
				                                    <form action="" accept-charset="utf-8">
				                                        
				                                        <a href="#" class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title data-original-title="Update">
				                                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
				                                        </a>
				                                        <a href="#" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="left" title data-original-title="Delete">
				                                            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
				                                        </a>
				                                    </form>
				                                    </center>
				                                </td>
				                            </tr>
				                            
				                            <tr>
				                                <td>2</td>
				                                <td>102</td>
				                                <td>pizza</td>
				                                <td>Fast Food</td>
				                                <td></td>
				                                <td>200</td>
				                                <td></td>
				                               <td></td>
				                               <td></td>
				                               
				                              
				                                <td>
				                                    <center>
				                                    <form action="" accept-charset="utf-8">
				                                        
				                                        <a href="#" class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title data-original-title="Update">
				                                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
				                                        </a>
				                                        <a href="#" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="left" title data-original-title="Delete">
				                                            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
				                                        </a>
				                                    </form>
				                                    </center>
				                                  </td>
				                                  </tr>
				                                  </tbody>
				                                  </table>
				                                   <div class="col-sm-2 " style="float: right;">
				                <button type="submit" class="btn btn-primary" > Previous </button>
				                <button type="submit" class="btn btn-success" > Next </button>
				                </div>
				                                  </div>
				                                  </div>
				                                  
				                                    
                                
                            </div>
                            
                            <!-- End Manage Restaurant tab-->
                     
       			
                <!-- list Master Closed-->
                </div>
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
  
  
