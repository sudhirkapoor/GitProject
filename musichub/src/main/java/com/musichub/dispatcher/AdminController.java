package com.musichub.dispatcher;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.*;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.musichub.model.Product;
import com.musichub.service.ProductService;

@Controller
public class AdminController {
	
	@Autowired(required=true)
	@Qualifier(value="service")
	ProductService service;

	public void setService(ProductService service) {
		this.service = service;
	}
	/*@RequestMapping("/Admin")
	public ModelAndView Product_Method()
	{
		 //service=new ProductService();
		System.out.println("service call start in front controller");
		System.out.println("service call end in front controller");
	String json = new Gson().toJson(list );
	System.out.print("Data from controller");
	System.out.println(json);
		ModelAndView mv=new ModelAndView("Admin");
		mv.addObject("data1",json);
		
		return mv;
	}*/
	
	
	 @RequestMapping(value = "/Admin")
	    public String listProduct(Model model) {
	        model.addAttribute("product", new Product());
	        System.out.print("hi");
	      model.addAttribute("listProduct", this.service.getProducts());
	      return "Admin";
	    }

	 @RequestMapping(value= "/Admin/addProduct")
	    public String addProduct(@ModelAttribute("product") Product product){
	         System.out.println("Main chal raha hun");
	        if(product.getid() == 0){
	            //new person, add it
	            this.service.addProduct(product);
	        }else{
	            //existing person, call update
	            this.service.updateProduct(product);
	        }
	         
	        return "redirect:/Admin";
	         
	    }
	 @RequestMapping("/Admin/deleteProduct/{id}")
	    public String removeProduct(@PathVariable("id") int id){
	         
	        this.service.removeProduct(id);
	        return "redirect:/Admin";
	    }
	 
	 @RequestMapping("/Admin/editProduct/{id}")
	    public String editProduct(@PathVariable("id") int id, Model model){
		 System.out.println("in controller edit"+id);
	        model.addAttribute("product",service.getProductByID(id));
	        model.addAttribute("listProduct", service.getProducts());
	        return "Admin";
	    }

}
