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
	
	//회원정보수정
	private String memberEmail;
	private String memberPhone;
	private String memberNickname;
	private String memberThema;
	private String memberPw;
	private String memberProfile;
	
	//쿠폰함
	private String couponName;
	private Date couponStart;
	private Date couponEnd;
	private int couponRange;
	private int salePer;
	private int salePri;
	private int couponId;
	private int couponCheck;
	
	
	
}
