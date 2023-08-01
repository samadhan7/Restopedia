<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>header</title>
<link href="WebContent/Admin/regvendors/bootstrap/dist/css/bootstrap.css" rel="stylesheet">
<link href="WebContent/Admin/regvendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap -->
    <link href="../../regvendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../../regvendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../../regvendors/nprogress/nprogress.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../../regbuild/css/custom.min.css" rel="stylesheet">
</head>
<body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"><i class="fa fa-glass"></i> <span>Restopedia</span></a>
            </div>

            <div class="clearfix"></div>

                        <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
               				
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-fw fa-dashboard"></i> Dashboard </a></li>
				  
				  <!-- Restaurant-->
				  <li><a><i class="fa fa-cutlery "></i> Restaurant <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
					  <li><a href="./../restaurant/restaurantmaintenance.jsp?id=1">Restaurant Maintenance</a></li>
					  <li><a href="./../restaurant/parametermaintenance.jsp?id=1">Restaurant Parameter Maintenance</a></li>
					   <li><a href="./../restaurant/storemaintenance.jsp?id=1">Store Parameter Maintenance</a></li>
					    <li><a href="./../restaurant/orderlist.jsp?id=1">Order List</a></li>
					  <li><a href="./../restaurant/list.jsp?id=1">List of Restaurants</a></li>
                    </ul>
                  </li>
				  
				  <!-- Transaction Details-->
				  <li><a><i class="fa fa-credit-card"></i>Transactions<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="./../transaction/kot.jsp?id=1">KOT(Kitchen Order Ticket)</a></li>
					  <li><a href="./../transaction/billing.jsp?id=1">Billing</a></li>
					  <li><a href="./../transaction/adjustment.jsp?id=1">Settlement</a></li>
					  <li><a href="./../transaction/todayspecial.jsp?id=1">Today's Special</a></li>
					 
                    </ul>
                  </li>
				   <!-- Masters-->
				  <li><a><i class="fa fa-user"></i> Masters<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="employeemaster.jsp?id=1">Employee Master</a></li>
                      <li><a href="tablemaster.jsp?id=1">Table Master</a></li>
                      <li><a href="itemmaster.jsp?id=1">Item Master</a></li>
					  <li><a href="suppliermaster.jsp?id=1">Supplier Master</a></li>
					  <li><a href="suppliergroupmaster.jsp?id=1">Supplier Group Master</a></li>
					  <li><a href="restaurantmaster.jsp?id=1">Restaurant Master</a></li>
					  <li><a href="salesmaster.jsp?id=1">Sales Master</a></li>
					  <li><a href="purchasemaster.jsp?id=1">Purchase Master</a></li>
					  <li><a href="kotmaster.jsp?id=1">KOT Master</a></li>
					  <li><a href="departmentmaster.jsp?id=1">Department Master</a></li>
					  <li><a href="recipemaster.jsp?id=1">Recipe Master</a></li>
					  <li><a href="taxmaster.jsp?id=1">Tax Master</a></li>
					  <li><a href="customermaster.jsp?id=1">Customer Master</a></li>
                    </ul>
                  </li>
                  
                   <!-- Stock/Store Details-->
				  <li><a><i class="fa fa-briefcase"></i>Inventory<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="./../inventory/stockentry.jsp?id=1">Stock Entry</a></li>
					  <li><a href="./../inventory/wastage.jsp?id=1">Wastage</a></li>
					  <li><a href="./../inventory/supplier.jsp?id=1">Supplier Information</a></li>
					  
                    </ul>
                  </li>
                  
                   <!-- Report Details-->
				  <li><a><i class="fa fa-file"></i>Report<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="./../report/gst.jsp?id=1">GST Reports</a></li>
                      <li><a href="./../report/stockreport.jsp?id=1">Stock Report</a></li>
					  <li><a href="./../report/sales.jsp?id=1">Sales Report</a></li>
					  <li><a href="./../report/cancelorder.jsp?id=1">Cancelled Orders Day Wise</a></li>
					  <li><a href="./../report/incentives.jsp?id=1">Employees Incentives</a></li>
					  <li><a href="./../report/managers.jsp?id=1">Managers Report</a></li>
	                </ul>
                  </li>
                  
				   <!-- Help/Contacts Details-->
				  <li><a><i class="fa fa-question-circle"></i>Help<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="">Contact Us</a></li>
                      <li><a href="">Feedback</a></li>
                      <li><a href="">Language</a></li>
                 </ul>
                  </li>
                   
                </ul>
              </div>
            </div>
          </div>
        </div>
        
<!-- /side menu close -->
               
         <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->
       
    <!-- jQuery -->
    <script src="../../regvendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="../../regvendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="../../regvendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="../../regvendors/nprogress/nprogress.js"></script>
    <!-- jQuery Smart Wizard -->
    <script src="../../regvendors/jQuery-Smart-Wizard/js/jquery.smartWizard.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="../../regbuild/js/custom.min.js"></script>

    <!-- jQuery Smart Wizard -->
    
    <!-- /jQuery Smart Wizard -->
    <script>
      
    </script>
    <!-- /jQuery Sparklines -->

    <!-- Doughnut Chart -->
    <script>
      
    </script>
    <!-- /Doughnut Chart -->
<!-- Chart.js -->
    <script src="../vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script type="text/javascript">
      
    </script>
    <!-- /bootstrap-daterangepicker -->
    
    
    
    
  </body>

</html>