package com.ceit.myshop.util;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.UUID;


public class DBUtils {
    static Logger logger = LogManager.getLogger(DBUtils.class);


    private static void realseSource(Connection _conn, PreparedStatement _st, ResultSet _rs){
        C3P0Utils.close(_conn,_st,_rs);
    }

    public static void realseSource(DBUtils_BO _vo){
        if(_vo!=null){
            realseSource(_vo.conn, _vo.st, _vo.rs);
        }
    }
    //注意：查询操作完成后，因为还需提取结果集中信息，所以仍保持连接，在结果集使用完后才通过DBUtils.realseSource()手动释放连接
    public static void executeQuery(DBUtils_BO vo) throws Exception
    {
        try{
            vo.rs = vo.st.executeQuery();
        }catch (SQLException e){
            realseSource(vo);
            String uuid = UUID.randomUUID().toString();
            logger.error("UUID:"+uuid+", S QL语法有误: ",e);
            throw new Exception("err.user.dao.jdbc:"+uuid,e);
        }
    }

    //而update操作完成后就可以直接释放连接了，所以在方法末尾直接调用了realseSourse()
    public static int executeUpdate(DBUtils_BO vo) throws Exception
    {

        Connection conn = vo.conn;
        PreparedStatement st = vo.st;
        int count=0;
        try {
            count=st.executeUpdate();
        } catch (SQLException e) {
            realseSource(conn, st, null);
            String uuid = UUID.randomUUID().toString();
            logger.error("UUID:"+uuid+", SQL语法有误: ",e);
            throw new Exception("err.user.dao.jdbc:"+uuid,e);
        }
        realseSource(conn, st,null );
        return count;
    }
}