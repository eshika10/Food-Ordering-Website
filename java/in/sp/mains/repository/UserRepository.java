package in.sp.mains.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import in.sp.mains.entity.User;

public interface UserRepository extends JpaRepository<User,Integer> {

	
	User findByEmail(String email);
	
	User findById(int id);
	
	
}
