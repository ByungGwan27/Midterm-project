package main.common.wook.admin.domain;

import java.sql.Date;

import lombok.Data;

@Data

public class QnaVO {

//	QNA_ID	NUMBER
//	QNA_TITLE	VARCHAR2(100 BYTE)
//	QNA_CONTENT	VARCHAR2(1000 BYTE)
//	ANSWER_CONTENT	VARCHAR2(1000 BYTE)
//	ANSWER_CHECK	NUMBER
//	QNA_DATE	DATE
//	ANSWER_DATE	DATE
//	MEMBER_ID	VARCHAR2(30 BYTE)
	
	private int qnaId;
	private String qnaTitle;
	private String qnaContent;
	private String answerContent;
	private String answerCheck;
	private Date qnaDate;
	private Date answerDate;
	private String memberId;
	
}
