package com.moamoa.dao;

import com.moamoa.dto.CriteriaDTO;
import com.moamoa.dto.HotelListDTO;
import com.moamoa.dto.hotelDTO;
import com.moamoa.mybatis.sqlMapConfig;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class hotelDAO {
			SqlSessionFactory sqlSessionFactory = sqlMapConfig.getSqlSession();
			
			SqlSession sqlSession;
			

			private hotelDAO() {}
			private static hotelDAO instance = new hotelDAO();
			
			public static hotelDAO getInstance() {
				return instance;
			}
			
			

	public void hotelinsert(hotelDTO mDto)	{
		sqlSession = sqlSessionFactory.openSession();
		int reuslt;
		try {
			reuslt = sqlSession.insert("hotelinsert",mDto);
			if(reuslt >0) {
				System.out.println("등록성공");
				sqlSession.commit();
			}else {
				System.out.println("등록실패");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}

	}
		
	
	
	public void hotelupdate(hotelDTO mDto) {
		sqlSession = sqlSessionFactory.openSession();
		int reuslt=0;
		try {
			reuslt = sqlSession.insert("hotelupdate",mDto);
			if(reuslt >0) {
				sqlSession.commit();
				/*System.out.println("등록성공");*/
			}else {
				/*System.out.println("등록실패");*/
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
	}
	
	
	/*=============================================================================*/
	

		
		
		
		
}
