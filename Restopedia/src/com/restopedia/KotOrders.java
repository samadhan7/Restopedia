package com.restopedia;



import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="kotorders")
public class KotOrders {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int kotid;
	String itemids;
	String itemqty;
	String tableno;
	String capname;
	int orderstatus;
	float amount;
	int deliveryid;
	
	
	
	public int getDeliveryid() {
		return deliveryid;
	}
	public void setDeliveryid(int deliveryid) {
		this.deliveryid = deliveryid;
	}
	public float getAmount() {
		return amount;
	}
	public void setAmount(float amount) {
		this.amount = amount;
	}
	public int getKotid() {
		return kotid;
	}
	public void setKotid(int kotid) {
		this.kotid = kotid;
	}
	public String getItemids() {
		return itemids;
	}
	public void setItemids(String itemids) {
		this.itemids = itemids;
	}
	public String getItemqty() {
		return itemqty;
	}
	public void setItemqty(String itemqty) {
		this.itemqty = itemqty;
	}
	public String getTableno() {
		return tableno;
	}
	public void setTableno(String tableno) {
		this.tableno = tableno;
	}
	public String getCapname() {
		return capname;
	}
	public void setCapname(String capname) {
		this.capname = capname;
	}
	public int getOrderstatus() {
		return orderstatus;
	}
	public void setOrderstatus(int orderstatus) {
		this.orderstatus = orderstatus;
	}
	
	
	
}
