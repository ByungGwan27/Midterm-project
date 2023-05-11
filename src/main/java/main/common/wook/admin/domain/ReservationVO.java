package main.common.wook.admin.domain;

import java.sql.Date;

import lombok.Data;

@Data

public class ReservationVO {
//	RESERVATION_ID	NUMBER
//	MEMBER_ID	VARCHAR2(30 BYTE)
//	HOTEL_ID	NUMBER
//	ROOM_ID	NUMBER
//	FINAL_PRICE	NUMBER
//	RES_PEOPLE	NUMBER
//	COMPLETE_DATE	DATE
//	COMPLETE_CHECK	NUMBER
//	CHECKIN_DATE	DATE
//	CHECKOUT_DATE	DATE
	
	private int reservationId;
	private String memberId;
	private int hotelId;
	private int roomId;
	private int finalPrice;
	private int resPeople;
	private Date completeDate;
	private String resStatus;
	private Date checkinDate;
	private Date checkoutDate;
	private String checkinName;
	private String checkinPhone;
	private String hotelName;
	private String roomName;
	private int dday;
	
	
	
}
