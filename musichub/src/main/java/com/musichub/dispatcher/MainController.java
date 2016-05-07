package com.musichub.dispatcher;
import java.util.*;
import javax.servlet.http.*;

import org.springframework.web.method.support.ModelAndViewContainer;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.*;
import com.google.gson.Gson;
import com.musichub.model.Product;
import com.musichub.service.*;

@Controller
public class MainController {
	
	@RequestMapping("/")
	public ModelAndView Index()
	{
		System.out.println("In Controller");
		ModelAndView mv=new ModelAndView("index");
		mv.addObject("msg","Welcome");
		return mv;	
	}

@RequestMapping("/index")
public ModelAndView Index1()
{
	//System.out.println("In Controller");
	ModelAndView mv=new ModelAndView("index");
	mv.addObject("msg","Welcome");
	return mv;	
}

@RequestMapping("/Login")
public ModelAndView Login_Method()
{
	ModelAndView mv=new ModelAndView("Login");
	mv.addObject("msg","Login");
	return mv;
}

@RequestMapping("/Register")
public ModelAndView Register_Method()
{
	ModelAndView mv=new ModelAndView("Register");
	mv.addObject("msg","Register method is called");
	return mv;
}


@RequestMapping("/Product/{pname}")
public ModelAndView Product_Method2(@PathVariable("pname") String Prodname)
{
	
	List<Product> filteredlist=new ArrayList<Product>();
	//ProductService service=new ProductService();
	List<Product> list=service.getProducts();
	
	Iterator<Product> i=list.iterator();
	while(i.hasNext())
	{
		Product p=(Product)i.next();
		if(p.getcatagory().equals(Prodname))
		{
			filteredlist.add(p);
		}
		
	}
		
	
	String json = new Gson().toJson(filteredlist );
	
	
	ModelAndView mv=new ModelAndView("Product");
	mv.addObject("data1",json);
	
	return mv;
}
@Autowired(required=true)
@Qualifier(value="service")
ProductService service;

public void setService(ProductService service) {
	this.service = service;
}
/*
@Autowired
	public MainController(ProductService service) {
		this.service = service;
	}*/

@RequestMapping("/Product")
public ModelAndView Product_Method()
{
	 //service=new ProductService();
	System.out.println("service call start in front controller");
	List<Product> list=service.getProducts();
	System.out.println("service call end in front controller");
String json = new Gson().toJson(list );
System.out.print("Data from controller");
System.out.println(json);
	ModelAndView mv=new ModelAndView("Product");
	mv.addObject("data1",json);
	
	return mv;
}



@RequestMapping("/Aboutus")
public ModelAndView About_Method()
{
	ModelAndView mv=new ModelAndView("AboutUs");
	mv.addObject("msg","Register");
	return mv;
}

@RequestMapping(value="/ProductDetails")
public ModelAndView ProductDetails_Method(@ModelAttribute ("product") Product product)
{
	ModelAndView mvc=new ModelAndView("ProductDetails");
	
	return mvc;
}

}
