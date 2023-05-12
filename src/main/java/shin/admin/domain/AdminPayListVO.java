package shin.admin.domain;

import java.util.Date;

import lombok.Data;

@Data
public class AdminPayListVO {
	
	//noticeVO
	private int noticeId;
	private String memberId;
	private String noticeTitle;
	private String noticeContent;
	private Date WriteDate;
	private int noticeViews;

	//hotelInfoVO
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
	//review
	private int reviewId;
	private String MemberId;
	private int reviewPoint;
	private String reviewContent;
	private int resPast;
	private Date wirteDate;
	private Date checkinDate;
	private int masterView;
	//리뷰개수, 별점평균
	private int rcount;
	private double avgpoint;
	private int avgstar;

}
