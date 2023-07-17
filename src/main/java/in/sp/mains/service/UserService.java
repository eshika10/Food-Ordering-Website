package in.sp.mains.service;

import java.util.List;

import in.sp.mains.entity.User;

public interface UserService {

	public User isPresent(String email);
	
	public boolean registerUser(User user);
	
	public User openProfilePageService(int id);
	
	public boolean updateUserProfileService(User user);
	
	public User userDetails(int id);
	
	public List<User> listOfUsersService();
}
