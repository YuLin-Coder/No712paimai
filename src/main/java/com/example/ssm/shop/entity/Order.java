package com.example.ssm.shop.entity;

import java.io.Serializable;
import java.util.Date;

import lombok.Data;

/**
 * (Order)实体类
 *
 * @since 2020-03-06 09:23:17
 */
@Data
public class Order implements Serializable {
    private static final long serialVersionUID = -25485605794925400L;

    /**
     * ID
     */
    private Long id;

    public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getProductId() {
		return productId;
	}

	public void setProductId(Long productId) {
		this.productId = productId;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	/**
     * 订单ID
     */
    private Long productId;

    /**
     * 用户ID
     */
    private Long userId;

    /**
     * 订单状态：0待支付,1待发货, 2已发货, 3已收货
     */
    private Integer status;

    /**
     * 价格
     */
    private Long price;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 用户
     */
    private User user;

    /**
     * 商品
     */
    private Product product;

}