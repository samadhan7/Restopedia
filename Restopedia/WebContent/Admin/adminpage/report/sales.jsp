<%@page import="com.restopedia.KotBillGen"%>
<%@page import="model.com.master.Purchase"%>
<%@page import="model.com.master.Supplier"%>
<%@page import="sessionconfiq.HibernateUtil"%>
<%@page import="org.hibernate.*" %>
<%@page import="javax.servlet.*" %>
<%@page import="java.util.Iterator" %>
<%@page import="org.hibernate.cfg.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sales Report</title>
<%@include file="report.jsp"%>
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
	                <h3 class="panel-title">Sales Report</h3>
	            </div>
	            <div class="panel-body">
                
                <div class="col-md-12">
                    <div class="panel" style="border-color: " style="background-color: #a9a9a9">
                        <ul class="nav nav-tabs" style="border-bottom-color: blue">
                            <li class="nav-item active">
                                <a href="#Report" class="nav-links" role="tab" data-toggle="tab"><button type="button" class="btn btn-info">Sales Report</button></a>
                            </li> 
                            
                        </ul>
                        
                 <div class="tab-content">
                     
                      <!-- Start Sales Report tab-->
                            
                            <div role="tabpanel" class="tab-pane active" id="Report">
                                
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
				                 
				                  <div class="col-sm-2 " style="float: right;">
				                    <form class="form-horizontal" action="${pageContext.request.contextPath }/SalesReport" method="post">
				                         <button type="submit" class="btn btn-danger" value="Print" name="SalesButton"> Print </button>
				                         </form>
				                    </div>
				                   
                                </div>
                                
                                <div class="row">
				                <div class="table-responsive" style="margin-top: 10px">
				                    <table class="table table-bordered table-striped table-hover">
				                        <thead>
				                            <tr>
				                                <th class="text-center">SL.</th>
				                                <th class="text-center">KOT No.</th>
				                                <th class="text-center">Table No</th>
				                                <th class="text-center">Captain Name</th>
				                                <th class="text-center">Date</th>
				                                  <th class="text-center">Time</th>
				                                <th class="text-center">Total</th>
				                                <th class="text-center">Tax</th>
				                                <th class="text-center">Grand Total</th>
				                               
				                            </tr>
				                        </thead>
				                       	
				                       	<tbody>
				                       		
				                       		  <%
                               
								
                                	HibernateUtil.createsession();
								Iterator<KotBillGen> itkotbillgen=HibernateUtil.getBillRecord();
								int count=0;
								float totalamount=0f;
								float totaltaxamount=0f;
								float grandtaotalamount=0f;
								
								while(itkotbillgen.hasNext())
								{
									KotBillGen kotbillgen=(KotBillGen)itkotbillgen.next();
									
									count++;
									totalamount=totalamount+ kotbillgen.getTotal();
									totaltaxamount=totaltaxamount+kotbillgen.getTax();
									grandtaotalamount=grandtaotalamount+kotbillgen.getGtotal();
								%> 
								
								<tr>
									<td><%= count%></td>
									<td><%= kotbillgen.getKotno() %> </td>
									<td><%=kotbillgen.getTableno() %></td>
									<td><%= kotbillgen.getCaptain() %></td>
									<td><%= kotbillgen.getDate() %></td>
									<td><%= kotbillgen.getTime() %></td>
									<td><%= kotbillgen.getTotal() %></td>
									<td><%= kotbillgen.getTax() %></td>
									<td><%= kotbillgen.getGtotal() %></td>
								</tr>
				                 <%
								
                              		  }
								 HibernateUtil.destroysession();
                                
				                            %> 
				                                
				                                <tr>
				                                
				                                <td colspan="6" class="text-right">Total:</td>
				                                <td><%= totalamount %></td>
				                                <td><%= totaltaxamount %></td>
				                                <td><%= grandtaotalamount %></td>
				                                
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