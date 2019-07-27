package com.njau.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author 张文军
 * @Description:路劲跳转页面
 * @Company:南京农业大学工学院
 * @version:1.0
 * @date 2019/7/2417:47
 */
@Controller
@RequestMapping("main")
public class MainController {


    @RequestMapping("toMain.do")
    public String toMain() {
        return "main";
    }

}
