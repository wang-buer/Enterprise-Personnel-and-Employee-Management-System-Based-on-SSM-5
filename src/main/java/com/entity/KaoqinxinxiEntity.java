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
 * 考勤信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2022-04-02 09:04:16
 */
@TableName("kaoqinxinxi")
public class KaoqinxinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public KaoqinxinxiEntity() {
		
	}
	
	public KaoqinxinxiEntity(T t) {
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
	 * 员工工号
	 */
					
	private String yuangonggonghao;
	
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
