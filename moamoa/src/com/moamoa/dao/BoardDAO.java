package com.moamoa.dao;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.moamoa.dto.BoardDTO;
import com.moamoa.dto.CriteriaDTO;
import com.moamoa.mybatis.sqlMapConfig;



public class BoardDAO {
	//MyBatis 셋팅값 호출
		SqlSessionFactory sqlSessionFactory = sqlMapConfig.getSqlSession();
		
		//mapper에 접근 하기 위한 sqlSession
		SqlSession sqlSession;
		
		//싱글톤으로 new없이 사용하기 때문에
		//다른곳에 new로 객체생성 못하게 private으로 막음 

		private BoardDAO() {}
		//싱글톤 패턴 - 객체생성 1회 실시 후 공유해서 사용
		//개체생성 1회 실시 
		private static BoardDAO instance = new BoardDAO();
		
		//외부에서 getInstance()를활용하여 1회 실시한 객체를 공유 
		public static BoardDAO getInstance() {
			return instance;
		}
		
		public List<BoardDTO> boardListAll(CriteriaDTO criDto){
			sqlSession = sqlSessionFactory.openSession();
			List<BoardDTO> list = new ArrayList<>();
			
			try {
				list = sqlSession.selectList("boardList",criDto);
				
				/*for (int i=0; i<list.size(); i++) {
					System.out.println(list.get(i).getCategory());
				}*/
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			return list;
		}
		//pagination
		public int totalCount(CriteriaDTO criDto) {
			sqlSession = sqlSessionFactory.openSession();
			int result = 0;
			
			try {
				result = sqlSession.selectOne("countPaging",criDto);
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				sqlSession.close();
			}
			return result;
		}
		// 검색리스트 뽑기 
		public List<BoardDTO> boardSearch(CriteriaDTO criDto){
			sqlSession = sqlSessionFactory.openSession();
			List<BoardDTO> list =null;
			try {
				list = sqlSession.selectList("searchList", criDto);
				System.out.println("결과 개수:" +list.size());
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				sqlSession.close();				
			}
			
			return list;
		}
		// 상세페이지 
		public BoardDTO boardReadView(String bno) {
			sqlSession = sqlSessionFactory.openSession();
			BoardDTO bDto = null;
			
			try {
				bDto = sqlSession.selectOne("boardReadView", bno);
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				sqlSession.close();
			}
			
			return bDto;
			
		}
		public void viewCnt(String bno, HttpSession countSession) {
			sqlSession = sqlSessionFactory.openSession();
			try {
				long update_time = 0;
				int result =0;
				//bno = 50 이라고 가정
				//조회수를 증가할 때 생기는 read_time_ 게시글번호가 없으면 
				//현재 처음 조회수를 1증가하는 경우
				//read_time_50 =null
				if(countSession.getAttribute("read_time_" +bno) !=null) {
					update_time =(long)countSession.getAttribute("read_time_" +bno);
				}
				
				//현재시간을 담는다
				long current_time =System.currentTimeMillis(); //10시 30분 5초
				
				//현재시간과 조회수 1증가한 시간을 비교해서 24시간 (1일)이 지났으면 
				//조회수 1증가
				if(current_time - update_time >24 * 60 * 60 * 1000) { //1000 =1초 //24 * 60 * 60 * 1000 => 1일
					result = sqlSession.update("viewCnt", bno);
					sqlSession.commit();
					
					//조회수 1증가한 시간을 session에 담는다. 
					countSession.setAttribute("read_time_"+bno, current_time);
					
					//session 저장소
					//read_time_50이라는 방을 하나 만들고
					//현재시간을 저장(10시 30분 5초)
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				sqlSession.close();
			}
		}
		public int boardRegist(BoardDTO bDto){
			int result = 0;
			sqlSession = sqlSessionFactory.openSession();
			try {
				result = sqlSession.insert("boardRegist",bDto);
				sqlSession.commit();
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				sqlSession.close();
			}
			return result;
			
		}
		public int boardUpdate(BoardDTO bDto) {
			int result =0;
			sqlSession = sqlSessionFactory.openSession();
			try {
				result = sqlSession.update("boardUpdate", bDto);
				sqlSession.commit();
				System.out.println("결과값:"+result);
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();			
			}
			return result;
		}
		public int boardDelete(int bno) {
			int flag= 0;
			sqlSession = sqlSessionFactory.openSession();
			
			try {
				flag = sqlSession.delete("boardDelete",bno);
				sqlSession.commit();
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();			
			}
			
			return flag;
		}
		public void boardReplyCntPlus(int bno) {
			sqlSession = sqlSessionFactory.openSession();
			
			try {
				sqlSession.update("rpPlus",bno);
				sqlSession.commit();
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
		}
		public void boardReplyCntMinus(int bno) {
			sqlSession = sqlSessionFactory.openSession();
			
			try {
				sqlSession.update("rpMinus",bno);
				sqlSession.commit();
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
		}
		
		// 게시글 추천여부 검사
		public int recCheck(Map<String, String> m){
		 sqlSession = sqlSessionFactory.openSession();
		 
		 int result = 0;
		 
		 try {
		  result = sqlSession.selectOne("rec_check", m);   
		 } catch (Exception e) {
		  e.printStackTrace();
		 } finally {
		  sqlSession.close();
		 }
		 return result;
		}

		// 게시글 추천
		public void recUpdate(Map<String, String> m){
		 sqlSession = sqlSessionFactory.openSession();
		 
		 try {
		  sqlSession.insert("rec_update", m);
		  sqlSession.update("goodPlus", m.get("bno"));
		  sqlSession.commit();
		 } catch (Exception e) {
		  e.printStackTrace();
		 } finally {
		  sqlSession.close();
		 }
		}

		// 게시글 추천 제거
		public void recDelete(Map<String, String> m){
		 sqlSession = sqlSessionFactory.openSession();
		 
		 try {
		  sqlSession.insert("rec_delete", m);
		  sqlSession.update("goodMinus", m.get("bno"));
		  sqlSession.commit();
		 } catch (Exception e) {
		  e.printStackTrace();
		 } finally {
		  sqlSession.close();
		 }
		}

		// 게시글 추천수
		public int recCount(String bno){
		 sqlSession = sqlSessionFactory.openSession();
		 
		 int count = 0;
		 
		 try {
		  count = sqlSession.selectOne("rec_count", bno);
		 } catch (Exception e) {
		  e.printStackTrace();
		 } finally {
		  sqlSession.close();
		 }
		 return count;
		} 
}	
