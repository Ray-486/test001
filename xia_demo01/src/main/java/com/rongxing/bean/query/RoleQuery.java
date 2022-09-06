package com.rongxing.bean.query;




public class RoleQuery {
    private Integer pageNum = 1;   // 当前的页码
    private Integer pageSize  = 2;   //每一页所显示的数量
    private String rolecode;    // 根据用户角色查询
    private Integer startPage;

    public RoleQuery() {
    }

    public RoleQuery(Integer pageNum, Integer pageSize, String rolecode, Integer startPage) {
        this.pageNum = pageNum;
        this.pageSize = pageSize;
        this.rolecode = rolecode;
        this.startPage = startPage;
    }

    public Integer getPageNum() {
        return pageNum;
    }

    public void setPageNum(Integer pageNum) {
        this.pageNum = pageNum;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public String getRolecode() {
        return rolecode;
    }

    public void setRolecode(String rolecode) {
        this.rolecode = rolecode;
    }

    public Integer getStartPage() {
        return startPage;
    }

    public void setStartPage(Integer startPage) {
        this.startPage = startPage;
    }
}
