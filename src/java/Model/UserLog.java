/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Tejas
 */
public class UserLog {
    
    private String username;
    private String password;
    private String lastlogon;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getLastlogon() {
        return lastlogon;
    }

    public void setLastlogon(String lastlogon) {
        this.lastlogon = lastlogon;
    }
}
