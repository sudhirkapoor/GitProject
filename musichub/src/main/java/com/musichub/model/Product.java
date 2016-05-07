package com.musichub.model;
import java.io.Serializable;

import javax.persistence.*;

import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
@Entity
@Table(name = "Product")
//@Transactional(isolation=Isolation.SERIALIZABLE)
public class Product implements Serializable {
	 @Id @GeneratedValue(strategy= GenerationType.IDENTITY)
	   @Column(name = "id")
private	int id;
	 
	 @Column(name = "name")
	String name;
	 @Column(name = "brand")
	String brand;
	 @Column(name = "description")
	String description;
	 @Column(name = "price")
		int price;
	 @Column(name = "catagory")
	String catagory;
	 
	 public Product()
	 {
		 
	 }
	 
	public int getid()
	{
		System.out.println("inside getid() method");
		return id;
	}
	public void setid(int id)
	{
		this.id=id;
	}

	public String getname()
	{
		return name;
	}
	public void setname(String name)
	{
		this.name=name;
	}
	public String getbrand()
	{
		return brand;
	}
	public void setbrand(String brand)
	{
		this.brand=brand;
	}
	public String getdescription()
	{
		return description;
	}
	public void setdescription(String description)
	{
		this.description=description;
	}
	public void setprice(int price)
	{
		this.price=price;
	}
	public int getprice()
	{
		return this.price;
	}
	
	public String getcatagory()
	{
		return catagory;
	}
	public void setcatagory(String catagory)
	{
		this.catagory=catagory;
	}
}
