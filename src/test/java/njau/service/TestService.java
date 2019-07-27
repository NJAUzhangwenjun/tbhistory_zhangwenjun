package njau.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.njau.dao.TbhistoryDao;
import com.njau.entity.Tbhistory;
import com.njau.service.TbhistoryService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.List;

/**
 * @author 张文军
 * @Description:
 * @Company:南京农业大学工学院
 * @version:1.0
 * @date 2019/7/241:02
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class TestService {


    @Autowired
    private TbhistoryService tbhistoryService;

    @Autowired
    private TbhistoryDao tbhistoryDao;

    @Test
    public void testTbhistoryService(){
        List<Tbhistory> list = tbhistoryService.list();
        for (Tbhistory tbhistory : list) {
            System.out.println(tbhistory);
        }
    }

    @Test
    public void testGroupBy(){
        QueryWrapper<Tbhistory> queryWrapper = new QueryWrapper<>();
        queryWrapper.groupBy("deviceName");
        List<Tbhistory> tbhistories = tbhistoryDao.selectList(queryWrapper);
        List<String> deviceNames = new ArrayList<>();
        for (Tbhistory tbhistory : tbhistories) {
            deviceNames.add(tbhistory.getDeviceName());
        }
        System.out.println(deviceNames);

    }


    @Test
    public void test1(){
        QueryWrapper<Tbhistory> queryWrapper = new QueryWrapper<>();
        queryWrapper.groupBy("deviceName");
        List<Tbhistory> list = tbhistoryService.list(queryWrapper);
        for (Tbhistory tbhistory : list) {
            System.out.println(tbhistory.getDeviceName());
        }
    }




}
