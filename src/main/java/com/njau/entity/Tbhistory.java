package com.njau.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * <p>
 * 测气候检测数据
 * </p>
 *
 * @author NJAU-张文军
 * @since 2019-07-24
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class Tbhistory extends Model<Tbhistory> {

    private static final long serialVersionUID=1L;

    /**
     * 主键
     */
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

    @TableField("tem")
    private Double tem;

    @TableField("hum")
    private Double hum;

    @TableField("lng")
    private Double lng;

    @TableField("lat")
    private Double lat;

    @TableField("coordinateType")
    private Integer coordinateType;

    @TableField("recordTime")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm")
    private LocalDateTime recordTime;

    @TableField("isAlarmData")
    private Integer isAlarmData;

    @TableField(exist = false)
    private String statues;

    public String getStatues() {
        if (isAlarmData != null) {
            // 状态 0 关闭 1 开启
            if (isAlarmData == 0) {
                this.statues = "否";
            }else if (isAlarmData == 1) {
                this.statues = "是";
            }
        }
        return statues;
    }


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
