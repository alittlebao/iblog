package com.alittlebao.iblog.common.utils;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

/**
 * * 异步返回各种格式
 * json
 * xml
 * text
 * @author Alibao
 * @time 2017年1月16日 上午9:39:33
 */
public class ResponseUtils {

	//发送内容  
	public static void render(HttpServletResponse response,String contentType,String text){
		response.setContentType(contentType);
		PrintWriter out = null;
		try {
			out = response.getWriter();
			out.write(text);
			out.flush();
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			if(out!=null){
				out.close();
			}
		}
	}
	//发送的是JSON
	public static void renderJson(HttpServletResponse response,String text){
		render(response, "application/json;charset=UTF-8", text);
	}
	//发送xml
	public static void renderXml(HttpServletResponse response,String text){
		render(response, "text/xml;charset=UTF-8", text);
	}
	//发送text
	public static void renderText(HttpServletResponse response,String text){
		render(response, "text/plain;charset=UTF-8", text);
	}
	
	
}
