package com.marondal.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class Test07Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String paymentCard = request.getParameter("paymentCard");
		String price = request.getParameter("price");
		
		int money = Integer.parseInt(price);
		
		out.println(""
				+ "<html>\n"
				+ "	<head><title>test07</title></head>\n"
				+ "	<body>\n"
				);
		if(!address.contains("서울시")) {
			out.println(""
					+ "		<h3>배달 불가 지역입니다.</h3>"
					);
		} else if (paymentCard.equals("신한카드")) {
			out.println(""
					+ "		<h3>결제 불가 카드 입니다.</h3>"
					);
		} else {
			out.println(""
					+ "		<h3>" + address + " 배달 준비중</h3>\n"
					+ "<hr>\n"
					+ "		<div>결제금액 : " + money + "원</div>\n"
					);
		}
		out.println(""
				+ "	</body>\n"
				+ "</html>");
	}

}
