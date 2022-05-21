package data.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("menu_rank")
public class MenuRankDto {
	private String member_num;
	private String member_name;
	private String menu_num;
	private String menu_name;
	private String count;
}
