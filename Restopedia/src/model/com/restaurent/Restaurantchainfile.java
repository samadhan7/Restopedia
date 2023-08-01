package model.com.restaurent;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;
import javax.persistence.Id;

@Entity
@Table(name="Chainfile")
public class Restaurantchainfile {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	
	private int Id;
	private String restaurantname;
	private String date;
	private String address;
	private String city;
	private String salestax;
	private String expendituretax;
	private String servicecharge;
	private String backup;
	
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getRestaurantname() {
		return restaurantname;
	}
	public void setRestaurantname(String restaurantname) {
		this.restaurantname = restaurantname;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getSalestax() {
		return salestax;
	}
	public void setSalestax(String salestax) {
		this.salestax = salestax;
	}
	public String getExpendituretax() {
		return expendituretax;
	}
	public void setExpendituretax(String expendituretax) {
		this.expendituretax = expendituretax;
	}
	public String getServicecharge() {
		return servicecharge;
	}
	public void setServicecharge(String servicecharge) {
		this.servicecharge = servicecharge;
	}
	public String getBackup() {
		return backup;
	}
	public void setBackup(String backup) {
		this.backup = backup;
	}

}
