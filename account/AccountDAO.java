package account;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AccountDAO {

	public Connection conn;
	public ResultSet rs;

	public AccountDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/jobtest"
				+ "?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
			String dbID = "root";
			String dbPassword = "root";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int register(AccountDTO accountDTO) {
		String SQL = "INSERT INTO ACCOUNT VALUES (?, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, accountDTO.getBusiNum());
			pstmt.setString(2, accountDTO.getFactory());
			pstmt.setString(3, accountDTO.getTradeBank());
			pstmt.setString(4, accountDTO.getAccountNum());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // �����ͺ��̽� ����
	}

	public int modify(AccountDTO accountDTO) {
		String SQL = "UPDATE ACCOUNT SET FACTORY = ?, TRADE_BANK = ?, ACCOUNT_NUM = ? WHERE BUSI_NUM = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, accountDTO.getFactory());
			pstmt.setString(2, accountDTO.getTradeBank());
			pstmt.setString(3, accountDTO.getAccountNum());
			pstmt.setString(4, accountDTO.getBusiNum());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // �����ͺ��̽� ����
	}

	public int delete(AccountDTO accountDTO) {
		String SQL = "DELETE FROM ACCOUNT WHERE BUSI_NUM = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, accountDTO.getBusiNum());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // �����ͺ��̽� ����
	}

}
