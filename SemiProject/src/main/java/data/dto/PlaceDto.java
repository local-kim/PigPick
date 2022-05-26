package data.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("place")
public class PlaceDto {
	private String id;
	private String name;
	private String category;
}
