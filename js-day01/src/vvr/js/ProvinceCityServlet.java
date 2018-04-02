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
		//基于xml的文本
		response.setContentType("text/xml;charset=UTF-8");
		String province = request.getParameter("province");
		PrintWriter out = response.getWriter();
		out.write("<?xml version='1.0' encoding='UTF-8'?>");
		out.write("<root>");
		if("辽宁".equals(province)){
			out.write("<city>沈阳</city>");
			out.write("<city>大连</city>");
			out.write("<city>抚顺</city>");
			out.write("<city>丹东</city>");
		}else if("黑龙江".equals(province)){
			out.write("<city>哈尔滨</city>");
			out.write("<city>齐齐哈尔</city>");
			out.write("<city>佳木斯</city>");
		}
		out.write("</root>");
		out.flush();
		out.close();
	}

}
