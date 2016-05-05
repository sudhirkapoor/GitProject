package com.musichub.service;


import com.musichub.dao.*;
import com.musichub.model.*;
import java.util.*;
public class ProductService {
	
	public List<Product> getProducts()
	{
		ProductDAO dao=new ProductDAO();
		List<Product> list=dao.getProductDetails();
		return list;
	}

}
