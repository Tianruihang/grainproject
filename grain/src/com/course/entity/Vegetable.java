package com.course.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="vegetable")
public class Vegetable {
	private Integer vegetableId;
	private String VegetableName;
	private Float VegetablePrice;
	private Date VegetableDate;
	private String url;
	private String VegetableGrade;
	private String VegetableDescribe;
	private String VegetableClass;
	private String VegetableState;
	private String VegetablePicture;
	private String VegetableLocation;
	private String VegetableSupply;
	
	private Supply Supply;
		
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "VegetableId")
	public Integer getVegetableId() {
		return vegetableId;
	}
	public void setVegetableId(Integer vegetableId) {
		this.vegetableId = vegetableId;
	}
	
	@Column(name = "VegetableName")
	public String getVegetableName() {
		return VegetableName;
	}
	public void setVegetableName(String vegetableName) {
		VegetableName = vegetableName;
	}
	
	@Column(name = "VegetablePrice")
	public Float getVegetablePrice() {
		return VegetablePrice;
	}
	public void setVegetablePrice(Float vegetablePrice) {
		VegetablePrice = vegetablePrice;
	}
	@ManyToOne
	@JoinColumn(name="supplyId")
	public Supply getSupply() {
		return Supply;
	}
	public void setSupply(Supply Supply) {
		this.Supply = Supply;
	}
	
	@Column(name="VegetableDate")
	public Date getVegetableDate() {
		return VegetableDate;
	}
	public void setVegetableDate(Date vegetableDate) {
		VegetableDate = vegetableDate;
	}
	
	@Column(name="VegetableGrade")
	public String getVegetableGrade() {
		return VegetableGrade;
	}
	public void setVegetableGrade(String vegetableGrade) {
		VegetableGrade = vegetableGrade;
	}
	
	@Column(name="VegetableDescribe")
	public String getVegetableDescribe() {
		return VegetableDescribe;
	}
	public void setVegetableDescribe(String vegetableDescribe) {
		VegetableDescribe = vegetableDescribe;
	}
	
    @Column(name="VegetableClass")
	public String getVegetableClass() {
		return VegetableClass;
	}
	public void setVegetableClass(String vegetableClass) {
		VegetableClass = vegetableClass;
	}
	
	@Column(name="VegetableState")
	public String getVegetableState() {
		return VegetableState;
	}
	public void setVegetableState(String vegetableState) {
		VegetableState = vegetableState;
	}
	
	@Column(name="VegetablePicture")
	public String getVegetablePicture() {
		return VegetablePicture;
	}
	public void setVegetablePicture(String vegetablePicture) {
		VegetablePicture = vegetablePicture;
	}
	@Column(name="VegetableLocation")
	public String getVegetableLocation() {
		return VegetableLocation;
	}
	public void setVegetableLocation(String vegetableLocation) {
		VegetableLocation = vegetableLocation;
	}
	
	public String toString(){
		return this.VegetableName;
	}	
	
}
