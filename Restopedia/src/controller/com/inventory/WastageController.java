package controller.com.inventory;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import model.com.inventory.Wastage;
import sessionconfiq.InventoryUtil;


@WebServlet("/WastageController")
public class WastageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public WastageController() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String date=request.getParameter("date");
		String name=request.getParameter("name");
		String price=request.getParameter("price");
		String reason=request.getParameter("reason");
		String quantity=request.getParameter("quantity");
		
		//System.out.println(quantity);
        String btnWastage=request.getParameter("btnWastage");
		System.out.println(btnWastage);
		
		InventoryUtil.createsession();
		
		
		 if(btnWastage.equals("Save"))
			{
		     try
			    {
		    	 InventoryUtil.insertWastage(date, name, price, reason, quantity);
		    	 InventoryUtil.commitTransaction();
		    	 InventoryUtil.destroysession();
			    }
			    catch(Exception e)
			    {
			    	System.out.println("Error in Insertion");
			    }
		     response.sendRedirect("Admin/adminpage/inventory/wastage.jsp?id=2");
			}
		else if(btnWastage.equals("Update"))
		 	{
			 try{
				 int num=Integer.parseInt(request.getParameter("id"));
				 InventoryUtil.updateWastage(num, name, price, reason, quantity);
				 InventoryUtil.commitTransaction();
				 InventoryUtil.destroysession();
		 		}
			 catch(Exception e)
			    {
			    	System.out.println("Error in Updatation");
			    }
			 response.sendRedirect("Admin/adminpage/inventory/wastage.jsp?id=2");
			}
		 else if(btnWastage.equals("Delete"))
			 {
				 try{
					 int num=Integer.parseInt(request.getParameter("a"));
					 InventoryUtil.deleteWastage(num);
					 InventoryUtil.commitTransaction();
					 InventoryUtil.destroysession();
				 }
				 catch(Exception e)
				 {
					 System.out.println("Error in Deletion");	 
				 }
				 response.sendRedirect("Admin/adminpage/inventory/wastage.jsp?id=2");
			 }
		
	}

}
