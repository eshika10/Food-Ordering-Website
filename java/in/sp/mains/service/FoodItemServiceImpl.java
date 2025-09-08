package in.sp.mains.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import in.sp.mains.entity.FoodItems;
import in.sp.mains.repository.FoodItemRepository;


@Service
public class FoodItemServiceImpl implements FoodItemService{

	@Autowired
	FoodItemRepository foodItemRepository;
	
	@Override
	public boolean addFoodItemService(FoodItems foodItems) {
		
		boolean status=false;
		
		try {
			
			foodItemRepository.save(foodItems);
			status=true;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	@Override
	public List<FoodItems> getAllFoodListService() {
		
		return foodItemRepository.findAll();
	}

	@Override
	public FoodItems authenticate(int id) {
		
		return foodItemRepository.findById(id);
		
	}

	@Override
	public boolean updateFoodItemService(FoodItems foodItems) {
		boolean status=false;
		try {
			
			System.out.println(foodItems.getId());
            FoodItems existingFoodItem=foodItemRepository.findById(foodItems.getId());
            
            
		    if(existingFoodItem!=null) {
				
				existingFoodItem.setFoodname(foodItems.getFoodname());
				existingFoodItem.setFoodprice(foodItems.getFoodprice());
				existingFoodItem.setFoodcategory(foodItems.getFoodcategory());
				existingFoodItem.setFooddesc(foodItems.getFooddesc());
				
			    foodItemRepository.save(existingFoodItem);
			    status=true;
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return status;
		
		
	}

	@Override
	public boolean deleteFoodItemService(int id) {
		
		boolean status=false;
		
		try {
			foodItemRepository.deleteById(id);
			status=true;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return status;
	}

	

}
