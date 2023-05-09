package shin.post.domain;

import java.util.Date;

import lombok.Data;

@Data
public class PostVO {
	private int postId;
	private String memberId;
	private String postTitle;
	private String postContent;
	private Date writeDate;
	private int postRec;
	private int postViews;
	private String postImages;
	private String memberProfile;
	private String memberName;
	
}
