package com.rongxing.service;

import com.rongxing.bean.AuFunction;
import com.rongxing.mapper.AuFunctionMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class AuFunctionService {
    @Autowired
    private AuFunctionMapper auFunctionMapper;

    /**
     * 获取所有功能
     * @return
     */
    public List<AuFunction> getAll(){
        return auFunctionMapper.getAll();
    }
    /**
     * 通过id获取所有功能
     */
    public AuFunction getByid(Long fid){
        AuFunction auFunction = auFunctionMapper.selectByPrimaryKey(fid);
        return auFunction;
    }
}
