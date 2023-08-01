package model.com.master;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

@Entity(name="Supplier")

public class Supplier {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)

private int Id;
private String sname;
private String email;
private String contact;
private String address;
private String details;
public int getId() {
	return Id;
}

public void setId(int id) {
	Id = id;
}
public String getSname() {
	return sname;
}
public void setSname(String sname) {
	this.sname = sname;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getContact() {
	return contact;
}
public void setContact(String contact) {
	this.contact = contact;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getDetails() {
	return details;
}
public void setDetails(String details) {
	this.details = details;
}


}
