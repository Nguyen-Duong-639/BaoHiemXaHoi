package sqa.model;

import java.util.ArrayList;

public class HopDong {
	int id;
	KhachHang khachHang;
	String loaiHopDong;
	String maHopDong;
	String trangThai;
	ArrayList<DoiTuongBaoHiem> danhSachBaoHiem;
	public HopDong() {
		// TODO Auto-generated constructor stub
	}
	/**
	 * @param khachHang
	 * @param loaiHopDong
	 * @param danhSachBaoHiem
	 */
	public HopDong(KhachHang khachHang, String loaiHopDong, ArrayList<DoiTuongBaoHiem> danhSachBaoHiem) {
		super();
		this.khachHang = khachHang;
		this.loaiHopDong = loaiHopDong;
		this.danhSachBaoHiem = danhSachBaoHiem;
	}
	
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the khachHang
	 */
	public KhachHang getKhachHang() {
		return khachHang;
	}
	/**
	 * @param khachHang the khachHang to set
	 */
	public void setKhachHang(KhachHang khachHang) {
		this.khachHang = khachHang;
	}
	/**
	 * @return the loaiHopDong
	 */
	public String getLoaiHopDong() {
		return loaiHopDong;
	}
	/**
	 * @param loaiHopDong the loaiHopDong to set
	 */
	public void setLoaiHopDong(String loaiHopDong) {
		this.loaiHopDong = loaiHopDong;
	}
	
	/**
	 * @return the maHopDong
	 */
	public String getMaHopDong() {
		return maHopDong;
	}
	/**
	 * @param maHopDong the maHopDong to set
	 */
	public void setMaHopDong(String maHopDong) {
		this.maHopDong = maHopDong;
	}
	
	/**
	 * @return the trangThai
	 */
	public String getTrangThai() {
		return trangThai;
	}
	/**
	 * @param trangThai the trangThai to set
	 */
	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}
	/**
	 * @return the danhSachBaoHiem
	 */
	public ArrayList<DoiTuongBaoHiem> getDanhSachBaoHiem() {
		return danhSachBaoHiem;
	}
	/**
	 * @param danhSachBaoHiem the danhSachBaoHiem to set
	 */
	public void setDanhSachBaoHiem(ArrayList<DoiTuongBaoHiem> danhSachBaoHiem) {
		this.danhSachBaoHiem = danhSachBaoHiem;
	}
	
}
