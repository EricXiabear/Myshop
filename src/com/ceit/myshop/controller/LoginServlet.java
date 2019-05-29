package com.ceit.myshop.controller;

import com.ceit.myshop.dao.BaseDaoImpl;
import com.ceit.myshop.util.C3P0Utils;
import com.ceit.myshop.util.DBUtils;
import com.ceit.myshop.util.DBUtils_BO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "LoginServlet",urlPatterns = "/login.html")
public class LoginServlet extends HttpServlet{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("loginname");
        String pwd = request.getParameter("loginpwd");
        HttpSession session = request.getSession();

        String sql = "select * from t_login where loginname=? and loginpwd=?";
        try{
           List param = new ArrayList<Object>();
           param.add(userName);
           param.add(pwd);
           DBUtils_BO dbBo= BaseDaoImpl.excuteQuery(sql,param);
            if(dbBo.rs.next()){

                session.setAttribute("userName",userName);
                response.sendRedirect(request.getContextPath()+"/index.html");
            }else{
                response.sendRedirect(request.getContextPath()+"/login.html");
            }
        }catch (Exception e){
            response.sendRedirect(request.getContextPath()+"/login.html");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/user/login.jsp").forward(request,response);
    }
}
