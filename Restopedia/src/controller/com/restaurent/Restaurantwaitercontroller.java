package controller.com.restaurent;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sessionconfiq.RestaurantUtil;

/**
 * Servlet implementation class Restaurantwaitercontroller
 */
@WebServlet("/Restaurantwaitercontroller")
public class Restaurantwaitercontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Restaurantwaitercontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String waiterid=request.getParameter("waiterid");
	    String wname=request.getParameter("wname");
	    String tabletype=request.getParameter("tabletype");
	    String tableno=request.getParameter("tableno");
	    
	     
		String btnwaiter=request.getParameter("btnwaiter");
		
		
		RestaurantUtil.createsession();
		

		 if(btnwaiter.equals("Save"))
			{
		     try
			    {
		    	 RestaurantUtil.insertWaiter(waiterid, wname, tabletype, tableno);
		    	 RestaurantUtil.commitTransaction();
		    	 RestaurantUtil.destroysession();
			    }
			    catch(Exception e)
			    {
			    	System.out.println("Error in Insertion");
			    }
		
			}
		else if(btnwaiter.equals("Update"))
		 	{
			 try{
				 int num=Integer.parseInt(request.getParameter("id"));
				 RestaurantUtil.updateWaiter(num, waiterid, wname, tabletype, tableno);
				 RestaurantUtil.commitTransaction();
				 RestaurantUtil.destroysession();
		 		}
			 catch(Exception e)
			    {
			    	System.out.println("Error in Updatation");
			    }
		
			}
		 else if(btnwaiter.equals("Delete"))
			 {
			 try{
				 int num=Integer.parseInt(request.getParameter("a"));
				 RestaurantUtil.deleteWaiter(num);
				 RestaurantUtil.commitTransaction();
				 RestaurantUtil.destroysession();
				 }
				 catch(Exception e)
				 {
					 System.out.println("Error in Deletion");	 
				 }
			 }
		
	}
	}


