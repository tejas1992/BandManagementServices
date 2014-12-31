/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Tejas
 */
public class BaseDAO {
    
    Connection con;
    Connection getConnection()
	{
		try
		{
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","tejas92");

		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return con;
	}
	public void closeConnection()
	{
		try
		{
			con.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
    
}
