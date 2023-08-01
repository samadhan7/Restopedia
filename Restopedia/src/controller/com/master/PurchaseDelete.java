package controller.com.master;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import model.com.master.Purchase;


@WebServlet("/PurchaseDelete")
public class PurchaseDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public PurchaseDelete() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		 int num=Integer.parseInt(request.getParameter("a"));
			
			try
			{
				SessionFactory sessionfactory=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
				   Session s1 = sessionfactory.openSession();
			 Transaction tr = s1.beginTransaction();
			 
			 Purchase c=(Purchase)s1.get(Purchase.class,num);
			 s1.delete(c);
			 tr.commit();
			 s1.close();
			 
			 
			}
			catch(Exception e)
			{
			System.out.println("e="+e.getMessage());
			}
		
	}

}
