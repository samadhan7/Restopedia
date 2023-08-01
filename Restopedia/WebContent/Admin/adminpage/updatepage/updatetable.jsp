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
<title> Update Table Master</title>
<%@include file="update.jsp"%>
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
                            <li class="active">
                                <a href="#Update" class="nav-links tab-pane fade-in-active" class="active" role="tab" data-toggle="tab"><button type="button" class="btn btn-success">Update Table</button></a>
                            </li>
                            
                        </ul>
                        
                        <div class="tab-content">
                        
                            <!-- Start Add Table Tab-->
                        
                            <div role="tabpanel" class="tab-pane active" id="Update">  
                                                     
                            
                                <form class="form-horizontal text-left" action="${pageContext.request.contextPath }/TableController" method="post">
						               <br> 
						               <input type="hidden" class="form-control" name="id" value="<%=request.getParameter("id")%>" >
                             			<input type="hidden" class="form-control" name="type" value="Update" >
						                <div class="form-group">
						                    <label for="tablenumber" class="col-sm-3 control-label">Table Number <i class="text-danger">*</i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="tablename" id="tablename" placeholder="Table Number" required="" value="<%=request.getParameter("tablename")%>">
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
						                    	while(ttit.hasNext()){
						                    		Tablecontent tc=(Tablecontent)ttit.next();
						                    	%>
						                    		<option value="<%=tc.getId()%>"><%=tc.getCategory() %></option>
						                    	<% }
						                    	HibernateUtil.destroysession();
						                   	%> 
						                     </select>
						                    </div>
						                  
						                </div>
						                
						              
						                
						               <div class="col-sm-6" style="float: right">
						                <button type="submit" class="btn btn-primary" value="Update" name="tablebtn">Update</button>
						<!--                <button type="submit" class="btn btn-success">Save and Add Another</button>-->
						                </div>
						                                       
						             </form>
                            </div>
                            <!-- End Update Table tab-->
                            
                            
                           
                       
  
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
		$(".update").click(function(){
			
	
			alert($(this).attr('name'));
			$("#id").val($(this).attr('name'));
			
			
		});

		</script>
 
  </body>

</html>