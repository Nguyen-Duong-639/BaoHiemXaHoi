package sqa.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sqa.model.KhachHang;

public class CheckRegister extends HttpServlet{

	private static final long serialVersionUID = 1L;
	public CheckRegister() {
		// TODO Auto-generated constructor stub
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/view/register.jsp");
		dispatcher.forward(request, response);
		String tenKhachHang = request.getParameter("tenKhachHang");
		String ngaySinh = request.getParameter("ngaySinh");
		String email = request.getParameter("email");
		String diaChi = request.getParameter("diaChi");
		String soDienThoai = request.getParameter("soDienThoai");
		int gioiTinh = request.getParameter("gender").equals("male")?1:0;
		String tenDangNhap = request.getParameter("tenDangNhap");
		String matKhau = request.getParameter("matKhau");
		KhachHang khachHang = new KhachHang(tenKhachHang, "unknown", ngaySinh, soDienThoai, gioiTinh, diaChi, tenDangNhap, matKhau);
		Proceduce proceduce = new Proceduce();
		if(proceduce.checkRegister(khachHang)==null) {
			response.sendRedirect("/edu.sqa/view/lregister.jsp");
		}else {
			khachHang = proceduce.checkRegister(khachHang);
			request.setAttribute("khachHang", khachHang);
			response.sendRedirect("/edu.sqa/index.jsp");
		}
	}
}
