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
 * 警告数据记录
 * </p>
 *
 * @author NJAU-张文军
 * @since 2019-07-27
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class Tbalarm extends Model<Tbalarm> {

    private static final long serialVersionUID=1L;

    @TableId(value = "id", type = IdType.UUID)
    private String id;

    @TableField("deviceKey")
    private String deviceKey;

    @TableField("deviceName")
    private String deviceName;

    @TableField("deviceID")
    private Integer deviceID;

    @TableField("nodeID")
    private Integer nodeID;

    @TableField("lng")
    private Double lng;

    @TableField("lat")
    private Double lat;

    @TableField("alarmMessage")
    private String alarmMessage;

    @TableField("alarmType")
    private String alarmType;

    @TableField("alarmRange")
    private String alarmRange;

    @TableField("dataValue")
    private Double dataValue;

    @TableField("recordTime")
    private LocalDateTime recordTime;

    @TableField("handingFlag")
    private Boolean handingFlag;

    @TableField("HandlingMethod")
    private String HandlingMethod;

    @TableField("HandlingUser")
    private String HandlingUser;

    @TableField("handlingTime")
    private LocalDateTime handlingTime;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
