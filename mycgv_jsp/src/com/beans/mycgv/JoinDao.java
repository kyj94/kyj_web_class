package com.beans.mycgv;

import java.util.ArrayList;

public class JoinDao extends DBConn {
	/* 리스트 출력 */
	public ArrayList<JoinVo> getList() {
		ArrayList<JoinVo> list = new ArrayList<JoinVo>();
		String sql = "select empno, ename, deptno from emp";
		getPreparedStatement(sql);
		
		try {
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				EmpVo emp = new EmpVo();
				emp.setEmpno(rs.getInt(1));
				emp.setEname(rs.getString(2));
				emp.setDeptno(rs.getInt(3));
				list.add(emp);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
}
