package main.common.wook.pay.domain;

import lombok.Data;

@Data

public class paySuccessVO {
	private String memberId;
	private int hotelId;
	private int roomId;
	private int finalPrice;
	private int resPeople;
	private String checkinDate;
	private String checkoutDate;
	private String checkinName;
	private String checkinPhone;
	private int couponId;
	
	private int roomPrice;
	private int canUsePoint;
	private int reservationId;
}
