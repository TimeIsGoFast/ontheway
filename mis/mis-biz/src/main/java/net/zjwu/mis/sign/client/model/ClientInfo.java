package net.zjwu.mis.sign.client.model;

import java.io.Serializable;
import javax.persistence.*;

@Table(name = "t_t_client_info")
public class ClientInfo implements Serializable {
    @Id
    private Integer id;

    /**
     * 姓名
     */
    private String cname;

    /**
     * 专业班级
     */
    @Column(name = "project_class")
    private String projectClass;

    /**
     * 手机号
     */
    private String phone;

    /**
     * qq号码
     */
    private String qnumber;

    /**
     * 邮箱
     */
    private String email;

    /**
     * 学号
     */
    private String cnumber;

    /**
     * openId
     */
    @Column(name = "open_id")
    private String openId;

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
     * 获取专业班级
     *
     * @return project_class - 专业班级
     */
    public String getProjectClass() {
        return projectClass;
    }

    /**
     * 设置专业班级
     *
     * @param projectClass 专业班级
     */
    public void setProjectClass(String projectClass) {
        this.projectClass = projectClass;
    }

    /**
     * 获取手机号
     *
     * @return phone - 手机号
     */
    public String getPhone() {
        return phone;
    }

    /**
     * 设置手机号
     *
     * @param phone 手机号
     */
    public void setPhone(String phone) {
        this.phone = phone;
    }

    /**
     * 获取qq号码
     *
     * @return qnumber - qq号码
     */
    public String getQnumber() {
        return qnumber;
    }

    /**
     * 设置qq号码
     *
     * @param qnumber qq号码
     */
    public void setQnumber(String qnumber) {
        this.qnumber = qnumber;
    }

    /**
     * 获取邮箱
     *
     * @return email - 邮箱
     */
    public String getEmail() {
        return email;
    }

    /**
     * 设置邮箱
     *
     * @param email 邮箱
     */
    public void setEmail(String email) {
        this.email = email;
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
     * 获取openId
     *
     * @return open_id - openId
     */
    public String getOpenId() {
        return openId;
    }

    /**
     * 设置openId
     *
     * @param openId openId
     */
    public void setOpenId(String openId) {
        this.openId = openId;
    }
}