package data.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("review")
public class ReviewDto {
	private int num;
	private String member_num;
	private String place_id;
	private String stars;
	private String content;
	private Timestamp created_at;
//	private int readcount;
//	private int reg;
//	private int restep;
//	private int relevel; 
//	private int acount;
}
