package data.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("insert_review")
public class InsertReviewDto {
	private String num;
	private String member_num;
	private String place_id;
	private String stars;
	private String content;
	private Timestamp created_at;
}
