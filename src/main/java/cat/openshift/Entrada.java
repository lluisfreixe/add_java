package cat.openshift;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.DecimalFormat;

@WebServlet("/Entrada")
public class Entrada extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Entrada() {
		super();
	}

	protected void request(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String num = request.getParameter("numero");
		String missatge = "";

		boolean isNumeric;
		if (num != null && num.matches("[0-9]+"))
			isNumeric = true;
		else
			isNumeric = false;

		DecimalFormat formatea = new DecimalFormat("###,###,###,###,###.##");
		long numero = 0;
		long i = 0;

		if (isNumeric) {
			numero = Long.parseLong(num);
			if (numero <= 999999999) {
				for (int j = 0; j < 1000; j++) {
					for (i = 0; i < numero; i++) {
					}
					//System.out.println("execucio feta");
				}
				missatge = missatge + "Des de " + 1 + " fins a " + formatea.format(i);
			} else {
				missatge = "El numero ha d'estar entre el numero 1 i el 999.999.999";
			}
		} else {
			missatge = "El numero informat no es correcte.";
		}

		request.setAttribute("numero", formatea.format(numero));
		request.setAttribute("miss", missatge);
		
		request.getRequestDispatcher("sortida.jsp").forward(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request(request, response);
	}

}
