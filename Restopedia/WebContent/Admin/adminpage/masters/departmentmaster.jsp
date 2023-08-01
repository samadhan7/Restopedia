<%@page import="org.hibernate.*" %>
<%@page import="model.com.master.Department" %>
<%@page import="java.util.Iterator" %>
<%@page import="org.hibernate.cfg.*" %>
<%@page import="javax.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Department Master</title>
<%@include file="masters.jsp"%>
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
	                <h3 class="panel-title">Department Master</h3>
	            </div>
	            <div class="panel-body">
                
                <div class="col-md-12">
                    <div class="panel" style="border-color: " style="background-color: #a9a9a9">
                        <ul class="nav nav-tabs" style="border-bottom-color: blue">
                            <li class="active">
                                <a href="#Add" class="nav-links tab-pane fade-in-active" class="active" role="tab" data-toggle="tab"><button type="button" class="btn btn-success">Add Dept. Category</button></a>
                            </li>
                            <li class="nav-item">
                                <a href="#Manage" class="nav-links" role="tab" data-toggle="tab"><button type="button" class="btn btn-warning">Manage Dept. Category</button></a>
                            </li>
                            
                        </ul>
                        
                        <div class="tab-content">
                            <!-- Start Purchase Entry Tab-->
                            <div role="tabpanel" class="tab-pane <%if(Integer.parseInt(request.getParameter("id"))==1){ %>active<%}%>" id="Add">  
                                                     
                             <form class="form-horizontal text-left" action="${pageContext.request.contextPath }/DepartmentController" method="GET">
						               <br> 
						               <input type="hidden" class="form-control" name="type" value="Save" >
						               
						                <div class="form-group">
						                    <label for="departmentnumber" class="col-sm-3 control-label">Department number <i class="text-danger">*</i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="departmentnumber" id="depatmentnumber" placeholder="Department Number" required="">
						                    </div>
						                   
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="Departmentname" class="col-sm-3 control-label">Department Name </label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="departmentname" id="departmentname"  placeholder="Department Name" required="">
						                    </div>
						                     
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="contact" class="col-sm-3 control-label">Number Of Employee</label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="noofemployee" id="contact" placeholder="Number Of Employee" required="" >
						                    </div>
						                  
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="description" class="col-sm-3 control-label"> Description </label>
						                    <div class="col-sm-5">
						                    <textarea rows="4" cols="48" name="description" id="description" placeholder="Description......" required=""></textarea>
						                    </div>
						                </div>
						                    
						                
						            
						                <div class="col-sm-6" style="float: right">
						                <button type="submit" class="btn btn-primary" name="btnDepartment" value="Save" style="">Save</button>
						<!--                <button type="submit" class="btn btn-success">Save and Add Another</button>-->
						                </div>                        
						             </form>
								
                            </div>
                            <!-- End Purchase Entry tab-->
                            
                            
                            
                            
                             <!-- Start Manage Purchase tab-->
                            
                            <div role="tabpanel" class="tab-pane <%if(Integer.parseInt(request.getParameter("id"))==2){ %>active<%}%>" id="Manage">
                                
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
				                                <th class="text-center">Department Number</th>
				                                <th class="text-center">Department Name</th>
				                                <th class="text-center">Number of Employee</th>
				                                 <th class="text-center">Description</th>
				                                  <th class="text-center">Action</th>
				                               
				                            </tr>
				                        </thead>
				                         <tbody>
				                           <%
				                         int id;
				                        String departmentnumber;
				                        String departmentname;
				                        String noofemployee;
				                        String description;
				                        %>
				                        <%
                                try{
								
								Session sf=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
								
								Query query = sf.createQuery("FROM Department");
								Iterator<Department> it=query.iterate();
								while(it.hasNext())
								{
								   Department d= (Department)it.next();
								   id= d.getId();
								   departmentnumber= d.getDepartmentnumber();
								   departmentname= d.getDepartmentname();
								   noofemployee= d.getNoofemployee();
								   description= d.getDescription();
								%>
				                            <tr>
				                                <td><%=id %></td>
				                                <td><%=departmentnumber%></td>
				                                <td><%=departmentname %></td>
				                                <td><%=noofemployee %></td>
				                                <td><%=description %></td>
				                                
				                                <td>
				                                    <center>
				                                    <form action="" accept-charset="utf-8">
				                                        
				                                        <a href="./../updatepage/updatedepartment.jsp?id=<%=id%>&departmentnumber=<%=departmentnumber%>&departmentname=<%=departmentname%>&noofemployee=<%=noofemployee%>&description=<%=description%>" class="btn btn-info btn-sm" data-toggle="tooltip" sdata-placement="left" title data-original-title="Update">
				                                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
				                                        </a>
				                                        <a href="${pageContext.request.contextPath }/DepartmentController?id=<%=id%>&type=<%="Delete" %>" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="left" title data-original-title="Delete">
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
				                                     <div class="col-sm-2 " style="float: right;">
				                <button type="submit" class="btn btn-primary" > Previous </button>
				                <button type="submit" class="btn btn-success" > Next </button>
				                </div>          
				                                    </div>
				                                    </div>

                            <!-- End Manage Purchase tab-->
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