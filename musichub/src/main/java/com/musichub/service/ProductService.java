package com.musichub.service;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.gson.Gson;
import com.musichub.dao.*;
import com.musichub.model.*;
import java.util.*;
@Service
@Qualifier("service")
@Transactional
public class ProductService {
	
	com.musichub.dao.ProductDAO dao;
	
	public void setDao(com.musichub.dao.ProductDAO dao) {
		this.dao = dao;
	}
	
	@Autowired
	public ProductService(com.musichub.dao.ProductDAO dao)
	{
		this.dao=dao;
	}
	/*@Autowired
	public ProductService()
	{
		
	}*/
	
	public List<Product> getProducts()
	{
		System.out.println("Inside Service");
		 //dao=new ProductDAO();
		//int a=dao.addProduct(1, "Guitar", "Gibson", "Gibson Guitar", 25000, "Guitar");
		/*int b=dao.addProduct(2, "Flute", "Rock Star", "Rock Star Flute", 2000, "Flute");
		int c=dao.addProduct(3, "Electric Guitar", "Gibson", "Gibson Electric Guitar", 45000, "Guitar");
		int d=dao.addProduct(4, "Piani", "Gibson", "Gibson Piano", 125000, "Piano");*/
		System.out.println("list call start");
		List<Product> list=dao.getProductDetails();
		System.out.println("list call in service end");
/*		String json = new Gson().toJson(list );
		System.out.println(json)*/
		
		return list;
	}

}
