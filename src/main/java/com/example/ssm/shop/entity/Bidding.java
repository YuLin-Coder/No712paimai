package com.example.ssm.shop.entity;

import java.util.Date;

import lombok.Data;

/**
 * 竞价记录
 * @author 言曌
 * @date 2020/2/23 9:36 下午
 */
@Data
public class Bidding {

    /**
     * ID
     */
    private Long id;

    /**
     * 用户ID
     */
    private Long userId;

    /**
     * 商品ID
     */
    private Long productId;

    /**
     * 价格
     */
    private Long price;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 竞价状态：1成功，0失败
     */
    private Integer status;

    /**
     * 用户
     */
    private User user;

    /**
     * 商品
     */
    private Product product;

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

	public Long getProductId() {
		return productId;
	}

	public void setProductId(Long productId) {
		this.productId = productId;
	}

	public Long getPrice() {
		return price;
	}

	public void setPrice(Long price) {
		this.price = price;
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

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

   
}

