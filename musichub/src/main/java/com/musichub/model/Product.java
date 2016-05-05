package com.musichub.model;

public class Product {
	int id,price;
	String name,brand,description,catagory;
	public int getid()
	{
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
		return id;
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
