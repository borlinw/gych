package com.gych.sjjs.bean;
import java.io.Serializable;
/**
 * 汇交测绘明细实体
 * @author xnq
 *
 */
public class HjchMx implements Serializable {
	private static final long serialVersionUID = 1L;
	private String  id;
	private String  hjchid;
	private String  xh;
	private String  sjlx;
	private String  sl;
	private String  lxdh;
	private String  chxmmc;
	private String  jchxmszd;
	private String  scdw;
	private String  wcsj;
	private String  zbx;
	private String  bz;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getHjchid() {
		return hjchid;
	}
	public void setHjchid(String hjchid) {
		this.hjchid = hjchid;
	}
	public String getXh() {
		return xh;
	}
	public void setXh(String xh) {
		this.xh = xh;
	}
	public String getSjlx() {
		return sjlx;
	}
	public void setSjlx(String sjlx) {
		this.sjlx = sjlx;
	}
	public String getSl() {
		return sl;
	}
	public void setSl(String sl) {
		this.sl = sl;
	}
	public String getLxdh() {
		return lxdh;
	}
	public void setLxdh(String lxdh) {
		this.lxdh = lxdh;
	}
	public String getChxmmc() {
		return chxmmc;
	}
	public void setChxmmc(String chxmmc) {
		this.chxmmc = chxmmc;
	}
	public String getJchxmszd() {
		return jchxmszd;
	}
	public void setJchxmszd(String jchxmszd) {
		this.jchxmszd = jchxmszd;
	}
	public String getScdw() {
		return scdw;
	}
	public void setScdw(String scdw) {
		this.scdw = scdw;
	}
	public String getWcsj() {
		return wcsj;
	}
	public void setWcsj(String wcsj) {
		this.wcsj = wcsj;
	}
	public String getZbx() {
		return zbx;
	}
	public void setZbx(String zbx) {
		this.zbx = zbx;
	}
	public String getBz() {
		return bz;
	}
	public void setBz(String bz) {
		this.bz = bz;
	}
	
}
