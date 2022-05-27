package data.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("place")
public class PlaceDto {
	private String id;
	private String name;
	private String category;
	private String phone;
	private String x;
	private String y;
	private String address;
}
