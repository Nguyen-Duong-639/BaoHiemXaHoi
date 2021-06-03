package sqa.control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sqa.model.KhachHang;

@WebServlet(name = "Login", urlPatterns = {"/login"})
public class CheckLogin extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public CheckLogin() {
		// TODO Auto-generated constructor stub
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/view/login.jsp");
		dispatcher.forward(request, response);
		String tenDangNhap = request.getParameter("tenDangNhap");
		String matKhau = request.getParameter("matKhau");
		KhachHang khachHang = new KhachHang();
		khachHang.setTenDangNhap(tenDangNhap);
		khachHang.setMatKhau(matKhau);
		Proceduce proceduce = new Proceduce();
		try {
			KhachHang temp = new KhachHang();
			temp = proceduce.chechLogin(khachHang);
			if(temp==null) {
				response.sendRedirect("/edu.sqa/view/login.jsp?error=1");
			}
			else {
				request.setAttribute("khachHang", temp);
				response.sendRedirect("/edu.sqa/view/danh-sach-hop-dong.jsp?loaiHopDong=1");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
