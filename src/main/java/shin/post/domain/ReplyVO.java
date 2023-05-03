package shin.post.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReplyVO {

	private int commentId;
	private String memberId;
	private int postId;
	private String commentContent;
	private Date writeDate;
	
}
