package com.njau.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.njau.entity.Tbhistory;
import com.njau.service.TbhistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * <p>
 * 测气候检测数据 前端控制器
 * </p>
 *
 * @author NJAU-张文军
 * @since 2019-07-24
 */
@Controller
@RequestMapping("/tbhistory")
public class TbhistoryController {
    @Autowired
    private TbhistoryService tbhistoryService;


    /**
     * 查询所有(分页查询)
     * @param model
     * @return
     */
    @RequestMapping("toFindAll.do")
    public String findAll(Model model) {
        IPage<Tbhistory> page = tbhistoryService.page(new Page<>(1, 5));
        List<Tbhistory> list = page.getRecords();
        System.out.println(list.size());
        model.addAttribute("list", list);
        model.addAttribute("page", page);
        return "tbList";
    }

    @RequestMapping("toAdd.do")
    public String toAdd(Model model) {
        QueryWrapper<Tbhistory> queryWrapper = new QueryWrapper<>();
        queryWrapper.groupBy("deviceName");
        List<Tbhistory> list = tbhistoryService.list(queryWrapper);
        model.addAttribute("list", list);
        return "tbAdd";
    }




}

