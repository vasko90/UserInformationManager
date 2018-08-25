
package model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

@Entity
@Table(name = "user")
public class User implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @NotNull(message = "Field cannot be empty")
    @Column(name = "username")
    private String name;
    @NotNull(message = "Field cannot be empty")
    @Pattern(regexp = "^[a-zA-Z0-9]{10}",message = "Password must contain 10 characters")
    private String password;
    @NotNull(message = "Field cannot be empty")
    @Pattern(regexp = "^[0-9]{13}", message = "JMBG must contain 13 digits")
    private String jmbg;
    @NotNull(message = "Field cannot be empty")
    @Pattern(regexp = "^[0-9]{3}/[0-9]{3}-[0-9]{3}", message = "phone number must be in format xxx/xxx-xxx")
    @Column(name = "phone_no")
    private String phoneNumber;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getJmbg() {
        return jmbg;
    }

    public void setJmbg(String jmbg) {
        this.jmbg = jmbg;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
   
    
    public User(){
        
    }
    
     public User(String username, String password, String jmbg, String pn){
        this.jmbg = jmbg;
        this.name = username;
        this.password = password;
        this.phoneNumber = pn;
    }
}
