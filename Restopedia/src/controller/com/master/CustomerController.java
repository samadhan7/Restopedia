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

import model.com.master.Customer;
import sessionconfiq.HibernateUtil;


@WebServlet("/CustomerController")
public class CustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public CustomerController() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//doGet(request, response);
		String customername=request.getParameter("customername");
	    String contactno=request.getParameter("contactno");
	    String bdate=request.getParameter("bdate");
	    String customeraddress=request.getParameter("customeraddress");
	    String customeremail=request.getParameter("customeremail");
	    String assignedtableno=request.getParameter("assignedtableno");
	    String assignedwaiterno=request.getParameter("assignedwaiterno");
		
	     
		String btnCustomer=request.getParameter("type");
		
		
		HibernateUtil.createsession();
		
		
		 if(btnCustomer.equals("Save"))
			{
		     try
			    {
		    	HibernateUtil.insertCustomer(customername, contactno, bdate, customeraddress, customeremail, assignedtableno, assignedwaiterno);
		    	HibernateUtil.commitTransaction();
		    	HibernateUtil.destroysession();
			    }
			    catch(Exception e)
			    {
			    	System.out.println("Error in Insertion");
			    }
		
			}
		else if(btnCustomer.equals("Update"))
		 	{
			 try{
				 int num=Integer.parseInt(request.getParameter("id"));
				 HibernateUtil.updateCustomer(num, customername, contactno, bdate, customeraddress, customeremail, assignedtableno, assignedwaiterno);
				 HibernateUtil.commitTransaction();
				 HibernateUtil.destroysession();
		 		}
			 catch(Exception e)
			    {
			    	System.out.println("Error in Updatation");
			    }
		
			}
		 else if(btnCustomer.equals("Delete"))
			 {
			 try{
				 int num=Integer.parseInt(request.getParameter("a"));
				 HibernateUtil.deleteCustomer(num);
				 HibernateUtil.commitTransaction();
				 HibernateUtil.destroysession();
				 }
				 catch(Exception e)
				 {
					 System.out.println("Error in Deletion");	 
				 }
			 }
		
	}

}
