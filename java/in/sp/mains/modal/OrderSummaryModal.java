package in.sp.mains.modal;

import in.sp.mains.entity.FoodItems;
import in.sp.mains.entity.User;

public class OrderSummaryModal {

	
	private FoodItems foodItems;
	private User user;
	
	public FoodItems getFoodItems() {
		return foodItems;
	}
	public void setFoodItems(FoodItems foodItems) {
		this.foodItems = foodItems;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
}
