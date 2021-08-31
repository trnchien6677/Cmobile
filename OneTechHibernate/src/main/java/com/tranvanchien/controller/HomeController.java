package com.tranvanchien.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tranvanchien.model.Banner;
import com.tranvanchien.model.Category;
import com.tranvanchien.model.Menu;
import com.tranvanchien.model.Product;
import com.tranvanchien.model.Users;
import com.tranvanchien.model.News;
import com.tranvanchien.service.BannerService;
import com.tranvanchien.service.CategoryService;
import com.tranvanchien.service.MenuService;
import com.tranvanchien.service.NewsService;
import com.tranvanchien.service.ProductService;
import com.tranvanchien.service.UsersService;

@Controller
public class HomeController {
	@Autowired
	private CategoryService categoryService;

	@Autowired(required = true)
	@Qualifier(value = "categoryService")
	public void setCategoryService(CategoryService ps) {
		this.categoryService = ps;
	}

	private MenuService menuService;

	@Autowired(required = true)
	@Qualifier(value = "menuService")
	public void setMenuService(MenuService ps) {
		this.menuService = ps;
	}

	private BannerService bannerService;

	@Autowired(required = true)
	@Qualifier(value = "bannerService")
	public void setBannerService(BannerService ps) {
		this.bannerService = ps;
	}

	private UsersService usersService;

	@Autowired(required = true)
	@Qualifier(value = "usersService")
	public void setUsersService(UsersService ps) {
		this.usersService = ps;
	}

	private ProductService productService;

	@Autowired(required = true)
	@Qualifier(value = "productService")
	public void setProductService(ProductService ps) {
		this.productService = ps;
	}

	private NewsService newsService;

	@Autowired(required = true)
	@Qualifier(value = "newsService")
	public void setNewsService(NewsService ps) {
		this.newsService = ps;
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String listCategory(Model model) {
		model.addAttribute("category", new Category());
		model.addAttribute("listCategory", this.categoryService.listCategory());
		model.addAttribute("category", new Category());
		model.addAttribute("listCategory1", this.categoryService.listCategory());
		model.addAttribute("menu", new Menu());
		model.addAttribute("listMenu", this.menuService.listMenu());
		model.addAttribute("banner", new Banner());
		model.addAttribute("listBanner", this.bannerService.listBanner());
		model.addAttribute("banner", new Banner());
		model.addAttribute("listBannerDeal", this.bannerService.listBannerDeal());
		model.addAttribute("product", new Product());
		model.addAttribute("listProduct", this.productService.listProduct());
		model.addAttribute("product", new Product());
		model.addAttribute("listProductBrand", this.productService.listProductBrand());
		model.addAttribute("users", new Users());
		model.addAttribute("listUsers", this.usersService.listUsers());
		return "home/home";
	}

	@RequestMapping(value = "chi-tiet-san-pham/{id}", method = RequestMethod.GET)
	public String list(@PathVariable int id, Model model) {
		model.addAttribute("category", new Category());
		model.addAttribute("listCategory", this.categoryService.listCategory());
		model.addAttribute("category", new Category());
		model.addAttribute("listCategory1", this.categoryService.listCategory());
		model.addAttribute("menu", new Menu());
		model.addAttribute("listMenu", this.menuService.listMenu());
		model.addAttribute("banner", new Banner());
		model.addAttribute("listBanner", this.bannerService.listBanner());
		model.addAttribute("banner", new Banner());
		model.addAttribute("listBannerDeal", this.bannerService.listBannerDeal());
		model.addAttribute("product", new Product());
		model.addAttribute("listProduct", this.productService.listProduct());
		model.addAttribute("listProductBrand", this.productService.listProductBrand());
		model.addAttribute("listProduct2details", this.productService.listProduct2details(id));
		model.addAttribute("users", new Users());
		model.addAttribute("listUsers", this.usersService.listUsers());

		// PRODUCT DETAIL
		model.addAttribute("product", this.productService.listProduct1details(id));
		return "product/product";
	}

	// ----------NEWS-------------

	@RequestMapping(value = "bai-viet", method = RequestMethod.GET)
	public String News(Model m) {
		m.addAttribute("news", new News());
		m.addAttribute("listNews", this.newsService.listNews());
		return "news/news";
	}
	
	//----------DETAI-NEWS-------------
	@RequestMapping(value = "chi-tiet-bai-viet/{id}", method = RequestMethod.GET)
	public String DtNews(@PathVariable int id, Model m) {
		m.addAttribute("news", new News());
		m.addAttribute("news", this.newsService.listNewsdetails(id));
		return "news/dtnews";
	}

	// ----------ADMIN-CATEGORY-------------

	@RequestMapping("/admin")
	public String viewemp(Model m) {
		List<Category> list = categoryService.listCategory();
		m.addAttribute("list", list);
		return "admin/ade";
	}

	@RequestMapping(value = "/editemp/{id}")
	public String edit(@PathVariable int id, Model m) {
		
		Product pro = productService.getProductById(id);
		m.addAttribute("command", pro);
		return "admin/edit";
	}

	@RequestMapping(value = "/editsave", method = RequestMethod.POST)
	public String editsave(@ModelAttribute("emp") Category emp) {
		categoryService.updateCategory(emp);
		return "redirect:/admin_category";
	}

	@RequestMapping(value = "/deleteemp/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable int id) {
		categoryService.removeCategory(id);
		return "redirect:/admin_category";
	}

	@RequestMapping("/addemp")
	public String showform(Model m) {
		m.addAttribute("command", new Category());
		return "admin/add";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(@ModelAttribute("emp") Category emp) {
		categoryService.addCategory(emp);
		return "redirect:/admin";// will redirect to viewemp request mapping
	}

	@RequestMapping("/admin_category")
	public String admin1(Model m) {
		List<Category> list = categoryService.listCategory();
		m.addAttribute("list", list);
		return "admin/listcategory";
	}

	// ----------ADMIN 1-------------

	// ----------ADMIN-USER-------------
	@RequestMapping("/admin_user")
	public String admin(Model m) {
		List<Users> list = usersService.listUsers();
		m.addAttribute("list", list);
		return "admin/listuser";
	}

	@RequestMapping(value = "/deleteuser/{id}", method = RequestMethod.GET)
	public String delete1(@PathVariable int id) {
		usersService.removeUsers(id);
		return "redirect:/admin_user";
	}

	// ----------ADMIN-PRODUCT-------------

	@RequestMapping("/admin_product")
	public String admin2(Model m) {
		List<Product> list = productService.listProduct();
		m.addAttribute("list", list);
		return "admin/listproduct";
	}

	@RequestMapping(value = "/deleteproduct/{id}", method = RequestMethod.GET)
	public String delete2(@PathVariable int id) {
		productService.removeProduct(id);
		return "redirect:/admin_product";
	}
	
	@RequestMapping("/add-pro")
	public String AddPro(Model m) {
		m.addAttribute("command", new Product());
		return "admin/addpro";
	}
	
	@RequestMapping(value = "/savepro", method = RequestMethod.POST, produces="application/x-www-form-urlencoded;charset=UTF-8")
	public String savepro(@ModelAttribute("emp") Product emp) {
		productService.addProduct(emp);
		return "redirect:/admin_product";// will redirect to viewemp request mapping
	}

	// ----------ADMIN-NEWS-------------
	
	@RequestMapping("/admin_news")
	public String AdminNews(Model m) {
		List<News> list = newsService.listNews();
		m.addAttribute("list", list);
		return "admin/listnews";
	}

	@RequestMapping("/add-news")
	public String AddNews(Model m) {
		m.addAttribute("command", new News());
		return "admin/addnews";
	}

	@RequestMapping(value = "/savenews", method = RequestMethod.POST, produces="application/x-www-form-urlencoded;charset=UTF-8")
	public String savenews(@ModelAttribute("emp") News emp) {
		newsService.addNews(emp);
		return "redirect:/admin_news";// will redirect to viewemp request mapping
	}
	@RequestMapping(value = "/editnews/{id}")
	public String editnews(@PathVariable int id, Model m) {
		News news = newsService.getNewsById(id);
		m.addAttribute("command", news);
		return "admin/editnews";
	}
	
	@RequestMapping(value = "/editsavenews", method = RequestMethod.POST)
	public String editsavenews(@ModelAttribute("emp") News emp) {
		newsService.updateNews(emp);
		return "redirect:/admin_news";
	}
	
	
	
	@RequestMapping(value = "/deletenews/{id}", method = RequestMethod.GET)
	public String deleteNews(@PathVariable int id) {
		newsService.removeNews(id);
		return "redirect:/admin_news";
	}
	
	
	

}

/*
 * 
 * 
 * private PhoneService phoneService;
 * 
 * @Autowired(required = true)
 * 
 * @Qualifier(value = "phoneService") public void setPhoneService(PhoneService
 * ps) { this.phoneService = ps; }
 * 
 * @RequestMapping(value = "/phones", method = RequestMethod.GET) public String
 * listPhones(Model model) { model.addAttribute("phone", new Phone());
 * model.addAttribute("listPhones", this.phoneService.listPhones()); return
 * "phone"; }
 * 
 * 
 * }
 */
