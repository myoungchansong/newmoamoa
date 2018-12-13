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
	
	public int wordcloud(String hotelname) {
		sqlSession = sqlSessionFactory.openSession();
		int result =0;
		try {
			result = sqlSession.selectOne("wordcloud", hotelname);
			System.out.println("result =====>"+result);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();		
		}
		return result;
		
	}
	
	public List<hotelDTO> reviewListpos(String hotelname){
		sqlSession = sqlSessionFactory.openSession();
		List<hotelDTO> list = new ArrayList<>();
		
		try {
			System.out.println("됌???????"+hotelname);
			list = sqlSession.selectList("reviewListpos", hotelname);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();		
		}
		return list;
	}
	public List<hotelDTO> reviewListneg(String hotelname){
		sqlSession = sqlSessionFactory.openSession();
		List<hotelDTO> list = new ArrayList<>();
		
		try {
			System.out.println("됌!!!!!!!!!!"+hotelname);
			list =sqlSession.selectList("reviewListneg", hotelname);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();		
		}
		return list;
	}
	
	public List<hotelDTO> reviewListName(String hotelname){
		sqlSession = sqlSessionFactory.openSession();
		List<hotelDTO> list = new ArrayList<>();
		
		try {
			System.out.println("===>hotelname:"+hotelname);
			list =sqlSession.selectList("reviewListName", hotelname);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();		
		}
		return list;
	}
		
		
		
}
