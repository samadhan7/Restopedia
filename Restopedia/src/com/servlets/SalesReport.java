package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.report.Report;


@WebServlet("/SalesReport")
public class SalesReport extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String btn=request.getParameter("SalesButton");
		if(btn.equals("Print")) {
			Report.printSalesReport();
		}
		
		response.sendRedirect("Admin/adminpage/report/sales.jsp");
		
		
		
		
	}

}
