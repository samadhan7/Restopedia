package com.restopedia;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class KotBillGen {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
int billno;
	
	int kotno;
	String tableno;
	String captain;
	float total;
	float tax;
	float gtotal;
	String date;
	String time;
	
	public int getBillno() {
		return billno;
	}
	public void setBillno(int billno) {
		this.billno = billno;
	}
	public int getKotno() {
		return kotno;
	}
	public void setKotno(int kotno) {
		this.kotno = kotno;
	}
	public String getTableno() {
		return tableno;
	}
	public void setTableno(String tableno) {
		this.tableno = tableno;
	}
	public String getCaptain() {
		return captain;
	}
	public void setCaptain(String captain) {
		this.captain = captain;
	}
	public float getTotal() {
		return total;
	}
	public void setTotal(float total) {
		this.total = total;
	}
	public float getTax() {
		return tax;
	}
	public void setTax(float tax) {
		this.tax = tax;
	}
	public float getGtotal() {
		return gtotal;
	}
	public void setGtotal(float gtotal) {
		this.gtotal = gtotal;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	

}
