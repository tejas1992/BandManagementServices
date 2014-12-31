/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author Tejas
 */
public class CustomerDAO extends BaseDAO {
    Connection connection;
    PreparedStatement stmt;
    Statement s;
     ResultSet rs;
    public int add_cust(Customer c)
    {
        int b = 0;
        connection = getConnection();
       
        try {
            
            String sql="insert into Customer values(?,?,?,?,?,?,?,?,?)";
            stmt = connection.prepareStatement(sql);
            stmt.setString(1, c.getUsername());
            stmt.setString(2, c.getFname());
            stmt.setString(3, c.getLname());
            stmt.setString(4, c.getGender());
            stmt.setString(5, c.getMobile() );
            stmt.setString(6, c.getEmail());
            stmt.setString(7, c.getAddress());
            stmt.setString(8, c.getPassword());
            stmt.setLong(9, 0);
            b = stmt.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return b;
    }
    public Customer checkLogin(UserLog l) {
     
        String username = l.getUsername();
        String password=l.getPassword();
        String lastlog = l.getLastlogon();


         connection=getConnection();
        try {
             s = connection.createStatement();
              rs=s.executeQuery("select * from Customer where username='"+username+"' and password='"+password+"'");
              while( rs.next())
              {
                  Customer c = new Customer();
                  if(Long.parseLong(lastlog) > rs.getLong(9))
                  {
                  
                  c.setUsername(rs.getString(1));
                  c.setFname(rs.getString(2));
                  c.setLname(rs.getString(3));
                  c.setGender(rs.getString(4));
                  c.setMobile(rs.getString(5));
                  c.setEmail(rs.getString(6));
                  c.setAddress(rs.getString(7));
                  c.setPassword(rs.getString(8));
                  s.executeUpdate("update Customer set lastlogon =" + lastlog+" where username = '"+ username+"'");
                 
                  return c;
                  }
                  else
                  {
                    c.setFname("noname");
                    return c;
                  }
                  }
              }
         catch (SQLException ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }
    
    public void unregister(String username)
    {
      connection = getConnection();
      try {
             s = connection.createStatement();
            int count= s.executeUpdate("delete from customer where username = '"+ username+"'");
            if(count>0)
            {
                System.out.println("Successfully Deleted");
            }
            else
            {
                System.out.println("Unsuccessful Deletion");
            }

        } catch (SQLException ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try {
                connection.close();
                s.close();
            } catch (SQLException ex) {
                Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
            }

        }


    }
    
    public Upcoming events(Orderinfo o)
    {
        
         Upcoming up = new Upcoming();
         connection=getConnection();
        try {
             s = connection.createStatement();
              rs = s.executeQuery("select * from Customer where username='"+o.getCustomer_user()+"'");
              while( rs.next())
              {
               up.setCustomername(rs.getString(2));
               up.setCustomeremail(rs.getString(6));
               up.setCustomermobile(rs.getString(5));
               up.setDate(o.getDate());
               up.setOccasion(o.getOccasion());
               
               
              }
        
    }catch (SQLException ex) {
                Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
            }

return up;


}
}
