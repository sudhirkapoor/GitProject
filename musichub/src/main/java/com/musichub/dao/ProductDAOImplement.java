package com.musichub.dao;

import java.util.*;

import com.musichub.model.Product;

public interface ProductDAOImplement {
	public List<Product> getProductDetails();
	public void addProduct(Product p);
    public void updateProduct(Product p);
    
    public Product getProductById(int id);
    public void removeProduct(int id);
	

}
