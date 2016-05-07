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
		List<Product> list=dao.getProductDetails();
		System.out.println("list call in service end");		
		return list;
	}
	
	public void addProduct(Product p)
	{
		dao.addProduct(p);
	}
	public void updateProduct(Product p)
	{
		dao.updateProduct(p);
	}
	public void removeProduct(int id)
	{
		dao.removeProduct(id);
	}
	public Product getProductByID(int id) {
		System.out.println("in service edit"+id);
        return dao.getProductById(id);
    }
	

}
