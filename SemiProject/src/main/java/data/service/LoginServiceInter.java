package data.service;

public interface LoginServiceInter {
	public boolean login(String id, String password);
	public String getLoginName(String id);
}
