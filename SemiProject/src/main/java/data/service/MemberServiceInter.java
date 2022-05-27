package data.service;

import data.dto.MemberDto;

public interface MemberServiceInter {
	public void insertMember(MemberDto member);
	public int checkId(String id);
	public int checkKakaoMember(String id);
}
