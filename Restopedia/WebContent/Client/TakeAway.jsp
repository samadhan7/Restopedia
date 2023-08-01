<%@ page import="java.util.*,com.restopedia.*, org.hibernate.*,org.hibernate.cfg.*"%>


<!-- header start-->
 
<jsp:include page="header.jsp" />
<!-- header ends-->


<!-- Main section start -->
  <div class="container-fluid" style="margin-top: 10px;">
   <form action="TakeAway" method="post">
       <div class="row">
         <div class="col-md-12 text-center">
          <div class="btn-group btn-group-lg rounded ">
                <a href="home.jsp" class="btn btn-sm btn-success "><img src="images/box (1).png"> <span class="badge">Dine in</span></a>
             <a href="TakeAway.jsp" class="btn btn-sm btn-success active"><img src="images/coffee.png"> <span class="badge">Take away</span></a>
             <a href="Delivery.jsp" class="btn btn-sm btn-success"><img src="images/logistics-delivery-truck-and-clock (1).png"> <span class="badge">Delivery</span></a>
            <a href="orderplacement.jsp" class="btn btn-sm btn-success"><img src="images/covered-food-tray-on-a-hand-of-hotel-room-service (1).png"> <span class="badge">KOT</span></a>
              </div>
          </div>
       </div>
	<div class="row">
		<div class="col-md-9" style="margin-top: 10px;">
			
			<div class="card">
		        <div class="card-header bg-dark text-light">Take Away Form</div>
		        <div class="card-body">
					
						<div class="form-group">
							<div class="form-row">
								<div class="col">
									<input type="text" class="form-control"
										placeholder="First name" name="fname">
								</div>
								<div class="col">
									<input type="text" class="form-control" placeholder="Last name" name="lname">
								</div>
							</div>
							<br>
							<div class="form-row">
								<div class="col">
									<input type="text" class="form-control"
										placeholder="Contact" name="contact">
								</div>
								<div class="col">
									<input type="text" class="form-control" placeholder="Email Address" name="email">
								</div>
							</div>
						
						</div>
					


					</div>	
			</div>
			
			
		</div>
		
		<!-- Employee Section -->
			<div class="col-md-3 ">
				<div class="card scrollbar-dusty-grass"
					style="min-height: 400px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
					<div class="card-header bg-dark text-light">Captain list</div>
					<div class="card-body bg-light scroll scrollbar-ripe-malinka">
						<%
							org.hibernate.Session session2 = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory()
									.openSession();
							Transaction transaction1 = session2.beginTransaction();

							Query query3 = session2.createQuery("FROM Employee");
							Iterator<Employee> it4 = query3.iterate();

							while (it4.hasNext()) {
								Employee em = (Employee) it4.next();
								String empname = em.getName();
						%>
						<div class="list-group">
							<a  class="list-group-item list-group-item-action tableli" value="<%=empname%>" > <%=empname%>
							</a>
</div>
							<%
								}
								session2.close();
							%>
						
					</div>
				</div>
         <div class="row" style="margin-top: 10px;">
		<div class="col-md-12">
		<input type="hidden" value="b" id="clist" name="clist"> 
			<button class="b1" type="submit" style ="height: 130px; width:100%;">Take Order</button>
		</div>
	</div>
			</div>
	</div>
	</form>
</div>
  
<!-- Main section end -->

<!-- footer start-->
 
<jsp:include page="footer.jsp" />
<!-- footer ends-->