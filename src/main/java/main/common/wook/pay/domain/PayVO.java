package main.common.wook.pay.domain;

import java.sql.Date;

import lombok.Data;

@Data

public class PayVO {
	private int hotelId;
	private String hotelName;
	private String hotelLocation1;
	private String hotelLocation2;
	private String hotelImage;
	private String hotelImginfo;
	private String hotelThema;
	private int hotelPoint;
	private String hotelPhone;
	private String hotelEmail;
	private int hotelViews;
	private int horelDec;
	private int resCount;
	private int roomId;
	private String locationDetail;

	//roomInfo
	private int roomNumber;
	private String roomName;
	private String roomExpain;
	private String roomGrade;
	private int roomPrice;
	private int roomMax;
	private int roomMin;
	private int addPrice;
	
	//roomImage
	private int imageId;
	private String image;
	
	
	//쿠폰
	private int couponId;
	private String couponName;
	private int salePer;
	private int salePri;
	private int couponCheck;
	private Date couponMake;
	private Date couponStart;
	private Date couponEnd;
	private int productId;
	private int coupunRange;
	private int counponNumber;
	
	//회원정보
	private String memberId;
	private String memberPw;
	private String memberName;
	private String memberBirth;
	private String memberEmail;
	private String memberPhone;
	private String memberStatus;
	private String memberNickname;
	private String memberProfile;
	private int memberPoint;
	private String memberThema;
	private Date memberJoindate;
	private int memberGrade;
	
	
}
