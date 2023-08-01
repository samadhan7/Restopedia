<%@page import="org.hibernate.*" %>
<%@page import="model.com.master.Supplier" %>
<%@page import="java.util.Iterator" %>
<%@page import="org.hibernate.cfg.*" %>
<%@page import="javax.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier Master</title>
<%@include file="masters.jsp" %>
</head>
<body class="nav-md">
    <div class="container body">
      <div class="main_container">
        
        <!-- page content -->
        <div class="right_col" role="main">
        <!-- Supplier Master--><br><br>
        	<div class="container">
	        <div class="panel panel-primary">
	            <div class="panel-heading ">
	                <h3 class="panel-title">Supplier Master</h3>
	            </div>
	            <div class="panel-body">
                
                <div class="col-md-12">
                    <div class="panel" style="border-color: " style="background-color: #a9a9a9">
                        <ul class="nav nav-tabs" style="border-bottom-color: blue">
                            <li class="active">
                                <a href="#Add" class="nav-links tab-pane fade-in-active" class="active" role="tab" data-toggle="tab"><button type="button" class="btn btn-success">Add New Supplier</button></a>
                            </li>
                            <li class="nav-item">
                                <a href="#Manage" class="nav-links" role="tab" data-toggle="tab"><button type="button" class="btn btn-warning">Manage Supplier</button></a>
                            </li>
                            
                        </ul>
                        
                        <div class="tab-content">
                            <!-- Start Add Supplier Tab-->
                            <div role="tabpanel" class="tab-pane <%if(Integer.parseInt(request.getParameter("id"))==1){ %>active<%}%>" id="Add">  
                                                     
                                <form class="form-horizontal text-left" action="${pageContext.request.contextPath }/SupplierController" method="GET">
						               <br> 
						               <input type="hidden" class="form-control" name="type" value="Save" >
						                <div class="form-group">
						                    <label for="sname" class="col-sm-3 control-label">Supplier Name <i class="text-danger">*</i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="sname" id="sname" placeholder="Supplier Name" required="">
						                    </div>
						                   
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="email" class="col-sm-3 control-label">Supplier Email <i class="text-danger">*</i></label>
						                    <div class="col-sm-5">
						                    <input type="email" class="form-control" name="email" id="email"  placeholder="Supplier Email" required="">
						                    </div>
						                     
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="contact" class="col-sm-3 control-label">Supplier Contact No.<i class="text-danger">*</i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="contact" id="contact" placeholder="Contact No." required="" >
						                    </div>
						                  
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="address" class="col-sm-3 control-label">Supplier Address</label>
						                    <div class="col-sm-5">
						                    <textarea rows="4" cols="48" name="address" id="address" placeholder="Supplier Address......" required=""></textarea>
						                    </div>
						                </div>
						                    
						                <div class="clearfix"></div>
						                <div class="form-group">
						                    <label for="details" class="col-sm-3 control-label">Supplier Details</label>
						                    <div class="col-sm-5">
						                        <textarea rows="4" cols="48" name="details" id="details" placeholder="Supplier Details......"></textarea>
						                    </div>
						                </div>              
						                
						                
						                <div class="col-sm-6" style="float: right">
						                <button type="submit" class="btn btn-primary" name="btnSupplier" value="Save" style="">Save</button>
						<!--                <button type="submit" class="btn btn-success">Save and Add Another</button>-->
						                </div>                        
						             </form>
						  </div>
                            <!-- End Add Supplier tab-->
                            
                            
                            
                            <!-- Start Manage Supplier tab-->
                            
                            <div role="tabpanel" class="tab-pane <%if(Integer.parseInt(request.getParameter("id"))==2){ %>active<%}%>" id="Manage">
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
				                                <th class="text-center">Supplier Name</th>
				                                <th class="text-center">Supplier Email</th>
				                                <th class="text-center">Supplier Mobile</th>
				                                <th class="text-center">Supplier Address</th>
				                                <th class="text-center">Details</th>
				                                <th class="text-center">Action</th>
				                            </tr>
				                        </thead>
				                        
				                        <tbody>
				                            <%
				                         int id;
				                        String sname;
				                        String email;
				                        String contact;
				                        String address;
				                        String details;
				                        %>
				                        <%
                                try{
								
								Session sf=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
								
								Query query = sf.createQuery("FROM Supplier");
								Iterator<Supplier> it=query.iterate();
								while(it.hasNext())
								{
									Supplier s= (Supplier)it.next();
									id=s.getId();
									sname= s.getSname();
									email= s.getEmail();
									contact= s.getContact();
									address= s.getAddress();
									details= s.getDetails();
								%>
				                            <tr>
				                                <td><%=id %></td>
				                                <td><%=sname %></td>
				                                <td><%=email %></td>
				                                <td><%=contact %></td>
				                                <td><%=address %></td>
				                                <td><%=details %></td>
				                                <td>
				                                    <center>
				                                    <form action="" accept-charset="utf-8">
				                                        
				                                        <a href="./../updatepage/updatesupplier.jsp?id=<%=id%>&sname=<%=sname%>&email=<%=email%>&contact=<%=contact%>&address=<%=address%>&details=<%=details%>" class="btn btn-info btn-sm" data-toggle="tooltip" sdata-placement="left" title data-original-title="Update">
				                                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
				                                        </a>
				                                        <a href="${pageContext.request.contextPath }/SupplierController?id=<%=id%>&type=<%="Delete" %>" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="left" title data-original-title="Delete">
				                                            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
				                                        </a>
				                                    </form>
				                                    </center>
				                                </td>
				                            </tr>
				                            <%
								
                              		  }
								 sf.close();
                                }    
				                        catch(Exception se)
				                        {
				                        	
				                        System.out.println("Error");	
				                        }
				                       
				                            %>
				                
				                        </tbody>
				                    </table>
				                </div>
				                
				                <div class="col-sm-2 " style="float: right;">
				                <button type="submit" class="btn btn-primary" > Previous </button>
				                <button type="submit" class="btn btn-success" > Next </button>
				                </div>                        
				            </div>
                                
                            </div>
                            <!-- End Manage Supplier tab-->
                        </div>
                    </div>
                </div>
                </div>
       			</div>
       			</div>
                <!-- Supplier Master Closed-->
        
        </div>
	
		</div>
		<!-- main_container close -->
		</div>
		<!-- container fluid close -->
		
  </body>

</html>