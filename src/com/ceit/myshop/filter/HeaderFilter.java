package com.ceit.myshop.filter;

import com.ceit.myshop.ejb.CatalogService;
import com.ceit.myshop.pojo.Catalog;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebFilter(filterName = "HeaderFilter",urlPatterns = "/WEB-INF/user/header.jsp",dispatcherTypes = {DispatcherType.INCLUDE})
public class HeaderFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest)req;
        try{
            Map<Integer, List<Catalog>> catalog = new CatalogService().getAll();
            request.setAttribute("catalogs",catalog.get(0));
        }catch (Exception e){
            e.printStackTrace();
        }
        chain.doFilter(request, resp);
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
