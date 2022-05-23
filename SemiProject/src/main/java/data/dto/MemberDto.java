package data.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("member")
public class MemberDto {
	private String num;
	private String name;
	private String id;
	private String password;
	private String photo;
	private String email;
	private String tel;
	private String address;
	private String admin;
}
