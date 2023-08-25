package board.model;

import java.sql.*;
import javax.naming.*;
import javax.sql.*;

public class ConnUtil {
	
		private static DataSource ds;
		
		static {
			
			try {
				Context initContext = new InitialContext();
				Context envContext  = (Context)initContext.lookup("java:/comp/env");
				ds = (DataSource)envContext.lookup("jdbc/myoracle");
			}catch(NamingException ne) {
				ne.printStackTrace();
			}
			
		}

		public static Connection getConnection()throws SQLException {
			return ds.getConnection();
		}
		
}