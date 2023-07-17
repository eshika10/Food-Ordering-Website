package in.sp.mains.service;

import java.util.List;

import in.sp.mains.entity.FoodItems;

public interface FoodItemService {

	public boolean addFoodItemService(FoodItems foodItems);
	
	public List<FoodItems> getAllFoodListService();
	
	public FoodItems authenticate (int id);
	
	public boolean updateFoodItemService(FoodItems foodItems);
	
	public boolean deleteFoodItemService(int id);
}
