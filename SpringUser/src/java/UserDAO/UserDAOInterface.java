
package UserDAO;

import java.util.List;
import model.User;

public interface UserDAOInterface {
    
    public void registrateUser(User u);
    public List<User> userList();
    public User updateUser(int id);
    public void deleteUser(int id);
   
}
