package jayk.hotelinfo.domain;

import java.util.Date;

import lombok.Data;

@Data
public class HotelInfoVO {
	//hotel
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

	//roomInfo
	private int roomNumber;
	private String roomName;
	private String roomExpain;
	private String roomGrade;
	private int roomPrice;
	private int roomMax;
	private int roomMin;
	private int addPrice;
	
	//review
	private int reviewId;
	private String MemberId;
	private int reviewPoint;
	private String reviewContent;
	private int resPast;
	private Date wirteDate;
	private Date checkinDate;
	private int masterView;
	private int rcount;
	private double avgpoint;
}
