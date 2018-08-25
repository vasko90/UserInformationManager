
package service;

import UserDAO.UserDAOImplementation;
import java.util.List;
import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    public UserDAOImplementation userDAO;
    
    public void registrateUser(User user){
        userDAO.registrateUser(user);
    }
    
    public List<User> userList(){
        return userDAO.userList();
    }
    
    public User updateUser(int id){
        return userDAO.updateUser(id);
    }
    
    public void deleteUser(int id){
        userDAO.deleteUser(id);
    }
}
