package custom;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CustomDAO {

	public Connection conn;
	public ResultSet rs;

	public CustomDAO() {
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

	public String getDate() {
		String SQL = "SELECT DATE_FORMAT(NOW(), '%Y-%m-%d %T')";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ""; // �����ͺ��̽� ����
	}

	public boolean isRegistered(String busiNum) {
		String SQL = "SELECT BUSI_NUM FROM CUSTOM WHERE BUSI_NUM = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, busiNum);
			rs = pstmt.executeQuery();
			if(rs.next()) return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public int register(CustomDTO customDTO) {
		String SQL = "INSERT INTO CUSTOM VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, NULL, NULL)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, customDTO.getBusiNum());
			pstmt.setString(2, customDTO.getCustom());
			pstmt.setString(3, customDTO.getShortName());
			pstmt.setString(4, customDTO.getCeo());
			pstmt.setString(5, customDTO.getChargePerson());
			pstmt.setString(6, customDTO.getBusiCondition());
			pstmt.setString(7, customDTO.getItem());
			pstmt.setString(8, customDTO.getPostNum());
			pstmt.setString(9, customDTO.getAddr1());
			pstmt.setString(10, customDTO.getAddr2());
			pstmt.setString(11, customDTO.getTel());
			pstmt.setString(12, customDTO.getFax());
			pstmt.setString(13, customDTO.getHomepage());
			pstmt.setString(14, customDTO.getCoYN());
			pstmt.setString(15, customDTO.getForeignYN());
			pstmt.setString(16, customDTO.getTaxYN());
			pstmt.setString(17, customDTO.getCountryEng());
			pstmt.setString(18, customDTO.getCountryKor());
			pstmt.setString(19, customDTO.getSpecialRelation());
			pstmt.setString(20, customDTO.getTradeStop());
			pstmt.setString(21, customDTO.getContractPeriodS());
			pstmt.setString(22, customDTO.getContractPeriodE());
			pstmt.setString(23, customDTO.getRegiInfoMan());
			pstmt.setString(24, getDate());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // �����ͺ��̽� ����
	}

	public int modify(CustomDTO customDTO) {
		String SQL = "UPDATE CUSTOM SET CUSTOM = ?, SHORT = ?, CEO = ?, CHARGE_PERSON = ?, "
				+ "BUSI_CONDITION = ?, ITEM = ?, POST_NUM = ?, ADDR1 = ?, ADDR2 = ?, TEL = ?, FAX = ?, HOMEPAGE = ?, "
				+ "CO_YN = ?, FOREIGN_YN = ?, TAX_YN = ?, COUNTRY_ENG = ?, COUNTRY_KOR = ?, SPECIAL_RELATION = ?, "
				+ "TRADE_STOP = ?, CONTRACT_PERIOD_S = ?, CONTRACT_PERIOD_E = ?, REGI_INFO_MAN = ?, REGI_INFO_DATE = ?, "
				+ "MODI_INFO_MAN = ?, MODI_INFO_DATE = ? WHERE BUSI_NUM = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, customDTO.getCustom());
			pstmt.setString(2, customDTO.getShortName());
			pstmt.setString(3, customDTO.getCeo());
			pstmt.setString(4, customDTO.getChargePerson());
			pstmt.setString(5, customDTO.getBusiCondition());
			pstmt.setString(6, customDTO.getItem());
			pstmt.setString(7, customDTO.getPostNum());
			pstmt.setString(8, customDTO.getAddr1());
			pstmt.setString(9, customDTO.getAddr2());
			pstmt.setString(10, customDTO.getTel());
			pstmt.setString(11, customDTO.getFax());
			pstmt.setString(12, customDTO.getHomepage());
			pstmt.setString(13, customDTO.getCoYN());
			pstmt.setString(14, customDTO.getForeignYN());
			pstmt.setString(15, customDTO.getTaxYN());
			pstmt.setString(16, customDTO.getCountryEng());
			pstmt.setString(17, customDTO.getCountryKor());
			pstmt.setString(18, customDTO.getSpecialRelation());
			pstmt.setString(19, customDTO.getTradeStop());
			pstmt.setString(20, customDTO.getContractPeriodS());
			pstmt.setString(21, customDTO.getContractPeriodE());
			pstmt.setString(22, customDTO.getRegiInfoMan());
			pstmt.setString(23, customDTO.getRegiInfoDate());
			pstmt.setString(24, customDTO.getModiInfoMan());
			pstmt.setString(25, customDTO.getModiInfoDate());
			pstmt.setString(26, customDTO.getBusiNum());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // �����ͺ��̽� ����
	}

	public int delete(CustomDTO customDTO) {
		String SQL = "DELETE FROM CUSTOM WHERE BUSI_NUM = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, customDTO.getBusiNum());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // �����ͺ��̽� ����
	}

}
