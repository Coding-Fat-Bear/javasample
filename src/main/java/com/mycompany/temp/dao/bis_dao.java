
package com.mycompany.temp.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class bis_dao {
     public  ResultSet getBisHead( ) throws ClassNotFoundException, SQLException
    {
        
            String Query="select * from Businesspartner_Master";
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://agn.db.mysql.agnieindia.com:3306/agnieportal","db_user","AgnChennai@2021");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(Query);
             return rs;
    }
      public  ResultSet getBisItem( String a) throws ClassNotFoundException, SQLException
    {
        
            String Query="select * from Businesspartner_Item where BPNO=?";
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://agn.db.mysql.agnieindia.com:3306/agnieportal","db_user","AgnChennai@2021");
            PreparedStatement psmt=con.prepareStatement(Query);
            psmt.setString(1, a);
            System.out.println(psmt);
            ResultSet rs1 = psmt.executeQuery();
            
             return rs1;
    }
}
