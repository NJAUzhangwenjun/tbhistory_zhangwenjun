package com.njau.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;
import java.time.LocalDateTime;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author NJAU-张文军
 * @since 2019-07-27
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class Tbsyslog extends Model<Tbsyslog> {

    private static final long serialVersionUID=1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @TableField("userName")
    private String userName;

    @TableField("operate")
    private String operate;

    @TableField("details")
    private String details;

    @TableField("result")
    private String result;

    @TableField("iP")
    private String iP;

    @TableField("recordTime")
    private LocalDateTime recordTime;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
