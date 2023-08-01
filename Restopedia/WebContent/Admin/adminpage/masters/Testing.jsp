<%@page import="javax.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Testing file</title>
<%@include file="masters.jsp"%>
</head>

<body class="nav-md">
    <div class="container body">
      <div class="main_container">      

        <!-- page content -->
                <div class="right_col" role="main">
        <!-- customer Master--><br><br>
        	<div class="container">
	        <div class="panel panel-primary">
	            <div class="panel-heading ">
	                <h3 class="panel-title">Customer Master</h3>
	            </div>
	            <div class="panel-body">
                
                <div class="col-md-12">
                    <div class="panel" style="border-color: " style="background-color: #a9a9a9">
                        <ul class="nav nav-tabs" style="border-bottom-color: blue">
                            <li class="active">
                                <a href="#Add" class="nav-links tab-pane fade-in-active" class="active" role="tab" data-toggle="tab"><button type="button" class="btn btn-success">Add New Customer</button></a>
                            </li>
                            <li class="nav-item">
                                <a href="#Manage" class="nav-links" role="tab" data-toggle="tab"><button type="button" class="btn btn-warning">Manage Customer</button></a>
                            </li>
                            
                        </ul>
                        
                        <div class="tab-content">
                            <!-- Start Add customer Tab-->
                            <div role="tabpanel" class="tab-pane active" id="Add">  
                                                     
                             <form class="form-horizontal text-left" action="" method="post">
						               <br> 
						                <div class="form-group">
						                    <label for="Customername" class="col-sm-3 control-label">Customer Name <i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="customername" id="Customername" placeholder="Customer Name" required="">
						                    </div>
						                   
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="customercontactnumber" class="col-sm-3 control-label">Customer contact Number <i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="customercontactnumber" id="customercontactnumber"  placeholder="Customer Contact Number" required="">
						                   </div> 
						                   
						                </div>
						                   
						                 
						                 <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="bdate" class="col-sm-3 control-label">B'Date<i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="date" class="form-control" name="bdate" id="bdate"  placeholder="B'date" required="">
						                    </div>
						                     
						                </div>
						                
						                
						                 <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="customeraddress" class="col-sm-3 control-label">Customer Address<i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="customeraddress" id="customeraddress"  placeholder="Customer Address" required="">
						                    </div>
						                     
						                </div>
						                 <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="customeremail" class="col-sm-3 control-label">Customer Email <i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="email" class="form-control" name="customeremail" id="customeremail"  placeholder="Customer Email" required="">
						                    </div>
						                     
						                </div>
						                 <div class="clearfix"></div>
						                 
						                
						                <div class="form-group">
						                    <label for="assignedtableno" class="col-sm-3 control-label">Assigned Table No.<i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="assignedtableno" id="assignedtableno"  placeholder="Assigned Table No." required="">
						                    </div>
						                     
						                </div>
						              				                
						               <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="assignedwaiterno" class="col-sm-3 control-label">Assigned Waiter No. <i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="assignedwaiterno" id="assignedwaiterno"  placeholder="Assigned Waiter No." required="">
						                    </div>
						                     
						                </div>
						                
						                
						               <div class="col-sm-6" style="float: right">
						                <button type="submit" class="btn btn-primary" style="">Save</button>
						<!--                <button type="submit" class="btn btn-success">Save and Add Another</button>-->
						                </div>
						                                       
						             </form>
                            </div>
						
                           
                            <!-- End Add customer tab-->
                            
                            
                            
                            <!-- Start Manage customer tab-->
                            
                            <div role="tabpanel" class="tab-pane" id="Manage">
                                
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
				                                <th class="text-center">Customer Name</th>
				                                <th class="text-center">Customer Contact Number</th>
				                                <th class="text-center">B'date</th>
				                                <th class="text-center">Customer Address</th>
				                                <th class="text-center">Customer Email</th>
				                                 <th class="text-center">Assigned Table no.</th>
				                                 <th class="text-center">Assigned Waiter No.</th>
				                                <th class="text-center">Action</th>
				                            </tr>
				                        </thead>
				                        
				                       
				                                    <center>
				                                    <form action="" accept-charset="utf-8">
				                                        
				                                        <a href="#" class="btn btn-info btn-sm" data-toggle="modal" data-target=".bs-example-modal-lg"sdata-placement="left" title data-original-title="Update">
				                                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
				                                        </a>
				                                                 
				                                        <a href="" class="btn btn-danger btn-sm" data-toggle="modal" data-target=".bs-example-modal-md" data-placement="left" title data-original-title="Delete">
				                                            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
				                                        </a>
				                                         <!-- model -->
				                                        

														<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
														  <div class="modal-dialog modal-lg" role="document">
														    <div class="modal-content">
														      <div class="modal-header">
														        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
														         <div class="panel panel-primary">
															            <div class="panel-heading ">
															                <h3 class="panel-title">update Customer</h3>
															            </div>
	           
														      </div>
														      <div class="modal-body">
														        
											  <div class="tab-content">
                            <!-- Start Add customer Tab-->
                            <div role="tabpanel" class="tab-pane active" id="Add">  
														       
							<form class="form-horizontal text-left" action="${pageContext.request.contextPath }/CustomerController" method="post">
						               
						               <div class="clearfix"></div>
						              
						                <div class="form-group">
						                    <label for="Customername" class="col-sm-2 control-label">Customer Name <i class="text"></i></label>
						                    <div class="col-sm-3">
						                    <input type="text" class="form-control" name="customername" id="Customername" placeholder="Customer Name" required="">
						                    </div>
						                     <label for="customercontactnumber" class="col-sm-2 control-label">Customer contact Number <i class="text"></i></label>
						                    <div class="col-sm-3">
						                    <input type="text" class="form-control" name="customercontactnumber" id="customercontactnumber"  placeholder="Customer Contact Number" required="">
						                   </div> 
						                   
						                </div>
						                
						               <br>
						               <br>
						               
						                 <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="bdate" class="col-sm-2 control-label">B'Date<i class="text"></i></label>
						                    <div class="col-sm-3">
						                    <input type="date" class="form-control" name="bdate" id="bdate"  placeholder="B'date" required="">
						                    </div>
						                      <label for="customeraddress" class="col-sm-2 control-label">Customer Address<i class="text"></i></label>
						                    <div class="col-sm-3">
						                    <input type="text" class="form-control" name="customeraddress" id="customeraddress"  placeholder="Customer Address" required="">
						                    </div>
						                    
						                </div>
						                
						                <br>
						                <br>
						             
						                 <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="customeremail" class="col-sm-2 control-label">Customer Email <i class="text"></i></label>
						                    <div class="col-sm-3">
						                    <input type="email" class="form-control" name="customeremail" id="customeremail"  placeholder="Customer Email" required="">
						                    </div>
						                     <label for="assignedtableno" class="col-sm-2 control-label">Assigned Table No.<i class="text"></i></label>
						                    <div class="col-sm-3">
						                    <input type="text" class="form-control" name="assignedtableno" id="assignedtableno"  placeholder="Assigned Table No." required="">
						                    </div>
						                     
						                </div>
						                
						                <br>
						                <br>
						                
						              				                
						               <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="assignedwaiterno" class="col-sm-2 control-label">Assigned Waiter No. <i class="text"></i></label>
						                    <div class="col-sm-3">
						                    <input type="text" class="form-control" name="assignedwaiterno" id="assignedwaiterno"  placeholder="Assigned Waiter No." required="">
						                    </div>
						                     
						                </div>
						              
						                                       
						             </form>
						             <br>
														 </div>
														 </div>
														       
				                        
														        
														      </div>
														      <div class="modal-footer">
														        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
														        <button type="button" class="btn btn-primary">Upadate</button>
														      </div>
														    </div>
														  </div>
														</div>
														<!-- end model update -->
														
														 <!-- delete model -->
				                                        

														<div class="modal fade bs-example-modal-md" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
														  <div class="modal-dialog modal-md" role="document">
														    <div class="modal-content">
														      <div class="modal-header">
														        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
														        <h4 class="modal-title" id="myModalLabel">Delete Record</h4>
														      </div>
														      <div class="modal-body">
														        Delete
														      </div>
														      <div class="modal-footer">
														        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
														        <button type="button" class="btn btn-primary">Delete</button>
														      </div>
														    </div>
														  </div>
														</div>
														<!-- end model -->
				                               
				                                        
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
                            <!-- End Manage customer tab-->
                     
       			
                <!-- Supplier Master Closed-->
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
		</div>
  </body>
</html>