package com.java.pilates.modules.member;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.text.ParseException;


import javax.xml.crypto.Data;

public class MemberVo {
	
	/* list */
	private String pilmmSeq = "";
	private String pilinSeq = "";
	private String pilcdSeq = "";
	private String pilpgNumberCd = "";
	private String pilpgiSeq = "";
	private String pilpgSeq = "";
	private String pilinName = "";
	private String pilcdName = "";
	private String pilmmGenderCd = "";
	private String pilcgSeq= "";
	
	
	// common
	private String shOption;
	private String shValue;
	
	
	/* member Search */
	private String shPilmmName = "";
	private Integer shPilmmDelNy;
	private String shPilcgSeq;
	private String seq;
	/* paging */
	private int thisPage = 1;									// 현재 페이지
	private int rowNumToShow = 11;								// 화면에 보여줄 데이터 줄 갯수
	private int pageNumToShow = 5;								// 화면에 보여줄 페이징 번호 갯수

	private int totalRows;										// 전체 데이터 갯수
	private int totalPages;										// 전체 페이지 번호
	private int startPage;										// 시작 페이지 번호
	private int endPage;										// 마지막 페이지 번호
	
	private int startRnumForOracle = 1;							// 쿼리 시작 row
	private int endRnumForOracle;								// 쿼리 끝 row
	private Integer RNUM;
	
	private int startRnumForMysql = 0;							// 쿼리 시작 row

	//-------------------------------//
	private String selectListDate= "";
	private String pilpyStartDate= "";
	private String pilpyEndtDate= "";
	private String pilcgName= "";
	
	
	

	
	
	
	
	public void setParamsPaging(int totalRowsParam) {
		
		totalRows = totalRowsParam;

		totalPages = totalRows / rowNumToShow;

		if (totalRows % rowNumToShow > 0) {
			totalPages = totalPages+ 1;
		}

		if (totalPages < thisPage) {
			thisPage = totalPages;
		}
		
		startPage = (((thisPage - 1) / pageNumToShow) * pageNumToShow + 1);

		endPage = (startPage + pageNumToShow - 1);

		if (endPage > totalPages) {
			endPage = (totalPages);
		}
		
		endRnumForOracle = ((rowNumToShow * thisPage));
		startRnumForOracle = ((endRnumForOracle - rowNumToShow) + 1);
		if (startRnumForOracle < 1) startRnumForOracle = 1;
		
		
		if (thisPage == 1) {
			startRnumForMysql = 0;
		} else {
			startRnumForMysql = ((rowNumToShow * (thisPage-1)));
		}
		
		System.out.println("getThisPage():" + thisPage);
		System.out.println("getTotalRows():" + totalRows);
		System.out.println("getRowNumToShow():" + rowNumToShow);
		System.out.println("getTotalPages():" + totalPages);
		System.out.println("getStartPage():" + startPage);
		System.out.println("getEndPage():" + endPage);		
		System.out.println("getStartRnumForOracle():" + startRnumForOracle);
		System.out.println("getEndRnumForOracle():" + endRnumForOracle);
		System.out.println("getStartRnumForMysql(): " + startRnumForMysql);
		
	}
//----------------------------------------------------------//

	public String getPilmmSeq() {
		return pilmmSeq;
	}

	public void setPilmmSeq(String pilmmSeq) {
		this.pilmmSeq = pilmmSeq;
	}

	public String getPilinSeq() {
		return pilinSeq;
	}

	public void setPilinSeq(String pilinSeq) {
		this.pilinSeq = pilinSeq;
	}

	public String getPilcdSeq() {
		return pilcdSeq;
	}

	public void setPilcdSeq(String pilcdSeq) {
		this.pilcdSeq = pilcdSeq;
	}

	public String getPilpgNumberCd() {
		return pilpgNumberCd;
	}

	public void setPilpgNumberCd(String pilpgNumberCd) {
		this.pilpgNumberCd = pilpgNumberCd;
	}

	public String getPilpgiSeq() {
		return pilpgiSeq;
	}

	public void setPilpgiSeq(String pilpgiSeq) {
		this.pilpgiSeq = pilpgiSeq;
	}

	public String getPilpgSeq() {
		return pilpgSeq;
	}

	public void setPilpgSeq(String pilpgSeq) {
		this.pilpgSeq = pilpgSeq;
	}

	public String getPilinName() {
		return pilinName;
	}

	public void setPilinName(String pilinName) {
		this.pilinName = pilinName;
	}

	public String getPilcdName() {
		return pilcdName;
	}

	public void setPilcdName(String pilcdName) {
		this.pilcdName = pilcdName;
	}

	public String getShPilmmName() {
		return shPilmmName;
	}

	public void setShPilmmName(String shPilmmName) {
		this.shPilmmName = shPilmmName;
	}

	public Integer getShPilmmDelNy() {
		return shPilmmDelNy;
	}

	public void setShPilmmDelNy(Integer shPilmmDelNy) {
		this.shPilmmDelNy = shPilmmDelNy;
	}

	public int getThisPage() {
		return thisPage;
	}

	public void setThisPage(int thisPage) {
		this.thisPage = thisPage;
	}

	public int getRowNumToShow() {
		return rowNumToShow;
	}

	public void setRowNumToShow(int rowNumToShow) {
		this.rowNumToShow = rowNumToShow;
	}

	public int getPageNumToShow() {
		return pageNumToShow;
	}

	public void setPageNumToShow(int pageNumToShow) {
		this.pageNumToShow = pageNumToShow;
	}

	public int getTotalRows() {
		return totalRows;
	}

	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}

	public int getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getStartRnumForOracle() {
		return startRnumForOracle;
	}

	public void setStartRnumForOracle(int startRnumForOracle) {
		this.startRnumForOracle = startRnumForOracle;
	}

	public int getEndRnumForOracle() {
		return endRnumForOracle;
	}

	public void setEndRnumForOracle(int endRnumForOracle) {
		this.endRnumForOracle = endRnumForOracle;
	}

	public Integer getRNUM() {
		return RNUM;
	}

	public void setRNUM(Integer rNUM) {
		RNUM = rNUM;
	}

	public int getStartRnumForMysql() {
		return startRnumForMysql;
	}

	public void setStartRnumForMysql(int startRnumForMysql) {
		this.startRnumForMysql = startRnumForMysql;
	}

	public String getPilmmGenderCd() {
		return pilmmGenderCd;
	}

	public void setPilmmGenderCd(String pilmmGenderCd) {
		this.pilmmGenderCd = pilmmGenderCd;
	}

	public String getSelectListDate() {
		return selectListDate;
	}

	public void setSelectListDate(String selectListDate) {
		this.selectListDate = selectListDate;
	}

	public String getPilpyStartDate() {
		return pilpyStartDate;
	}

	public void setPilpyStartDate(String pilpyStartDate) {
		this.pilpyStartDate = pilpyStartDate;
	}

	public String getPilpyEndtDate() {
		return pilpyEndtDate;
	}

	public void setPilpyEndtDate(String pilpyEndtDate) {
		this.pilpyEndtDate = pilpyEndtDate;
	}

	public String getPilcgSeq() {
		return pilcgSeq;
	}

	public void setPilcgSeq(String pilcgSeq) {
		this.pilcgSeq = pilcgSeq;
	}

	public String getPilcgName() {
		return pilcgName;
	}

	public void setPilcgName(String pilcgName) {
		this.pilcgName = pilcgName;
	}

	public String getShOption() {
		return shOption;
	}

	public void setShOption(String shOption) {
		this.shOption = shOption;
	}

	public String getShValue() {
		return shValue;
	}

	public void setShValue(String shValue) {
		this.shValue = shValue;
	}

	public String getShPilcgSeq() {
		return shPilcgSeq;
	}

	public void setShPilcgSeq(String shPilcgSeq) {
		this.shPilcgSeq = shPilcgSeq;
	}

	public String getSeq() {
		return seq;
	}

	public void setSeq(String seq) {
		this.seq = seq;
	}
	


}
