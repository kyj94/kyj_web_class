package com.mycgv_jsp.dao;

import com.mycgv_jsp.vo.BoardVo;

public class BoardDao extends DBConn {
	
	public int insert(BoardVo boardVo) {
		int result = 0;
		
		String sql = "INSERT INTO MYCGV_BOARD(bid, btitle, bcontent, bhits, id, bdate) "
				+ " VALUES ('b_'||LTRIM(to_char(sequ_mycgv_board.nextVal, '0000')), ?, ?, 0, ?, sysdate)";
		
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, boardVo.getBtitle());
			pstmt.setString(2, boardVo.getBcontent());
			pstmt.setString(3, boardVo.getId());
			
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return result;
		
	} // insert(BoardVo boardVo)

}
