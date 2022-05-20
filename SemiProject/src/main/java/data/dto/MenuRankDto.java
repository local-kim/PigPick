package data.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("menu_rank")
public class MenuRankDto {
	private String member_num;
	private String menu_num;
	private String count;
}
