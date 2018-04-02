package vvr.js;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ProvinceCityServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		//����xml���ı�
		response.setContentType("text/xml;charset=UTF-8");
		String province = request.getParameter("province");
		PrintWriter out = response.getWriter();
		out.write("<?xml version='1.0' encoding='UTF-8'?>");
		out.write("<root>");
		if("����".equals(province)){
			out.write("<city>����</city>");
			out.write("<city>����</city>");
			out.write("<city>��˳</city>");
			out.write("<city>����</city>");
		}else if("������".equals(province)){
			out.write("<city>������</city>");
			out.write("<city>�������</city>");
			out.write("<city>��ľ˹</city>");
		}
		out.write("</root>");
		out.flush();
		out.close();
	}

}
