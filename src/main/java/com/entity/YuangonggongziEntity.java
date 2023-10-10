package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 员工工资
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2022-04-02 09:04:16
 */
@TableName("yuangonggongzi")
public class YuangonggongziEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public YuangonggongziEntity() {
		
	}
	
	public YuangonggongziEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 月份
	 */
					
	private String yuefen;
	
	/**
	 * 员工工号
	 */
					
	private String yuangonggonghao;
	
	/**
	 * 员工姓名
	 */
					
	private String yuangongxingming;
	
	/**
	 * 基本工资
	 */
					
	private Integer jibengongzi;
	
	/**
	 * 加班工资
	 */
					
	private Integer jiabangongzi;
	
	/**
	 * 绩效奖金
	 */
					
	private Integer jixiaojiangjin;
	
	/**
	 * 其他补助
	 */
					
	private Integer qitabuzhu;
	
	/**
	 * 请假
	 */
					
	private Integer qingjia;
	
	/**
	 * 旷工
	 */
					
	private Integer kuanggong;
	
	/**
	 * 个税
	 */
					
	private Integer geshui;
	
	/**
	 * 公积金
	 */
					
	private Integer gongjijin;
	
	/**
	 * 社保代缴
	 */
					
	private Integer shebaodaijiao;
	
	/**
	 * 实发工资
	 */
					
	private Integer shifagongzi;
	
	/**
	 * 登记日期
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date dengjiriqi;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：月份
	 */
	public void setYuefen(String yuefen) {
		this.yuefen = yuefen;
	}
	/**
	 * 获取：月份
	 */
	public String getYuefen() {
		return yuefen;
	}
	/**
	 * 设置：员工工号
	 */
	public void setYuangonggonghao(String yuangonggonghao) {
		this.yuangonggonghao = yuangonggonghao;
	}
	/**
	 * 获取：员工工号
	 */
	public String getYuangonggonghao() {
		return yuangonggonghao;
	}
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
	 * 设置：基本工资
	 */
	public void setJibengongzi(Integer jibengongzi) {
		this.jibengongzi = jibengongzi;
	}
	/**
	 * 获取：基本工资
	 */
	public Integer getJibengongzi() {
		return jibengongzi;
	}
	/**
	 * 设置：加班工资
	 */
	public void setJiabangongzi(Integer jiabangongzi) {
		this.jiabangongzi = jiabangongzi;
	}
	/**
	 * 获取：加班工资
	 */
	public Integer getJiabangongzi() {
		return jiabangongzi;
	}
	/**
	 * 设置：绩效奖金
	 */
	public void setJixiaojiangjin(Integer jixiaojiangjin) {
		this.jixiaojiangjin = jixiaojiangjin;
	}
	/**
	 * 获取：绩效奖金
	 */
	public Integer getJixiaojiangjin() {
		return jixiaojiangjin;
	}
	/**
	 * 设置：其他补助
	 */
	public void setQitabuzhu(Integer qitabuzhu) {
		this.qitabuzhu = qitabuzhu;
	}
	/**
	 * 获取：其他补助
	 */
	public Integer getQitabuzhu() {
		return qitabuzhu;
	}
	/**
	 * 设置：请假
	 */
	public void setQingjia(Integer qingjia) {
		this.qingjia = qingjia;
	}
	/**
	 * 获取：请假
	 */
	public Integer getQingjia() {
		return qingjia;
	}
	/**
	 * 设置：旷工
	 */
	public void setKuanggong(Integer kuanggong) {
		this.kuanggong = kuanggong;
	}
	/**
	 * 获取：旷工
	 */
	public Integer getKuanggong() {
		return kuanggong;
	}
	/**
	 * 设置：个税
	 */
	public void setGeshui(Integer geshui) {
		this.geshui = geshui;
	}
	/**
	 * 获取：个税
	 */
	public Integer getGeshui() {
		return geshui;
	}
	/**
	 * 设置：公积金
	 */
	public void setGongjijin(Integer gongjijin) {
		this.gongjijin = gongjijin;
	}
	/**
	 * 获取：公积金
	 */
	public Integer getGongjijin() {
		return gongjijin;
	}
	/**
	 * 设置：社保代缴
	 */
	public void setShebaodaijiao(Integer shebaodaijiao) {
		this.shebaodaijiao = shebaodaijiao;
	}
	/**
	 * 获取：社保代缴
	 */
	public Integer getShebaodaijiao() {
		return shebaodaijiao;
	}
	/**
	 * 设置：实发工资
	 */
	public void setShifagongzi(Integer shifagongzi) {
		this.shifagongzi = shifagongzi;
	}
	/**
	 * 获取：实发工资
	 */
	public Integer getShifagongzi() {
		return shifagongzi;
	}
	/**
	 * 设置：登记日期
	 */
	public void setDengjiriqi(Date dengjiriqi) {
		this.dengjiriqi = dengjiriqi;
	}
	/**
	 * 获取：登记日期
	 */
	public Date getDengjiriqi() {
		return dengjiriqi;
	}

}
