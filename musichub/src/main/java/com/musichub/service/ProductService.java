package com.musichub.service;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.Service;

import com.musichub.dao.*;
import com.musichub.model.*;
import java.util.*;
@Service("service")
public class ProductService {
	@Autowired
	ProductDAO dao;
	public List<Product> getProducts()
	{
		 dao=new ProductDAO();
		List<Product> list=dao.getProductDetails();
		return list;
	}

}
