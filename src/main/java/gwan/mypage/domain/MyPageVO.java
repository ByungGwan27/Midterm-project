package gwan.mypage.domain;

import lombok.Data;

@Data
public class MyPageVO {
	//위시리스트
	private String hotelName;
	private String hotelLocation1;
	private String hotelLocation2;
	private String hotelThema;
	private int hotelId;
	
	private int roomPrice;
	
	private String memberId;
}
