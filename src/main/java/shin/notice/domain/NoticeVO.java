package shin.notice.domain;

import java.util.Date;

import lombok.Data;

@Data
public class NoticeVO {
	
	private int noticeId;
	private String memberId;
	private String noticeTitle;
	private String noticeContent;
	private Date WriteDate;
	private int noticeViews;

}
