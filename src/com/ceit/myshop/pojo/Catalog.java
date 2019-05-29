package com.ceit.myshop.pojo;

import java.util.List;

public class Catalog {
    private int id;
    private String name;
    private int sort;
    private int parentId;
    private List<Catalog> subCatalog;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getSort() {
        return sort;
    }

    public void setSort(int sort) {
        this.sort = sort;
    }

    public int getParentId() {
        return parentId;
    }

    public void setParentId(int parentId) {
        this.parentId = parentId;
    }

    public List<Catalog> getSubCatalog() {
        return subCatalog;
    }

    public void setSubCatalog(List<Catalog> subCatalog) {
        this.subCatalog = subCatalog;
    }
}
