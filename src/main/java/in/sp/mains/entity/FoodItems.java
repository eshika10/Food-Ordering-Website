package in.sp.mains.entity;



import org.springframework.web.multipart.MultipartFile;

import in.sp.mains.url.OtherUrls;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="FoodItems")
public class FoodItems {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String foodimage;
	private String foodname;
	private int foodprice;
	private String foodcategory;
	private String fooddesc;
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
	
	public String getFoodimage() {
		return foodimage;
	}
	public void setFoodimage(MultipartFile foodimage) {
		this.foodimage = OtherUrls.Image_Upload_Url+foodimage.getOriginalFilename();
	}
	public String getFoodname() {
		return foodname;
	}
	public void setFoodname(String foodname) {
		this.foodname = foodname;
	}
	public int getFoodprice() {
		return foodprice;
	}
	public void setFoodprice(int foodprice) {
		this.foodprice = foodprice;
	}
	public String getFoodcategory() {
		return foodcategory;
	}
	public void setFoodcategory(String foodcategory) {
		this.foodcategory = foodcategory;
	}
	public String getFooddesc() {
		return fooddesc;
	}
	public void setFooddesc(String fooddesc) {
		this.fooddesc = fooddesc;
	}
}
