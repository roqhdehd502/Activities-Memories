package dto;

import java.sql.Timestamp;

/*
BID      NOT NULL NUMBER(4)     
BNAME             VARCHAR2(20)  
BTITLE            VARCHAR2(100) 
BCONTENT          VARCHAR2(300) 
BDATE             DATE          
BHIT              NUMBER(4)     
BLIKE             NUMBER(4) 
*/

public class DTO {
	private int bId; // 글번호
	private String bName; // 글쓴이
	private String bTitle; // 글제목
	private String bContent; // 글내용
	private Timestamp bDate; // 작성날짜
	private int bHit; // 조회수
	private int bLike; // 추천수
	//private String tempDate; // 형식 변환용 날짜
	
	public DTO() { }

	public DTO(int bId, String bName, String bTitle, String bContent,
	 Timestamp bDate, int bHit, int bLike) {
		this.bId = bId;
		this.bName = bName;
		this.bTitle = bTitle;
		this.bContent = bContent;
		this.bDate = bDate;
		this.bHit = bHit;
		this.bLike = bLike;
	}

	public int getbId() {
		return bId;
	}

	public void setbId(int bId) {
		this.bId = bId;
	}

	public String getbName() {
		return bName;
	}

	public void setbName(String bName) {
		this.bName = bName;
	}

	public String getbTitle() {
		return bTitle;
	}

	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}

	public String getbContent() {
		return bContent;
	}

	public void setbContent(String bContent) {
		this.bContent = bContent;
	}

	public Timestamp getbDate() {
		return bDate;
	}

	public void setbDate(Timestamp bDate) {
		this.bDate = bDate;
	}

	public int getbHit() {
		return bHit;
	}

	public void setbHit(int bHit) {
		this.bHit = bHit;
	}

	public int getbLike() {
		return bLike;
	}

	public void setbLike(int bLike) {
		this.bLike = bLike;
	}
	/*
	public String getTempDate() {
		return tempDate;
	}

	public void setTempDate(String tempDate) {
		this.tempDate = tempDate;
	}
	*/
}