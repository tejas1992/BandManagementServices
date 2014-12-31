/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Tejas
 */
public class Customer {
    
   private String fname;
   private String lname;
   private String gender;
   private String email;
   private String password;
   private String Address;
   private String mobile;
   private String username;
  

    public Customer() {
    }

    public Customer(String fname, String lname, String gender, String email, String password, String Address, String mobile, String username) {
        this.fname = fname;
        this.lname = lname;
        this.gender = gender;
        this.email = email;
        this.password = password;
        this.Address = Address;
        this.mobile = mobile;
        this.username = username;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    
    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }
    

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

         
}
