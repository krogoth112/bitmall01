package com.bit2015.bitvga.vo;

public class ProductVo {
	   private Long PRODUCT_NO;            
	   private Long PRODUCT_CATEGORY_NO;  
	   private String PRODUCT_NAME;         
	   private String PRODUCT_MAKER;        
	   private String PRODUCT_PRICE;        
	   private String PRODUCT_CONTENT;      
	   private String REG_DATE;             
	   private Long PRODUCT_DCRATE; 
	   private Long STOCK_QUANTITY; 
	   private String IMAGE1;         
	   private String IMAGE3;         
	   private String IMAGE4;
	   private String EVENT;
	   
	public String getEVENT() {
		return EVENT;
	}
	public void setEVENT(String eVENT) {
		EVENT = eVENT;
	}
	public Long getPRODUCT_NO() {
		return PRODUCT_NO;
	}
	public void setPRODUCT_NO(Long pRODUCT_NO) {
		PRODUCT_NO = pRODUCT_NO;
	}
	public Long getPRODUCT_CATEGORY_NO() {
		return PRODUCT_CATEGORY_NO;
	}
	public void setPRODUCT_CATEGORY_NO(Long pRODUCT_CATEGORY_NO) {
		PRODUCT_CATEGORY_NO = pRODUCT_CATEGORY_NO;
	}
	public String getPRODUCT_NAME() {
		return PRODUCT_NAME;
	}
	public void setPRODUCT_NAME(String pRODUCT_NAME) {
		PRODUCT_NAME = pRODUCT_NAME;
	}
	public String getPRODUCT_MAKER() {
		return PRODUCT_MAKER;
	}
	public void setPRODUCT_MAKER(String pRODUCT_MAKER) {
		PRODUCT_MAKER = pRODUCT_MAKER;
	}
	public String getPRODUCT_PRICE() {
		return PRODUCT_PRICE;
	}
	public void setPRODUCT_PRICE(String pRODUCT_PRICE) {
		PRODUCT_PRICE = pRODUCT_PRICE;
	}
	public String getPRODUCT_CONTENT() {
		return PRODUCT_CONTENT;
	}
	public void setPRODUCT_CONTENT(String pRODUCT_CONTENT) {
		PRODUCT_CONTENT = pRODUCT_CONTENT;
	}
	public String getREG_DATE() {
		return REG_DATE;
	}
	public void setREG_DATE(String rEG_DATE) {
		REG_DATE = rEG_DATE;
	}
	public Long getPRODUCT_DCRATE() {
		return PRODUCT_DCRATE;
	}
	public void setPRODUCT_DCRATE(Long pRODUCT_DCRATE) {
		PRODUCT_DCRATE = pRODUCT_DCRATE;
	}
	public Long getSTOCK_QUANTITY() {
		return STOCK_QUANTITY;
	}
	public void setSTOCK_QUANTITY(Long sTOCK_QUANTITY) {
		STOCK_QUANTITY = sTOCK_QUANTITY;
	}
	public String getIMAGE1() {
		return IMAGE1;
	}
	public void setIMAGE1(String iMAGE1) {
		IMAGE1 = iMAGE1;
	}
	public String getIMAGE3() {
		return IMAGE3;
	}
	public void setIMAGE3(String iMAGE3) {
		IMAGE3 = iMAGE3;
	}
	public String getIMAGE4() {
		return IMAGE4;
	}
	public void setIMAGE4(String iMAGE4) {
		IMAGE4 = iMAGE4;
	}
	@Override
	public String toString() {
		return "ProductVo [PRODUCT_NO=" + PRODUCT_NO + ", PRODUCT_CATEGORY_NO="
				+ PRODUCT_CATEGORY_NO + ", PRODUCT_NAME=" + PRODUCT_NAME
				+ ", PRODUCT_MAKER=" + PRODUCT_MAKER + ", PRODUCT_PRICE="
				+ PRODUCT_PRICE + ", PRODUCT_CONTENT=" + PRODUCT_CONTENT
				+ ", REG_DATE=" + REG_DATE + ", PRODUCT_DCRATE="
				+ PRODUCT_DCRATE + ", STOCK_QUANTITY=" + STOCK_QUANTITY
				+ ", IMAGE1=" + IMAGE1 + ", IMAGE3=" + IMAGE3 + ", IMAGE4="
				+ IMAGE4 + ", EVENT=" + EVENT + "]";
	}
	   

}
