package wishcodes;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class UserRegister
 */
public class UserRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// Form verilerini alalım
		String name = request.getParameter("fnameInput");
		String surname = request.getParameter("lnameInput");
		String email = request.getParameter("emailInput");
		String sifre = request.getParameter("passwordInput");
		
		
		// HTTP yanıtının içeriğinin HTML olduğunu belirt
	    response.setContentType("text/html");
		
		
		//Verileri ekrana yazdıralım
		response.getWriter().println("Name:"+ name +"</br>");
		response.getWriter().println("Surname:"+ surname +"</br>");
		response.getWriter().println("Email:"+ email +"</br>");
		response.getWriter().println("Password:"+ maskPassword(sifre) +"</br>");
		
		
		//Tarayıcı modelini ekrana mesaj kutusu olarak gönderelim
		String userAgent = request.getHeader("User-Agent");
		response.getWriter().println("<script>alert('Tarayıcı Modeli:" + userAgent + "');</script>");
		
		
	}
	
	private String maskPassword(String password) {
		int lenght = password.length();
		StringBuilder maskedPassword = new StringBuilder();
		for(int i =0 ; i < lenght; i++) {
			maskedPassword.append("*");
			
		}
		return maskedPassword.toString();
	}

	

}
