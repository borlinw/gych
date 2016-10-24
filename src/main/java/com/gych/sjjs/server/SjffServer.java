package com.gych.sjjs.server;

import java.util.HashMap;
import java.util.List;

import com.gych.sjjs.bean.Sjff;

public interface SjffServer {

	int selectSjffListCount(Sjff hm);

	List<Sjff> selectSjffList(Sjff hm);

	boolean insertSjff(Sjff Sjff);

	boolean deleteSjff(String id);

	boolean updateSjff(Sjff Sjff);
	
	Sjff selectSjffById(Sjff sjff);
	HashMap selectSjffById2(Sjff sjff);
}
