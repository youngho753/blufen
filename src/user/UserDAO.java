package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public UserDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/blufen";
			String dbID = "root";
			String dbPassword = "dudgh1101";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int login(String userID, String userPassword) {
		String SQL = "SELECT userPassword FROM USER WHERE userID = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword))
					return 1; // �α��� ����
				else
					return 0; // ��й�ȣ ����;
			} else {
				return -1;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; // �����ͺ��̽� ����
	}

	public int join(User user) {
		String SQL = "INSERT INTO USER VALUES (?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserGender());
			pstmt.setString(5, user.getUserEmail());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	public User searchUser(String Id) {
		String SQL = "SELECT userID FROM USER WHERE userId = ?";
		User user = new User();
		
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, Id);
			rs = pstmt.executeQuery();
			
			user.setUserID(rs.getString(1));
			user.setUserName(rs.getString(2));
			user.setUserGender(rs.getString(3));
			user.setUserEmail(rs.getString(4));
			
			conn.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return user;
	}
}
