package com.gych.sjjs.server.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.stereotype.Service;
import com.hdsx.dao.query.base.BaseOperate;
import com.gych.sjjs.bean.Hjch;
import com.gych.sjjs.server.SjjsServer;

@Service
public class SjjsServerImpl extends BaseOperate  implements SjjsServer{

	public SjjsServerImpl() {
		super("sjjs", "jdbc");
	}

		public int selectHjchListCount(Hjch hm) {
		return queryOne("selectHjchListCount", hm);
	}

	
	public List<Hjch> selectHjchList(Hjch hm) {
		return queryList("selectHjchList", hm);
	}

	
	public boolean insertHjch(Hjch Hjch) {
		int b=insert("insertHjch", Hjch);
		return b>0?true:false;
	}

	
	public boolean deleteHjch(String id) {
		int b=delete("deleteHjch",id);
		return b>0?true:false;
	}

	
	public boolean updateHjch(Hjch Hjch) {
		int b=update("updateHjch", Hjch);
		return b>0?true:false;
	}

		
	public Hjch selectHjchById(Hjch Hjch) {
		return queryOne("selectHjchById", Hjch);
	}

	public HashMap selectHjchById2(Hjch hjch) {
		// TODO Auto-generated method stub
		return queryOne("selectHjchById2", hjch);
	}



}
