package net.zjwu.mis.sign.signRecord.model;

import java.io.Serializable;
import javax.persistence.*;

@Table(name = "t_t_sign_record")
public class SignRecord implements Serializable {
    @Id
    private Integer id;

    /**
     * OpenId
     */
    @Column(name = "open_id")
    private String openId;

    /**
     * 学号
     */
    private String cnumber;

    /**
     * 姓名
     */
    private String cname;

    /**
     * 签到时间
     */
    @Column(name = "sign_time")
    private String signTime;

    /**
     * 签退时间
     */
    @Column(name = "leave_time")
    private String leaveTime;

    /**
     * 时长
     */
    private String duration;

    private static final long serialVersionUID = 1L;

    /**
     * @return id
     */
    public Integer getId() {
        return id;
    }

    /**
     * @param id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取OpenId
     *
     * @return open_id - OpenId
     */
    public String getOpenId() {
        return openId;
    }

    /**
     * 设置OpenId
     *
     * @param openId OpenId
     */
    public void setOpenId(String openId) {
        this.openId = openId;
    }

    /**
     * 获取学号
     *
     * @return cnumber - 学号
     */
    public String getCnumber() {
        return cnumber;
    }

    /**
     * 设置学号
     *
     * @param cnumber 学号
     */
    public void setCnumber(String cnumber) {
        this.cnumber = cnumber;
    }

    /**
     * 获取姓名
     *
     * @return cname - 姓名
     */
    public String getCname() {
        return cname;
    }

    /**
     * 设置姓名
     *
     * @param cname 姓名
     */
    public void setCname(String cname) {
        this.cname = cname;
    }

    /**
     * 获取签到时间
     *
     * @return sign_time - 签到时间
     */
    public String getSignTime() {
        return signTime;
    }

    /**
     * 设置签到时间
     *
     * @param signTime 签到时间
     */
    public void setSignTime(String signTime) {
        this.signTime = signTime;
    }

    /**
     * 获取签退时间
     *
     * @return leave_time - 签退时间
     */
    public String getLeaveTime() {
        return leaveTime;
    }

    /**
     * 设置签退时间
     *
     * @param leaveTime 签退时间
     */
    public void setLeaveTime(String leaveTime) {
        this.leaveTime = leaveTime;
    }

    /**
     * 获取时长
     *
     * @return duration - 时长
     */
    public String getDuration() {
        return duration;
    }

    /**
     * 设置时长
     *
     * @param duration 时长
     */
    public void setDuration(String duration) {
        this.duration = duration;
    }
}