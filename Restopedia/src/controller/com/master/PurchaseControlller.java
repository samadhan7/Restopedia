package controller.com.master;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import model.com.master.Purchase;
import sessionconfiq.HibernateUtil;

@WebServlet("/PurchaseControlller")
public class PurchaseControlller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public PurchaseControlller() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	     
		 String suppliername=request.getParameter("suppliername");
		 String date=request.getParameter("date");
		 String invoice=request.getParameter("invoice");
		 String grandTotal=request.getParameter("grandTotal");
		 String item=request.getParameter("itemhiddenname");
		 String quantity=request.getParameter("itemhiddenquantity");
		 String rate=request.getParameter("itemhiddenrate");
		 String total=request.getParameter("total");
		
		 
		 String btnPurchase=request.getParameter("btnPurchase");
		 
		if(btnPurchase.equals("Save")){
			 try {
				 
				 HibernateUtil.createsession();
				 HibernateUtil.insertPurchase(suppliername, date, invoice, grandTotal, item, quantity, rate);
				 HibernateUtil.commitTransaction();
				 HibernateUtil.destroysession();
			 }
			 catch(Exception se)
			 {
				 System.out.println("Error in Insertion");
			 }
			 response.sendRedirect("Admin/adminpage/masters/purchasemaster.jsp?id=2");
			}
	  }

 }
