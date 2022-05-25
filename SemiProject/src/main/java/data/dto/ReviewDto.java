package data.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("review")
public class ReviewDto {
	private String num;
	private String member_num;
	private String member_name;
	private String place_id;
//	private String place_name;	// 나중에 place 테이블 만들고 조인
	private String stars;
	private String content;
	private Timestamp created_at;
}
