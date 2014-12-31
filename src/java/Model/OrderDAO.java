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

/**
 *
 * @author Tejas
 */
public class OrderDAO extends BaseDAO{
    
    int x=0;
    Connection connection;
    PreparedStatement stmt;
    Statement s;
    ResultSet rs;
    
    public void add_order(Orderinfo o)
    {
          int b = 0;
        connection = getConnection();
       
        try {
            
            String sql="insert into orders values(?,?,?,?)";
            stmt = connection.prepareStatement(sql);
            stmt.setString(1, o.getCustomer_user());
            stmt.setString(2, o.getBand_user());
            stmt.setString(4, o.getDate());
            stmt.setString(3, o.getOccasion());
            
            b = stmt.executeUpdate();
    }catch (SQLException ex) {
            Logger.getLogger(BandDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
       
    
    }
    public boolean check_date(Orderinfo o)
    {
       boolean flag = true;
       connection=getConnection();
      
        try {
             s = connection.createStatement();
              rs=s.executeQuery("select *  from orders where date_occasion ='"+ o.getDate()+"' and band_user = '"+o.getBand_user()+"'");
              if(rs.next())
              {
                  flag=false;
              }
    }catch (SQLException ex) {
            Logger.getLogger(BandDAO.class.getName()).log(Level.SEVERE, null, ex);}
        
        return flag;
    }
   public List retrieve_order(String username)
   {
       connection = getConnection();
       List l = new ArrayList();
       try
       {
           s = connection.createStatement();
           rs = s.executeQuery("select * from orders where cust_user = '"+username+"'");
           while(rs.next())
           {
               Orderinfo o = new Orderinfo();
               o.setCustomer_user(rs.getString(1));
               o.setBand_user(rs.getString(2));
               o.setOccasion(rs.getString(3));
               o.setDate(rs.getString(4));
               
               l.add(o);
                System.out.println(rs.getString(1));
            }
          
       }catch (SQLException ex) {
            Logger.getLogger(BandDAO.class.getName()).log(Level.SEVERE, null, ex);}
       
       return l;
   }
   public void remove(String username){
     connection = getConnection();

        try {
             s=connection.createStatement();
            int count= s.executeUpdate("delete from orders where cust_user='"+username+"'");
            if(count>0)
            {
                System.out.println("Successfully Deleted");
                System.out.println("count");
            }
            else
            {
                System.out.println("Unsuccessful Deletion");
            }

        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try {
                connection.close();
                s.close();
            } catch (SQLException ex) {
                Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
            }

        }


    }

    public List retrive(String username) {
        
         connection = getConnection();
       List l = new ArrayList();
       try
       {
           s = connection.createStatement();
           rs = s.executeQuery("select * from orders where band_user = '"+username+"'");
           while(rs.next())
           {
               Orderinfo o = new Orderinfo();
               o.setCustomer_user(rs.getString(1));
               o.setBand_user(rs.getString(2));
               o.setOccasion(rs.getString(3));
               o.setDate(rs.getString(4));
               
               l.add(o);
                System.out.println(rs.getString(1));
            }
          
       }catch (SQLException ex) {
                Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
       return l;
    }
     public List retrieveall() {
        
         connection = getConnection();
       List l = new ArrayList();
       try
       {
           s = connection.createStatement();
           rs = s.executeQuery("select * from orders");
           while(rs.next())
           {
               Orderinfo o = new Orderinfo();
               o.setCustomer_user(rs.getString(1));
               o.setBand_user(rs.getString(2));
               o.setOccasion(rs.getString(3));
               o.setDate(rs.getString(4));
               
               l.add(o);
                System.out.println(o.getCustomer_user());
            }
          
       }catch (SQLException ex) {
                Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
       return l;
    }
        
}
