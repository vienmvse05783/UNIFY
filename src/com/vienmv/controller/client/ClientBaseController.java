package com.vienmv.controller.client;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public abstract class ClientBaseController extends HttpServlet {

	protected void disPathcher(HttpServletRequest req, HttpServletResponse resp, String viewName) throws ServletException, IOException {
		// list category + setAttribute
		req.getRequestDispatcher(viewName).forward(req, resp);
	}

}
