package com.tranvanchien.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tranvanchien.model.Cart;
import com.tranvanchien.service.BannerService;
import com.tranvanchien.service.CartService;
import com.tranvanchien.service.CartServiceImpl;
import com.tranvanchien.service.CategoryService;
import com.tranvanchien.service.ProductService;

@Controller
public class CartController{
	
	@Autowired
	private CartService cartService;
	public void setCartService(CartService car) {
		this.cartService = car;
	}
	@Autowired
	private CategoryService categoryService;
	public void setCategoryService(CategoryService cat) {
		this.categoryService = cat;
	}
	
	@RequestMapping(value = "AddCart/{id}")
	public String AddCart(HttpServletRequest request ,HttpSession session, @PathVariable Integer id) {
		HashMap<Integer, Cart> cart = (HashMap<Integer, Cart>)session.getAttribute("Cart");
		if(cart == null) {
			cart = new HashMap<Integer, Cart>();
		}
		cart = cartService.AddCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantyCart", cartService.TotalQuanty(cart));
		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
//		return "redirect:/{id}"+id;
		return "redirect:"+request.getHeader("Referer");
		
	}
	
	@RequestMapping(value = "EditCart/{id}/{quanty}")
	public String EditCart(HttpServletRequest request ,HttpSession session, @PathVariable Integer id, @PathVariable int quanty) {
		HashMap<Integer, Cart> cart = (HashMap<Integer, Cart>)session.getAttribute("Cart");
		if(cart == null) {
			cart = new HashMap<Integer, Cart>();
		}
		
		 cart = cartService.EditCart(id, quanty, cart) ;
				 session.setAttribute("Cart",cart); 
				 session.setAttribute("TotalQuantyCart",cartService.TotalQuanty(cart)); 
				 session.setAttribute("TotalPriceCart",cartService.TotalPrice(cart));
	
//		return "redirect:/{id}"+id;
		return "redirect:"+request.getHeader("Referer");
		
	}
	
	@RequestMapping(value = "DeleteCart/{id}")
	public String DeleteCart(HttpServletRequest request ,HttpSession session, @PathVariable Integer id) {
		HashMap<Integer, Cart> cart = (HashMap<Integer, Cart>)session.getAttribute("Cart");
		if(cart == null) {
			cart = new HashMap<Integer, Cart>();
		}
		cart = cartService.DeleteCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantyCart", cartService.TotalQuanty(cart));
		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
		return "redirect:"+request.getHeader("Referer");
	}
	
	@RequestMapping(value = "gio-hang")
	public ModelAndView indexPage() {
		
		return new ModelAndView("cart/cart");
}

}
