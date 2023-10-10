package com.entity.model;

import com.entity.KaoqinxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 考勤信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2022-04-02 09:04:16
 */
public class KaoqinxinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 员工姓名
	 */
	
	private String yuangongxingming;
		
	/**
	 * 部门
	 */
	
	private String bumen;
		
	/**
	 * 月份
	 */
	
	private Integer yuefen;
		
	/**
	 * 应出勤天数
	 */
	
	private Float yingchuqintianshu;
		
	/**
	 * 出勤天数
	 */
	
	private Float chuqintianshu;
		
	/**
	 * 请假时长
	 */
	
	private Float qingjiashizhang;
		
	/**
	 * 加班时长
	 */
	
	private Float jiabanshizhang;
		
	/**
	 * 旷工时长
	 */
	
	private Float kuanggongshizhang;
		
	/**
	 * 迟到次数
	 */
	
	private Integer chidaocishu;
		
	/**
	 * 早退次数
	 */
	
	private Integer zaotuicishu;
				
	
	/**
	 * 设置：员工姓名
	 */
	 
	public void setYuangongxingming(String yuangongxingming) {
		this.yuangongxingming = yuangongxingming;
	}
	
	/**
	 * 获取：员工姓名
	 */
	public String getYuangongxingming() {
		return yuangongxingming;
	}
				
	
	/**
	 * 设置：部门
	 */
	 
	public void setBumen(String bumen) {
		this.bumen = bumen;
	}
	
	/**
	 * 获取：部门
	 */
	public String getBumen() {
		return bumen;
	}
				
	
	/**
	 * 设置：月份
	 */
	 
	public void setYuefen(Integer yuefen) {
		this.yuefen = yuefen;
	}
	
	/**
	 * 获取：月份
	 */
	public Integer getYuefen() {
		return yuefen;
	}
				
	
	/**
	 * 设置：应出勤天数
	 */
	 
	public void setYingchuqintianshu(Float yingchuqintianshu) {
		this.yingchuqintianshu = yingchuqintianshu;
	}
	
	/**
	 * 获取：应出勤天数
	 */
	public Float getYingchuqintianshu() {
		return yingchuqintianshu;
	}
				
	
	/**
	 * 设置：出勤天数
	 */
	 
	public void setChuqintianshu(Float chuqintianshu) {
		this.chuqintianshu = chuqintianshu;
	}
	
	/**
	 * 获取：出勤天数
	 */
	public Float getChuqintianshu() {
		return chuqintianshu;
	}
				
	
	/**
	 * 设置：请假时长
	 */
	 
	public void setQingjiashizhang(Float qingjiashizhang) {
		this.qingjiashizhang = qingjiashizhang;
	}
	
	/**
	 * 获取：请假时长
	 */
	public Float getQingjiashizhang() {
		return qingjiashizhang;
	}
				
	
	/**
	 * 设置：加班时长
	 */
	 
	public void setJiabanshizhang(Float jiabanshizhang) {
		this.jiabanshizhang = jiabanshizhang;
	}
	
	/**
	 * 获取：加班时长
	 */
	public Float getJiabanshizhang() {
		return jiabanshizhang;
	}
				
	
	/**
	 * 设置：旷工时长
	 */
	 
	public void setKuanggongshizhang(Float kuanggongshizhang) {
		this.kuanggongshizhang = kuanggongshizhang;
	}
	
	/**
	 * 获取：旷工时长
	 */
	public Float getKuanggongshizhang() {
		return kuanggongshizhang;
	}
				
	
	/**
	 * 设置：迟到次数
	 */
	 
	public void setChidaocishu(Integer chidaocishu) {
		this.chidaocishu = chidaocishu;
	}
	
	/**
	 * 获取：迟到次数
	 */
	public Integer getChidaocishu() {
		return chidaocishu;
	}
				
	
	/**
	 * 设置：早退次数
	 */
	 
	public void setZaotuicishu(Integer zaotuicishu) {
		this.zaotuicishu = zaotuicishu;
	}
	
	/**
	 * 获取：早退次数
	 */
	public Integer getZaotuicishu() {
		return zaotuicishu;
	}
			
}
