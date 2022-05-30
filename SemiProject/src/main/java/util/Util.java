package util;

import java.util.List;

import data.dto.MenuRankDto;

public class Util {

	private static String[] category = {"한식", "일식", "중식", "양식", "아시아", "기타"};
	
	public static void convertCategory(List<MenuRankDto> list) {
		// 카테고리 숫자 -> 텍스트 변환
		for(MenuRankDto dto : list) {
			dto.setCategory(category[Integer.parseInt(dto.getCategory())]);
		}
	}
}
