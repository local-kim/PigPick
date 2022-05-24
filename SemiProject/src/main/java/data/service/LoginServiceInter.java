package data.service;

import java.util.List;
import java.util.Map;

public interface LoginServiceInter {
	public boolean login(String id, String password);
	public List<Map<String, Object>> getLoginInfo(String id);
}
