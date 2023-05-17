package com.beans.kyj_web_project;

import java.util.ArrayList;

public class EmpDao extends DBConn {
	/* 리스트 출력 */
	public ArrayList<EmpVo> getList() {
		ArrayList<EmpVo> list = new ArrayList<EmpVo>();
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
