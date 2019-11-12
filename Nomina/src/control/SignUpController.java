package control;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EmpleadoDao;
import model.Empleado;

/**
 * Servlet implementation class SignUpController
 */
@WebServlet("/SignUpController")
public class SignUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SignUpController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String codigo = request.getParameter("codigo");
		String nombre = request.getParameter("nombre");
		String cedula = request.getParameter("cedula");
		String fecha_nacimiento = request.getParameter("fecha_nacimiento");
		String fecha_ingreso = request.getParameter("fecha_ingreso");
		String fecha_retiro = request.getParameter("fecha_retiro");

		String pattern = "yyyy-MM-dd";
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
		Date date_nac;
		Date date_ing;
		Date date_ret;
		try {
			date_nac = simpleDateFormat.parse(fecha_nacimiento);
			date_ing = simpleDateFormat.parse(fecha_ingreso);
			date_ret = simpleDateFormat.parse(fecha_retiro);
			Empleado empleado = new Empleado(codigo, nombre, cedula, date_nac, date_ing, date_ret);
			EmpleadoDao edao = new EmpleadoDao();
			Empleado e = edao.find(codigo);
			if (e == null) {
				edao.insert(empleado);
				response.getWriter().append("Se ha registrado correctamente");
				request.getRequestDispatcher("index.jsp").forward(request, response);
			} else {
				response.getWriter().append("El empleado ya existe.");
				request.getRequestDispatcher("").forward(request, response);
			}
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

	}

}
