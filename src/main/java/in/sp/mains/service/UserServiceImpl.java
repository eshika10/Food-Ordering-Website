package in.sp.mains.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.sp.mains.entity.User;
import in.sp.mains.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService{
    
	@Autowired
	UserRepository userRepository;

	@Override
	public User isPresent(String email) {
		
		return userRepository.findByEmail(email);
	}

	@Override
	public boolean registerUser(User user) {
		boolean status=false;
		
		try {
			userRepository.save(user);
			status=true;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	@Override
	public User openProfilePageService(int id) {
		
		return userRepository.findById(id);
		
	}

	@Override
	public boolean updateUserProfileService(User user) {
		boolean status=false;
		
		try {
			
			User existingUser=userRepository.findByEmail(user.getEmail());
			
			
			if(existingUser!=null){
				
				existingUser.setName(user.getName());
				existingUser.setPassword(user.getPassword());
				existingUser.setPhoneno(user.getPhoneno());
				
				userRepository.save(existingUser);
				status=true;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return status;
	}

	@Override
	public User userDetails(int id) {
		
		return userRepository.findById(id);
	}

	@Override
	public List<User> listOfUsersService() {
		
		return userRepository.findAll();
	}
	
	
}
