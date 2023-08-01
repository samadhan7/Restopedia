<%@page import="com.restopedia.TableDesc"%>
<%@page import="com.restopedia.Tablecontent"%>
<%@page import="sessionconfiq.HibernateUtil"%>
<%@page import="org.hibernate.*" %>
<%@page import="java.util.Iterator" %>
<%@page import="org.hibernate.cfg.*" %>
<%@page import="javax.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Table Master</title>
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
	                <h3 class="panel-title">Table Master</h3>
	            </div>
	            <div class="panel-body">
                
                <div class="col-md-12">
                    <div class="panel" style="border-color: " style="background-color: #a9a9a9">
                        <ul class="nav nav-tabs" style="border-bottom-color: blue">
                            <li class="<%if(Integer.parseInt(request.getParameter("id"))==1){ %>active<%}%>">
                                <a href="#Add" class="nav-links tab-pane fade-in-active" class="active" role="tab" data-toggle="tab"><button type="button" class="btn btn-success">Add New Table</button></a>
                            </li>
                            <li class="nav-item <%if(Integer.parseInt(request.getParameter("id"))==2){ %>active<%}%>">
                                <a href="#Manage" class="nav-links " role="tab" data-toggle="tab"><button type="button" class="btn btn-warning">Manage Table</button></a>
                            </li>
                            <li class="nav-item <%if(Integer.parseInt(request.getParameter("id"))==3){ %>active<%}%>">
                                <a href="#Category" class="nav-links" role="tab" data-toggle="tab"><button type="button" class="btn btn-primary">Category</button></a>
                            </li>
                            
                        </ul>
                        
                        <div class="tab-content">
                        
                            <!-- Start Add Table Tab-->
                        
                            <div role="tabpanel" class="tab-pane <%if(Integer.parseInt(request.getParameter("id"))==1){ %>active<%}%>"   id="Add">  
                                                     
                            
                                <form class="form-horizontal text-left" action="${pageContext.request.contextPath }/TableController" method="post">
						               <br> 
						                <div class="form-group">
						                    <label for="tablenumber" class="col-sm-3 control-label">Table Number <i class="text-danger">*</i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="tableno" id="tableno" placeholder="Table Number" required="">
						                    </div>
						                   
						                </div>
						                
						               	                <div class="form-group">
						                    <label for="tablenumber" class="col-sm-3 control-label">Table Alias <i class="text-danger">*</i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="tablealias" id="tablealias" placeholder="Table Alias" required="">
						                    </div>
						                   
						                </div>
						                
						              
						                
						                <div class="clearfix"></div>
						                
						                
						                <div class="form-group">
						                    <label for="tabletype" class="col-sm-3 control-label">Table Type</label>
						                    <div class="col-sm-5">
						                    <select class="form-control" name="tabletype" id="tabletype" placeholder="Table Type" required="">
						                    <option>--Select--</option>
						                   	<%
						                   	HibernateUtil.createsession();
						                   		Iterator<Tablecontent> ttit = HibernateUtil.getTableCategory();
						                    		if(ttit.hasNext()){
						                    	while(ttit.hasNext()){
						                    		Tablecontent tc=(Tablecontent)ttit.next();
						                    	%>
						                    		<option value="<%=tc.getId()%>"><%=tc.getCategory() %></option>
						                    	<% }
						                    		}
						                    	HibernateUtil.destroysession();
						                   	%> 
						                     </select>
						                    </div>
						                  
						                </div>
						                
						              
						                
						               <div class="col-sm-6" style="float: right">
						                <button type="submit" class="btn btn-primary" value="Add Table" name="tablebtn">Save</button>
						<!--                <button type="submit" class="btn btn-success">Save and Add Another</button>-->
						                </div>
						                                       
						             </form>
						             
						             
                            </div>
                            <!-- End Add Table tab-->
                            
                            
                            
                            <!-- Start Manage Table tab-->
                            
                            <div role="tabpanel" class="tab-pane <%if(Integer.parseInt(request.getParameter("id"))==2){ %>active<%}%>"  id="Manage">
                                
                               <div class="row">
                                <div class="col-md-4">
				                    <form class="form-horizontal">
				                    <div class="form-group">
				                    <br>
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
				                                <th class="text-center">Table Name</th>
				                                
				                                <th class="text-center">Table Category</th>
				                                <th class="text-center">Action</th>
				                            </tr>
				                        </thead>
				                         <tbody>
				                            <%
				                         int id;
				                         String tablename;
				                         
				                         String tablecat;
				                        %>
				                        <%
                                try{
								
                                	HibernateUtil.createsession();
			                   		Iterator<TableDesc> tdit = HibernateUtil.getTable();
			                   		
								while(tdit.hasNext())
								{
									
									TableDesc td=(TableDesc)tdit.next();
								    id= td.getId();
								    tablename=td.getTable_name();  
								    
								 Iterator<Tablecontent> ttit2 = HibernateUtil.getTableCategorybyid(td.getTable_type());
								if(ttit2.hasNext()){
								 Tablecontent tc=(Tablecontent)ttit2.next();
			                    		
								    tablecat= tc.getCategory();
								    
								%>
				                            <tr>
				                                <td><%=id %></td>
				                                <td><%=tablename %></td>
				                                <td><%=tablecat %></td>
				                                <td>
				                               <center>
				                                   <a href="./../updatepage/updatetable.jsp?id=<%=id%>&tablename=<%=tablename%>" class="btn btn-info btn-sm" data-toggle="tooltip" sdata-placement="left" title data-original-title="Update">
				                                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
				                                        </a>
			                                        <a href="${pageContext.request.contextPath }/TableController?id=<%=id%>&type=<%="Delete" %>" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="left" title data-original-title="Delete" name="btnCustomer" value="Delete">
				                                            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
				                                        </a>
				                  		       </center>
				                                </td>
				                            </tr>
				                            <%
								
                              		  }
								}
								HibernateUtil.destroysession();
								 %>
			                       
		 
                      <%          }    
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
				                          
                            <!-- End Manage Table tab-->
                            
                        </div>
                         <!-- Start Category Tab -->
                        <div role="tabpanel" class="tab-pane <%if(Integer.parseInt(request.getParameter("id"))==3){ %>active<%}%>"  id="Category">  
                                                     
                            
                                <form class="form-horizontal text-left" action="${pageContext.request.contextPath }/TableController" method="post">
						               <br> 
						                <div class="form-group">
						                    <label for="tablenumber" class="col-sm-3 control-label">Category Name <i class="text-danger">*</i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="tablecategory" id="tablecategory" placeholder="Category Name" required="">
						                    </div>
						                   
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="sizeoftable" class="col-sm-3 control-label">Number Of Table </label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="nooftable" id="nooftable"  placeholder="Number Of Table" required="">
						                    </div>
						                     
						                </div>
						                
						                <div class="clearfix"></div>
						                
						             						                
						              
						                
						               <div class="col-sm-6" style="float: right">
						                <button type="submit" class="btn btn-primary" style="" value="Add Category" name="tablebtn">Save</button>
						<!--                <button type="submit" class="btn btn-success">Save and Add Another</button>-->
						                </div>
						                                       
						         </form>
						            
						         <!-- Manage Category Start -->   
						         <div class="row">
				                <div class="table-responsive" style="margin-top: 10px">
				                    <table class="table table-bordered table-striped table-hover">
				                        <thead>
				                            <tr>
				                                <th class="text-center">SL.</th>
				                                <th class="text-center">Table Category</th>
				                                <th class="text-center">No. of Table</th>
				                                <th class="text-center">Action</th>
				                            </tr>
				                        </thead>
				                         <tbody>
				                            <%
				                         int tcid;
				                         String category;
				                         int no_table;
				                        %>
				                        <%
                                try{
								
                                	HibernateUtil.createsession();
			                   		Iterator<Tablecontent> tdit = HibernateUtil.getTableCategory();
			                   		if(tdit.hasNext()){
								while(tdit.hasNext())
								{
									Tablecontent td=(Tablecontent)tdit.next();
								    tcid= td.getId();
								    category=td.getCategory();  
								    no_table=td.getNo_table();
								
								    
								%>
				                            <tr>
				                                <td><%=tcid %></td>
				                                <td><%=category %></td>
				                                <td><%=no_table %></td>
				                                <td>
				                               <center>
				                                  <%--  <a href="./../updatepage/updatetable.jsp?id=<%=tcid%>&tablename=<%=tablename%>" class="btn btn-info btn-sm" data-toggle="tooltip" sdata-placement="left" title data-original-title="Update">
				                                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
				                                   </a> --%>
			                                       <a href="${pageContext.request.contextPath }/TableController?id=<%=tcid%>&type=<%="DeleteCat" %>" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="left" title data-original-title="Delete" name="btnCustomer" value="Delete">
				                                            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
				                                   </a>
				                  		       </center>
				                                </td>
				                            </tr>
				                            <%
								
                              		  }
			                   		}
								HibernateUtil.destroysession();
								 %>
			                       
		 
                      <%          }    
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
						             
                            </div>
                            <!-- End Category tab-->
  
                    </div>
                </div>
                </div>
       			</div>
       			</div>
                <!-- Table Master Closed-->
        
        </div>
		</div>
		<!-- main_container close -->
		</div>
		</div>
		<!-- container fluid close -->
		
		<script>
// 		$(".update").click(function(){
			
	
// 			alert($(this).attr('name'));
// 			$("#id").val($(this).attr('name'));
			
			
// 		});

		</script>
 
  </body>

</html>