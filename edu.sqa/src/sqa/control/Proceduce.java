package sqa.control;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import sqa.model.DoiTuongBaoHiem;
import sqa.model.HopDong;
import sqa.model.KhachHang;

/**
 * @author doanv
 *
 */
public class Proceduce {
	Connection conn;
	ConnectionDatabase connectionDatabase;
	public Proceduce() {
		try {
			conn = connectionDatabase.getConnection();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * @param khachHang
	 * @return
	 * @throws SQLException
	 */
	public KhachHang chechLogin(KhachHang khachHang) throws SQLException {
		String sql = "select * from khachhang where tendangnhap = ? and matkhau = ?";
		PreparedStatement preparedStatement = conn.prepareStatement(sql);
		preparedStatement.setString(1, khachHang.getTenDangNhap());
		preparedStatement.setString(2, khachHang.getMatKhau());
		ResultSet resultSet = preparedStatement.executeQuery();
		KhachHang temp = new KhachHang();
		while(resultSet.next()) {
			temp = new KhachHang(resultSet.getString("tenkhachhang"), resultSet.getString("cmnd"), resultSet.getString("ngaysinh"), resultSet.getString("sodienthoai"), 
					resultSet.getInt("gioitinh"), resultSet.getString("diachi"), resultSet.getString("tendangnhap"), resultSet.getString("matkhau"));
		}
		return temp;
	}
	/**
	 * @param khachHang
	 * @return
	 */
	public KhachHang checkRegister(KhachHang khachHang) {
		String sql = "insert into khachhang(khachhang.tenkhachhang,khachhang.cmnd,khachhang.ngaysinh,khachhang.sodienthoai,khachhang.gioitinh,khachhang.diachi,khachhang.tendangnhap,khachhang.matkhau)"
				+ " values(?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement preparedStatement = conn.prepareStatement(sql);
			preparedStatement.setString(1, khachHang.getTenKhachHang());
			preparedStatement.setString(2, khachHang.getCmnd());
			preparedStatement.setString(3, khachHang.getNgaySinh());
			preparedStatement.setString(4, khachHang.getSoDienThoai());
			preparedStatement.setInt(5, khachHang.getGioiTinh());
			preparedStatement.setString(6, khachHang.getDiaChi());
			preparedStatement.setString(7, khachHang.getTenDangNhap());
			preparedStatement.setString(8, khachHang.getMatKhau());
			preparedStatement.execute(sql);
			return khachHang;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	} 
	/**
	 * 
	 */
	public ArrayList<HopDong> getDanhSachHopDong(String tenDangNhap, int loaiHopDong){
		String sql = "SELECT \r\n" + 
				"     hopdong.id, hopdong.mahopdong, loaihopdong.ten, hopdong.trangthai\r\n" + 
				"FROM\r\n" + 
				"    hopdong\r\n" + 
				"        JOIN\r\n" + 
				"    loaihopdong ON loaihopdong.id = hopdong.loaihopdong\r\n" + 
				"        JOIN\r\n" + 
				"    khachhang ON khachhang.id = hopdong.khachhang\r\n" + 
				"    where khachhang.tendangnhap = ? and loaihopdong.id=?";
		try {
			PreparedStatement preparedStatement = conn.prepareStatement(sql);
			preparedStatement.setString(1, tenDangNhap);
			preparedStatement.setInt(2, loaiHopDong);
			ResultSet resultSet = preparedStatement.executeQuery();
			ArrayList<HopDong> danhSachHopDong = new ArrayList<>();
			while(resultSet.next()) {
				HopDong hopDong = new HopDong();
				hopDong.setLoaiHopDong(resultSet.getString("ten"));
				hopDong.setId(resultSet.getInt("id"));
				hopDong.setMaHopDong(resultSet.getString("mahopdong"));
				hopDong.setTrangThai((resultSet.getInt("trangthai")==1?"Đang hoạt động":"Không hoạt động"));
				danhSachHopDong.add(hopDong);
			}
			return danhSachHopDong;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public HopDong getHopDong(HopDong hopDong) {
		String sql = "SELECT \r\n" + 
				"    nguoibaohiem.id,\r\n" + 
				"    loaihopdong.ten,\r\n" + 
				"    nguoibaohiem.tennguoibaohiem,\r\n" + 
				"    nguoibaohiem.cmnd,\r\n" + 
				"    nguoibaohiem.ngaysinh,\r\n" + 
				"    nguoibaohiem.sodienthoai,\r\n" + 
				"    nguoibaohiem.gioitinh,\r\n" + 
				"    nguoibaohiem.diachi,\r\n" + 
				"    loaidoituong.tendoituong,\r\n" + 
				"    loaidoituong.chietkhau,\r\n" + 
				"    loaidoituong.sotienbaohiem,\r\n" + 
				"    nguoibaohiem.thoigianbaohiem\r\n" + 
				"FROM\r\n" + 
				"    nguoibaohiem\r\n" + 
				"        JOIN\r\n" + 
				"    hopdong ON hopdong.id = nguoibaohiem.hopdong\r\n" + 
				"        JOIN\r\n" + 
				"    loaihopdong ON loaihopdong.ten = hopdong.id\r\n" + 
				"        JOIN\r\n" + 
				"    loaidoituong ON loaidoituong.id = nguoibaohiem.loaidoituong\r\n" + 
				"WHERE\r\n" + 
				"    hopdong.id = ?";
		try {
			PreparedStatement preparedStatement = conn.prepareStatement(sql);
			preparedStatement.setInt(1, hopDong.getId());
			ResultSet resultSet = preparedStatement.executeQuery();
			ArrayList<DoiTuongBaoHiem> danhSachBaoHiem = new ArrayList<>();
			while(resultSet.next()) {
				DoiTuongBaoHiem temp = new DoiTuongBaoHiem();
				temp.setTen(resultSet.getString("tennguoibaohiem"));
				temp.setGioiTinh(resultSet.getInt("gioitinh"));
				temp.setCmnd(resultSet.getString("cmnd"));
				temp.setNgaySinh(resultSet.getString("ngaysinh"));
				temp.setGioiTinh(resultSet.getInt("gioitinh"));
				temp.setLoaiDoiTuong(resultSet.getString("tendoituong"));
				temp.setChietKhau(resultSet.getFloat("chieukhau"));
				temp.setSoTienBaoHiem(resultSet.getFloat("sotienbaohiem"));
				temp.setSoDienThoai(resultSet.getString("sodienthoai"));
				temp.setDiaChiThuongTru(resultSet.getString("diachi"));
				temp.setTrangThai(checkDate(resultSet.getString("thoigianbaohiem"))==true?"Đang hoạt động":"Không hoạt động");
				danhSachBaoHiem.add(temp);
			}
			hopDong.setDanhSachBaoHiem(danhSachBaoHiem);
			return hopDong;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	private boolean checkDate(String date) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		try {
			Date date1 = dateFormat.parse(date);
			Date date2 = new Date();
			if(date2.before(date1)) return true;
			else return false;
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	public boolean addHopDong(HopDong hopDong) {
		
		return true;
	}
	
}
