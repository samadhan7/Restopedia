package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import sessionconfiq.HibernateUtil;


@WebServlet("/GenerateBill")
public class GenerateBill extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 
		String btn = request.getParameter("btn1");
		int id=Integer.parseInt(request.getParameter("kotorderid"));
		
		
		
		
		
		Session session1 = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory()
				.openSession();
		     Transaction transaction = session1.beginTransaction();
	

		
	   if(btn.equals("pay"))
		{
		  
		   
			String tableno =request.getParameter("tableno");;
			String captain=request.getParameter("capname");
			float total=Float.parseFloat(request.getParameter("total"));
			float tax=Float.parseFloat(request.getParameter("tax"));
			float gtotal=Float.parseFloat(request.getParameter("grandtotal"));
			String date=request.getParameter("date");
			String time=request.getParameter("time");
		   
			
			
			  Query query = session1.createQuery("UPDATE KotOrders set orderstatus = :os WHERE kotid = :kotorder");
				query.setParameter("os",3);
				query.setParameter("kotorder",id);
				int result = query.executeUpdate();
		   
		   HibernateUtil.createsession();
		   HibernateUtil.insertBill(id, tableno, captain, total, tax, gtotal, date, time);
		   HibernateUtil.commitTransaction();
		   HibernateUtil.destroysession();
		   
		   
		  
		System.out.println("khkjhiuhgyu");
		}
		else if(btn.equals("ServeTable"))
		{
			Query query = session1.createQuery("UPDATE KotOrders set orderstatus = :os WHERE kotid = :kotorder");
			query.setParameter("os",2);
			query.setParameter("kotorder",id);
			int result = query.executeUpdate();
			System.out.println(result);
			
		}
		else if(btn.equals("SendKOT"))
		{
			Query query = session1.createQuery("UPDATE KotOrders set orderstatus = :os WHERE kotid = :kotorder");
			query.setParameter("os",1);
			query.setParameter("kotorder",id);
			int result = query.executeUpdate();
			System.out.println(result);
			
		}
		
		response.sendRedirect("Client/orderplacement.jsp");
		
	}

}
