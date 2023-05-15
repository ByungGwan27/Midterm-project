package jayk.hotelinfo.domain;

import lombok.Data;

@Data
public class ConditionDTO {
	private String location;
	private String theme;
	private int minPrice;
	private int maxPrice;
	private int minRoom;
	private int maxRoom;
}
