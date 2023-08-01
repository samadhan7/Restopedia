package controller.com.restaurent;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sessionconfiq.RestaurantUtil;

/**
 * Servlet implementation class Restaurantuserfilecontroller
 */
@WebServlet("/Restaurantuserfilecontroller")
public class Restaurantuserfilecontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Restaurantuserfilecontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		
		String btnuserfile=request.getParameter("btnuserfile");
		
		
		RestaurantUtil.createsession();
				
				
				 if(btnuserfile.equals("Save"))
					{
				     try
					    {
				    	 RestaurantUtil.insertUserfile(uname,pass);
					    	//System.out.println(name+address);
				    	 RestaurantUtil.commitTransaction();
				    	 RestaurantUtil.destroysession();
					    }
					    catch(Exception e)
					    {
					    	System.out.println("Error in Insertion");
					    }
				     response.sendRedirect("Admin/adminpage/restaurant/restaurantmaintenance.jsp?id=2");
				
					}
				else if(btnuserfile.equals("Update"))
				 	{
					 try{
						 int num=Integer.parseInt(request.getParameter("id"));
						// System.out.println(price);
						 RestaurantUtil.updateUserfile(num,uname,pass);
						 RestaurantUtil.commitTransaction();
						 RestaurantUtil.destroysession();
				 		}
					 catch(Exception e)
					    {
					    	System.out.println("Error in Updatation");
					    }
					 response.sendRedirect("Admin/adminpage/restaurant/restaurantmaintenance.jsp?id=2");
				
					}
				 else if(btnuserfile.equals("Delete"))
					 {
						 try{
							 int num=Integer.parseInt(request.getParameter("a"));
							 RestaurantUtil.deleteUserfile(num);
							 RestaurantUtil.commitTransaction();
							 RestaurantUtil.destroysession();
						 }
						 catch(Exception e)
						 {
							 System.out.println("Error in Deletion");	 
						 }
						 response.sendRedirect("Admin/adminpage/restaurant/restaurantmaintenance.jsp?id=2");
					 }
				
			}
	}

