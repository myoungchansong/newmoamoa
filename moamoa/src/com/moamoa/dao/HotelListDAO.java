package com.moamoa.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.moamoa.dto.CriteriaDTO;
import com.moamoa.dto.HotelListDTO;
import com.moamoa.mybatis.sqlMapConfig;

public class HotelListDAO {
	SqlSessionFactory sqlSessionFactory = sqlMapConfig.getSqlSession();
	
	SqlSession sqlSession;
	

	private HotelListDAO() {}
	private static HotelListDAO instance = new HotelListDAO();
	
	public static HotelListDAO getInstance() {
		return instance;
	}
	
	
	public List<HotelListDTO> hotelView(CriteriaDTO criDto){
		sqlSession = sqlSessionFactory.openSession();
		System.out.println("1111111111111111111111111111");
		System.out.println(criDto.toString());
		List<HotelListDTO> list = new ArrayList<>();
		try {
			
		list = sqlSession.selectList("hotelView", criDto);
		
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return list;
	}
	

	
	
	public int totalCount(CriteriaDTO criDto) {
		
		
		sqlSession = sqlSessionFactory.openSession();
		
		
		int result = 0;
		try {
			
			result = sqlSession.selectOne("hotellistcountPaging" ,criDto);
			System.out.println("Result :" + result);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return result;
	}
	
	
	
}
