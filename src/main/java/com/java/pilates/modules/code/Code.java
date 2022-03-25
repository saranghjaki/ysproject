package com.java.pilates.modules.code;

import java.util.ArrayList;
import java.util.List;

public class Code {
//	infrCodeGroup
	private String pilcgSeq;
	private String pilcgName;
	private String pilcgNameEng;
	private Integer pilcgDelNy;
//	infrCode
	private String pilcdSeq;
	private String pilcdName;
	private String pilcdNameEng;
	private Integer pilcdDelNy;
	private Integer pilcdUseNy;
	private  String pilmmSeq;
	
	//For cache 메모리에 상주하고있는 리스트 변수의이름
	public static  List<Code> cachedCodeArrayList = new ArrayList<Code>();
	
	//private String pilcgSeq;
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
	public String getPilcgNameEng() {
		return pilcgNameEng;
	}
	public void setPilcgNameEng(String pilcgNameEng) {
		this.pilcgNameEng = pilcgNameEng;
	}
	public Integer getPilcgDelNy() {
		return pilcgDelNy;
	}
	public void setPilcgDelNy(Integer pilcgDelNy) {
		this.pilcgDelNy = pilcgDelNy;
	}
	public String getPilcdSeq() {
		return pilcdSeq;
	}
	public void setPilcdSeq(String pilcdSeq) {
		this.pilcdSeq = pilcdSeq;
	}
	public String getPilcdName() {
		return pilcdName;
	}
	public void setPilcdName(String pilcdName) {
		this.pilcdName = pilcdName;
	}
	public String getPilcdNameEng() {
		return pilcdNameEng;
	}
	public void setPilcdNameEng(String pilcdNameEng) {
		this.pilcdNameEng = pilcdNameEng;
	}
	public Integer getPilcdDelNy() {
		return pilcdDelNy;
	}
	public void setPilcdDelNy(Integer pilcdDelNy) {
		this.pilcdDelNy = pilcdDelNy;
	}
	public Integer getPilcdUseNy() {
		return pilcdUseNy;
	}
	public void setPilcdUseNy(Integer pilcdUseNy) {
		this.pilcdUseNy = pilcdUseNy;
	}
	public String getPilmmSeq() {
		return pilmmSeq;
	}
	public void setPilmmSeq(String pilmmSeq) {
		this.pilmmSeq = pilmmSeq;
	}
	
	
}