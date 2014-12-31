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
public class BandDAO extends BaseDAO{
    
    int x=0;
    Connection connection;
    PreparedStatement stmt;
    Statement s;
    ResultSet rs;
    
     public int add_band(Bandinfo bi)
    {
        connection = getConnection();
        try {
            
            String sql="insert into SYSTEM.BAND values(?,?,?,?,?,?)";
            stmt = connection.prepareStatement(sql);
            stmt.setString(1,bi.getUsername());
            stmt.setString(2,bi.getBandname());
            stmt.setString(3,bi.getPrice());
            stmt.setString(4,bi.getEmail());
            stmt.setString(5,bi.getPassword());
            stmt.setLong(6, 0);
            
            x = stmt.executeUpdate();
            x = this.add_genre(bi);
            
            
        } catch (SQLException ex) {
            Logger.getLogger(BandDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return x;
    }
     
      public int add_genre(Bandinfo bi)
      {
          int y=0;
          
           try
           {
                
                String s[] = new String[bi.getBandtype().length];
                for(int i=0; i<s.length; i++)
                {
                    connection = getConnection();
                    String sql="insert into SYSTEM.BAND_GENRE values(?,?)";
                    s[i] = bi.getBandtype()[i];
                    stmt = connection.prepareStatement(sql);
                    stmt.setString(1,bi.getUsername());
                    stmt.setString(2, s[i]);
                    y = stmt.executeUpdate();
                }
            } catch (SQLException ex) {
            Logger.getLogger(BandDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return y;
    }
    public List band_list()
    {
        ArrayList list=new ArrayList();
            
        try {
          //  connection = getConnection();
            connection = getConnection();
            s = connection.createStatement();

            rs = s.executeQuery("select * from band");
            System.out.println("out of while");
            while(rs.next())
            {
                Bandinfo b = new Bandinfo();
                b.setUsername(rs.getString(1));
                b.setBandname(rs.getString(2));
                b.setPrice(rs.getString(3));
                b.setEmail(rs.getString(4));
                System.out.println(b.getUsername());
                list.add(b);
             }
           } catch (SQLException ex) {
            Logger.getLogger(BandDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
         return list;
      }
     public List band_list(int budget)
    {
        ArrayList list=new ArrayList();
            
        try {
          //  connection = getConnection();
            connection = getConnection();
            s = connection.createStatement();

            rs = s.executeQuery("select * from band where price <="+ budget);
            System.out.println("out of while");
            while(rs.next())
            {
                Bandinfo b = new Bandinfo();
                b.setUsername(rs.getString(1));
                b.setBandname(rs.getString(2));
                b.setPrice(rs.getString(3));
                b.setEmail(rs.getString(4));
                list.add(b);
             }
           } catch (SQLException ex) {
            Logger.getLogger(BandDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
         return list;
      }
     public Bandinfo checkLogin(BandLog l) {
     
        String username = l.getUsername();
        String password=l.getPassword();
        String lastlogin = l.getLastLogin();

         connection=getConnection();
        try {
             s = connection.createStatement();
              rs=s.executeQuery("select * from Band where username='"+username+"' and password='"+password+"'");
              while(rs.next())
              {
                  Bandinfo b = new Bandinfo();

                  if(Long.parseLong(lastlogin) > rs.getLong(6))
                  {
                  
                  b.setUsername(rs.getString(1));
                  b.setBandname(rs.getString(2));
                  b.setPrice(rs.getString(3));
                  b.setEmail(rs.getString(4));
                  b.setPassword(rs.getString(5));
                  
                  s.executeUpdate("update Band set lastlogin = "+ Long.parseLong(lastlogin) + " where username = '"+ username+"'");
                 
                  return b;
                  }
                  else
                  {
                    b.setBandname("noname");
                    return b;
                  }
                  }
              }
         catch (SQLException ex) {
            Logger.getLogger(BandDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }
    public List get_genre(BandLog b)
    {
         String username = b.getUsername();
         List<String> l = new ArrayList<String>();
         
         connection = getConnection();
         try{
             s = connection.createStatement();
             rs=s.executeQuery("select * from band_genre where username = '"+username+"'");
             
             while(rs.next())
             {
                 String st = (String)rs.getString(2);
                 l.add(st);
             }
             
         }catch (SQLException ex) {
            Logger.getLogger(BandDAO.class.getName()).log(Level.SEVERE, null, ex);
    }

           
     return l;    
    }
    public void add_member(Member m)
    {
        connection = getConnection();
        int y;
        
        try{
            String sql = "insert into member values(?, ?, ?)";
            stmt = connection.prepareStatement(sql);
            stmt.setString(1, m.getBandname());
            stmt.setString(2, m.getName());
            stmt.setString(3, m.getSpeciality());
            y = stmt.executeUpdate();
        }
        catch(SQLException ex){
            Logger.getLogger(BandDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List list_members(String bandname) {
        
        List l = new ArrayList();
         
         connection = getConnection();
         try{
             s = connection.createStatement();
             rs=s.executeQuery("select * from member where bandname = '"+bandname+"'");
             
             while(rs.next())
             {
                 Member m = new Member();
                 m.setBandname(rs.getString(1));
                 m.setName(rs.getString(2));
                 m.setSpeciality(rs.getString(3));
                 
                 l.add(m);
             }
             return l;
             
         }
             catch(SQLException ex){
            Logger.getLogger(BandDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
             
       return null;
        
    }
}
