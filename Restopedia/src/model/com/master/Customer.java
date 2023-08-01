package model.com.master;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;
import javax.persistence.Id;

@Entity
@Table(name="Customer")

public class Customer {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)

    private int Id;
    private String customername;
    private String contactno;
    private String bdate;
    private String customeraddress;
    private String customeremail;
    private String assignedtableno;
    private String assignedwaiterno;
    
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getCustomername() {
		return customername;
	}
	public void setCustomername(String customername) {
		this.customername = customername;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	public String getCustomeraddress() {
		return customeraddress;
	}
	public void setCustomeraddress(String customeraddress) {
		this.customeraddress = customeraddress;
	}
	public String getCustomeremail() {
		return customeremail;
	}
	public void setCustomeremail(String customeremail) {
		this.customeremail = customeremail;
	}
	public String getAssignedtableno() {
		return assignedtableno;
	}
	public void setAssignedtableno(String assignedtableno) {
		this.assignedtableno = assignedtableno;
	}
	public String getAssignedwaiterno() {
		return assignedwaiterno;
	}
	public void setAssignedwaiterno(String assignedwaiterno) {
		this.assignedwaiterno = assignedwaiterno;
	}
    
    
	
}
