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
import model.com.inventory.StockEntry;
import sessionconfiq.HibernateUtil;
import sessionconfiq.InventoryUtil;

/**
 * Servlet implementation class StockController
 */
@WebServlet("/StockController")
public class StockController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StockController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String date=request.getParameter("date");
		String name=request.getParameter("name");
		String category=request.getParameter("cat");
		String price=request.getParameter("price");
		String quantity=request.getParameter("quantity");
		String address=request.getParameter("address");
		String contactno=request.getParameter("contactno");

		
	//System.out.println(price);
		
String btnStock=request.getParameter("btnStock");
		
		
InventoryUtil.createsession();
		
		
		 if(btnStock.equals("Save"))
			{
		     try
			    {
		    	 InventoryUtil.insertStock(date, name, category, price, quantity, address, contactno);
			    	//System.out.println(name+address);
		    	 InventoryUtil.commitTransaction();
		    	 InventoryUtil.destroysession();
			    }
			    catch(Exception e)
			    {
			    	System.out.println("Error in Insertion");
			    }
		     response.sendRedirect("Admin/adminpage/inventory/stockentry.jsp?id=2");
		
			}
		else if(btnStock.equals("Update"))
		 	{
			 try{
				 int num=Integer.parseInt(request.getParameter("id"));
				// System.out.println(price);
				 InventoryUtil.updateStock(num, name, category, price, quantity, address, contactno);
				 InventoryUtil.commitTransaction();
				 InventoryUtil.destroysession();
		 		}
			 catch(Exception e)
			    {
			    	System.out.println("Error in Updatation");
			    }
			  response.sendRedirect("Admin/adminpage/inventory/stockentry.jsp?id=2");
		
			}
		 else if(btnStock.equals("Delete"))
			 {
				 try{
					 int num=Integer.parseInt(request.getParameter("a"));
					 InventoryUtil.deleteStock(num);
					 InventoryUtil.commitTransaction();
					 InventoryUtil.destroysession();
				 }
				 catch(Exception e)
				 {
					 System.out.println("Error in Deletion");	 
				 }
				  response.sendRedirect("Admin/adminpage/inventory/stockentry.jsp?id=2");
			 }
		
	}

}
