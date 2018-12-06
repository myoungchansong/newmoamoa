package com.moamoa.dao;

import com.moamoa.dto.CriteriaDTO;
import com.moamoa.dto.HotelListDTO;
import com.moamoa.dto.hotelDTO;
import com.moamoa.mybatis.sqlMapConfig;

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
	
	
	/*=============================================================================*/
	

		public List<HotelListDTO> hotelView(CriteriaDTO criDto){
			sqlSession = sqlSessionFactory.openSession();
			
			List<HotelListDTO> hotelList = null;
			
			try {
				
				hotelList = sqlSession.selectList("hotelView");
				System.out.println("=============================");
				System.out.println(hotelList.toString());
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			return hotelList;
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		public int totalCount(CriteriaDTO criDto) {
			
			
			sqlSession = sqlSessionFactory.openSession();
			
			
			int result = 0;
			try {
				
				result = sqlSession.selectOne("countPaging" ,criDto);
				System.out.println("Result :" + result);
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			return result;
		}
		
		
		
		
		
}
