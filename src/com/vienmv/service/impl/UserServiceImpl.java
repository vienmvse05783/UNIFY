package com.vienmv.service.impl;

import java.io.File;
import java.util.List;

import com.vienmv.dao.UserDao;
import com.vienmv.dao.impl.UserDaoImpl;
import com.vienmv.model.User;
import com.vienmv.service.UserService;

public class UserServiceImpl implements UserService {
	UserDao userDao = new UserDaoImpl();

	@Override
	public void insert(User user) {
		userDao.insert(user);
	}

	@Override
	public void edit(User newUser) {
		User oldUser = userDao.get(newUser.getId());

		oldUser.setName(newUser.getName());
		oldUser.setUsername(newUser.getName());
		oldUser.setPassword(newUser.getPassword());
		if (newUser.getAvatar() != null) {
			// XOA ANH CU DI
			String fileName = oldUser.getAvatar();
			final String dir = "/Volumes/Data/files";
			File file = new File(dir + "/" + fileName);
			if (file.exists()) {
				file.delete();
			}
			// THEM ANH MOI
			oldUser.setAvatar(newUser.getAvatar());
		}

		userDao.edit(oldUser);
	}

	@Override
	public void delete(int id) {
		userDao.delete(id);
	}

	@Override
	public User get(String username) {
		return userDao.get(username);
	}

	@Override
	public User get(int id) {
		return userDao.get(id);
	}

	@Override
	public List<User> getAll() {
		return userDao.getAll();
	}

	@Override
	public List<User> search(String username) {
		return userDao.search(username);
	}

	@Override
	public User login(String username, String password) {
		User user = this.get(username);

		if (user != null && password.equals(user.getPassword())) {
			return user;
		}

		return null;
	}
	 public boolean checkExistEmail(String email){
	        return userDao.checkExistEmail(email);
	    }
	    
	    public boolean checkExistUsername(String username){
	        return userDao.checkExistUsername(username);
	    }

		@Override
		public boolean register(String username, String password, String name) {
			if(userDao.checkExistUsername(username)){
	            return false;
	        }
	         userDao.insert(new User(name, username, password));
	         return true;
		}

}
