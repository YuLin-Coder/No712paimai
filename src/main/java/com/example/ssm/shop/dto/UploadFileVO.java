package com.example.ssm.shop.dto;

import lombok.Data;

/**
 * @author 言曌
 * @date 2017/11/30 下午7:41
 */

@Data
public class UploadFileVO {

    private String src;

    private String title;

	public String getSrc() {
		return src;
	}

	public void setSrc(String src) {
		this.src = src;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
    
    

}
