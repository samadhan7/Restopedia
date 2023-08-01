package com.restopedia;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Delivery_order {
    
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int deliveryid;
	String firstname;
	String lastname;
	String contact;
	String email;
	String address1;
	String address2;
	String capname;
	String OrderType;
	
	
	public String getOrderType() {
		return OrderType;
	}
	public void setOrderType(String OrderType) {
		this.OrderType = OrderType;
	}
	public int getDeliveryid() {
		return deliveryid;
	}
	public void setDeliveryid(int deliveryid) {
		this.deliveryid = deliveryid;
	}
	public String getCapname() {
		return capname;
	}
	public void setCapname(String capname) {
		this.capname = capname;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	
	
}
