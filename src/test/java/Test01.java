
import com.rongxing.bean.AuAuthority;
import com.rongxing.mapper.AuAuthorityMapper;
import com.rongxing.service.AuAuthorityService;
import org.apache.ibatis.io.Resources;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.Resource;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class Test01 {
    @Test
    public void test(){
        ClassPathXmlApplicationContext app=new ClassPathXmlApplicationContext("config/spring-dao.xml");
        AuAuthorityMapper auAuthorityMapper = (AuAuthorityMapper) app.getBean("auAuthorityMapper");
        List<AuAuthority> auAuthorities = auAuthorityMapper.selectByRoleId(1l);
        for(AuAuthority a:auAuthorities){
            System.out.println(a.getFunctionid());
        }
        app.close();
    }

}
