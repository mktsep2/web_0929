package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dto.UserVo;
import util.DBUtil;

public class UserDAO {

	public static void join(UserVo vo) throws SQLException {
		Connection c = null;
		PreparedStatement pstmt = null;
		try {
			c=DBUtil.getConnection();
			pstmt =c.prepareStatement("insert into carmember values (?,?,?,?,?) ");
			pstmt.setString(1, vo.getUserid());
			pstmt.setString(2, vo.getPasswd());
			pstmt.setString(3, vo.getMname());
			pstmt.setString(4, vo.getTel());
			pstmt.setString(5, vo.getEmail());
			pstmt.executeQuery();
			
		} finally {
			DBUtil.close(c,pstmt);
		}

	}
	
	public static void update(UserVo vo) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = DBUtil.getConnection();

			pstmt = con.prepareStatement("UPDATE carmember SET mname= ? ,tel= ? ,passwd = ? ,email = ? WHERE userid = ?");
			pstmt.setString(1, vo.getMname());
			pstmt.setString(2, vo.getTel());
			pstmt.setString(3, vo.getPasswd());
			pstmt.setString(4, vo.getEmail());
			pstmt.setString(5, vo.getUserid());
			pstmt.executeQuery();

		} catch (SQLException s) {
			throw s;
		} finally {
			DBUtil.close(con, pstmt);
		}
	}
	public static UserVo select(String id) throws SQLException{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset=null;
		UserVo vo=null;
		try {
			con = DBUtil.getConnection();

			pstmt = con.prepareStatement("select * from carmember where userid=?");
			pstmt.setString(1, id);
			rset=pstmt.executeQuery();
			if(rset.next()){
				 vo=new UserVo(rset.getString(1), rset.getString(2), rset.getString(3), rset.getString(4), rset.getString(5));
			}
		} catch (SQLException s) {
			throw s;
		} finally {
			DBUtil.close(con, pstmt, rset);;
		}
		System.out.println(vo);
		return vo;
	}
	
}
