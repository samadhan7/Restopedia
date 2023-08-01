<%@page import="sessionconfiq.HibernateUtil"%>
<%@page import="org.json.JSONArray"%>
<%@ page import="java.util.*,com.restopedia.*, org.hibernate.*,org.hibernate.cfg.*"%>
<%@page import="javax.servlet.*" %>

<!-- header start-->
 
<jsp:include page="header.jsp" />
<!-- header ends-->


<!-- Main section start -->
  <div class="container-fluid" style="margin-top: 10px;">
   <form action="${pageContext.request.contextPath }/OrderPlacement" method="post">
     	<div class="row">
		<div class="col-md-8" style="margin-top: 10px;">
			
			<div class="panel panel-primary">
	            <div class="panel-body">	        
	            <%
					org.hibernate.Session session1 = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory()
							.openSession();
					Transaction transaction = session1.beginTransaction();

					Query query = session1.createQuery("FROM MenuCategory");
					Iterator<MenuCategory> it = query.iterate();
					Iterator<MenuCategory> it2 = query.iterate();
					int count = 0;
				%>
                
                <div class="col-md-12">
                    <div class="panel panel-default">
							<ul class="nav nav-tabs">
							<%
							while (it.hasNext()) {
						MenuCategory mc = (MenuCategory) it.next();
						String category = mc.getCategoryname();
						int id = mc.getId();
						count++;
						%>
								
								<li class="nav-item rounded-top" style="background-color: #AED6F1; margin-right: 3px;"><a class="nav-link <% if(count==1){ %>active<%}%> text-dark"  role="tab" data-toggle="tab" href="#<%=category%>"><%=category%></a>
								</li>
								<%} %>
							</ul>


							<div class="tab-content">
                            <!-- Start Restaurant tab-->
                            	<%
                            	count=0;
							while (it2.hasNext()) {
								MenuCategory mc = (MenuCategory) it2.next();
								String category = mc.getCategoryname();
								int id = mc.getId();
								count++;
						%>
						
								 <div role="tabpanel" class="tab-pane <% if(count==1){ %>active<%} %>" id="<%=category%>" style="margin-top: 10px;">
										<table class="table table-sm bg-dark text-light">
											<thead>
												<tr>
													<th>Sr. No</th>
													<th>Item name</th>
													<th>Price</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
											<%
											HibernateUtil.createsession();
											Iterator<MenuItem> it3 = HibernateUtil.GetDetail("FROM MenuItem");
											
												while (it3.hasNext()) {
													MenuItem mi = (MenuItem) it3.next();
													int itemid = mi.getItemid();
													int categoryid=mi.getCatid();
													String itemname = mi.getItemname();
													float price=mi.getItemprice();
													if (categoryid == id) {
														
										%>
												<tr>
												    <%
												    
												    %>
													<td id="itemid"><%= itemid %></td>
													<td id="itemname"><%= itemname %></td>
													<td id="itemprice"><%= price %></td>
													<td><button type="button" class="btn btn-success btn-sm btnorder" id="btnorder" value="<%=itemname%>">
													Add</button></td>
												</tr>
											<%
											}
												}
												
										%>	
											</tbody>
										</table>


									</div>
						
								<%} 
								
								
								
								
								
								
								
								
								
								
								%>
                           
                       
                          
                        </div>
                    </div>
                </div>
                </div>
       			</div>
			
			
			
		</div>
		
		<!-- Order Section -->
			<div class="col-md-4 ">
			
			    <span class="badge badge-light">Table no:<%= request.getParameter("tlist")%></span>
			    <span class="badge badge-light">Captain Name:<%= request.getParameter("clist")%></span>
				<div class="card scrollbar-dusty-grass"
					style="min-height: 400px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
					<div class="card-header bg-dark text-light">Order list</div>
					<div class="card-body bg-light scroll scrollbar-ripe-malinka">
						<table class="table table-hover" id="myordertable">
							<thead>
								<tr>
									<th scope="col">Sr. no</th>
									<th scope="col">item name</th>
									<th scope="col">Quantity</th>
									<th scope="col">Price</th>
								</tr>
							</thead>
							<tbody>
							
								
							</tbody>

						</table>
						

					</div>
					<div class="card-footer bg-light"><table id="totalprice"><tbody><tr ><td>Your total price:</td>
										<td id="itemtotalprice">0</td></tr></tbody></table>
										</div>
				</div>
         <div class="row" style="margin-top: 10px;">
		<div class="col-md-12">
		
			<button class="b1 btntoder" id="btntorder" style ="height: 130px; width:100%; ">Take Order</button>
		</div>
	</div>
			</div>
	</div>
	<input type="hidden" value="a" id="tid" name="tid"> 
		<input type="hidden" value="b" id="tquan" name="tquan"> 
		<input type="hidden" value="<%= request.getParameter("tlist")%>" id="tlist" name="tlist"> 
		<input type="hidden" value="<%= request.getParameter("clist")%>" id="clist" name="clist"> 
		<input type="hidden" value="<%= request.getParameter("deliveryid")%>" id="deliveryid" name="deliveryid">
		<input type="hidden" value="0" id="plist" name="plist"> 
	</form>
</div>
  
<!-- Main section end -->

<!-- footer start-->
 
<jsp:include page="footer.jsp" />
<!-- footer ends-->