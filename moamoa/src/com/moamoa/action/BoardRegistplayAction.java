package com.moamoa.action;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.moamoa.common.Constants;
import com.moamoa.dao.BoardDAO;
import com.moamoa.dto.BoardDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class BoardRegistplayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url ="boardList.bizpoll";
		
		//Multipart를 사용하기 위해서는  
		//cos.jar라는 라이브러리가 필요함. -> 라이브러리 추가
		
		//파일 업로드 처리
		File uploadDir = new File(Constants.UPLOAD_PATH);
		
		if(!uploadDir.exists()) { //저장할 경로가 없다면
			uploadDir.mkdir();    //디렉토리를 생성하세요.
		}
		
		//request를 확장시킨 MultipartRequest생성
		//request는 전부 String타입으로 받음
		//파일<- request로는 전송 불가
		//파일<- request를 향상시킨 MultipartRequest를 사용
		//파일 뿐만 아니라 기존에 String 타입도 전부 multi타입으로 받아야함.
		MultipartRequest multi = new MultipartRequest(request,     			  //request
													  Constants.UPLOAD_PATH,  //파일 업로드 디렉토리
													  Constants.MAX_UPLOAD,  //업로드 최대 용량 
													  "UTF-8", //인코딩
													  new DefaultFileRenamePolicy()); //파일이름중복정책(같은 파일 받으면 뒤에 숫자 붙여줌)
		
		String title = multi.getParameter("title");
		String writer = multi.getParameter("writer");
		String content = multi.getParameter("content");
		String filename =" "; //(공백)
		int filesize = 0;
		
		System.out.println(title+ ","+ content + ","+ writer);
		
		try {
			Enumeration files = multi.getFileNames();
			
			while(files.hasMoreElements()) {
				String file1 = (String)files.nextElement();
				filename =multi.getFilesystemName(file1); // 첨부파일의 파일이름
				File f1 = multi.getFile(file1);				// 첨부파일의이름
				
				if(f1 !=null) {
					filesize = (int)f1.length(); //첨부파일의 파일 사이즈 저장
				}
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		if(filename ==null || filename.trim().equals("")) {
			filename ="-";
		}
		
		BoardDAO bDao = BoardDAO.getInstance();
		BoardDTO bDto = new BoardDTO(title, content, writer,filename,filesize); //파일자체가 들어가는게 아니라 이름만 들어가있음
		int result = bDao.boardRegist(bDto);
		
		/*if(result >0) {// 등록성공
			System.out.println("등록성공");
		}else {//등록 실패
			System.out.println("등록실패");
		}*/
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(true);
		
		return forward;
	}

}
