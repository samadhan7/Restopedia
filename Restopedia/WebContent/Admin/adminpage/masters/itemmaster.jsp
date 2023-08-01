<%@page import="com.restopedia.MenuItem"%>
<%@page import="com.restopedia.MenuCategory"%>
<%@page import="org.hibernate.*" %>
<%@page import="model.com.master.Item" %>
<%@page import="java.util.Iterator" %>
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
<title>Item Master</title>
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
	                <h3 class="panel-title">Item Master</h3>
	            </div>
	            <div class="panel-body">
                
                <div class="col-md-12">
                    <div class="panel" style="border-color: " style="background-color: #a9a9a9">
                        <ul class="nav nav-tabs" style="border-bottom-color: blue">
                            <li class="<%if(Integer.parseInt(request.getParameter("id"))==1){ %>active<%}%>" >
                                <a href="#Add" class="nav-links tab-pane fade-in-active" class="active" role="tab" data-toggle="tab"><button type="button" class="btn btn-success">Add New Item</button></a>
                            </li>
                            <li class="nav-item <%if(Integer.parseInt(request.getParameter("id"))==2){ %>active<%}%>" >
                                <a href="#Manage" class="nav-links" role="tab" data-toggle="tab"><button type="button" class="btn btn-warning">Manage Item</button></a>
                            </li>
                            <li class="nav-item <%if(Integer.parseInt(request.getParameter("id"))==3){ %>active<%}%>" >
                                <a href="#Category" class="nav-links" role="tab" data-toggle="tab"><button type="button" class="btn btn-primary">Menu Category</button></a>
                            </li>
                        </ul>
                        
                        <div class="tab-content">
                            <!-- Start Add Item Tab-->
                            <div role="tabpanel" class="tab-pane <%if(Integer.parseInt(request.getParameter("id"))==1){ %>active<%}%>" id="Add">  
                                                     
                             <form class="form-horizontal text-left" action="${pageContext.request.contextPath }/ItemController" method="GET">
						               <br> 
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="itemname" class="col-sm-3 control-label">Item Name <i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="itemname" id="itemname"  placeholder="Item Name" required="">
						                   </div> 
						                  <br> 
						                <br>
						                <br>
						                   
						                 <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="itemcategory" class="col-sm-3 control-label">Item Type</label>
						                    <div class="col-sm-5">
						                    <select class="form-control" name="itemtype" id="itemtype" placeholder="item category" required="">
						                   <option>--Select--</option>
						                   	<%
						                   	HibernateUtil.createsession();
						                   		Iterator<MenuCategory> ttit = HibernateUtil.getMenuCategory();
						                    	while(ttit.hasNext()){
						                    		MenuCategory tc=(MenuCategory)ttit.next();
						                    	%>
						                    		<option value="<%=tc.getId()%>"><%=tc.getCategoryname() %></option>
						                    	<% }
						                    	HibernateUtil.destroysession();
						                   	%> 
						                     </select>
						                    </div>
						                  
						                </div>
						                     
						                </div>
						                 <div class="clearfix"></div>
						                
						                
						                
						                <div class="form-group">
						                    <label for="price" class="col-sm-3 control-label">Price<i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="price" id="price"  placeholder="Price" required="">
						                    </div>
						                     
						                </div>
						              				                
						               <div class="clearfix"></div>
						             
						                
						               <div class="col-sm-6" style="float: right">
						                <button type="submit" class="btn btn-primary" name="btnItem" value="Save" style="">Save</button>
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
				                                <th class="text-center">Item Name</th>
				                                <th class="text-center">Item Type</th>
				                                <th class="text-center">Price</th>
				                                <th class="text-center">Action</th>
				                            </tr>
				                        </thead>
				                         <tbody>
				                             <%
				                         int id;
				                        String itemname;
				                       int itemtype;
				                      float price;
				                         %>
				                        <%
                                try{
								
								Session sf=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
								
								Query query = sf.createQuery("FROM MenuItem");
								Iterator<MenuItem> it=query.iterate();
								while(it.hasNext())
								{
									MenuItem i=(MenuItem)it.next();
								   id= i.getItemid();
								   itemname= i.getItemname();
								   itemtype= i.getCatid();
								   price= i.getItemprice();
								   
								   HibernateUtil.createsession();
								  Iterator<MenuCategory> it1 =  HibernateUtil.getMenuCategorybyid(itemtype);  // for getting category name fromMenu Category table
								  MenuCategory mc1 = (MenuCategory)it1.next();
								  
								   	%>
				                            <tr>
				                                <td><%=id %></td>
				                                <td><%=itemname %></td>
				                                <td><%=mc1.getCategoryname() %></td>
				                                <td><%=price %></td>
				                                <td>
				                                    <center>
				                                    <form action="" accept-charset="utf-8">
				                                        
				                                        <a href="./../updatepage/updateitem.jsp?id=<%=id %>&itemname=<%=itemname%>&itemtype=<%=itemtype%>&price=<%=price%>" class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title data-original-title="Update">
				                                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
				                                        </a>
				                                        <a href="${pageContext.request.contextPath }/ItemController?id=<%=id%>&btnItem=<%="Delete" %>" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="left" title data-original-title="Delete">
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
				                                  
				                                    
                                
                            </div>
                            <!-- End Manage Item tab-->
                            
                     		<!-- Start Category Tab -->
                        <div role="tabpanel" class="tab-pane <%if(Integer.parseInt(request.getParameter("id"))==3){ %>active<%}%>"  id="Category">  
                                                     
                            
                                <form class="form-horizontal text-left" action="${pageContext.request.contextPath }/ItemController" method="post">
						               <br> 
						                <div class="form-group">
						                    <label for="tablenumber" class="col-sm-3 control-label">Menu Category Name <i class="text-danger">*</i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="menucategory" id="menucategory" placeholder="Category Name" required="">
						                    </div>
						                   
						                </div>
						              
						               <div class="col-sm-6" style="float: right">
						                <button type="submit" class="btn btn-primary" style="" value="Add Category" name="menubtn">Add</button>
						<!--                <button type="submit" class="btn btn-success">Save and Add Another</button>-->
						                </div>
						                                       
						       </form>
						       
						       <div class="row">
				                <div class="table-responsive" style="margin-top: 10px">
				                    <table class="table table-bordered table-striped table-hover">
				                        <thead>
				                            <tr>
				                                <th class="text-center">SL.</th>
				                                <th class="text-center">Menu Category</th>
				                                <th class="text-center">Action</th>
				                            </tr>
				                        </thead>
				                         <tbody>
				                            <%
				                         int mcid;
				                         String category;
				                        
				                        %>
				                        <%
                                try{
								
                                	HibernateUtil.createsession();
			                   		Iterator<MenuCategory> tdit = HibernateUtil.getMenuCategory();
			                   		if(tdit.hasNext()){
								while(tdit.hasNext())
								{
									MenuCategory td=(MenuCategory)tdit.next();
								    mcid= td.getId();
								    category=td.getCategoryname(); 
								    
								
								    
								%>
				                            <tr>
				                                <td><%=mcid %></td>
				                                <td><%=category %></td>
				                                <td>
				                               <center>
				                                  <%--  <a href="./../updatepage/updatetable.jsp?id=<%=tcid%>&tablename=<%=tablename%>" class="btn btn-info btn-sm" data-toggle="tooltip" sdata-placement="left" title data-original-title="Update">
				                                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
				                                   </a> --%>
			                                       <a href="${pageContext.request.contextPath }/ItemController?id=<%=mcid%>&btnItem=<%="DeleteCat" %>" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="left" title data-original-title="Delete" name="btnCustomer" value="Delete">
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