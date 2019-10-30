
package OnlineBanking;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class CreateServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String repassword = request.getParameter("repassword");
		String amt = request.getParameter("amount");
		double amount = Double.parseDouble(amt);
		String address = request.getParameter("address");
		String address2 = request.getParameter("address2");
		String DateOfBirth = request.getParameter("DateOfBirth");
		/* double DateOfBirth = Double.parseDouble(dob); */
		String ph = request.getParameter("phoneno");
		double phoneno = Double.parseDouble(ph);
			int status = RegisterUser.register(username, password, repassword, amount, address, phoneno,address2,DateOfBirth);
			if (status > 0) {
				out.print("WELCOME! YOUR ACCOUNT HAS SUCCESSFULLY OPENED");
				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				rd.include(request, response);
			}
			/*
			 * else{ out.print("Sorry,Registration failed. please try later");
			 * RequestDispatcher rd=request.getRequestDispatcher("MyHtml.html");
			 * rd.include(request, response); }
			 */

			out.close();
		
		
	}
}
