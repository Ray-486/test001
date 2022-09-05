package com.rongxing.bean.query;


public class UserQuery {
    private Integer pageNum = 1;   // 当前的页码
    private Integer pageSize  = 2;   //每一页所显示的数量
    private String username;    // 根据用户查询
    private Integer startPage;

    public UserQuery() {
    }


    public UserQuery(Integer pageNum, Integer pageSize, String username) {
        this.pageNum = pageNum;
        this.pageSize = pageSize;
        this.username = username;
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

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Integer getStartPage() {
        return (pageNum-1)*pageSize;
    }

    public void setStartPage(Integer startPage) {
        this.startPage = startPage;
    }
}
