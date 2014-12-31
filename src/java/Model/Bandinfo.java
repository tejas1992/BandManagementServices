/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Tejas
 */
public class Bandinfo {
    
    private String bandname;
    private String bandtype[];
    private String password;
    private String email;
    private String price;
    private String username;

    public Bandinfo() {
    }

    public Bandinfo(String bandname, String[] bandtype, String password, String email, String price, String username) {
        this.bandname = bandname;
        this.bandtype = bandtype;
        this.password = password;
        this.email = email;
        this.price = price;
        this.username = username;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

   public String getBandname() {
        return bandname;
    }

    public void setBandname(String bandname) {
        this.bandname = bandname;
    }

    public String[] getBandtype() {
        return bandtype;
    }

    public void setBandtype(String[] bandtype) {
        this.bandtype = bandtype;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }
    
    
    
}
 