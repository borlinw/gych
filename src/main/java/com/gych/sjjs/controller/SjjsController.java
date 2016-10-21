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
import com.gych.utile.WordOperation;
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
	private String id;
	private String xmlName;

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
		System.out.println(hjch.getLxdh());
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
		boolean bl = sjjsServer.deleteHjch(id);
		if(bl == true){
			ResponseUtils.write(getresponse(), "true");
		}else{
			ResponseUtils.write(getresponse(), "false");
		}
	}
	public void hjchDownDoc(){
		HashMap map=sjjsServer.selectHjchById2(hjch);
		//HashMap map=new HashMap();
		//System.out.println(map.get("A1"));
		map.put("a1",map.get("A1"));
		map.put("a2",map.get("A2"));
		map.put("a3",map.get("A3"));
		map.put("a4",map.get("A4"));
		map.put("a5",map.get("A5"));
		map.put("a6",map.get("A6"));
		map.put("a7",map.get("A7"));
		map.put("a8",map.get("A8"));
		map.put("a9",map.get("A9"));
		map.put("a10",map.get("A10"));
		map.put("a11",map.get("A11"));
		map.put("a12",map.get("A12"));
		map.put("a13",map.get("A13"));
		map.put("a14",map.get("A14"));
		map.put("a15",map.get("A15"));
		map.put("a16",map.get("A16"));
		map.put("a17",map.get("A17"));
		map.put("a18",map.get("A18"));
		map.put("a19",map.get("A19"));
		map.put("a20",map.get("A20"));
		map.put("a21",map.get("A21"));
		map.put("a22",map.get("A22"));
		map.put("a23",map.get("A23"));
		map.put("a24",map.get("A24"));
		map.put("a25",map.get("A25"));
		map.put("a26",map.get("A26"));
		map.put("a27",map.get("A27"));
		xmlName="广元市测绘成果汇交凭证.xml";
		WordOperation wo=new WordOperation();
		wo.createDoc(map,xmlName,getresponse());
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
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getXmlName() {
		return xmlName;
	}
	public void setXmlName(String xmlName) {
		this.xmlName = xmlName;
	}

}
