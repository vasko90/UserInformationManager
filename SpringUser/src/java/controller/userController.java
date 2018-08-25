
package controller;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import model.HibernateUtil;
import model.User;
import UserDAO.UserDAOImplementation;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import service.UserService;

@Controller
public class userController {
   
    @Autowired
    public UserService service;
    
    @InitBinder
    public void initBinder(WebDataBinder wdb){
        StringTrimmerEditor ste = new StringTrimmerEditor(true);
        wdb.registerCustomEditor(String.class, ste);
    }
    
    @RequestMapping("/")
    public String mainPage(){
        return "index";
    }
    
    @RequestMapping("/newUser")
    public String newUser(Model model){
        model.addAttribute("user", new User());
        return "registration";
    }
    
    @RequestMapping("/userRegistration")
    public String registrateUser(@Valid@ModelAttribute("user")User user, BindingResult br){
       
        if(br.hasErrors()){
            return "registration";
        }
        
       service.registrateUser(user);
       
        return "confirmation";
    }
    
    @RequestMapping("/list")
    public String listUser(Model model){
        
      List<User> userlist = service.userList();
        
        model.addAttribute("userList", userlist);
        return "userList";
    }
    
    @RequestMapping("/updateUser")
    public String updateUser(@RequestParam("id")int id,Model model){
        
       User user = service.updateUser(id);
        
        model.addAttribute("theUser", user);
        return "userUpdate";
    }
    
     @RequestMapping("/deleteUser")
    public String deleteUser(@RequestParam("id")int id,Model model){
        
       service.deleteUser(id);
       
        return "deleteConfirm";
    }
    
   
}
