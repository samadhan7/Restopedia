<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Kot Master</title>
<%@include file="transaction.jsp"%>
</head>
<body>
<body class="nav-md">
     <div class="container body">
      <div class="main_container">  
      
        <!-- page content -->
               <div class="right_col" role="main">
        <!-- Employee Master--><br><br>
        	<div class="container">
	        <div class="panel panel-primary">
	            <div class="panel-heading ">
	                <h3 class="panel-title">KOT Master</h3>
	            </div>
	            <div class="panel-body">
                
                <div class="col-md-12">
                    <div class="panel" style="border-color: " style="background-color: #a9a9a9">
                        <ul class="nav nav-tabs" style="border-bottom-color: blue">
                            
                            <li class="nav-item">
                                <a href="#Manage" class="nav-links"  role="tab" data-toggle="tab"><button type="button" class="btn btn-warning">Manage KOT</button></a>
                            </li>
                            
                        </ul>
                        
                        <div class="tab-content">
                            
                            
                            <!-- Start Manage KOT tab-->
                            
                            <div role="tabpanel" id="Manage" class=" tab-pane selectDataloadType active ">
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
				                                <th class="text-center">Bill No</th>
				                                <th class="text-center">Table No</th>
				                                <th class="text-center">Table Type</th>
				                                <th class="text-center">Menu</th>
				                               <th class="text-center">Action</th>
				                            </tr>
				                        </thead>
				                        
				                        <tbody>
				                         <tr>
				                                <td>1</td>
				                                <td>121</td>
				                                <td>G101</td>
				                                <td>Garden</td>
				                                <td>Veg Thali</td>
				                                
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
				                </div>
				                
				                <div class="col-sm-2 " style="float: right;">
				                <button type="submit" class="btn btn-primary" > Previous </button>
				                <button type="submit" class="btn btn-success" > Next </button>
				                </div>                        
				            </div>
                                
                            </div>
                            <!-- End Manage KOT tab-->
                        </div>
                    </div>
                </div>
                </div>
       			</div>
       			</div>
                <!-- KOT Master Closed-->
        
        </div>                      
         </div>
		</div>
		<!-- main_container close -->
		<!-- container fluid close -->
		

</body>
</html>