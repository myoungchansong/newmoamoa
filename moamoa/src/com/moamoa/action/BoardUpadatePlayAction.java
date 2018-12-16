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

public class BoardUpadatePlayAction implements Action{

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
		String sBno = multi.getParameter("bno");
		String title = multi.getParameter("title");
		String writer = multi.getParameter("writer");
		String nik = multi.getParameter("nik");
		String content = multi.getParameter("content");
		String filename =" "; //(공백)
		int filesize = 0;
		String nowFileName = multi.getParameter("now-file-name");
		String nFileSize =multi.getParameter("now-file-size");
		System.out.println("파일사이즈 : "+nFileSize);
		
		//nowFileSize 숫자로 변환
		//값이 없으면 0 부여, 값이 있으면 숫자로 변환 
		int nowFileSize =0;
		if(!nFileSize.equals("")) {
			nowFileSize = Integer.parseInt(nFileSize);
		}
		
		
		//과거 filename과 filesize 불러오기
		BoardDAO bDao = BoardDAO.getInstance();
		BoardDTO bDto = bDao.boardReadView(sBno);
		String pfilename = bDto.getFilename();
		int pfilesize = bDto.getFilesize();
		System.out.println("과거 첨부파일:" + pfilename+","+pfilesize);
		System.out.println("현재 첨부파일:" + nowFileName+","+nowFileSize);		
		
		
		int flag =0;
		System.out.println("nowFileSize : "+nowFileSize);
		System.out.println("pfilename : "+pfilename+"nowfilename : "+nowFileName);
		if(nowFileName.equals(pfilename) && nowFileSize==0) {
			System.out.println("돼라");
			flag =1;
		}else {
			File file = new File(Constants.UPLOAD_PATH+pfilename);
			file.delete();
		}
		
		try {
			Enumeration files = multi.getFileNames(); //Enumeration 배열
			
			while(files.hasMoreElements()) {
				String file1 = (String)files.nextElement();
				System.out.println("파일1" + file1);
				System.out.println("file1:"+ file1);
	//					 multi.getOriginalFileName(file1); //그냥 오리지널 파일이름
				filename =multi.getFilesystemName(file1); // 파일이름을 가지고 오돼 중복이면 중복정책이 부여된 값을 가져옴
				System.out.println("저장 된 첨부파일:" + filename);
				
				if(nowFileSize !=0) {
					String result = filename.substring(nowFileName.length());
					System.out.println("test:" + nowFileName+","+ filename+","+ result);
					
					//파일명을 현재 파일 명으로 수정!! 
					if(result.length()>0) { //파일 사이즈가 0이 아닌경우 파일을 수정하고 등록 
						File file= new File(Constants.UPLOAD_PATH+filename);
						File fileNew = new File(Constants.UPLOAD_PATH+nowFileName);
						file.renameTo(fileNew);	//AAA->AAA 이름 변경
						
						//DB에 넣을 정보 
						filename = nowFileName;
						filesize = nowFileSize;
					}
				}
				File f1 = multi.getFile(file1);				// 첨부파일의이름
				if(f1 !=null) { 
					filesize = nowFileSize; //첨부파일의 파일 사이즈 저장
				}
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		if(filename ==null || filename.trim().equals("")) {
			filename ="-";
		}
		if(flag == 1) {
			System.out.println("파일네임 no");
			filename = "no";
		}
		 int bno = Integer.parseInt(sBno);
		 bDto = new BoardDTO(bno, title, content, writer, nik, filename, filesize);//파일자체가 들어가는게 아니라 이름만 들어가있는 거임 
		 bDao.boardUpdate(bDto);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(true);
		
		return forward;
	}

}
