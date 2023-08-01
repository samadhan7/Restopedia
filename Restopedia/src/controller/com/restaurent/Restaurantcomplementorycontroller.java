package controller.com.restaurent;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sessionconfiq.RestaurantUtil;

/**
 * Servlet implementation class Restaurantcomplementorycontroller
 */
@WebServlet("/Restaurantcomplementorycontroller")
public class Restaurantcomplementorycontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Restaurantcomplementorycontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String cname=request.getParameter("cname");
		String code=request.getParameter("code");
		
		String btncomplementory=request.getParameter("btncomplementory");
		
		
		RestaurantUtil.createsession();
				
				
				 if(btncomplementory.equals("Save"))
					{
				     try
					    {
				    	 RestaurantUtil.insertComplementory(code,cname);
					    	//System.out.println(name+address);
				    	 RestaurantUtil.commitTransaction();
				    	 RestaurantUtil.destroysession();
					    }
					    catch(Exception e)
					    {
					    	System.out.println("Error in Insertion");
					    }
				    // response.sendRedirect("Admin/adminpage/restaurant/restaurantmaintenance.jsp?id=4");
				
					}
				else if(btncomplementory.equals("Update"))
				 	{
					 try{
						 int num=Integer.parseInt(request.getParameter("id"));
						// System.out.println(price);
						 RestaurantUtil.updateComplementory(num,code,cname);
						 RestaurantUtil.commitTransaction();
						 RestaurantUtil.destroysession();
				 		}
					 catch(Exception e)
					    {
					    	System.out.println("Error in Updatation");
					    }
					// response.sendRedirect("Admin/adminpage/restaurant/restaurantmaintenance.jsp?id=4");
				
					}
				 else if(btncomplementory.equals("Delete"))
					 {
						 try{
							 int num=Integer.parseInt(request.getParameter("a"));
							 RestaurantUtil.deleteComplementory(num);
							 RestaurantUtil.commitTransaction();
							 RestaurantUtil.destroysession();
						 }
						 catch(Exception e)
						 {
							 System.out.println("Error in Deletion");	 
						 }
						// response.sendRedirect("Admin/adminpage/restaurant/restaurantmaintenance.jsp?id=4");
					 }
				
			}
		
	}

	
