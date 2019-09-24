package Controller;
import java.io.FileOutputStream;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;


import ecommerce.com.model1.SupplierDAO;
import ecommerce.com.model.Supplier;
@Controller

public class SupplierController {
	
	@Autowired
	SupplierDAO supplierDAO;
	@ModelAttribute("addsupplier")
	public Supplier getSupplier()
	{
		return new Supplier();
	}
	@RequestMapping("/Supplierdetail")
	public String getProductDetails(Model model,HttpServletRequest request)
	{
		
		java.util.List<Supplier> supplierlist=supplierDAO.getAllSuppliers();
		model.addAttribute("supplierlist",supplierlist);
		String id=request.getParameter("id");
		if(id!=null)
			
		{
			int pid=Integer.parseInt(id);
			Supplier p=supplierDAO.findSupplier(pid);
           model.addAttribute("currsupplier",p);   
           return "editsupplier";
           
		}
		 
		 return "Supplierdetail";
	}
	@RequestMapping(value="addsupplier",method=RequestMethod.POST)
	public String addSupplier(Supplier supplier)
	{
		supplierDAO.addSupplier(supplier);
	
				
		
		return "redirect:Supplierdetail";	
	}
	@RequestMapping(value="updatesupplier",method=RequestMethod.POST)
	public String updateSupplier(Supplier supplier)
	{
		int id=supplier.getId();
	   Supplier p=supplierDAO.findSupplier(id);
	   p.setSupplierName(supplier.getSupplierName());
	   p.setAddress(supplier.getAddress());
	  

   
	   supplierDAO.updateSupplier(p);
	return "redirect:Supplierdetail";	
				
	}
 @RequestMapping("/deletesupplier")
 public String deletesupplier(HttpServletRequest request)
 {
	 int id=Integer.parseInt(request.getParameter("id"));
    Supplier pr=supplierDAO.findSupplier(id);
    supplierDAO.deleteSupplier(pr);
    return "redirect:Supplierdetail";
 }
}


	


