package com.icss.action;

import org.apache.ibatis.session.SqlSession;
import org.apache.struts2.ServletActionContext;

import com.icss.dao.StudentDao;
import com.icss.entity.Student;
import com.icss.util.MybatisUtil;

public class StuAction {
	
	private Student student;
	private String stuId;
	private String stuName;
	
	public void setStuId(String stuId) {
		this.stuId = stuId;
	}

	public void setStuName(String stuName) {
		this.stuName = stuName;
	}
	public void setStudent(Student student) {
		this.student = student;
	}

	public String login() {
		System.out.println("login------------------------");
		SqlSession sqlSession = MybatisUtil.getSqlSession();
		StudentDao dao = sqlSession.getMapper(StudentDao.class);
		student = dao.stuLogin(stuId, stuName);
		if(student != null){
			ServletActionContext.getRequest().getSession().setAttribute("stu", student);
			return "seccess";
		}else {
			return "login";
		}
		
	}

	
	
}
