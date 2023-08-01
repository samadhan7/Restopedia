<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dashboard</title>
<!-- Bootstrap -->

    <link href="../Admin/regvendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link href="../Admin/regvendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../Admin/regvendors/nprogress/nprogress.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../regbuild/css/custom.min.css" rel="stylesheet">
    <script src="https://unpkg.com/moment@2.17.1"></script>
    <script src="https://unpkg.com/interactjs@1"></script>
    <script src="https://unpkg.com/angular@1.6.6/angular.js"></script>
    <script src="https://unpkg.com/angular-animate@1.6.6/angular-animate.js"></script>
    <script src="https://unpkg.com/angular-ui-bootstrap@2/dist/ui-bootstrap-tpls.js"></script>
    <script src="https://unpkg.com/rrule@2"></script>
    <script src="https://unpkg.com/angular-bootstrap-colorpicker@3"></script>
    <script src="https://unpkg.com/angular-bootstrap-calendar"></script>
    <link href="https://unpkg.com/bootstrap@3/dist/css/bootstrap.css" rel="stylesheet">
    <link href="https://unpkg.com/angular-bootstrap-colorpicker@3/css/colorpicker.min.css" rel="stylesheet">
    <link href="https://unpkg.com/angular-bootstrap-calendar/dist/css/angular-bootstrap-calendar.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
    <script src="example.js"></script>
    <script src="helpers.js"></script>
   <%@include file="././sidebar.jsp" %>
   
   <style type="text/css">
   <!--  Notice Board css start-->
   .notice:first-child{
    margin-top:10px;
    }
.notice {
    padding: 15px;
    background-color: #fafafa;
    border-left: 6px solid #7f7f84;
    margin-bottom: 10px;
    -webkit-box-shadow: 0 5px 8px -6px rgba(0,0,0,.2);
       -moz-box-shadow: 0 5px 8px -6px rgba(0,0,0,.2);
            box-shadow: 0 5px 8px -6px rgba(0,0,0,.2);
}
.notice-sm {
    padding: 10px;
    font-size: 80%;
}
.notice-lg {
    padding: 35px;
    font-size: large;
}
.notice-success {
    border-color: #80D651;
}
.notice-success>strong {
    color: #80D651;
}
.notice-info {
    border-color: #45ABCD;
}
.notice-info>strong {
    color: #45ABCD;
}
.notice-warning {
    border-color: #FEAF20;
}
.notice-warning>strong {
    color: #FEAF20;
}
.notice-danger {
    border-color: #d73814;
}
.notice-danger>strong {
    color: #d73814;
}
.notice>.desc{
    display:none;
    }
.readMore{
    cursor:pointer;
}
<!--  Notice Board css end-->
</style>
<!-- Notification css Start -->
<style type="text/css">
.error-notice {
  margin: 5px 5px; /* Making sure to keep some distance from all side */
}

.oaerror {
  width: 90%; /* Configure it fit in your design  */
  margin: 0 auto; /* Centering Stuff */
  background-color: #FFFFFF; /* Default background */
  padding: 20px;
  border: 1px solid #eee;
  border-left-width: 5px;
  border-radius: 3px;
  margin: 0 auto;
  font-family: 'Open Sans', sans-serif;
  font-size: 16px;
}

.danger {
  border-left-color: #d9534f; /* Left side border color */
  background-color: rgba(217, 83, 79, 0.1); /* Same color as the left border with reduced alpha to 0.1 */
}

.danger strong {
  color:  #d9534f;
}

.warning {
  border-left-color: #f0ad4e;
  background-color: rgba(240, 173, 78, 0.1);
}

.warning strong {
  color: #f0ad4e;
}

.info {
  border-left-color: #5bc0de;
  background-color: rgba(91, 192, 222, 0.1);
}

.info strong {
  color: #5bc0de;
}

.success {
  border-left-color: #2b542c;
  background-color: rgba(43, 84, 44, 0.1);
}

.success strong {
  color: #2b542c;
}
</style>
<!-- Notification css end -->
</head>
<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="right_col" role="main">
				<div class="container">
					<div class="row">
						<div class="col-md-4 col-sm-4 col-xs-12"></div>
						<div class="col-md-4">
						<h4>Restopedia Welcomes You!</h4>
						</div>
					</div>
				<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-12">
					<header class="container" style="padding-top:22px">
				    <h4><b><i class="fa fa-dashboard fa-lg"></i> Restopedia Dashboard</b></h4>
				    </header>
				    </div>
				    <div class="col-md-6"><h4></div>
				    
				    <div class="col-md-3">
				    <header class="container" style="padding-top:22px">
				     <div id="reportrange" class="btn btn-square date-picker" style="background-color:#DED9D6;">
			            <i class="fa fa-calendar"></i>
			             <span class="date-range">April 01, 2018 - April 05, 2018</span> <i class="fa fa-caret-down"></i>
			           </div>
				    </header>
				    </div>
			   </div>
			   
			  <div class="row">
			  <div class="col-md-3 col-sm-3 col-xs-12">
			  	<div class="quarter">
			  		<div class="container"style="padding-left:16px;background-color:#E01508;color:white; width:250px;height:150px"><br>
			  			<div class="pull-left"><i class="fa fa-cart-plus fa-4x"></i></div>
			        <div class="pull-right" style="padding-right:16px;">
			          <h3>52</h3>
			        </div>
			        <div class="clearfix"></div><br>
			        <h4>Order Received</h4>
			      </div>
			  		</div>
			  	</div>
			  	
			  	<div class="col-md-3">
			  	<div class="quarter">
			  		<div class="container"style="padding-left:16px;background-color:#0BD032;color:white; width:250px;height:150px"><br>
			  			<div class="pull-left"><i class="fa fa-briefcase fa-4x"></i></div>
			        <div class="pull-right" style="padding-right:16px;">
			          <h3>32</h3>
			        </div>
			        <div class="clearfix"></div><br>
			        <h4>Today Delivered</h4>
			      </div>
			  		</div>
			  	</div>
			  	
			  	<div class="col-md-3">
			  	<div class="quarter">
			  		<div class="container"style="padding-left:16px;background-color:orange;color:white; width:250px;height:150px"><br>
			  			<div class="pull-left"><i class="fa fa-users fa-4x"></i></div>
			        <div class="pull-right" style="padding-right:16px;">
			          <h3>82</h3>
			        </div>
			        <div class="clearfix"></div><br>
			        <h4>New Customer</h4>
			        <!-- <h5>Paid Student: 52  Unpaid Student: 30</h5> -->
			        
			      </div>
			  		</div>
			  	</div>
			  	
			  	<div class="col-md-3">
			  	<div class="quarter">
			  		<div class="container"style="padding-left:16px;background-color:#AEB6BF;color:white; width:250px;height:150px"><br>
			  			<div class="pull-left"><i class="fa fa-inr fa-4x"></i></div>
			        <div class="pull-right" style="padding-right:16px;">
			          <h3>10000</h3>
			        </div>
			        <div class="clearfix"></div><br>
			        <h4>Net Earning</h4>
			      </div>
			  		</div>
			  	</div>
			</div><br>
			<!-- <div class="row">
			Event Calendar start
				<div class="col-md-8 col-sm-8 col-xs-12">
				<div class="panel">
							<div class="panel-heading"></div>
								<div class="panel-body">
								<center><h4>Event Calendar</h4></center>
								<div ng-controller="KitchenSinkCtrl as vm">
  <h2 class="text-center">{{ vm.calendarTitle }}</h2>

  <div class="row">

    <div class="col-md-6 text-center">
      <div class="btn-group">

        <button
          class="btn btn-primary"
          mwl-date-modifier
          date="vm.viewDate"
          decrement="vm.calendarView"
          ng-click="vm.cellIsOpen = false">
          Previous
        </button>
        <button
          class="btn btn-default"
          mwl-date-modifier
          date="vm.viewDate"
          set-to-today
          ng-click="vm.cellIsOpen = false">
          Today
        </button>
        <button
          class="btn btn-primary"
          mwl-date-modifier
          date="vm.viewDate"
          increment="vm.calendarView"
          ng-click="vm.cellIsOpen = false">
          Next
        </button>
      </div>
    </div>

    <br class="visible-xs visible-sm">

    <div class="col-md-6 text-center">
      <div class="btn-group">
        <label class="btn btn-primary" ng-model="vm.calendarView" uib-btn-radio="'year'" ng-click="vm.cellIsOpen = false">Year</label>
        <label class="btn btn-primary" ng-model="vm.calendarView" uib-btn-radio="'month'" ng-click="vm.cellIsOpen = false">Month</label>
        <label class="btn btn-primary" ng-model="vm.calendarView" uib-btn-radio="'week'" ng-click="vm.cellIsOpen = false">Week</label>
        <label class="btn btn-primary" ng-model="vm.calendarView" uib-btn-radio="'day'" ng-click="vm.cellIsOpen = false">Day</label>
      </div>
    </div>

  </div>

  <br>

  <mwl-calendar
    events="vm.events"
    view="vm.calendarView"
    view-title="vm.calendarTitle"
    view-date="vm.viewDate"
    on-event-click="vm.eventClicked(calendarEvent)"
    on-event-times-changed="vm.eventTimesChanged(calendarEvent); calendarEvent.startsAt = calendarNewEventStart; calendarEvent.endsAt = calendarNewEventEnd"
    cell-is-open="vm.cellIsOpen"
    day-view-start="06:00"
    day-view-end="22:59"
    day-view-split="30"
    cell-modifier="vm.modifyCell(calendarCell)"
    cell-auto-open-disabled="true"
    on-timespan-click="vm.timespanClicked(calendarDate, calendarCell)">
  </mwl-calendar>

  <br><br><br>

  <h3 id="event-editor">
    Edit events
    <button
      class="btn btn-primary pull-right"
      ng-click="vm.addEvent()">
      Add new
    </button>
    <div class="clearfix"></div>
  </h3>

  <table class="table table-bordered">

    <thead>
      <tr>
        <th>Title</th>
        <th>Primary color</th>
        <th>Secondary color</th>
        <th>Starts at</th>
        <th>Ends at</th>
        <th>Remove</th>
      </tr>
    </thead>

    <tbody>
      <tr ng-repeat="event in vm.events track by $index">
        <td>
          <input
            type="text"
            class="form-control"
            ng-model="event.title">
        </td>
        <td>
          <input class="form-control" colorpicker type="text" ng-model="event.color.primary">
        </td>
        <td>
          <input class="form-control" colorpicker type="text" ng-model="event.color.secondary">
        </td>
        <td>
          <p class="input-group" style="max-width: 250px">
            <input
              type="text"
              class="form-control"
              readonly
              uib-datepicker-popup="dd MMMM yyyy"
              ng-model="event.startsAt"
              is-open="event.startOpen"
              close-text="Close" >
            <span class="input-group-btn">
              <button
                type="button"
                class="btn btn-default"
                ng-click="vm.toggle($event, 'startOpen', event)">
                <i class="glyphicon glyphicon-calendar"></i>
              </button>
            </span>
          </p>
          <div
            uib-timepicker
            ng-model="event.startsAt"
            hour-step="1"
            minute-step="15"
            show-meridian="true">
          </div>
        </td>
        <td>
          <p class="input-group" style="max-width: 250px">
            <input
              type="text"
              class="form-control"
              readonly
              uib-datepicker-popup="dd MMMM yyyy"
              ng-model="event.endsAt"
              is-open="event.endOpen"
              close-text="Close">
            <span class="input-group-btn">
              <button
                type="button"
                class="btn btn-default"
                ng-click="vm.toggle($event, 'endOpen', event)">
                <i class="glyphicon glyphicon-calendar"></i>
              </button>
            </span>
          </p>
          <div
            uib-timepicker
            ng-model="event.endsAt"
            hour-step="1"
            minute-step="15"
            show-meridian="true">
          </div>
        </td>
        <td>
          <button
            class="btn btn-danger"
            ng-click="vm.events.splice($index, 1)">
            Delete
          </button>
        </td>
      </tr>
    </tbody>

  </table>
</div>
Event Calendar End
								<br><br>
								</div>
						</div>
				</div>
					<div class="col-md-4">
						<div class="panel panel-primary">
							<div class="panel-heading">Notice Board</div>
								<div class="panel-body">
								<h3>Notice Board</h3>
									Notice Board code start
										<div class="container">
										    <div class="notice notice-success">
										        <strong>Heading</strong> notice-success <span class="pull-right text-success readMore">Read</span>
										        <div class="desc">
										           <p>
										               Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
										               Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
										               in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,
										               sunt in culpa qui officia deserunt mollit anim id est laborum.
										            </p>        
										        </div>
										    </div>
										    <div class="notice notice-danger">
										        <strong>Heading</strong> notice-danger  <span class="pull-right text-danger readMore">Read</span>
										         <div class="desc">
										            <p>
										               Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
										               Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
										               in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,
										               sunt in culpa qui officia deserunt mollit anim id est laborum.
										            </p>        
										        </div>
										    </div>
										    <div class="notice notice-info">
										        <strong>Heading</strong> notice-info  <span class="pull-right text-info readMore">Read</span>
										         <div class="desc">
										            
										            <p>
										               Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
										               Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
										               in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,
										               sunt in culpa qui officia deserunt mollit anim id est laborum.
										            </p>        
										        </div>
										    </div>
										    <div class="notice notice-warning">
										        <strong>Heading</strong> notice-warning  <span class="pull-right text-warning readMore">Read</span>
										          <div class="desc">
										            
										            <p>
										               Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
										               Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
										               in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,
										               sunt in culpa qui officia deserunt mollit anim id est laborum.
										            </p>        
										        </div>
										    </div>
										    <div class="notice notice-sm">
										        <strong>Big Heading</strong> notice-lg  <span class="pull-right readMore">Read</span>
										          <div class="desc">
										            
										            <p>
										               Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
										               Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
										               in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,
										               sunt in culpa qui officia deserunt mollit anim id est laborum.
										            </p>        
										        </div>
										    </div>
										    <div class="notice notice-sm">
										        <strong>Small Heading</strong> notice-sm  <span class="pull-right readMore">Read</span>
										         <div class="desc">
										            
										            <p>
										               Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
										               Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
										               in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,
										               sunt in culpa qui officia deserunt mollit anim id est laborum.
										            </p>        
										        </div>
										    </div>
										</div>
									Notice Board code End
								<br>
								</div>
						</div><br>
						<div class="panel panel-primary">
							<div class="panel-heading">Notifications</div>
								<div class="panel-body">
										<div class="row">
											<div class="error-notice">
									          <div class="oaerror danger">
									            <strong>Error</strong> - You provided a database error
									          </div>
									          <div class="oaerror warning">
									            <strong>Error</strong> - System error
									          </div>
									          <div class="oaerror info">
									            <strong>Error</strong> - Please Select a Different Username
									          </div>
									          <div class="oaerror success">
									            <strong>Yeppi</strong> - You are successfully registered. Please login.
									          </div>
									        </div>
										</div>
									
								<br>
							</div>
						</div>
						<br>
						<div class="panel panel-primary">
							<div class="panel-heading">Messages</div>
								<div class="panel-body">
								<div class="alert alert-info">
							        <a href="#" class="btn btn-xs btn-success pull-right">Read More</a>
							        <strong>Info:</strong> you should do an action.
							    </div>
							
							    <div class="alert alert-warning">
							        <a href="#" class="btn btn-xs btn-success pull-right">Read More</a>
							        <strong>Warning:</strong> you should do an action.
							    </div>
							
							    <div class="alert alert-danger">
							        <a href="#" class="btn btn-xs btn-success pull-right">Read More</a>
							        <strong>Danger:</strong> you shouldn't do an action!
							    </div>
							</div>
						</div>
					</div>
			   </div> -->
			</div><br><br><br>
		</div>					  
     </div>
  </div>
 
  <!-- Notice Board Script start -->
   <script type="text/javascript">
   $(document).ready(function(){


	   $(".readMore").click(function(){
	   var This=$(this);    
	   $(this).next().toggle(function(){
	       if(This.text()=="Read"){
	         This.text("Hide") 
	       }
	       else{
	           This.text("Read") 
	       }
	   })
	   });})
   </script>
  <!-- Notice Board Script end -->
 
</body>
</html>