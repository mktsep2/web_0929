package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dto.CPVo;
import util.DBUtil;

public class CPDao {
	public static ArrayList<CPVo> searchCP(int csid) throws SQLException{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset=null;
		CPVo vo=null;
		ArrayList<CPVo> list = new ArrayList<>();
		try {
			con = DBUtil.getConnection();

			pstmt = con.prepareStatement("select * from CPID where CSID=?");
			pstmt.setInt(1, csid);
			rset=pstmt.executeQuery();
			while(rset.next()){
				 vo = new CPVo(rset.getInt(1), rset.getInt(2), rset.getString(3), rset.getInt(4), rset.getInt(5), rset.getInt(6), rset.getString(7));
				 System.out.println(vo);
				 list.add(vo);
				 System.out.println(list);
			}
		} catch (SQLException s) {
			throw s;
		} finally {
			DBUtil.close(con, pstmt, rset);;
		}
		return list;
	}

}
