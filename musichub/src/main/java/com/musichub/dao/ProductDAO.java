package com.musichub.dao;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

import com.musichub.model.Product;
@Repository("dao")
public class ProductDAO implements ProductDAOImplement {

	public List<Product> getProductDetails() {
		Product p1 = new Product();
		p1.setid(1);
		p1.setname("Guitar");
		p1.setbrand("Gibson");
		p1.setprice(25000);
		p1.setcatagory("Guitar");
		p1.setdescription("Gibson Guitar");

		
		Product p2 = new Product();
		p2.setid(2);
		p2.setname("Piano");
		p2.setbrand("Rock Start");
		p2.setprice(125000);
		p2.setcatagory("Piano");
		p2.setdescription("Rock Star Piano");
		
		Product p3 = new Product();
		p3.setid(3);
		p3.setname("Electric Guitar");
		p3.setbrand("Gibson");
		p3.setprice(45000);
		p3.setcatagory("Guitar");
		p3.setdescription("Gibson electric Guitar");
		
		Product p4 = new Product();
		p4.setid(4);
		p4.setname("Flute");
		p4.setbrand("Strings");
		p4.setprice(2000);
		p4.setcatagory("Flute");
		p4.setdescription("Strings Flute");
		List<Product> list=new ArrayList<Product>();
		list.add(p1);
		list.add(p2);
		list.add(p3);
		list.add(p4);
		return list;
	}

}
