package user;

import java.sql.*;

public class UserDAO {
	private Connection connection; // Connection
	private PreparedStatement pstmt; // PreStatement
	private ResultSet set; // Result Set
	
	String driver = "oracle.jdbc.driver.OracleDriver"; // 오라클 드라이버
	private String url = "jdbc:oracle:thin:@localhost:1521:xe"; // DB url
	private String uid = "nmw1"; // DB id
	private String upw = "tiger"; // DB pw
	private String query; // 쿼리문
	
	public static final int USER_NONEXISTENT = 0; // 유저 정보 존재x
	public static final int USER_EXISTENT = 1; // 유저 정보 존재
	public static final int USER_JOIN_FAIL = 0; // 회원가입 실패
	public static final int USER_JOIN_SUCCESS = 1; // 회원가입 성공
	public static final int USER_LOGIN_PW_NO_GOOD = 0; // ID, PW 디스매치
	public static final int USER_LOGIN_SUCCESS = 1; // 로그인 성공
	public static final int USER_LOGIN_IS_NOT = -1; // 로그인 되지 않음
	
	private static UserDAO instance = new UserDAO();
	
	private UserDAO() { }
	
	public static UserDAO getInstance() {
		return instance;
	}
	
	public int insertUser(UserDTO dto) { // 유저 회원가입
		int ri = 0;
		
		connection = null; // DB 연결 및 초기화
		pstmt = null; // 쿼리문 선언 및 초기화
		query = "INSERT INTO Users VALUES (?,?,?,?,?,?)"; // 쿼리문
		
		try {
			connection = getConnection();
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPw());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.geteMail());
			pstmt.setTimestamp(5, dto.getrDate());
			pstmt.setString(6, dto.getAddress());
			pstmt.executeUpdate();
			ri = UserDAO.USER_JOIN_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null) { pstmt.close(); }
				if (connection != null) { connection.close(); }
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return ri;
	}
	
	public int confirmId(String id) { // ID 확인
		int ri = 0;
		
		connection = null;
		pstmt = null;
		set = null;
		query = "SELECT id FROM Users WHERE id = ?";
		
		try {
			connection = getConnection();
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, id);
			set = pstmt.executeQuery();
			
			if (set.next()) {
				ri = UserDAO.USER_EXISTENT;
			} else {
				ri = UserDAO.USER_NONEXISTENT;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				set.close();
				pstmt.close();
				connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return ri;
	}
	
	public int userCheck(String id, String pw) { // ID, PW 확인
		int ri = 0;
		String dbPw; // db에 저장된 회원의 pw
		
		connection = null;
		pstmt = null;
		set = null;
		query = "SELECT pw FROM Users WHERE id = ?";
		
		try {
			connection = getConnection();
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, id);
			set = pstmt.executeQuery();
			
			if (set.next()) {
				dbPw = set.getString("pw");
				
				if (dbPw.equals(pw)) {
					ri = UserDAO.USER_LOGIN_SUCCESS; // 로그인 성공
				} else {
					ri = UserDAO.USER_LOGIN_PW_NO_GOOD; // 비번 x
				}
			} else {
				ri = UserDAO.USER_LOGIN_IS_NOT; // 회원 x
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				set.close();
				pstmt.close();
				connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return ri;
	}
	
	public UserDTO getUser(String id) { // 유저 정보 확인
		connection = null;
		pstmt = null;
		set = null;
		query = "SELECT * FROM Users WHERE id = ?";
		UserDTO dto = null;
		
		try {
			connection = getConnection();
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, id);
			set = pstmt.executeQuery();
			
			if (set.next()) {
				dto = new UserDTO();
				dto.setId(set.getString("id"));
				dto.setPw(set.getString("pw"));
				dto.setName(set.getString("name"));
				dto.seteMail(set.getString("eMail"));
				dto.setrDate(set.getTimestamp("rDate"));
				dto.setAddress(set.getString("address"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				set.close();
				pstmt.close();
				connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return dto;
	}
	
	public int updateUser(UserDTO dto) { // 유저 정보 업데이트
		int ri = 0;
		
		connection = null;
		pstmt = null;
		query = "UPDATE Users SET pw=?, eMail=?, address=? WHERE id=?";
		
		try {
			connection = getConnection();
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPw());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.geteMail());
			ri = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return ri;
	}
	
	private Connection getConnection() { // DB 연결
		connection = null;
		
		try {
			Class.forName(driver); // driver 가져오기
			connection = DriverManager.getConnection(url, uid, upw);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return connection;
	}
}