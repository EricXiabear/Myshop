package com.ceit.myshop.controller;

import com.ceit.myshop.dao.BaseDaoImpl;
import com.ceit.myshop.ejb.CatalogService;
import com.ceit.myshop.pojo.Catalog;
import com.ceit.myshop.util.DBUtils_BO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "IndexServlet",urlPatterns = "/index.html")
public class IndexServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        request.getRequestDispatcher("/WEB-INF/user/index.jsp").forward(request,response);
    }
}
