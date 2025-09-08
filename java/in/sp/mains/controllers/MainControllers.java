package in.sp.mains.controllers;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import in.sp.mains.entity.User;

import in.sp.mains.repository.FoodItemRepository;

import in.sp.mains.entity.FoodItems;
import in.sp.mains.service.FoodItemService;
import in.sp.mains.service.UserService;
import jakarta.servlet.http.HttpSession;

@Controller
public class MainControllers {

	@Autowired
	UserService userService;
	
	@Autowired
	FoodItemService foodItemService;
	
	@Autowired
	FoodItemRepository foodItemRepository;
	
	@GetMapping("/")
	public String openHomePage() {
		return "index";
	}
	
	@GetMapping("/login")
	public String openLoginPage() {
		return "login";
	}
	
	@GetMapping("/register")
	public String openRegisterPage() {
		return "register";
	}
	
	@GetMapping("/adminHome")
	public String openadminHomePage() {
		return "home-admin";
	}
	
	@PostMapping("/loginForm")
	public String openloginFormPage(@RequestParam("email1") String myemail,
			                        @RequestParam("password1") String mypass,
			                        HttpSession session,Model model) {
		String page="";
		if(myemail.equals("admin@gmail.com") && mypass.equals("admin123")){
			page="home-admin";
		}else{
			User user=userService.isPresent(myemail);
			if(user!=null && user.getPassword().equals(mypass)){
				session.setAttribute("session_user",user);
				page="home-user";
			}else {
				model.addAttribute("model_error","Email id and Password did'nt found");
				page="login";
			}
		}
		
		return page;
	}
	
	@PostMapping("/registerForm")
	public String openregisterFormPage(@RequestParam("name")String myname,
			@RequestParam("email")String myemail,@RequestParam("phoneno")String myphoneno,
			@RequestParam("password")String mypassword,Model model){
		
		User user=new User();
		user.setName(myname);
		user.setEmail(myemail);
		user.setPassword(mypassword);
		user.setPhoneno(myphoneno);
		
		boolean status=userService.registerUser(user);
		String page="";
		if(status){
			model.addAttribute("model_reg_success","You Register Successfully");
			page= "login";
		}else {
			model.addAttribute("model_reg_error","You do not get Register due to some error");
			page="register";
		}
		
		
		return page;
	}
	
	@GetMapping("/addFoodItems")
	public String addFoodItemsPage(Model model){
		
		model.addAttribute("foodAddAttr",new FoodItems());
		return "addFoodItems";
	}
	
	@PostMapping("/addFoodItemsForm")
	public String addFoodItemsForm( @RequestParam("foodimage") MultipartFile myfoodImage,@ModelAttribute("foodAddAttr") FoodItems food_item,
			RedirectAttributes redirectAttr){
		
		
		
		boolean status1=saveImage(myfoodImage);
		if(!status1){
			System.out.println("course image not uploaded ");
		}
		
		boolean status=foodItemService.addFoodItemService(food_item);
		
		if(status){
			redirectAttr.addAttribute("redirect_success","food item added successfully");
		}else {
			redirectAttr.addAttribute("redirect_error","food item do not added due to some error");
		}
		
		return "redirect:/foodItemsList";
	}
	
	private boolean saveImage(MultipartFile file){
		boolean status=false;
		
		try {
			
			String fileName=file.getOriginalFilename();
			Path path=Paths.get("src/main/resources/static/uploads",fileName);
			Files.copy(file.getInputStream(),path,StandardCopyOption.REPLACE_EXISTING);
			status=true;
			
		}catch(Exception e) {
			e.printStackTrace();
			status=false;
		}
		return status;
	}
	
	
	@GetMapping("/foodItemsList")
	public String foodItemList(@RequestParam(name="redirect_success",required=false) String redirect_success_attr,
			@RequestParam(name="redirect_error",required=false) String redirect_error_attr,Model model)
	{
		
		model.addAttribute("model_success",redirect_success_attr);
		model.addAttribute("model_error",redirect_error_attr);
		
		List<FoodItems> list_food=foodItemService.getAllFoodListService();
		model.addAttribute("model_food_list", list_food);
		
		return "foodItemsList";
		
	}
	
	@GetMapping("/editFood")
	public String updateFoodListPage(@RequestParam("id") int myid,Model model){
		
		FoodItems food_items=foodItemService.authenticate(myid);
		
		System.out.println("We read the data from database");
		
		model.addAttribute("modelFoodAtt",new FoodItems());
		model.addAttribute("model_food_item", food_items);
		
		return "edit-foodlist";
	}
	
	@PostMapping("/updateFoodForm")
	public String updateFoodListAfterPage(@ModelAttribute("modelFoodAtt") FoodItems fooditems,Model model,
			@RequestParam("foodimage") MultipartFile file) {
		
		boolean status1=false;
		try {
			
			if(file!=null) {
				saveImage(file);
				FoodItems existingItem=foodItemRepository.findById(fooditems.getId());
				if(existingItem!=null) {
					existingItem.setFoodimage(file);
					
				    foodItemRepository.save(existingItem);
				}
				status1=true;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		boolean status=foodItemService.updateFoodItemService(fooditems);
		
		if(status && status1){
       	 model.addAttribute("model_success","Food Item updated successfully");
        }else {
       	 model.addAttribute("model_error","Food Item do not updated due to some error");
        }
		
		fooditems.setId(0);
        fooditems.setFoodname(" ");
        fooditems.setFoodprice(0);
        fooditems.setFoodcategory(" ");
        fooditems.setFooddesc(" ");
        
		return "edit-foodlist";
	}
	
	@GetMapping("/deleteFood")
	public String deleteFoodItem(@RequestParam("id") int id,Model model,RedirectAttributes redirectAttributes){
		
		boolean status=foodItemService.deleteFoodItemService(id);
		
		if(status) {
			
			redirectAttributes.addAttribute("redirect_success","Food Item deleted successfully");
		}else {
			redirectAttributes.addAttribute("redirect_success","Food Item do not deleted due to some error");
		}
		
		return "redirect:/foodItemsList";
	}
	
	@GetMapping("/profileUser")
	public String openUserProfilePage(@RequestParam("id") int id,Model model,RedirectAttributes redirectAttr) {
		
		User user=userService.openProfilePageService(id);
		model.addAttribute("modelFoodAtt",new User());
		model.addAttribute("model_user", user);
		    
	    
		return "profile-user";
	}
	
	
	@PostMapping("/updateUserProfileForm")
	public String updateUserProfile(@ModelAttribute("modelFoodAtt") User user,
		Model model) {
		
		    boolean status=userService.updateUserProfileService(user);
		    
		    if(status) {
		    	model.addAttribute("model_success","User Profile updated successfully");
		    }else {
		    	model.addAttribute("model_error","User Profile do not updated due to some error");
		    }
		
		return "profile-user";
	}
	
	@GetMapping("/foodMenu")
	public String openFoodMenuPage(Model model,@RequestParam("email") String email){
		
		List<FoodItems> list_food=foodItemService.getAllFoodListService();
		model.addAttribute("model_food_list", list_food);
		
		User user=userService.isPresent(email);
		model.addAttribute("model_user",user);
		
		return "food-menu";
	}
	
	@GetMapping("/placeFoodOrder")
	public String openFoodOrderPage(@RequestParam("food_id") int Food_id,Model model,@RequestParam("user_email") String User_email ){
		
		
		
		FoodItems food_items=foodItemService.authenticate(Food_id);
		model.addAttribute("model_food_item", food_items);
		
		User user=userService.isPresent(User_email);
		model.addAttribute("model_user", user);
		
		
		return "placeFoodOrder";
	}
	
	@GetMapping("/finalPayment")
	public String openFinalPaymentPage(@RequestParam("id") int id,Model model){
		
		FoodItems food_items=foodItemService.authenticate(id);
		model.addAttribute("model_food", food_items);
		
		return "finalPayment";
	}
	
	@GetMapping("/orderSummary")
	public String openOrderSummaryPage(@RequestParam("id") int id,Model model){
		
		FoodItems food_items=foodItemService.authenticate(id);
		model.addAttribute("model_food", food_items);
		
		return "order-summary";
	}
	
	
	@GetMapping("/viewCustomers")
	public String openViewCustomersPage(Model model) {
		
		List<User> list_users=userService.listOfUsersService();
		model.addAttribute("model_list_users", list_users);
		
		return "viewCustomers";
	}
}
