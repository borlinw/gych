package com.gych.sjjs.server;

import java.util.HashMap;
import java.util.List;

import com.gych.sjjs.bean.Hjch;

public interface SjjsServer {

	int selectHjchListCount(Hjch hm);

	List<Hjch> selectHjchList(Hjch hm);

	boolean insertHjch(Hjch Hjch);

	boolean deleteHjch(String id);

	boolean updateHjch(Hjch Hjch);
	
	Hjch selectHjchById(Hjch hjch);
	HashMap selectHjchById2(Hjch hjch);
}
