package com.ceit.myshop.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBUtils_BO {
    public Connection conn = null;
    public PreparedStatement st = null;
    public ResultSet rs = null;
    public DBUtils_BO() {
        super();
    }
}
