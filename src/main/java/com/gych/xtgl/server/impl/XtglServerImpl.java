package com.gych.xtgl.server.impl;



import org.springframework.stereotype.Service;

import com.hdsx.dao.query.base.BaseOperate;

import com.gych.xtgl.server.XtglServer;

@Service
public class XtglServerImpl extends BaseOperate  implements XtglServer{

	public XtglServerImpl() {
		super("xtgl", "jdbc");
	}
	
	
}
