package data.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("menu")
public class MenuDto {
	private String num;
	private String name;
	private String category;
	private String type;
	private String spicy;
}
