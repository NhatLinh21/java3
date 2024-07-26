/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ENTITY;


public class GRADE {
    private int ID;
    private String maSv;
    private String hoTen;
    private Float diemTa;
    private Float diemTh;
    private Float diemTc;

    public GRADE(int ID,String maSv, String hoTen, Float diemTa, Float diemTh, Float diemTc) {
        this.ID = ID;
        this.maSv = maSv;
        this.hoTen = hoTen;
        this.diemTa = diemTa;
        this.diemTh = diemTh;
        this.diemTc = diemTc;
    }

    public GRADE() {
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    public Float getDiemTa() {
        return diemTa;
    }

    public void setDiemTa(Float diemTa) {
        this.diemTa = diemTa;
    }

    public Float getDiemTh() {
        return diemTh;
    }

    public void setDiemTh(Float diemTh) {
        this.diemTh = diemTh;
    }

    public Float getDiemTc() {
        return diemTc;
    }

    public void setDiemTc(Float diemTc) {
        this.diemTc = diemTc;
    }

    public String getMaSv() {
        return maSv;
    }

    public void setMaSv(String maSv) {
        this.maSv = maSv;
    }
    
    
    public Float getDiemTb(){
        return ((diemTa+diemTh+diemTc) / 3);
    }
}
