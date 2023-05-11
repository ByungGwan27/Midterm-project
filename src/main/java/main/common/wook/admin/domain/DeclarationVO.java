package main.common.wook.admin.domain;

import java.sql.Date;

import lombok.Data;

@Data

public class DeclarationVO {

	
	private int decId;
	private String memberId;
	private int hotelId;
	private String decCategory;
	private Date decDate;
	private String decContent;
	private String decStatus;
	private int decCount;
	private String hotelName;
	
}
