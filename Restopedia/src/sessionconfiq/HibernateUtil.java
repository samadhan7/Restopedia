package sessionconfiq;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;



import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.restopedia.MenuCategory;
import com.restopedia.MenuItem;
import com.restopedia.TableDesc;
import com.restopedia.Tablecontent;


import model.com.master.Customer;
import model.com.master.Department;
import model.com.master.Purchase;

import com.restopedia.*;


import model.com.master.Restaurant;
import model.com.master.Supplier;





public class HibernateUtil {
	
	static org.hibernate.Session session1;
	static Transaction transaction ;
	
	public static void createsession() {
		session1 = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory()
				.openSession();
		transaction= session1.beginTransaction();
	}
	
	
	public static Iterator GetDetail(String q) {
		Query query = session1.createQuery(q);
		Iterator it = query.iterate();

		return it;
	}
	
    public static void commitTransaction() {
		
		session1.getTransaction().commit();
	}
	
	
	public static void destroysession() {
		session1.close();
	}
	
	//Customer CRUD Operation
	
	public static void insertCustomer(String customername,String contactno, String bdate, String customeraddress, String customeremail, String assignedtableno, String assignedwaiterno) {
		
		Customer c=new Customer();
    	c.setCustomername(customername);
    	c.setContactno(contactno);
    	c.setBdate(bdate);
    	c.setCustomeraddress(customeraddress);
    	c.setCustomeremail(customeremail);
    	c.setAssignedtableno(assignedtableno);
    	c.setAssignedwaiterno(assignedwaiterno);
    	session1.save(c);
	}
	
   public static void updateCustomer(int num,String customername,String contactno, String bdate, String customeraddress, String customeremail, String assignedtableno, String assignedwaiterno) {
		
	 Customer c=session1.get(Customer.class,num);
    	c.setCustomername(customername);
    	c.setContactno(contactno);
    	c.setBdate(bdate);
    	c.setCustomeraddress(customeraddress);
    	c.setCustomeremail(customeremail);
    	c.setAssignedtableno(assignedtableno);
    	c.setAssignedwaiterno(assignedwaiterno);
    	session1.save(c);
	}
   
   public static void deleteCustomer(int num){
	   
	   Customer c=session1.get(Customer.class,num);
	   session1.delete(c);
   }
	
	
	// Table Section Start
	// method to insert table category

	public static void insertTableCategory(String category, int nooftable) {

		Tablecontent tc = new Tablecontent();
		tc.setCategory(category);
		tc.setNo_table(nooftable);

		session1.save(tc);
	}

	public static Iterator<Tablecontent> getTableCategory() {

		Tablecontent tc = new Tablecontent();
		Query query = session1.createQuery("FROM Tablecontent");
		Iterator<Tablecontent> it = query.iterate();
		return it;
	}

	public static Iterator<Tablecontent> getTableCategorybyid(int id) {

		Tablecontent tc = new Tablecontent();
		Query query = session1.createQuery("FROM Tablecontent WHERE id="+id);
		Iterator<Tablecontent> it = query.iterate();
		return it;
	}
	
	
	public static void deleteTableCategory(int num){
		   
		Tablecontent t=(Tablecontent)session1.get(Tablecontent.class,num);
		deleteTableByCategory(num);
		   session1.delete(t);
	   }
	
	public static void deleteTableByCategory(int id){
		
		Query q = session1.createQuery("delete TableDesc where table_type = :X");
		q.setParameter("X", id);
		q.executeUpdate();
		   
	   }
	
	
	public static void insertTable(int catid, String tablealias) {

		TableDesc td = new TableDesc();
		td.setTable_name(tablealias);
		td.setTable_type(catid);

		session1.save(td);
	}

	
	public static void updateTable(int num, String tablealias, int catid) {

		TableDesc td = (TableDesc) session1.get(TableDesc.class, num);
		
		td.setTable_name(tablealias);
		td.setTable_type(catid);
		session1.save(td);
	}
	
	
	
	public static Iterator<TableDesc> getTable() {

		TableDesc tc = new TableDesc();
		Query query = session1.createQuery("FROM TableDesc");
	
		Iterator<TableDesc> it = query.iterate();
		return it;
	}
	
	
	 public static void deleteTable(int num){
		   
		 TableDesc t=(TableDesc)session1.get(TableDesc.class,num);
		   session1.delete(t);
	   }
	
	
	
	
	
	
 //Department CRUD Operation
   
   public static void insertDepartment(String departmentnumber, String departmentname, String noofemployee, String description) {
	   
	    Department d=new Department();
		d.setDepartmentnumber(departmentnumber);
		d.setDepartmentname(departmentname);
		d.setNoofemployee(noofemployee);
		d.setDescription(description);
		session1.save(d);
   }
   
   public static void updateDepartment(int num,String departmentnumber, String departmentname, String noofemployee, String description) {
	   
	    Department d=session1.get(Department.class, num);
		d.setDepartmentnumber(departmentnumber);
		d.setDepartmentname(departmentname);
		d.setNoofemployee(noofemployee);
		d.setDescription(description);
		session1.save(d);
  }
   
   public static void deleteDepartment(int num){
	   
	   Department d=session1.get(Department.class,num);
	   session1.delete(d);
   }
   
   
 //Employee CRUD Operation
   
   public static void insertEmployee(String name,String email,String contact,String address,String designation){
	   
	   Employee e=new Employee();
		e.setName(name);
		e.setEmail(email);
		e.setContact(contact);
		e.setAddress(address);
		e.setDesignation(designation);
		session1.save(e);
   }
   
	 public static void updateEmployee(int num, String name,String email,String contact,String address,String designation){
	  
	   Employee e=session1.get(Employee.class, num);
	   e.setName(name);
		e.setEmail(email);
		e.setContact(contact);
		e.setAddress(address);
		e.setDesignation(designation);
		session1.save(e);
   }
	   
	 public static void deleteEmployee(int num){
		   
	   Employee e=session1.get(Employee.class,num);
	   session1.delete(e);
	 }
	 
	 
	//Item CRUD Operation 
	 
	 public static void insertItem(String itemname, int catid, float price){
		 
		MenuItem i=new MenuItem();
		i.setItemname(itemname);
		i.setCatid(catid);
		i.setItemprice(price);
		session1.save(i);
	 } 
	 
	 public static void updateItem(int num, String itemname, int catid, float price ){
		 
		 MenuItem i=session1.get(MenuItem.class,num);
		i.setItemname(itemname);
		i.setCatid(catid);
		i.setItemprice(price);
		session1.save(i);
	 } 
	 
	 
	 
	 public static void deleteItem(int num){
		   
		 MenuItem i=session1.get(MenuItem.class,num);
	   session1.delete(i);
	 }
	 
	 
	 public static void deleteItemCategory(int num){
		   
		 MenuCategory t=(MenuCategory)session1.get(MenuCategory.class,num);
			deleteItemMenuByCategory(num);
			   session1.delete(t);
		   }
	 
	 public static void deleteItemMenuByCategory(int id){
			
			Query q = session1.createQuery("delete MenuItem where catid = :X");
			q.setParameter("X", id);
			q.executeUpdate();
			   
		   }
	 
	 
	 
	// method to insert Item Menu category

		public static void insertMenuCategory(String category) {

			MenuCategory mc = new MenuCategory();
			mc.setCategoryname(category);
		session1.save(mc);
		}
	 
		
		public static Iterator<MenuCategory> getMenuCategory() {

				Query query = session1.createQuery("FROM MenuCategory");
				Iterator<MenuCategory> mc = query.iterate();
				return mc;
			}
		 
		 
		public static Iterator<MenuCategory> getMenuCategorybyid(int id) {

			
			Query query = session1.createQuery("FROM MenuCategory WHERE id="+id);
			Iterator<MenuCategory> it = query.iterate();
			return it;
		}	
		
		
	//Supplier CRUD Operation 
	 
	 public static void insertSupplier(String sname, String email, String contact, String address,String details){
		 
		 Supplier s=new Supplier();
	     s.setSname(sname);
	     s.setEmail(email);
	     s.setContact(contact);
	     s.setAddress(address);
	     s.setDetails(details);
		session1.save(s);
	 }
	 
	 
	 public static void updateSupplier(int num, String sname, String email, String contact, String address,String details){
		 
		 Supplier s=(Supplier)session1.get(Supplier.class,num);
	     s.setSname(sname);
	     s.setEmail(email);
	     s.setContact(contact);
	     s.setAddress(address);
	     s.setDetails(details);
		session1.save(s);
	 }
	 
	 public static void deleteSupplier(int num){
		   
		 Supplier s=(Supplier)session1.get(Supplier.class,num);
		   session1.delete(s);
		 }
	 
	 
	 
	 public static Iterator<Supplier> getSupplierName() {

			Query query = session1.createQuery("FROM Supplier");
			Iterator<Supplier> s = query.iterate();
			return s;
		}
	 
	 public static Iterator<Supplier> getSupplierNamebyid(int id) {

			Query query = session1.createQuery("FROM Supplier WHERE id="+id);
			Iterator<Supplier> it = query.iterate();
			return it;
		}	
	 
	//Restaurant CRUD Operation 
	 
	 public static void insertRestaurant(String restaurantname, String restaurantaddress, String ownername, String ownercontactno, String owneremail, String owneraddress, String details){
		 
		 Restaurant r= new Restaurant();
		 r.setRestaurantname(restaurantname);
		 r.setRestaurantname(restaurantname);
		 r.setOwnername(ownername);
		 r.setOwnercontactno(ownercontactno);
		 r.setOwneremail(owneremail);
		 r.setOwneraddress(owneraddress);
		 r.setDetails(details);
		 session1.save(r);
	 }
	 
	 public static void updateRestaurant(int num, String restaurantname, String restaurantaddress, String ownername, String ownercontactno, String owneremail, String owneraddress, String details){
		
		 Restaurant r=(Restaurant)session1.get(Restaurant.class,num);
		 r.setRestaurantname(restaurantname);
		 r.setRestaurantname(restaurantname);
		 r.setOwnername(ownername);
		 r.setOwnercontactno(ownercontactno);
		 r.setOwneremail(owneremail);
		 r.setOwneraddress(owneraddress);
		 r.setDetails(details);
		 session1.save(r);
	 }
	 
	 public static void deleteRestaurant(int num){
		   
		 Restaurant r=(Restaurant)session1.get(Restaurant.class,num);
		   session1.delete(r);
		 }
	 
	 public static Iterator<Restaurant> getRestaurant(){
	
		 Restaurant r= new Restaurant();
		 Query query = session1.createQuery("FROM Restaurant");
		 Iterator<Restaurant> it=query.iterate();
		 return it;
	 }
	 
	 
	 //Purchase CRUD Operation
	 
	 public static void insertPurchase(String suppliername, String date, String invoice, String grandTotal, String item, String quantity, String rate){
		 
		 Purchase p= new Purchase();
		 p.setSuppliername(suppliername);
		 p.setDate(date);
		 p.setInvoice(invoice);
		 p.setGrandTotal(grandTotal);
		 p.setItem(item);
		 p.setQuantity(quantity);
		 p.setRate(rate);
		 session1.save(p);
		 
	 }
	 
	 public static Iterator<Purchase> getPurchase(){
		
		 Query query = session1.createQuery("FROM Purchase");
		 Iterator<Purchase> its=query.iterate();
		 return its;
	 }
	 
	 
	 //BILL 
	 
public static void insertBill(int kotno, String tableno, String captain, float total,float tax,float gtotal, String date,String time){
		 
	KotBillGen kb = new KotBillGen();
	kb.setKotno(kotno);
	kb.setTableno(tableno);
	kb.setCaptain(captain);
	kb.setTotal(total);
	kb.setTax(tax);
	kb.setGtotal(gtotal);
	kb.setDate(date);
	kb.setTime(time);
		 session1.save(kb);
		 
	 }
	 
public static Iterator<KotBillGen> getBillRecord(){
	
	 Query query = session1.createQuery("FROM KotBillGen");
	 Iterator<KotBillGen> its=query.iterate();
	 return its;
}
	


}
