package com.example.ssm.shop.entity;

import java.util.Date;

import lombok.Data;

/**
 * 用户
 * @author 言曌
 * @date 2020-02-22 20:48
 */
@Data
public class User {
    /**
     * ID
     */
    private Long id;

    /**
     * 用户名
     */
    private String username;

    /**
     * 显示名
     */
    private String displayName;

    /**
     * Email
     */
    private String email;

    /**
     * 密码
     */
    private String password;

    /**
     * 地址
     */
    private String address;

    /**
     * 手机号码
     */
    private String phone;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 状态：1正常，0禁止登录
     */
    private Integer status;

    /**
     * 类型，1管理员，0普通用户
     */
    private Integer type;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getDisplayName() {
		return displayName;
	}

	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

}
