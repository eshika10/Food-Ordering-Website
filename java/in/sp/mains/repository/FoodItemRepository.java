package in.sp.mains.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import in.sp.mains.entity.FoodItems;

public interface FoodItemRepository extends JpaRepository<FoodItems,Integer> {
	
      FoodItems findById(int id);

      FoodItems findByFoodname(String foodname);	

}
