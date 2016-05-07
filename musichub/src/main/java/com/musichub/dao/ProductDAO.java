package com.musichub.dao;
import org.springframework.beans.factory.annotation.*;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session; 
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.hql.internal.ast.util.SyntheticAndFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.musichub.model.Product;
@Repository

public class ProductDAO implements ProductDAOImplement {

	
	
	  
	 private SessionFactory sessionFactory; 
	 
	 
	 public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Autowired
	 public ProductDAO(SessionFactory sessionFactory)
	 {
		 this.sessionFactory=sessionFactory;
	 }
	  
	
	 /* public void AddRecords() {
	      

	     // Add few product records in database 
	      Integer ID1 =this.addProduct(1,"Guitar", "Gibson","Gibson Guitar",25000,"Guitar" );
	      Integer ID2 = this.addProduct(2,"Piano", "Rock Star","Rock Star Piano",125000,"Piano" );
	      Integer ID3 = this.addProduct(3,"Electric Guitar", "Gibson","Gibson Electric Guitar",35000,"Guitar" );
	      Integer ID4 = this.addProduct(4,"Flute", "Bach","Bach Flute",2000,"Flute" );
	       //List down all the employees 
	      //this.listProducts();
	      System.out.println(ID1);
	      System.out.println(ID2);
	      System.out.println(ID3);
	      System.out.println(ID4);

	    
	   }*/
	    //Method to CREATE an product in the database 
	   public Integer addProduct(int pid,String name, String brand, String description,int price,String catagory){
		   System.out.println("hi");
		   Session session = sessionFactory.getCurrentSession();
			// TODO Auto-generated method stub
			Product p=new Product();
			p.setid(pid);
			p.setname(name);
			p.setbrand(brand);
			p.setprice(price);
			p.setdescription(description);
			p.setcatagory(catagory);
			
		
		    int i=(Integer)session.save(p);
		 
		    return i;

	   }
	   
//	    Method to  READ all the Products 
	public List<Product> getProductDetails(){
		System.out.println("hi");
		Session session = sessionFactory.getCurrentSession();
		System.out.println("Befor get trans");
		System.out.println("Befor get trans");
		Query query=session.createQuery("from Product");
		System.out.println("retriving start");
		List<Product> productlist=query.list();
		System.out.println("retriving end");
		System.out.println("commit call");
		System.out.println("commit end");
		System.out.println("session end");
		return productlist;
		
	   }
	
	
	
}
