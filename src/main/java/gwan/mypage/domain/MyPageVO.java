package gwan.mypage.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class MyPageVO {
	//메인페이지
	private String hotelImage;
	private String hotelName;
	private String hotelLocation1;
	private String hotelLocation2;
	
	private Date checkinDate;
	private Date checkoutDate;
	
	private String hotelPhone;
	
	private String roomName;
	
	//위시리스트
	private String hotelThema;
	private int hotelId;
	
	private int roomPrice;
	
	private String memberId;
	
	private int wishlistId;
	
}
