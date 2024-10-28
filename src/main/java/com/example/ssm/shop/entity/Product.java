package com.example.ssm.shop.entity;

import java.util.Date;
import java.util.List;

import lombok.Data;

/**
 * 商品
 *
 * @author 言曌
 * @date 2020/2/23 2:01 下午
 */
@Data
public class Product {

    /**
     * ID
     */
    private Long id;

    /**
     * 发布人用户ID
     */
    private Long userId;

    /**
     * 分类ID
     */
    private Long cateId;

    /**
     * 名称
     */
    private String name;

    /**
     * 描述
     */
    private String summary;

    /**
     * 起拍价
     */
    private Long startPrice;

    /**
     * 当前价格
     */
    private Long currentPrice;

    /**
     * 图片，多个以逗号分隔
     */
    private String imgUrl;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 截止时间
     */
    private Date endTime;

    /**
     * 状态：1正在拍卖，0流拍，2成交
     */
    private Integer status;

    public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getCateId() {
		return cateId;
	}

	public void setCateId(Long cateId) {
		this.cateId = cateId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public Long getStartPrice() {
		return startPrice;
	}

	public void setStartPrice(Long startPrice) {
		this.startPrice = startPrice;
	}

	public Long getCurrentPrice() {
		return currentPrice;
	}

	public void setCurrentPrice(Long currentPrice) {
		this.currentPrice = currentPrice;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public List<Bidding> getBiddingList() {
		return biddingList;
	}

	public void setBiddingList(List<Bidding> biddingList) {
		this.biddingList = biddingList;
	}

	/**
     * 用户
     */
    private User user;

    /**
     * 分类
     */
    private Category category;

    /**
     * 订单
     */
    private Order order;

    /**
     * 竞价列表
     */
    private List<Bidding> biddingList;
}
