package com.java.pilates.modules.member;

import java.util.ArrayList;
import java.util.List;

import com.java.pilates.modules.code.Code;

public class Member {
	
	public static  List<Member> cachedMemberArrayList = new ArrayList<Member>();
	/* list */
	private String pilmmSeq = "";
	private String pilmmId = "";
	private String pilmmName= "";
	private String pilmmPassword= "";
	private String piljqQuestionCd= "";
	private String pilmpTypeCd= "";
	private String pilmpDeviceCd= "";
	private String pilmpTelecomCd= "";
	private String pilmaoUrl= "";
	private String piljqAnswer= "";
	private String pilmaAddress2= "";
	private String pilmaAddress1= "";
	private String pilmaZipcode = "";
	private String pilatesmemberphoneCd = "";
	private String pilmmDob= "";
	private String pilmpNumber= "";
	private String pilpyStartDate= "";
	private String pilpyEndtDate= "";
	private String pilmmMemberNumber= "";
	private String pilmmGenderCd= "";
	private String pilinName= "";
	private String pilinSeq= "";
	private String pilcdName= "";
	private String pilpyDregisterDate= "";
	private String pilcgSeq= "";
	private String pilpgNumberCd= "";
	private String pilpgSeq= "";
	private String pilpgiSeq= "";
	private String pilpgName= "";
	private String selectListDate= "";
	private String pilcgName= "";
	private String piljqSeq= "";
	private Integer pilmmDelNy;

	
	public String getPilmmSeq() {
		return pilmmSeq;
	}
	public void setPilmmSeq(String pilmmSeq) {
		this.pilmmSeq = pilmmSeq;
	}
	public String getPilmmId() {
		return pilmmId;
	}
	public void setPilmmId(String pilmmId) {
		this.pilmmId = pilmmId;
	}
	public String getPilmmName() {
		return pilmmName;
	}
	public void setPilmmName(String pilmmName) {
		this.pilmmName = pilmmName;
	}
	public String getPilmmPassword() {
		return pilmmPassword;
	}
	public void setPilmmPassword(String pilmmPassword) {
		this.pilmmPassword = pilmmPassword;
	}
	
	public String getPilmmDob() {
		return pilmmDob;
	}
	public void setPilmmDob(String pilmmDob) {
		this.pilmmDob = pilmmDob;
	}
	public String getPilmpNumber() {
		return pilmpNumber;
	}
	public void setPilmpNumber(String pilmpNumber) {
		this.pilmpNumber = pilmpNumber;
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
	public String getPilmmMemberNumber() {
		return pilmmMemberNumber;
	}
	public void setPilmmMemberNumber(String pilmmMemberNumber) {
		this.pilmmMemberNumber = pilmmMemberNumber;
	}
	public String getPilinName() {
		return pilinName;
	}
	public void setPilinName(String pilinName) {
		this.pilinName = pilinName;
	}
	public String getPilinSeq() {
		return pilinSeq;
	}
	public void setPilinSeq(String pilinSeq) {
		this.pilinSeq = pilinSeq;
	}
	public String getPilcdName() {
		return pilcdName;
	}
	public void setPilcdName(String pilcdName) {
		this.pilcdName = pilcdName;
	}
	public String getPilpyDregisterDate() {
		return pilpyDregisterDate;
	}
	public void setPilpyDregisterDate(String pilpyDregisterDate) {
		this.pilpyDregisterDate = pilpyDregisterDate;
	}
	public String getPilcgSeq() {
		return pilcgSeq;
	}
	public void setPilcgSeq(String pilcgSeq) {
		this.pilcgSeq = pilcgSeq;
	}
	public String getPilpgNumberCd() {
		return pilpgNumberCd;
	}
	public void setPilpgNumberCd(String pilpgNumberCd) {
		this.pilpgNumberCd = pilpgNumberCd;
	}
	public String getPilpgSeq() {
		return pilpgSeq;
	}
	public void setPilpgSeq(String pilpgSeq) {
		this.pilpgSeq = pilpgSeq;
	}
	public String getPilpgiSeq() {
		return pilpgiSeq;
	}
	public void setPilpgiSeq(String pilpgiSeq) {
		this.pilpgiSeq = pilpgiSeq;
	}
	public String getPilpgName() {
		return pilpgName;
	}
	public void setPilpgName(String pilpgName) {
		this.pilpgName = pilpgName;
	}
	public String getSelectListDate() {
		return selectListDate;
	}
	public void setSelectListDate(String selectListDate) {
		this.selectListDate = selectListDate;
	}
	public String getPilmmGenderCd() {
		return pilmmGenderCd;
	}
	public void setPilmmGenderCd(String pilmmGenderCd) {
		this.pilmmGenderCd = pilmmGenderCd;
	}
	public String getPiljqQuestionCd() {
		return piljqQuestionCd;
	}
	public void setPiljqQuestionCd(String piljqQuestionCd) {
		this.piljqQuestionCd = piljqQuestionCd;
	}
	public String getPilcgName() {
		return pilcgName;
	}
	public void setPilcgName(String pilcgName) {
		this.pilcgName = pilcgName;
	}
	public String getPiljqSeq() {
		return piljqSeq;
	}
	public void setPiljqSeq(String piljqSeq) {
		this.piljqSeq = piljqSeq;
	}
	public Integer getPilmmDelNy() {
		return pilmmDelNy;
	}
	public void setPilmmDelNy(Integer pilmmDelNy) {
		this.pilmmDelNy = pilmmDelNy;
	}
	public static List<Member> getCachedMemberArrayList() {
		return cachedMemberArrayList;
	}
	public static void setCachedMemberArrayList(List<Member> cachedMemberArrayList) {
		Member.cachedMemberArrayList = cachedMemberArrayList;
	}
	public String getPilmpTypeCd() {
		return pilmpTypeCd;
	}
	public void setPilmpTypeCd(String pilmpTypeCd) {
		this.pilmpTypeCd = pilmpTypeCd;
	}
	public String getPilmpDeviceCd() {
		return pilmpDeviceCd;
	}
	public void setPilmpDeviceCd(String pilmpDeviceCd) {
		this.pilmpDeviceCd = pilmpDeviceCd;
	}
	public String getPilmpTelecomCd() {
		return pilmpTelecomCd;
	}
	public void setPilmpTelecomCd(String pilmpTelecomCd) {
		this.pilmpTelecomCd = pilmpTelecomCd;
	}
	public String getPilmaoUrl() {
		return pilmaoUrl;
	}
	public void setPilmaoUrl(String pilmaoUrl) {
		this.pilmaoUrl = pilmaoUrl;
	}
	public String getPiljqAnswer() {
		return piljqAnswer;
	}
	public void setPiljqAnswer(String piljqAnswer) {
		this.piljqAnswer = piljqAnswer;
	}
	public String getPilmaAddress2() {
		return pilmaAddress2;
	}
	public void setPilmaAddress2(String pilmaAddress2) {
		this.pilmaAddress2 = pilmaAddress2;
	}
	public String getPilmaAddress1() {
		return pilmaAddress1;
	}
	public void setPilmaAddress1(String pilmaAddress1) {
		this.pilmaAddress1 = pilmaAddress1;
	}
	public String getPilmaZipcode() {
		return pilmaZipcode;
	}
	public void setPilmaZipcode(String pilmaZipcode) {
		this.pilmaZipcode = pilmaZipcode;
	}
	public String getPilatesmemberphoneCd() {
		return pilatesmemberphoneCd;
	}
	public void setPilatesmemberphoneCd(String pilatesmemberphoneCd) {
		this.pilatesmemberphoneCd = pilatesmemberphoneCd;
	}
	
	
	
    
   
}
