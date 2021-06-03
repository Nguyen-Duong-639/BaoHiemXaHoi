package sqa.model;

public class KhachHang {
	String tenKhachHang;
	String cmnd;
	String ngaySinh;
	String soDienThoai;
	int gioiTinh;
	String diaChi;
	String tenDangNhap;
	String matKhau;
	public KhachHang() {
		// TODO Auto-generated constructor stub
	}
	/**
	 * @param tenKhachHang
	 * @param cmnd
	 * @param ngaySinh
	 * @param soDienThoai
	 * @param gioiTinh
	 * @param diaChi
	 * @param tenDangNhap
	 * @param matKhau
	 */
	public KhachHang(String tenKhachHang, String cmnd, String ngaySinh, String soDienThoai, int gioiTinh, String diaChi,
			String tenDangNhap, String matKhau) {
		super();
		this.tenKhachHang = tenKhachHang;
		this.cmnd = cmnd;
		this.ngaySinh = ngaySinh;
		this.soDienThoai = soDienThoai;
		this.gioiTinh = gioiTinh;
		this.diaChi = diaChi;
		this.tenDangNhap = tenDangNhap;
		this.matKhau = matKhau;
	}
	/**
	 * @return the tenKhachHang
	 */
	public String getTenKhachHang() {
		return tenKhachHang;
	}
	/**
	 * @param tenKhachHang the tenKhachHang to set
	 */
	public void setTenKhachHang(String tenKhachHang) {
		this.tenKhachHang = tenKhachHang;
	}
	/**
	 * @return the cmnd
	 */
	public String getCmnd() {
		return cmnd;
	}
	/**
	 * @param cmnd the cmnd to set
	 */
	public void setCmnd(String cmnd) {
		this.cmnd = cmnd;
	}
	/**
	 * @return the ngaySinh
	 */
	public String getNgaySinh() {
		return ngaySinh;
	}
	/**
	 * @param ngaySinh the ngaySinh to set
	 */
	public void setNgaySinh(String ngaySinh) {
		this.ngaySinh = ngaySinh;
	}
	/**
	 * @return the soDienThoai
	 */
	public String getSoDienThoai() {
		return soDienThoai;
	}
	/**
	 * @param soDienThoai the soDienThoai to set
	 */
	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}
	/**
	 * @return the gioiTinh
	 */
	public int getGioiTinh() {
		return gioiTinh;
	}
	/**
	 * @param gioiTinh the gioiTinh to set
	 */
	public void setGioiTinh(int gioiTinh) {
		this.gioiTinh = gioiTinh;
	}
	/**
	 * @return the diaChi
	 */
	public String getDiaChi() {
		return diaChi;
	}
	/**
	 * @param diaChi the diaChi to set
	 */
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	/**
	 * @return the tenDangNhap
	 */
	public String getTenDangNhap() {
		return tenDangNhap;
	}
	/**
	 * @param tenDangNhap the tenDangNhap to set
	 */
	public void setTenDangNhap(String tenDangNhap) {
		this.tenDangNhap = tenDangNhap;
	}
	/**
	 * @return the matKhau
	 */
	public String getMatKhau() {
		return matKhau;
	}
	/**
	 * @param matKhau the matKhau to set
	 */
	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}
	
	
}
