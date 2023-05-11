package com.mycgv_jsp.dao;

import com.mycgv_jsp.vo.MemberVo;

public class MemberDao extends DBConn {
	/** insert - 회원 가입 **/
	public int insert(MemberVo memberVo) {
		int result = 0;
		String sql = "insert into MYCGV_MEMBER(id, pass, name, gender, email, addr, tel, pnumber, hobbylist, intro, mdate)"
				+ " values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, sysdate)";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, memberVo.getId());
			pstmt.setString(2, memberVo.getPass());
			pstmt.setString(3, memberVo.getName());
			pstmt.setString(4, memberVo.getGender());
			pstmt.setString(5, memberVo.getEmail());
			pstmt.setString(6, memberVo.getAddr());
			pstmt.setString(7, memberVo.getTel());
			pstmt.setString(8, memberVo.getPnumber());
			pstmt.setString(9, memberVo.getHobbyList());
			pstmt.setString(10, memberVo.getIntro());

			result = pstmt.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
		
	} // insert(MemberVo memberVo) 
	
	
	/** idCheck - 아이디 중복 체크 **/
	public int idCheck(String id) {
		int result = 0;
		
		String sql = "SELECT count(*) FROM MYCGV_MEMBER where id=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1,  id);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				result = rs.getInt(1);				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
		
	} // idCheck(MemberVo memberVo)
	
	/** loginCheck - 로그인 체크 **/
	public int loginCheck(MemberVo memberVo) {
		int result = 0;
		String sql = "select count(*) from mycgv_member where id=? and pass=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1,memberVo.getId());
			pstmt.setString(2,memberVo.getPass());
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				result = rs.getInt(1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		return result;
	} // loginCheck(MemberVo memberVo)
	
	

}
