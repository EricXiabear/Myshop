package com.ceit.myshop.ejb;

import com.ceit.myshop.dao.BaseDaoImpl;
import com.ceit.myshop.pojo.Catalog;
import com.ceit.myshop.util.DBUtils_BO;

import java.lang.reflect.Array;
import java.util.*;

public class CatalogService {
    public Map<Integer,List<Catalog>> getAll() throws Exception{
        String sql = "select * from t_catalog order by parentid desc,sort asc";
        DBUtils_BO dbBo = BaseDaoImpl.excuteQuery(sql, new ArrayList<Object>()) ;

        Map<Integer,List<Catalog>> catalogMap = new HashMap<>();
        while(dbBo.rs.next()){
            Catalog catalog = new Catalog();
            int id = dbBo.rs.getInt("id");
            String name = dbBo.rs.getString("catalogname");
            int sort = dbBo.rs.getInt("sort");
            int parentId = dbBo.rs.getInt("parentid");
            catalog.setId(id);
            catalog.setName(name);
            catalog.setParentId(parentId);
            catalog.setSort(sort);

            //判断父类分类是否在map中不存在

            if(!catalogMap.containsKey(parentId)){
                List<Catalog> list = new ArrayList<>();
                list.add(catalog);
                catalogMap.put(parentId,list);
            }else{
                catalogMap.get(parentId).add(catalog);
            }

            if(catalogMap.containsKey(id)){
                catalog.setSubCatalog(catalogMap.get(id));
            }
            catalogMap.remove(id);

        }
        return catalogMap;
    }
}

