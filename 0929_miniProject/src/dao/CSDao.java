package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import dto.CSVo;
import util.DBUtil;
public class CSDao {
	public static ArrayList<CSVo> select(String city) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<CSVo> list=null;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement("SELECT * FROM CSID where addr like ?");
			list=new ArrayList<>();
			pstmt.setString(1, city+"%");
			rset = pstmt.executeQuery();
			while(rset.next()) {
				list.add(new CSVo(rset.getInt(1),rset.getString(2),rset.getString(3),rset.getDouble(4),rset.getDouble(5)));
			}
		} catch (SQLException s) {
			throw s;
		} finally {
			DBUtil.close(con, pstmt, rset);
		}
		return list;
	}

}
