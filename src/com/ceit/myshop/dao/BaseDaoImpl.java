package com.ceit.myshop.dao;

import com.ceit.myshop.util.C3P0Utils;
import com.ceit.myshop.util.DBUtils;
import com.ceit.myshop.util.DBUtils_BO;
import com.sun.org.apache.xpath.internal.operations.Bool;

import java.sql.Statement;
import java.util.*;

public class BaseDaoImpl {
    public static DBUtils_BO excuteQuery(String sql, List<Object> param){
        DBUtils_BO dbBo = new DBUtils_BO();
        dbBo.conn= C3P0Utils.getConnection();//取用一个连接
        try{
            dbBo.st=dbBo.conn.prepareStatement(sql);//预处理sql语句
            insertParam(dbBo,param);
            DBUtils.executeQuery(dbBo);


        }catch (Exception e){
            e.printStackTrace();
        }
        return dbBo;
    }
    public static int excute(String sql, List<Object> param){
        DBUtils_BO dbBo=new DBUtils_BO();
        dbBo.conn=C3P0Utils.getConnection();
        int count=0;
        try{
            dbBo.st=dbBo.conn.prepareStatement(sql);
            insertParam(dbBo,param);
            count = DBUtils.executeUpdate(dbBo);
        }catch(Exception e){
            e.printStackTrace();
        }
        return count;
    }
    private static void insertParam(DBUtils_BO dbBo, List<Object> param)throws Exception{
       Integer key=1;
        for(Object obj:param){
            if(obj.getClass()==Integer.class){
                dbBo.st.setInt(key,(Integer)obj);
            }else if(obj.getClass()==String.class){
                dbBo.st.setString(key,(String)obj);
            }else if(obj.getClass()==Double.class){
                dbBo.st.setDouble(key,(Double)obj);
            }else if(obj.getClass()== Boolean.class){
                dbBo.st.setBoolean(key,(Boolean)obj);
            }else if(obj.getClass()== Float.class){
                dbBo.st.setFloat(key,(Float) obj);
            }if (obj.getClass()== Date.class){
                Date date=(Date)obj;
                dbBo.st.setDate(key,new java.sql.Date(date.getTime()));
            }
            key++;

        }
    }
}
