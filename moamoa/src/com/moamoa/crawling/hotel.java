package com.moamoa.crawling;
import java.util.ArrayList;
import java.util.HashSet;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.moamoa.dao.hotelDAO;
import com.moamoa.dto.hotelDTO;


public class hotel {
	static String url = "https://www.booking.com/searchresults.ko.html?&ss=%EC%84%9C%EC%9A%B8&nflt=class%3D4%3Bclass%3D5%3Bclass%3D3%3B&rsf=class-3&lsf=class%7C3%7C195&offset=";
	static int offset = 0;
	static String perfect_url = null;
	static int i = 0;
	public static ArrayList<String> hotelurl = new ArrayList<>();
	public static ArrayList<String> hotelrreviewurl = new ArrayList<>();
	static ArrayList<String> hotelname = new ArrayList<>();
	static HashSet<String> hs = new HashSet<>();
	static String base_url = "https://booking.com";
	static String sub_url = null;
	static String review_url = null;
	static Document htl_detail_page = null;
	
	public static void main(String[] args) {
		hotelDAO Dao =hotelDAO.getInstance();

		try {
			while (offset <= 60) { //<<  15 = 1 페이지  0부터 시작
				perfect_url = url + offset;
				Document doc = Jsoup.connect(perfect_url).get();
				Elements htl_list = doc.select("div.sr_item_main_block > h3 > a");


					for (Element element : htl_list) {

						// 호텔 페이지 URL 추출
						String title_url = element.attr("abs:href");
						sub_url = title_url.substring(0, 136);
						hotelurl.add(sub_url);

					hs.addAll(hotelurl);
					hotelurl.clear();
					hotelurl.addAll(hs);
				}

				offset += 15;
			}
//			=======================================================================
			for (String hotelurl1 : hotelurl) {
				Document doc1 = Jsoup.connect(hotelurl1).get();
				Document doc2 = Jsoup.connect(hotelurl1).get();
				Elements htl_list = doc2.select(".show_all_reviews_btn");
				String title_url = htl_list.attr("abs:href");
				
				if(title_url == null || title_url.length()==0) {
					continue;
					
				} else {
					htl_detail_page = Jsoup.connect(title_url).get();
					System.out.println(htl_detail_page.text());
					String hotelname = doc1.select("#hp_hotel_name").text();
					String summary = doc1.select("#summary > p").text();
					String addr = doc1.select(".hp_address_subtitle").text();
					System.out.println("호텔이름 " + hotelname);
					System.out.println("호텔 정보 " + summary);
					System.out.println("호텔 주소 " + addr);
					Elements hotelimgurl = doc1.select(".hp-gallery");
					
					for (Element element2 : hotelimgurl) {
						String hotelimg = element2.getElementsByTag("img").attr("src");
						System.out.println("hotelimg==============>" + hotelimg);
						hotelDTO Dto =new hotelDTO(hotelname, addr, summary, hotelimg);
						Dao.hotelinsert(Dto);
						break;
					}
					Elements move_review = htl_detail_page.select(".review_item");

					for (Element element3 : move_review) {

						String writer = element3.select(".review_item_reviewer .reviewer_name span").text();
						String score = element3.select("span.review-score-badge").text();
						String title = element3.select("div.review_item_header_content>span").text();
						String review_neg = element3.select("p.review_neg>span").text();
						String review_pos = element3.select("p.review_pos>span").text();
						String write_date = element3.select("p.review_staydate").text();
						
						System.out.println("작성자:" + writer + "\t");
						System.out.println("평점:" + score + "\t");
						System.out.println("리뷰 제목:" + title + "\t");
						System.out.println("부정 리뷰:" + review_neg + "\t");
						System.out.println("긍정 리뷰:" + review_pos + "\t");
						System.out.println("작성일:" + write_date + "\t");
						
						hotelDTO Dto1 =new hotelDTO(hotelname, writer, score, title, review_neg, review_pos, write_date);
						Dao.hotelupdate(Dto1);
					}

				}
			}

			

		} catch (Exception e) {
			e.printStackTrace();
		} finally {

		}

	}
}
