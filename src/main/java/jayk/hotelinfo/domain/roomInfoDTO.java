package jayk.hotelinfo.domain;

import lombok.Getter;
import lombok.ToString;

@ToString
@Getter
public class roomInfoDTO {
	
	private String roomName;
	private String roomExpain;
	private String roomGrade;
	private int roomPrice;
	private int roomMax;
	private int roomMin;
	private int addPrice;
	private int hotelId;
	private int roomId;

}
