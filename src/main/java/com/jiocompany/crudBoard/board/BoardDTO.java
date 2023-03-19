package com.jiocompany.crudBoard.board;

import lombok.Data;

@Data
public class BoardDTO {
	private int rownum;
	private int b_no;
	private String b_title;
	private String b_content;
	private String u_id;
	private String b_regdate;
	private int b_readcnt;
	private int b_del;
//	private String b_img;
	private byte[] b_img;
	
	//검색을 위한 DTO
	private String type;
	private String keyword;
	
	//페이징을 위한 DTO
	private int offset;
	private int limit;
}
