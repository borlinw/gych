package com.gych.sjjs.controller;


import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import sun.misc.BASE64Encoder;

import com.hdsx.webutil.struts.BaseActionSupport;
import com.gych.utile.EasyUIPage;
import com.gych.sjjs.bean.Hjch;
import com.gych.utile.JsonUtils;
import com.gych.utile.ResponseUtils;
import com.gych.sjjs.server.SjjsServer;
/**
 * 系统管理Controller层
 * @author xunq
 *
 */
@Scope("prototype")
@Controller
public class SjjsController extends BaseActionSupport{
	private static final long serialVersionUID = -1512493918772500846L;
	private int page = 1;
	private int rows = 10;
	@Resource(name = "sjjsServerImpl")
	private SjjsServer sjjsServer;
	private Hjch hjch;

	/**
	 * 汇交测绘数据管理列表
	 */
	public void selectHjchList(){
		hjch.setPage(page);
		hjch.setRows(rows);
		int count=sjjsServer.selectHjchListCount(hjch);
		List<Hjch> list=sjjsServer.selectHjchList(hjch);
		EasyUIPage<Hjch> e=new EasyUIPage<Hjch>();
		e.setRows(list);
		e.setTotal(count);
		try {
			JsonUtils.write(e, getresponse().getWriter());
		} catch (Exception e1) {
			e1.printStackTrace();
		}
	}
	public void selectHjchById(){
		Hjch m=sjjsServer.selectHjchById(hjch);
		try {
			JsonUtils.write(m, getresponse().getWriter());
		} catch (Exception e1) {
			e1.printStackTrace();
		}
	}

	/**
	 * 添加汇交测绘数据
	 */
	public void insertHjch(){
		
		boolean b=sjjsServer.insertHjch(hjch);
		if(b!=true){
			ResponseUtils.write(getresponse(), "false");
		}else{
			ResponseUtils.write(getresponse(), "true");
		}
	}
	
	/**
	 * 删除汇交测绘数据
	 */
	public void deleteHjch(){
		boolean bl = sjjsServer.deleteHjch(hjch);
		if(bl == true){
			ResponseUtils.write(getresponse(), "true");
		}else{
			ResponseUtils.write(getresponse(), "false");
		}
	}
	/**
	 * 删除汇交测绘数据
	 */
	public void updateHjch(){
		
		boolean bl = sjjsServer.updateHjch(hjch);
		if(bl == true){
			ResponseUtils.write(getresponse(), "true");
		}else{
			ResponseUtils.write(getresponse(), "false");
		}
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getRows() {
		return rows;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
	public Hjch getHjch() {
		return hjch;
	}
	public void setHjch(Hjch hjch) {
		this.hjch = hjch;
	}

}
