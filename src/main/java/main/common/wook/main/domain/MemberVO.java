package main.common.wook.main.domain;



import java.sql.Date;

import lombok.Data;

@Data

public class MemberVO {
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
